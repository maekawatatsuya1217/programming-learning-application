class FormsController < ApplicationController

    before_action :authenticate_user!, only: [:new, :create, :edit, :destroy]
    before_action :form_build, only: [:show, :edit, :update, :destroy]
    before_action :unless, only: [:edit, :update, :destroy]
    def index
        @forms = Form.where(user_id: current_user.id).includes(:user).with_attached_image.order('created_at DESC')
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

    def show
    end

    def edit
    end

    def update
        if @form.update(form_params)
            redirect_to form_path(@form)
        else
            render :edit
        end
    end

    def destroy
        form = Form.find(params[:id])
        form.destroy
        redirect_to forms_path
    end

    private

    def form_params
        params.require(:form).permit(:day, :time, :good, :bad, :improvement, :image).merge(user_id: current_user.id )
    end

    def form_build
        @form = Form.find(params[:id])
    end

    def unless
        unless user_signed_in? && current_user.id == @form.user.id
         redirect_to forms_path
        end 
    end

end
