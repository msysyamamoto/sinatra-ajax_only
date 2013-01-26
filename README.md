# Sinatra::AjaxOnly

Sinatra extensions for blocking non-AJAX requests.
Provide **ajax_only** condition. Return 403 when request is not ajax.


## Installation

Add this line to your application's Gemfile:

    gem 'sinatra-ajax_only'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sinatra-ajax_only

## Usage

### for Classic Style Application

``````Ruby
# Only allow access via Ajax.
get "/should/ajax", ajax_only do
    "Ok!"
end
``````

### for Modular Application

``````Ruby
class MyApp < Sinatra::Base

    register Sinatra::AjaxOnly

    # Only allow access via Ajax.
    get "/should/ajax", ajax_only do
        "Hey!"
    end
end
``````

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
