class FormsController < ApplicationController
    def index
        @forms = Form.all
    end

    def new
        @form = Form.new
    end

    def create
        @form = Form.new(form_params)
        if @form.valid?
          @form.save
          redirect_to forms_path
        else
          render :new
        end
    end

    private

    def form_params
        params.require(:form).permit(:day, :time, :good, :bad, :improvement, :image).merge(user_id: current_user.id )
    end

end
