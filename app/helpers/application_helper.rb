module ApplicationHelper



#format date method...
  def date_format(date)

    date_time = Time.parse(date)
    date_time.strftime("%A %B #{date_time.day.ordinalize} %Y %l:%M%P")

    return date_time



end


  def is_admin?

    return current_user.try(:admin?)

  end

end
