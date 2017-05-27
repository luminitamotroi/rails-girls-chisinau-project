  class UpdatesController < ApplicationController
    before_filter :authenticate_user!

    def create
      update = Update.new(update_params)
      update.case = Case.find(params[:case_id])
      update.user = current_user
      update.save!

      redirect_to update.case
    end

    private

    def update_params
      params.require(:update).permit(:title, :domain, :body, :external_link)
    end

  end
