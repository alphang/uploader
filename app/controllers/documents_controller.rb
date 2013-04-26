class DocumentsController < ApplicationController

  def index
  end

  def new
    @document = Document.new
  end

  def show
    @document = Document.find(params[:id])
  end

  def create
    @document = Document.new(params[:document])

    respond_to do |format|
      if @document.save
        flash[:notice] = "Document has been created."
        format.html do
          redirect_to @document
        end
        format.json { head :ok }
      else
        flash[:alert] = "An error occured. Document has not been created."
        format.html do
          render :action => "new"
        end
        format.json { render :json => @document.errors, :status => :unprocessable_entity }
      end
    end
  end
end
