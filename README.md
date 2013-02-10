# jQuery treeTable AJAX example

This example demonstrates using the jQuery treeTable plugin (http://plugins.jquery.com/treetable) for an AJAX enabled tree. It uses Ruby on Rails and SQLite for the server side.

The file app/views/nodes/index.html.erb contains the interesting Javascript bits. It uses the jQuery.ajax  function to download remote nodes when a node is expanded. It also uses jQuery.ajax to update the remote tree when a node is moved between branches (D&D).

## Installation

This assusmes you already have Ruby and the bundler gem installed.

    cd jquery-treetable-ajax-example
    bundle install
    bundle exec rake db:create
    bundle exec rake db:migrate
    bundle exec rake db:seed
    script/rails server

Now open your browser at http://localhost:3000.
