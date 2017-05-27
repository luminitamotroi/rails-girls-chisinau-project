
class CasesController < ApplicationController
before_action :authenticate_user! 
  def index
  end
  
  def show
    @case = Case.find(params[:id])
  end

  def new
    @case = Case.new
  end

  def create
    @case = Case.create(case_params)
    @case.user = current_user
    @case.save

    redirect_to @case
  end

  def case_params
    params.require(:case).permit!
  end

  def destroy
    @case = Case.find(params[:id])
    @case.destroy
    redirect_to cases_path
  end

  def edit  
    @case = Case.find(params[:id])
  end

   def update
    @case = Case.find(params[:id])

    if @case.update_attributes(case_params)
      redirect_to @case
    else
      render 'edit'
    end
  end
  
  end


