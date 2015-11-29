class PageController < ApplicationController


  def calendar
    @season15_16 = GameRecap.where("datey BETWEEN '2015-10-20T00:00:00-00:00' AND '2016-06-30T00:00:00-00:00' ").order("datey DESC")

  end

  def contact

    @name = params['name']
    if @name ==''
    @error_msg='Must enter your name!!!'
    end

    @email = params["email"]
    if @email ==''
      @error_msg2='Must enter your name!!!'
    end

  end

  def forum
  end

  def home

    @last_recapper2 = GameRecap.where("datey BETWEEN '2015-10-20T00:00:00-00:00' AND '2016-06-30T00:00:00-00:00' ").order("datey DESC").limit(10)
    @last_articles = Story.order("date DESC").limit(5)

  end

  def news
  end


  def recaps
  end

  def store
  end

  def recaps15_16

    @season15_16 = GameRecap.where("datey BETWEEN '2015-10-20T00:00:00-00:00' AND '2016-06-30T00:00:00-00:00' ").order("datey DESC")
    @topic = GameRecap.where("datey BETWEEN '2015-10-20T00:00:00-00:00' AND '2016-06-30T00:00:00-00:00' ").order("datey DESC")
    # @paginatable_array=Kaminari.paginate_array(@topic).page(params[:page]).per(10)
    @posts = @topic.page(params[:page])

  end

  def recaps14_15


    @season14_15 = GameRecap.where("datey BETWEEN '2014-10-20T00:00:00-00:00' AND '2015-06-30T00:00:00-00:00' ").order("datey DESC")
    @topic = GameRecap.where("datey BETWEEN '2013-10-20T00:00:00-00:00' AND '2015-06-30T00:00:00-00:00' ").order("datey DESC")
    # @paginatable_array=Kaminari.paginate_array(@topic).page(params[:page]).per(10)

    @posts = @topic.page(params[:page])

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
