class PageController < ApplicationController


  def calendar
    @season15_16 = GameRecap.where("datey BETWEEN '2015-10-20T00:00:00-00:00' AND '2016-06-30T00:00:00-00:00' ").order("datey DESC")
    @season15_16_by_date = @season15_16.group_by(&:dashy_date)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today

  end


  def contact_us
    @submitted =params["commit"]
    @form_error = false
    #flash[:notice] ="Hey you can't do that!"
    @name = params["name"]
    @email = params["email"]
    @song = params["song"] == "song"
    @phone = params["phone"]
    @question = params["question"]
    @newsletter = params["newsletter"] == "newsletter"  #checks if it is true or false
    @contact = params["contact"]
    @phone_num = @contact == "Phone"  #true or false
    @email_method = @contact == "Email" #true or false
    #@product = params["product"]

    def thank_you
      UserMailer.thank_you(params[:email]).deliver
    end

    def contact_us2
      admin=Baller.where(:admin => true)
      admin.each do |admin|
        # name, email, phone, contact, product, question, newsletter, song
        UserMailer.contact_us(admin.email,params[:name],params[:email],params[:phone],params[:contact],params[:question],params[:newsletter],params[:song]).deliver

      end

    end
    #this is where this code goes to submit...
    if params[:commit]


      #Almost figured out the logic on this one.... maybe talk to Vascoe.. see what he thinks

      if (@email.empty? && @name.empty? && @question.empty?)
        flash.now[:error] = "Try again Bud!  You must enter your name, email address and question."
        @form_error = true
      elsif  (@email.nil? && @name.nil? && @question.nil?)
        flash.now[:error] = "Try again Bud!  You must enter your name, email address and question."
        @form_error = true

      elsif (@email.nil? && @question.nil? && @name!="")
        flash.now[:error] = "Try again Bud!  You must enter your email address and a question."
        @form_error = true

      elsif  (@email.empty? && @name.empty? )
        flash.now[:error] = "Try again Bud!  You must enter both your name and email address."
        @form_error = true

      elsif (@email.nil? && @name.nil? )
        flash.now[:error] = "Try again Bud!  You must enter both your name and email address."
        @form_error = true

      elsif @email.nil? || @email.empty?
        flash.now[ :error ] = "Try again Bud! You must enter an email address bud!"
        @form_error = true

      elsif

      @name.nil? || @name.empty?
        flash.now[ :error ] = "You must enter your name Bud!"
        @form_error = true

      elsif

      @question.nil? || @question.empty?
        flash.now[ :error ] = "You must enter your question for us Bud!"
        @form_error = true

      else
        contact_us2
        thank_you

      end







    end




  end

  def forum
  end

  def home

    @last_recapper2 = GameRecap.where("datey BETWEEN '2017-10-18T00:00:00-00:00' AND '2018-06-30T00:00:00-00:00' ").order("datey DESC").limit(10)
    @last_articles = Story.order("date DESC").limit(5)
   # @last_videos = Highlight.order("date DESC").limit(5)

    @last_videos = Highlight.all
    #respond_with(@highlights)

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
