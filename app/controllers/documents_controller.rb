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
    if @document.save
      flash[:notice] = "Document has been created."
      redirect_to @document
    else
      flash[:alert] = "An error occured. Document has not been created."
      render :action => "new"
    end
  end
end
