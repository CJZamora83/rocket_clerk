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
    @case = Case.find(params[:case_id])
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])
    @entry.update(entry_params)
    redirect_to case_path(@entry.case)
  end

  def show
  end

  def destroy
   @entry = Entry.find(params[:id])
   @case = @entry.case
   @entry.destroy
   redirect_to case_path(@case)
  end

  private
  def entry_params
    params.require(:entry).permit(:seq_number, :summary, :doc_url)
  end

end
