class FormsController < ApplicationController
    def index
        @tweets = Form.all
    end
end
