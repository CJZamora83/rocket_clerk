class CasesController < ApplicationController

  def new
    @case = Case.new
  end

end
