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
    @document = Document.create(params[:document])
  end
end
