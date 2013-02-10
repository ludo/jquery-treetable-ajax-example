# jQuery treeTable AJAX example

This example demonstrates using the jQuery treeTable plugin (http://plugins.jquery.com/treetable) for an AJAX enabled tree. It uses Ruby on Rails and SQLite for the server side.

## Installation

This assusmes you already have Ruby and the bundler gem installed.

    cd jquery-treetable-ajax-example
    bundle install
    bundle exec rake db:create
    bundle exec rake db:migrate
    bundle exec rake db:seed
    script/rails server

Now open your browser at http://localhost:3000.
