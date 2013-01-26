require "sinatra/base"

module Sinatra
    module AjaxOnly
        def ajax_only
            {:filter_xhr => true}
        end

        def filter_xhr(_)
            condition do
                halt 403 unless request.xhr?
            end
        end
    end

    register AjaxOnly
end
