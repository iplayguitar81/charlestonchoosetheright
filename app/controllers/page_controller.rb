class PageController < ApplicationController
  def contact
  end

  def forum
  end

  def home

    @last_recapper2 = GameRecap.order("datey DESC").limit(1)
    @last_articles = Story.order("date DESC").limit(5)

  end

  def news
  end

  def recaps
  end

  def store
  end

  def recaps13_14


    @season13_14 = GameRecap.where("datey BETWEEN '2013-10-30T00:00:00-00:00' AND '2014-06-30T00:00:00-00:00' ").order("datey DESC")
    @topic = GameRecap.where("datey BETWEEN '2013-10-30T00:00:00-00:00' AND '2014-06-30T00:00:00-00:00' ").order("datey DESC")
    # @paginatable_array=Kaminari.paginate_array(@topic).page(params[:page]).per(10)

    @posts = @topic.page(params[:page])

  end

  def recaps12_13
    @topic = GameRecap.where("datey BETWEEN '2012-10-20T00:00:00-00:00' AND '2013-06-30T00:00:00-00:00' ").order("datey DESC")
    @posts = @topic.page(params[:page])

  end


end
