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



  def snippet(body)
     story=(body.html_safe.to_s)
    story2 =strip_tags(story)

   story2=  sanitize(story2, :tags=>[]).truncate(100, :separator => " ").html_safe

    return story2

  end

end
