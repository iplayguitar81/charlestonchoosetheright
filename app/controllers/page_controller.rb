class PageController < ApplicationController
  def contact
  end

  def forum
  end

  def home

    @last_recapper2 = Recapper.order("datey DESC").limit(1)
    @last_articles = Story.order("date DESC").limit(5)

  end

  def news
  end

  def recaps
  end

  def store
  end
end
