class FormsController < ApplicationController
    def index
        @forms = Form.includes(:user).with_attached_image.order('created_at DESC')
    end

    def new
        @form = Form.new
    end

    def show
        @form = Form.find(params[:id])
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
