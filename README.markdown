# formtastic-cocoon

Formtastic-cocoon is a Rails3 gem, extending formtastic, to allow easier handling of nested forms.

Nested forms are forms that handle nested models and attributes in one form.
For example a project with its tasks, an invoice with its ordered items.

## Prerequisites

As this gem extends formtastic and uses jQuery, it is only useful to use this gem in a rails3
project where you are already using formtastic and jQuery.

I have a sample project where I demonstrate both.

## Installation

Inside your `Gemfile` add the following:

    gem "formtastic-cocoon"

Run the installation task:

    rails g formtastic:cocoon:install

This will install the needed javascript file.
Inside your `application.html.haml` you will need to add below the default javascripts:

    = javascript_include_tag :formtastic_cocoon

or using erb, you write

    <%= javascript_include_tag :formtastic_cocoon %>

That is all you need to do to start using it!

## Usage



## Note on Patches/Pull Requests
 
* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## Copyright

Copyright (c) 2010 nathanvda. See LICENSE for details.
