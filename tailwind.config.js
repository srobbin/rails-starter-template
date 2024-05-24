const plugin = require('tailwindcss/plugin');

module.exports = {
  content: [
    './app/assets/stylesheets/**/*.css',
    './app/components/**/*.*',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/jobs/**/*.rb',
    './app/views/**/*.erb',
    './config/initializers/simple_form.rb',
    './node_modules/tw-elements/dist/js/**/*.js',
  ],

  future: {
    hoverOnlyWhenSupported: true,
  },

  plugins: [
    require('tailwindcss/nesting'),
    require('@tailwindcss/line-clamp'),
  ],

  theme: {
    extend: {
    }
  },
}
