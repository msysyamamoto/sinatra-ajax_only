require "sinatra/base"

module Sinatra
  module AjaxOnly
    set(:ajax_only) do
        halt 403 if request.xhr?
    end
  end

  register AjaxOnly
end
