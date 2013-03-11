class DocumentsController < ApplicationController
  respond_to :html, :json

  def index
    respond_with documents
  end

  def show
    respond_with document
  end

  def new
    respond_with document
  end

  def create
    document.save
    respond_with document
  end

  def update
    document.update_attributes(params[:document])
    respond_with document
  end

  def destroy
    document.destroy
    respond_with document
  end

  private
  def documents
    @documents = Document.all
  end

  def document
    if params[:action] =~ /new|create/
      @document = Document.new(params[:document])
    else
      @document = Document.find(params[:id])
    end
  end
end
