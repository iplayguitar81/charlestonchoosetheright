class HighlightsController < ApplicationController
  before_action :set_highlight, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @highlights = Highlight.all
    respond_with(@highlights)
  end

  def show
    respond_with(@highlight)
  end

  def new
    @highlight = Highlight.new
    respond_with(@highlight)
  end

  def edit
  end

  def create
    @highlight = Highlight.new(highlight_params)
    @highlight.save
    respond_with(@highlight)
  end

  def update
    @highlight.update(highlight_params)
    respond_with(@highlight)
  end

  def destroy
    @highlight.destroy
    respond_with(@highlight)
  end

  private
    def set_highlight
      @highlight = Highlight.find(params[:id])
    end

    def highlight_params
      params.require(:highlight).permit(:title, :date, :caption, :image)
    end
end
