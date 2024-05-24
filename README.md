# Rails starter app

## Development

### Initial setup

If this is your first time running the application, you'll need to make sure you have
[Docker](https://docs.docker.com/get-docker/) installed. Assuming you do, issue these commands
from the terminal:

```sh
# Make a copy of the environment variables file
# NOTE: you'll need to ask an existing developer for the necessary values
cp .env.example .env

# Run the setup script
docker-compose run app bin/setup
```

### Running the app

From a terminal session:

```sh
# Update to make sure your database and dependencies are in sync
docker-compose run app bin/update

# Launch the stack
docker-compose up
```

If this results in an error, try re-building Docker:

```sh
docker-compose build
```

Once the stack is running, visit: [http://localhost:3000](http://localhost:3000)

_Note: you may be required to migrate the database, but you should be able to do this from
the website prompt._

### Gems and console

From time to time, you'll need to install new gems and access the console. In order to do so,
please use the `docker-compose run app` command. For example:

```sh
# Installing gems
docker-compose run app bundle add foo

# Installing JavaScript packages
docker-compose run app yarn add foo

# Accessing the console
docker-compose run app bin/rails console
```

### Linting

To check your code before submitting a pull request, you can run [Rubocop](https://github.com/rubocop/rubocop) and [ESLint](https://eslint.org/) manually via:

```
# Start a bash shell
docker-compose run app /bin/bash

# Run Rubocop
# Or run `bundle exec rubocop -A` if you want to auto-fix any issues
bundle exec rubocop

# Run tests
bin/rspec
```
