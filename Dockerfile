########
# BASE #
########

FROM ruby:3.3-slim as base

# Install dependencies
RUN apt-get update -qq \
  && apt-get install -y build-essential libpq-dev postgresql-client \
     libvips git vim curl wget libsqlite3-dev imagemagick

# Install Node and Yarn
RUN apt-get install -y ca-certificates curl gnupg; \
    mkdir -p /etc/apt/keyrings; \
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg; \
    NODE_MAJOR=20; \
    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" > /etc/apt/sources.list.d/nodesource.list; \
    apt-get update; \
    apt-get install -y nodejs; \
    npm install -g yarn;

# Set the working directory and copy files
WORKDIR /app
COPY . .

########
# DEV #
########

FROM base as dev
ENV BUNDLE_PATH=/bundle
RUN bundle config set path ${BUNDLE_PATH}
RUN gem install bundler -v 2.5.10

########
# PROD #
########

FROM base as prod
RUN bundle install --jobs=4 --retry 3 --without development test
RUN yarn install
RUN RAILS_ENV=production SECRET_KEY_BASE=DUMMY bin/rails assets:precompile
