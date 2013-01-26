require 'spec_helper'

describe Sinatra::AjaxOnly do

    class TestApp < Sinatra::Base
        register Sinatra::AjaxOnly

        get '/require/ajax', ajax_only do
            "ok"
        end

        get '/' do
            "root"
        end

    end

    def app
        TestApp
    end

    describe "not require ajax request" do
        describe 'non-ajax' do
            before { get '/' }
            subject { last_response.status }
            it { should == 200 }
        end

        describe 'ajax' do
            before do
                get '/', {}, {"HTTP_X_REQUESTED_WITH" => "XMLHttpRequest"}
            end
            subject { last_response.status }
            it { should == 200 }
        end
    end

    describe "require ajax ajax" do
        describe 'non-ajax' do
            before { get '/require/ajax' }
            subject { last_response.status }
            it { should == 403 }
        end

        describe 'ajax' do
            before do
                get '/require/ajax', {}, {"HTTP_X_REQUESTED_WITH" => "XMLHttpRequest"}
            end
            subject { last_response.status }
            it { should == 200 }
        end
    end
end
