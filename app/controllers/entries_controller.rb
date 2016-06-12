class EntriesController < ApplicationController

  def new
    @case = Case.find(params[:case_id])
    @entry = @case.entries.new
  end

  def create
    @case = Case.find(params[:case_id])
    @entry = @case.entries.new(entry_params)
    if @entry.save
      redirect_to case_path(@case)
    else
      render 'new'
    end
  end

  def edit
    @entry = @case.entries.edit(params[:case_id, @entry])
  end

  def destroy
    @case = Case.find(params[:case_id])
    @entry = @case.entries.find(params[:id])
    @entry.destroy
  end

    entry[:case_id] = nil
    redirect_to show_case_path, notice: "Deleted entry!"
  end

  private
  def entry_params
    params.require(:entry).permit(:seq_number, :summary, :doc_url)
  end

end
