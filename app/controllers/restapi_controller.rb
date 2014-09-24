class RestapiController < ApplicationController

  def index
    return_code = 1
    respond_to do |format|
      format.html { render html: return_code }
      format.xml { render :xml => "Cool, this works", status: :ok }
    end
  end

end