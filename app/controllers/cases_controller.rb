class CasesController < ApplicationController

  def new
    @case = Case.new
  end

  def create
    @case = current_user.cases.new case_params
    if @case.save
      if current_user != nil
        current_user.cases << @case
      end
      redirect_to case_path(@case.id)
    else
      render 'new'
    end
  end

  def show
    @case = Case.find(params[:id])
  end

  def destroy
    redirect_to case_path(@case.id)
  end

private
  def case_params
    params.require(:case).permit(:plaintiff, :defendant, :number, :venue, :matter_type, :lead_atty)
  end

end
