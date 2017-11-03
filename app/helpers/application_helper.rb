module ApplicationHelper



#format date method...
  def date_format(date)

    date_time = Time.parse(date)
    date_time=date_time.strftime("%A %B #{date_time.day.ordinalize} %Y %l:%M%P")

    return date_time



end


  #format a string to date
  def date_format_string(date)

    date_time = Time.parse(date.to_s)
    date_time=date_time.strftime("%b #{date_time.day.ordinalize} %Y ")

    return date_time

  end


  def is_admin?

    return current_baller.try(:admin?)

  end

end
