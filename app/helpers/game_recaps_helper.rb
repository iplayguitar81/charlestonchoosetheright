module GameRecapsHelper




  def game_summary_snippet ( h_initials, a_initials, a_nick, h_nick, hometfgma, awaytfgma, hfgp, afgp, hometftma, awaytftma, hftp, aftp, homet3fgma, awayt3fgma, h3ptp, a3ptp, hometoreb, awaytoreb, hometdreb, awaytdreb, hrebt, arebt, hastt, aastt, hstlt, astlt, hblkt, ablkt, hometto, awaytto, ref1, ref2, ref3, attendance, capacity, arena )


    game_box_recap = ''

    attendance_percentage = ((attendance.to_f/capacity.strip.to_f)*100).round(2).to_s

    if(h_initials == 'POR')


      game_box_recap="The Trail Blazers made "+ hometfgma + " shots they attempted resulting in a total team field goal percentage of "+hfgp+"% for the game.  Meanwhile, the "+a_nick+"  made "+ awaytfgma+" shots that they attempted resulting in a total team field goal percentage of "+afgp+ "% for the game.  The Trail Blazers hit "+hometftma+ " free throws shooting " + hftp + "% from the free throw line and the " +a_nick+" hit "+awaytftma+" free throws shooting "+ aftp+"% from the free throw line.  The Trail Blazers made "+homet3fgma+" of the 3-pointers they shot resulting in a total team 3 point field goal percentage of "+h3ptp+"% and the "+a_nick+" made "+awayt3fgma+" of the 3-pointers they shot resulting in a total team 3 point field goal percentage of "+a3ptp+"%.  The Blazers collected "+ hometoreb +" offensive rebounds, "+ hometdreb + " defensive rebounds for a total of "+ hrebt+" rebounds and the " +a_nick+ " scooped up "+awaytoreb+" offensive rebounds, "+awaytdreb+" defensive rebounds for a total of "+arebt+" rebounds.  The Blazers dished out "+hastt+" assists while the " +a_nick+ " dished out "+aastt+".  The Blazers collected "+hstlt+" steals and the "+a_nick+" collected "+astlt+ " steals.  The Blazers blocked " +hblkt+" of the "+a_nick+" shots.  The "+a_nick+" blocked "+ablkt+" of the Blazers shots.  The Blazers turned the ball over "+hometto+" times.  The " +a_nick+" turned the ball over "+awaytto+" times."+"  <br/><br/>  The game was officiated by "+ref1+", "+ref2+" and "+ref3+"<br/><br/> There were "+  number_with_precision(attendance, precision: 0, delimiter: ',') +" out of a possible "+number_with_precision(capacity, precision: 0, delimiter: ',')+" fans in attendace.  This means that "+arena+" was " + attendance_percentage + "% filled to capacity."


    elsif(a_initials == 'POR')



      game_box_recap= "The Trail Blazers made "+ awaytfgma + " shots they attempted resulting in a total team field goal percentage of "+afgp+"% for the game.  Meanwhile, the "+ h_nick+"  made "+ hometfgma+" shots that they attempted resulting in a total team field goal percentage of "+hfgp+ "% for the game.  The Trail Blazers hit "+awaytftma+ " free throws shooting " + aftp + "% from the free throw line and the " + h_nick+ " hit "+hometftma+" free throws shooting "+ hftp+"% from the free throw line.  The Trail Blazers made "+awayt3fgma+"of the 3-pointers they shot resulting in a total team 3 point field goal percentage of "+a3ptp+"% and the "+h_nick+" made "+homet3fgma+" of the 3-pointers they shot resulting in a total team 3 point field goal percentage of "+h3ptp+"%.  The Blazers collected "+ awaytoreb + " offensive rebounds and " + awaytdreb + " defensive rebounds for a total of "+ arebt+" rebounds and the "+h_nick+ " scooped up "+hometoreb+" offensive rebounds and " +hometdreb+" defensive rebounds for a total of "+hrebt+" rebounds.  The Blazers dished out "+aastt+" assists while the "+ h_nick + " dished out "+hastt+".  The Blazers collected "+astlt+" steals and the "+h_nick+" collected "+hstlt+ " steals.  The Blazers blocked "+ablkt+" of the " +h_nick+" shots.  The "+h_nick+" blocked "+hblkt+" of the Blazers shots.  The Blazers turned the ball over "+awaytto+" times.  The "+h_nick+" turned the ball over "+hometto+" times.<br/><br/>  The game was officiated by "+ref1+", "+ref2+" and "+ref3+"<br/><br/> There were "+number_with_precision(attendance, precision: 0, delimiter: ',')+" out of a possible "+number_with_precision(capacity, precision: 0, delimiter: ',')+" fans in attendace.  This means that "+arena+" was " + attendance_percentage + "% filled to capacity."


    end



    return game_box_recap




  end



  def show_summary

  return  game_summary_snippet(@game_recap.h_initials, @game_recap.a_initials, @game_recap.a_nick, @game_recap.h_nick, @game_recap.hometfgma, @game_recap.awaytfgma, @game_recap.hfgp, @game_recap.afgp, @game_recap.hometftma, @game_recap.awaytftma, @game_recap.hftp, @game_recap.aftp, @game_recap.homet3fgma, @game_recap.awayt3fgma, @game_recap.h3ptp, @game_recap.a3ptp, @game_recap.hometoreb, @game_recap.awaytoreb, @game_recap.hometdreb, @game_recap.awaytdreb, @game_recap.hrebt, @game_recap.arebt, @game_recap.hastt, @game_recap.aastt, @game_recap.hstlt, @game_recap.astlt, @game_recap.hblkt, @game_recap.ablkt, @game_recap.hometto, @game_recap.awaytto, @game_recap.ref1, @game_recap.ref2, @game_recap.ref3, @game_recap.attendance, @game_recap.capacity, @game_recap.arena )


  end



  def win_or_loss

    win_or_lose = ''

    if(@game_recap.h_initials == 'POR')

      if @game_recap.htotal.to_i > @game_recap.atotal.to_i

        win_or_lose = "<span class='win_loss_box_show_win'>W</span>"

      elsif (@game_recap.htotal.to_i < @game_recap.atotal.to_i)

        win_or_lose = "<span class='win_loss_box_show_win'>L</span>"

      end



    elsif (@game_recap.a_initials == 'POR')


      if ( @game_recap.atotal.to_i > @game_recap.htotal.to_i )

        win_or_lose = "<span class='win_loss_box_show_win'>W</span>"

      elsif( @game_recap.atotal.to_i < @game_recap.htotal.to_i )

        win_or_lose = "<span class='win_loss_box_show_win'>L</span>"


      end


    end


    return win_or_lose




  end



  def home_or_away


    at_or_away = ''

    if(@game_recap.h_initials == 'POR')

      at_or_away = @game_recap.afname.downcase+'<span class="box_total_h2"> '+@game_recap.atotal+"</span><br/>at<br/> portland trail blazers <span class='box_total_h2'>"+@game_recap.htotal+"</span>"

    end



    if (@game_recap.a_initials == 'POR')

      at_or_away = "portland trail blazers <span class='box_total_h2'>"+@game_recap.atotal+"</span> <br/>at</br> "+@game_recap.hfname.downcase+ " <span class='box_total_h2'>"+@game_recap.htotal+"</span>"

    end


    return at_or_away



  end




  def starter




    starters_or_not = {"astart_class1" => "", "astart_class2" => "", "astart_class3" => "",
                       "astart_class4" => "", "astart_class5" => "", "astart_class6" => "",
                       "astart_class7" => "", "astart_class8" => "", "astart_class9" => "",
                       "astart_class10" => "", "astart_class11" => "", "astart_class12" => "",
                       "astart_class13" => "", "hstart_class1" => "", "hstart_class2" => "", "hstart_class3" => "",
                       "hstart_class4" => "", "hstart_class5" => "", "hstart_class6" => "",
                       "hstart_class7" => "", "hstart_class8" => "", "hstart_class9" => "",
                       "hstart_class10" => "", "hstart_class11" => "","hstart_class12" => "",
                       "hstart_class13" => ""

                      }


    if (@game_recap.ap1_starter =='1')

      starters_or_not["astart_class1"] = "starter"


    else

    end


    if (@game_recap.ap2_starter =='1')

      starters_or_not["astart_class2"] = "starter"


    else

    end

    if (@game_recap.ap3_starter =='1')

      starters_or_not["astart_class3"] = "starter"


    else

    end


    if (@game_recap.ap4_starter =='1')

      starters_or_not["astart_class4"] = "starter"


    else

    end



    if (@game_recap.ap5_starter =='1')

      starters_or_not["astart_class5"] = "starter"


    else

    end



    if (@game_recap.ap6_starter =='1')

      starters_or_not["astart_class6"] = "starter"


    else

    end




    if (@game_recap.ap7_starter =='1')

      starters_or_not["astart_class7"] = "starter"


    else

    end



    if (@game_recap.ap8_starter =='1')

      starters_or_not["astart_class8"] = "starter"


    else

    end


    if (@game_recap.ap9_starter =='1')

      starters_or_not["astart_class9"] = "starter"


    else

    end



    if (@game_recap.ap10_starter =='1')

      starters_or_not["astart_class10"] = "starter"


    else

    end




    if (@game_recap.ap11_starter =='1')

      starters_or_not["astart_class11"] = "starter"


    else

    end


    if (@game_recap.ap12_starter =='1')

      starters_or_not["astart_class12"] = "starter"


    else

    end




    if (@game_recap.ap13_starter =='1')

      starters_or_not["astart_class13"] = "starter"


    else

    end



    if (@game_recap.hp1_starter =='1')

      starters_or_not["hstart_class1"] = "starter"


    else

    end


    if (@game_recap.hp2_starter =='1')

      starters_or_not["hstart_class2"] = "starter"


    else

    end

    if (@game_recap.hp3_starter =='1')

      starters_or_not["hstart_class3"] = "starter"


    else

    end


    if (@game_recap.hp4_starter =='1')

      starters_or_not["hstart_class4"] = "starter"


    else

    end


    if (@game_recap.hp5_starter =='1')

      starters_or_not["hstart_class5"] = "starter"


    else

    end



    if (@game_recap.hp6_starter =='1')

      starters_or_not["hstart_class6"] = "starter"


    else

    end



    if (@game_recap.hp7_starter =='1')

      starters_or_not["hstart_class7"] = "starter"


    else

    end


    if (@game_recap.hp8_starter =='1')

      starters_or_not["hstart_class8"] = "starter"


    else

    end


    if (@game_recap.hp9_starter =='1')

      starters_or_not["hstart_class9"] = "starter"


    else

    end


    if (@game_recap.hp10_starter =='1')

      starters_or_not["hstart_class10"] = "starter"


    else

    end

    if (@game_recap.hp11_starter =='1')

      starters_or_not["hstart_class11"] = "starter"


    else

    end

    if (@game_recap.hp12_starter =='1')

      starters_or_not["hstart_class12"] = "starter"


    else

    end


    if (@game_recap.hp13_starter =='1')

      starters_or_not["hstart_class13"] = "starter"


    else

    end

    return starters_or_not

  end





  def team_totals


 away_total_to = (@game_recap.ap1_to.to_i+@game_recap.ap2_to.to_i+@game_recap.ap3_to.to_i+@game_recap.ap4_to.to_i+@game_recap.ap5_to.to_i+@game_recap.ap6_to.to_i+@game_recap.ap7_to.to_i+@game_recap.ap8_to.to_i+@game_recap.ap9_to.to_i+@game_recap.ap10_to.to_i+@game_recap.ap11_to.to_i+@game_recap.ap12_to.to_i+@game_recap.ap13_to.to_i)

 home_total_to = (@game_recap.hp1_to.to_i+@game_recap.hp2_to.to_i+@game_recap.hp3_to.to_i+@game_recap.hp4_to.to_i+@game_recap.hp5_to.to_i+@game_recap.hp6_to.to_i+@game_recap.hp7_to.to_i+@game_recap.hp8_to.to_i+@game_recap.hp9_to.to_i+@game_recap.hp10_to.to_i+@game_recap.hp11_to.to_i+@game_recap.hp12_to.to_i+@game_recap.hp13_to.to_i)


    # <table id="box_team_total_percentages">
    # <tbody><tr style="border: 1px inset #000;"><th colspan="11" style="border: 1px inset #000;">totals</th></tr>
    # <tr style="border: 1px inset #000;font-weight:800;"><td style="border: 1px inset #000;"> </td><td style="border: 1px inset #000;">PTS</td><td style="border: 1px inset #000;">FG%</td><td style="border: 1px inset #000;">FT%</td><td>3PT%</td><td style="border: 1px inset #000;">REB</td><td style="border: 1px inset #000;">AST</td><td style="border: 1px inset #000;">STL</td><td style="border: 1px inset #000;">BLK</td><td style="border: 1px inset #000;">TO</td><td style="border: 1px inset #000;">PF</td></tr>
    # <tr style="border: 1px inset #000;"><td style="border: 1px inset #000;font-weight:800;"><%= @game_recap.a_nick %></td><td style="border: 1px inset #000;"><%= @game_recap.atotal %></td><td style="border: 1px inset #000;"><%= @game_recap.afgp %></td><td style="border: 1px inset #000;"><%= @game_recap.aftp %></td><td style="border: 1px inset #000;"><%= @game_recap.a3ptp %></td><td style="border: 1px inset #000;"><%= @game_recap.arebt %></td><td style="border: 1px inset #000;"><%= @game_recap.aastt %></td><td style="border: 1px inset #000;"><%= @game_recap.astlt %></td><td style="border: 1px inset #000;"><%= @game_recap.ablkt %></td><td style="border: 1px inset #000;"><%= away_total_to %></td><td style="border: 1px inset #000;"><%= @game_recap.awaytpf %></td></tr>
    # <tr style="border: 1px inset #000;"><td style="border: 1px inset #000;font-weight:800;"><%= @game_recap.h_nick %></td><td style="border: 1px inset #000;"><%= @game_recap.htotal %></td><td style="border: 1px inset #000;"><%= @game_recap.hfgp %></td><td style="border: 1px inset #000;"><%= @game_recap.hftp %></td><td style="border: 1px inset #000;"><%= @game_recap.h3ptp %></td><td style="border: 1px inset #000;"><%= @game_recap.hrebt %></td><td style="border: 1px inset #000;"><%= @game_recap.hastt %></td><td style="border: 1px inset #000;"><%= @game_recap.hstlt %></td><td style="border: 1px inset #000;"><%= @game_recap.hblkt %></td><td style="border: 1px inset #000;"><%= home_total_to %></td><td style="border: 1px inset #000;"><%= @game_recap.hometpf %></td></tr>
    # </tbody></table>

    str_totals = ""
    str_totals += "<table id='box_team_total_percentages'>"
    str_totals += "<tbody><tr style='border: 1px inset #000;'><th colspan='11' style='border: 1px inset #000;'>totals</th></tr>"
    str_totals += "<tr style='border: 1px inset #000;font-weight:800;'><td style='border: 1px inset #000;'> </td><td style='border: 1px inset #000;'>PTS</td><td style='border: 1px inset #000;'>FG%</td><td style='border: 1px inset #000;'>FT%</td><td>3PT%</td><td style='border: 1px inset #000;'>REB</td><td style='border: 1px inset #000;'>AST</td><td style='border: 1px inset #000;'>STL</td><td style='border: 1px inset #000;'>BLK</td><td style='border: 1px inset #000;'>TO</td><td style='border: 1px inset #000;'>PF</td></tr>"
    str_totals += "<tr style='border: 1px inset #000;'><td style='border: 1px inset #000;font-weight:800;'> #{@game_recap.a_nick} </td><td style='border: 1px inset #000;'> #{@game_recap.atotal} </td><td style='border: 1px inset #000;'>#{@game_recap.afgp}</td><td style='border: 1px inset #000;'>#{@game_recap.aftp}</td><td style='border: 1px inset #000;'> #{@game_recap.a3ptp}</td><td style='border: 1px inset #000;'> #{@game_recap.arebt}</td><td style='border: 1px inset #000;'> #{@game_recap.aastt} </td><td style='border: 1px inset #000;'>#{@game_recap.astlt}</td><td style='border: 1px inset #000;'> #{@game_recap.ablkt}</td><td style='border: 1px inset #000;'> #{away_total_to}</td><td style='border: 1px inset #000;'> #{@game_recap.awaytpf}</td></tr>"
    str_totals += "<tr style='border: 1px inset #000;'><td style='border: 1px inset #000;font-weight:800;'>#{@game_recap.h_nick} </td><td style='border: 1px inset #000;'>#{@game_recap.htotal} </td><td style='border: 1px inset #000;'> #{@game_recap.hfgp}</td><td style='border: 1px inset #000;'>#{@game_recap.hftp}</td><td style='border: 1px inset #000;'>#{@game_recap.h3ptp}</td><td style='border: 1px inset #000;'> #{@game_recap.hrebt}</td><td style='border: 1px inset #000;'>#{@game_recap.hastt}</td><td style='border: 1px inset #000;'>#{@game_recap.hstlt}</td><td style='border: 1px inset #000;'>#{@game_recap.hblkt}</td><td style='border: 1px inset #000;'> #{home_total_to}</td><td style='border: 1px inset #000;'>#{@game_recap.hometpf}</td></tr>"
    str_totals += "</tbody></table>"

    return str_totals

  end

  def quarter_breakdown


    away_nick_dash= "#{@game_recap.afname.parameterize}.png"
    home_nick_dash = "#{@game_recap.hfname.parameterize}.png"

    by_the_quarter =""

    by_the_quarter +=  "<table id='last_game_period_box'>"


    by_the_quarter +="<tr><th>&nbsp;</th><th>&nbsp;</th><th>1</th><th>2</th><th>3</th><th>4</th>"



    if( @game_recap.aq5.to_s.strip.length == 0 || @game_recap.aq5.to_s == '' )

    else

      by_the_quarter += "<th>OT1</th>"

    end


    if( @game_recap.aq6.to_s.strip.length == 0 || @game_recap.aq6.to_s == '' )

    else

      by_the_quarter += "<th>OT2</th>"

    end


    if( @game_recap.aq7.to_s.strip.length == 0 || @game_recap.aq7.to_s == '' )

    else

      by_the_quarter += "<th>OT3</th>"

    end


    if( @game_recap.aq8.to_s.strip.length == 0 || @game_recap.aq8.to_s == '' )

    else

      by_the_quarter += "<th>OT4</th>"

    end


    if( @game_recap.aq9.to_s.strip.length == 0 || @game_recap.aq9.to_s == '' )

    else

      by_the_quarter += "<th>OT5</th>"

    end


    if( @game_recap.aq10.to_s.strip.length == 0 || @game_recap.aq10.to_s == '' )

    else

      by_the_quarter += "<th>OT6</th>"

    end


    by_the_quarter += "<tr><td class='logo_box' > #{image_tag(away_nick_dash, style: "float:left;border-top:1px inset #777777;padding-top:10px;", class:"uk-img-preserve")}</td><td>#{@game_recap.a_initials}</td><td> #{@game_recap.aq1} <td>#{@game_recap.aq2}</td><td>#{ @game_recap.aq3}</td><td>#{@game_recap.aq4}</td>"


    if( @game_recap.aq5.to_s.strip.length == 0 || @game_recap.aq5.to_s == '' )

    else

      by_the_quarter += "<td>#{@game_recap.aq5}</td>"

    end


    if( @game_recap.aq6.to_s.strip.length == 0 || @game_recap.aq6.to_s == '' )

    else

      by_the_quarter += "<td>#{@game_recap.aq6}</td>"

    end

    if( @game_recap.aq7.to_s.strip.length == 0 || @game_recap.aq7.to_s == '' )

    else

      by_the_quarter += "<td>#{@game_recap.aq7}</td>"

    end


    if( @game_recap.aq8.to_s.strip.length == 0 || @game_recap.aq8.to_s == '' )

    else

      by_the_quarter += "<td>#{@game_recap.aq8}</td>"

    end


    if( @game_recap.aq9.to_s.strip.length == 0 || @game_recap.aq9.to_s == '' )

    else

      by_the_quarter += "<td>#{@game_recap.aq9}</td>"

    end


    if( @game_recap.aq10.to_s.strip.length == 0 || @game_recap.aq10.to_s == '' )

    else

      by_the_quarter += "<td>#{@game_recap.aq10}</td>"

    end


      by_the_quarter += "<td class='quarters_total'>#{@game_recap.atotal}</td></tr>"


      by_the_quarter +="<tr><td class='logo_box'>#{image_tag(home_nick_dash, style: "float:left;border-top:1px inset #777777;padding-top:10px;", class:"uk-img-preserve")}</td><td>#{@game_recap.h_initials}</td> <td>#{@game_recap.hq1}</td> <td>#{@game_recap.hq2}</td> <td>#{@game_recap.hq3}</td><td>#{@game_recap.hq4}</td>"



    if( @game_recap.hq5.to_s.strip.length == 0 || @game_recap.hq5.to_s == '' )

    else

      by_the_quarter += "<td>#{@game_recap.hq5}</td>"

    end


    if( @game_recap.hq6.to_s.strip.length == 0 || @game_recap.hq6.to_s == '' )

    else

      by_the_quarter += "<td>#{@game_recap.hq6}</td>"

    end

    if( @game_recap.hq7.to_s.strip.length == 0 || @game_recap.hq7.to_s == '' )

    else

      by_the_quarter += "<td>#{@game_recap.hq7}</td>"

    end


    if( @game_recap.hq8.to_s.strip.length == 0 || @game_recap.hq8.to_s == '' )

    else

      by_the_quarter += "<td>#{@game_recap.hq8}</td>"

    end


    if( @game_recap.hq9.to_s.strip.length == 0 || @game_recap.hq9.to_s == '' )

    else

      by_the_quarter += "<td>#{@game_recap.hq9}</td>"

    end


    if( @game_recap.hq10.to_s.strip.length == 0 || @game_recap.hq10.to_s == '' )

    else

      by_the_quarter += "<td>#{@game_recap.hq10}</td>"

    end


    by_the_quarter +="<td class='quarters_total'>#{@game_recap.htotal}</td></tr></table>"


    return by_the_quarter

  end





end



def away_boxscore

  away_total_to = (@game_recap.ap1_to.to_i+@game_recap.ap2_to.to_i+@game_recap.ap3_to.to_i+@game_recap.ap4_to.to_i+@game_recap.ap5_to.to_i+@game_recap.ap6_to.to_i+@game_recap.ap7_to.to_i+@game_recap.ap8_to.to_i+@game_recap.ap9_to.to_i+@game_recap.ap10_to.to_i+@game_recap.ap11_to.to_i+@game_recap.ap12_to.to_i+@game_recap.ap13_to.to_i)

      box_away = ""
      box_away += "<table id='boxscore_away'>"
      box_away += "<tr style='border: 1px inset #000;'><th style='border: 1px inset #000;' colspan='19'>#{@game_recap.afname.downcase}<span class='digit_box_total'> #{@game_recap.atotal}</span></th></tr>"
      box_away += "<tr style='border: 1px inset #000;font-weight:800;'><td style='border: 1px inset #000;'>PLAYER</td><td style='border: 1px inset #000;'>MIN</td><td style='border: 1px inset #000;'>PTS</td><td style='border: 1px inset #000;'>FGM-A</td><td style='border: 1px inset #000;' class='hide_box_column'>3PM-A</td><td style='border: 1px inset #000;'>FTM-A</td><td style='border: 1px inset #000;' class='hide_box_column'>O-REB</td><td style='border: 1px inset #000;' class='hide_box_column'>D-REB</td><td style='border: 1px inset #000;'>REB</td><td style='border: 1px inset #000;'>AST</td><td style='border: 1px inset #000;' class='hide_box_column'>STL</td><td style='border: 1px inset #000;' class='hide_box_column'>BLK</td><td style='border: 1px inset #000;' class='hide_box_column'>TO</td><td style='border: 1px inset #000;'>PF</td><td style='border: 1px inset #000;' class='hide_this'>STARTER</td></tr>"
      box_away += "<tr style='border: 1px inset #000;'><td class='#{starter['astart_class1']}'> #{@game_recap.ap1_name}</td><td class='#{starter['astart_class1']}' style='border: 1px inset #000;'> #{@game_recap.ap1_min}</td><td class='#{starter['astart_class1']}' style='border: 1px inset #000;'>#{@game_recap.ap1_pts}</td><td class='#{starter['astart_class1']}' style='border: 1px inset #000;'>#{@game_recap.ap1_fgma}</td><td style='border: 1px inset #000;' class='#{starter['astart_class1']} hide_box_column'>#{@game_recap.ap1_3pma} </td><td class='#{starter['astart_class1']}' style='border: 1px inset #000;'>#{@game_recap.ap1_ftma}</td><td style='border: 1px inset #000;' class=' #{starter['astart_class1']} hide_box_column'>#{@game_recap.ap1_oreb}</td><td style='border: 1px inset #000;' class='#{starter['astart_class1']} hide_box_column'>#{@game_recap.ap1_dreb}</td><td class='#{starter['astart_class1']}' style='border: 1px inset #000;'>#{@game_recap.ap1_reb}</td><td class='#{starter['astart_class1']}' style='border: 1px inset #000;'>#{@game_recap.ap1_ast}</td><td style='border: 1px inset #000;' class='#{starter['astart_class1']} hide_box_column'>#{@game_recap.ap1_stl}</td><td style='border: 1px inset #000;' class='#{starter['astart_class1']} hide_box_column'>#{@game_recap.ap1_blk}</td><td style='border: 1px inset #000;' class='#{starter['astart_class1']} hide_box_column'>#{@game_recap.ap1_to}</td><td class='#{starter['astart_class1']}' style='border: 1px inset #000;'>#{@game_recap.ap1_pf}</td><td style='border: 1px inset #000;' class='#{starter['astart_class1']} hide_this'></td></tr>"
      box_away += "<tr style='border: 1px inset #000;'><td class='#{starter['astart_class2']}'> #{@game_recap.ap2_name}</td><td class='#{starter['astart_class2']}' style='border: 1px inset #000;'> #{@game_recap.ap2_min}</td><td class='#{starter['astart_class2']}' style='border: 1px inset #000;'>#{@game_recap.ap2_pts}</td><td class='#{starter['astart_class2']}' style='border: 1px inset #000;'>#{@game_recap.ap2_fgma}</td><td style='border: 1px inset #000;' class='#{starter['astart_class2']} hide_box_column'>#{@game_recap.ap2_3pma} </td><td class='#{starter['astart_class2']}' style='border: 1px inset #000;'>#{@game_recap.ap2_ftma}</td><td style='border: 1px inset #000;' class=' #{starter['astart_class2']} hide_box_column'>#{@game_recap.ap2_oreb}</td><td style='border: 1px inset #000;' class='#{starter['astart_class2']} hide_box_column'>#{@game_recap.ap2_dreb}</td><td class='#{starter['astart_class2']}' style='border: 1px inset #000;'>#{@game_recap.ap2_reb}</td><td class='#{starter['astart_class2']}' style='border: 1px inset #000;'>#{@game_recap.ap2_ast}</td><td style='border: 1px inset #000;' class='#{starter['astart_class2']} hide_box_column'>#{@game_recap.ap2_stl}</td><td style='border: 1px inset #000;' class='#{starter['astart_class2']} hide_box_column'>#{@game_recap.ap2_blk}</td><td style='border: 1px inset #000;' class='#{starter['astart_class2']} hide_box_column'>#{@game_recap.ap2_to}</td><td class='#{starter['astart_class2']}' style='border: 1px inset #000;'>#{@game_recap.ap2_pf}</td><td style='border: 1px inset #000;' class='#{starter['astart_class2']} hide_this'></td></tr>"
      box_away += "<tr style='border: 1px inset #000;'><td class='#{starter['astart_class3']}'> #{@game_recap.ap3_name}</td><td class='#{starter['astart_class3']}' style='border: 1px inset #000;'> #{@game_recap.ap3_min}</td><td class='#{starter['astart_class3']}' style='border: 1px inset #000;'>#{@game_recap.ap3_pts}</td><td class='#{starter['astart_class3']}' style='border: 1px inset #000;'>#{@game_recap.ap3_fgma}</td><td style='border: 1px inset #000;' class='#{starter['astart_class3']} hide_box_column'>#{@game_recap.ap3_3pma} </td><td class='#{starter['astart_class3']}' style='border: 1px inset #000;'>#{@game_recap.ap3_ftma}</td><td style='border: 1px inset #000;' class=' #{starter['astart_class3']} hide_box_column'>#{@game_recap.ap3_oreb}</td><td style='border: 1px inset #000;' class='#{starter['astart_class3']} hide_box_column'>#{@game_recap.ap3_dreb}</td><td class='#{starter['astart_class3']}' style='border: 1px inset #000;'>#{@game_recap.ap3_reb}</td><td class='#{starter['astart_class3']}' style='border: 1px inset #000;'>#{@game_recap.ap3_ast}</td><td style='border: 1px inset #000;' class='#{starter['astart_class3']} hide_box_column'>#{@game_recap.ap3_stl}</td><td style='border: 1px inset #000;' class='#{starter['astart_class3']} hide_box_column'>#{@game_recap.ap3_blk}</td><td style='border: 1px inset #000;' class='#{starter['astart_class3']} hide_box_column'>#{@game_recap.ap3_to}</td><td class='#{starter['astart_class3']}' style='border: 1px inset #000;'>#{@game_recap.ap3_pf}</td><td style='border: 1px inset #000;' class='#{starter['astart_class3']} hide_this'></td></tr>"
      box_away += "<tr style='border: 1px inset #000;'><td class='#{starter['astart_class4']}'> #{@game_recap.ap4_name}</td><td class='#{starter['astart_class4']}' style='border: 1px inset #000;'> #{@game_recap.ap4_min}</td><td class='#{starter['astart_class4']}' style='border: 1px inset #000;'>#{@game_recap.ap4_pts}</td><td class='#{starter['astart_class4']}' style='border: 1px inset #000;'>#{@game_recap.ap4_fgma}</td><td style='border: 1px inset #000;' class='#{starter['astart_class4']} hide_box_column'>#{@game_recap.ap4_3pma} </td><td class='#{starter['astart_class4']}' style='border: 1px inset #000;'>#{@game_recap.ap4_ftma}</td><td style='border: 1px inset #000;' class=' #{starter['astart_class4']} hide_box_column'>#{@game_recap.ap4_oreb}</td><td style='border: 1px inset #000;' class='#{starter['astart_class4']} hide_box_column'>#{@game_recap.ap4_dreb}</td><td class='#{starter['astart_class4']}' style='border: 1px inset #000;'>#{@game_recap.ap4_reb}</td><td class='#{starter['astart_class4']}' style='border: 1px inset #000;'>#{@game_recap.ap4_ast}</td><td style='border: 1px inset #000;' class='#{starter['astart_class4']} hide_box_column'>#{@game_recap.ap4_stl}</td><td style='border: 1px inset #000;' class='#{starter['astart_class4']} hide_box_column'>#{@game_recap.ap4_blk}</td><td style='border: 1px inset #000;' class='#{starter['astart_class4']} hide_box_column'>#{@game_recap.ap4_to}</td><td class='#{starter['astart_class4']}' style='border: 1px inset #000;'>#{@game_recap.ap4_pf}</td><td style='border: 1px inset #000;' class='#{starter['astart_class4']} hide_this'></td></tr>"
      box_away += "<tr style='border: 1px inset #000;'><td class='#{starter['astart_class5']}'> #{@game_recap.ap5_name}</td><td class='#{starter['astart_class5']}' style='border: 1px inset #000;'> #{@game_recap.ap5_min}</td><td class='#{starter['astart_class5']}' style='border: 1px inset #000;'>#{@game_recap.ap5_pts}</td><td class='#{starter['astart_class5']}' style='border: 1px inset #000;'>#{@game_recap.ap5_fgma}</td><td style='border: 1px inset #000;' class='#{starter['astart_class5']} hide_box_column'>#{@game_recap.ap5_3pma} </td><td class='#{starter['astart_class5']}' style='border: 1px inset #000;'>#{@game_recap.ap5_ftma}</td><td style='border: 1px inset #000;' class=' #{starter['astart_class5']} hide_box_column'>#{@game_recap.ap5_oreb}</td><td style='border: 1px inset #000;' class='#{starter['astart_class5']} hide_box_column'>#{@game_recap.ap5_dreb}</td><td class='#{starter['astart_class5']}' style='border: 1px inset #000;'>#{@game_recap.ap5_reb}</td><td class='#{starter['astart_class5']}' style='border: 1px inset #000;'>#{@game_recap.ap5_ast}</td><td style='border: 1px inset #000;' class='#{starter['astart_class5']} hide_box_column'>#{@game_recap.ap5_stl}</td><td style='border: 1px inset #000;' class='#{starter['astart_class5']} hide_box_column'>#{@game_recap.ap5_blk}</td><td style='border: 1px inset #000;' class='#{starter['astart_class5']} hide_box_column'>#{@game_recap.ap5_to}</td><td class='#{starter['astart_class5']}' style='border: 1px inset #000;'>#{@game_recap.ap5_pf}</td><td style='border: 1px inset #000;' class='#{starter['astart_class5']} hide_this'></td></tr>"
      box_away += "<tr style='border: 1px inset #000;'><td class='#{starter['astart_class6']}'> #{@game_recap.ap6_name}</td><td class='#{starter['astart_class6']}' style='border: 1px inset #000;'> #{@game_recap.ap6_min}</td><td class='#{starter['astart_class6']}' style='border: 1px inset #000;'>#{@game_recap.ap6_pts}</td><td class='#{starter['astart_class6']}' style='border: 1px inset #000;'>#{@game_recap.ap6_fgma}</td><td style='border: 1px inset #000;' class='#{starter['astart_class6']} hide_box_column'>#{@game_recap.ap6_3pma} </td><td class='#{starter['astart_class6']}' style='border: 1px inset #000;'>#{@game_recap.ap6_ftma}</td><td style='border: 1px inset #000;' class=' #{starter['astart_class6']} hide_box_column'>#{@game_recap.ap6_oreb}</td><td style='border: 1px inset #000;' class='#{starter['astart_class6']} hide_box_column'>#{@game_recap.ap6_dreb}</td><td class='#{starter['astart_class6']}' style='border: 1px inset #000;'>#{@game_recap.ap6_reb}</td><td class='#{starter['astart_class6']}' style='border: 1px inset #000;'>#{@game_recap.ap6_ast}</td><td style='border: 1px inset #000;' class='#{starter['astart_class6']} hide_box_column'>#{@game_recap.ap6_stl}</td><td style='border: 1px inset #000;' class='#{starter['astart_class6']} hide_box_column'>#{@game_recap.ap6_blk}</td><td style='border: 1px inset #000;' class='#{starter['astart_class6']} hide_box_column'>#{@game_recap.ap6_to}</td><td class='#{starter['astart_class6']}' style='border: 1px inset #000;'>#{@game_recap.ap6_pf}</td><td style='border: 1px inset #000;' class='#{starter['astart_class6']} hide_this'></td></tr>"
      box_away += "<tr style='border: 1px inset #000;'><td class='#{starter['astart_class7']}'> #{@game_recap.ap7_name}</td><td class='#{starter['astart_class7']}' style='border: 1px inset #000;'> #{@game_recap.ap7_min}</td><td class='#{starter['astart_class7']}' style='border: 1px inset #000;'>#{@game_recap.ap7_pts}</td><td class='#{starter['astart_class7']}' style='border: 1px inset #000;'>#{@game_recap.ap7_fgma}</td><td style='border: 1px inset #000;' class='#{starter['astart_class7']} hide_box_column'>#{@game_recap.ap7_3pma} </td><td class='#{starter['astart_class7']}' style='border: 1px inset #000;'>#{@game_recap.ap7_ftma}</td><td style='border: 1px inset #000;' class=' #{starter['astart_class7']} hide_box_column'>#{@game_recap.ap7_oreb}</td><td style='border: 1px inset #000;' class='#{starter['astart_class7']} hide_box_column'>#{@game_recap.ap7_dreb}</td><td class='#{starter['astart_class7']}' style='border: 1px inset #000;'>#{@game_recap.ap7_reb}</td><td class='#{starter['astart_class7']}' style='border: 1px inset #000;'>#{@game_recap.ap7_ast}</td><td style='border: 1px inset #000;' class='#{starter['astart_class7']} hide_box_column'>#{@game_recap.ap7_stl}</td><td style='border: 1px inset #000;' class='#{starter['astart_class7']} hide_box_column'>#{@game_recap.ap7_blk}</td><td style='border: 1px inset #000;' class='#{starter['astart_class7']} hide_box_column'>#{@game_recap.ap7_to}</td><td class='#{starter['astart_class7']}' style='border: 1px inset #000;'>#{@game_recap.ap7_pf}</td><td style='border: 1px inset #000;' class='#{starter['astart_class7']} hide_this'></td></tr>"

      if (@game_recap.ap8_name.to_s.strip.length > 0 )

        box_away += "<tr style='border: 1px inset #000;'><td class='#{starter['astart_class8']}'> #{@game_recap.ap8_name}</td><td class='#{starter['astart_class8']}' style='border: 1px inset #000;'> #{@game_recap.ap8_min}</td><td class='#{starter['astart_class8']}' style='border: 1px inset #000;'>#{@game_recap.ap8_pts}</td><td class='#{starter['astart_class8']}' style='border: 1px inset #000;'>#{@game_recap.ap8_fgma}</td><td style='border: 1px inset #000;' class='#{starter['astart_class8']} hide_box_column'>#{@game_recap.ap8_3pma} </td><td class='#{starter['astart_class8']}' style='border: 1px inset #000;'>#{@game_recap.ap8_ftma}</td><td style='border: 1px inset #000;' class=' #{starter['astart_class8']} hide_box_column'>#{@game_recap.ap8_oreb}</td><td style='border: 1px inset #000;' class='#{starter['astart_class8']} hide_box_column'>#{@game_recap.ap8_dreb}</td><td class='#{starter['astart_class8']}' style='border: 1px inset #000;'>#{@game_recap.ap8_reb}</td><td class='#{starter['astart_class8']}' style='border: 1px inset #000;'>#{@game_recap.ap8_ast}</td><td style='border: 1px inset #000;' class='#{starter['astart_class8']} hide_box_column'>#{@game_recap.ap8_stl}</td><td style='border: 1px inset #000;' class='#{starter['astart_class8']} hide_box_column'>#{@game_recap.ap8_blk}</td><td style='border: 1px inset #000;' class='#{starter['astart_class8']} hide_box_column'>#{@game_recap.ap8_to}</td><td class='#{starter['astart_class8']}' style='border: 1px inset #000;'>#{@game_recap.ap8_pf}</td><td style='border: 1px inset #000;' class='#{starter['astart_class8']} hide_this'></td></tr>"

      else

      end


      if (@game_recap.ap9_name.to_s.strip.length > 0 )

        box_away += "<tr style='border: 1px inset #000;'><td class='#{starter['astart_class9']}'> #{@game_recap.ap9_name}</td><td class='#{starter['astart_class9']}' style='border: 1px inset #000;'> #{@game_recap.ap9_min}</td><td class='#{starter['astart_class9']}' style='border: 1px inset #000;'>#{@game_recap.ap9_pts}</td><td class='#{starter['astart_class9']}' style='border: 1px inset #000;'>#{@game_recap.ap9_fgma}</td><td style='border: 1px inset #000;' class='#{starter['astart_class9']} hide_box_column'>#{@game_recap.ap9_3pma} </td><td class='#{starter['astart_class9']}' style='border: 1px inset #000;'>#{@game_recap.ap9_ftma}</td><td style='border: 1px inset #000;' class=' #{starter['astart_class9']} hide_box_column'>#{@game_recap.ap9_oreb}</td><td style='border: 1px inset #000;' class='#{starter['astart_class9']} hide_box_column'>#{@game_recap.ap9_dreb}</td><td class='#{starter['astart_class9']}' style='border: 1px inset #000;'>#{@game_recap.ap9_reb}</td><td class='#{starter['astart_class9']}' style='border: 1px inset #000;'>#{@game_recap.ap9_ast}</td><td style='border: 1px inset #000;' class='#{starter['astart_class9']} hide_box_column'>#{@game_recap.ap9_stl}</td><td style='border: 1px inset #000;' class='#{starter['astart_class9']} hide_box_column'>#{@game_recap.ap9_blk}</td><td style='border: 1px inset #000;' class='#{starter['astart_class9']} hide_box_column'>#{@game_recap.ap9_to}</td><td class='#{starter['astart_class9']}' style='border: 1px inset #000;'>#{@game_recap.ap9_pf}</td><td style='border: 1px inset #000;' class='#{starter['astart_class9']} hide_this'></td></tr>"

      else

      end

      if (@game_recap.ap10_name.to_s.strip.length > 0 )

        box_away += "<tr style='border: 1px inset #000;'><td class='#{starter['astart_class10']}'> #{@game_recap.ap10_name}</td><td class='#{starter['astart_class10']}' style='border: 1px inset #000;'> #{@game_recap.ap10_min}</td><td class='#{starter['astart_class10']}' style='border: 1px inset #000;'>#{@game_recap.ap10_pts}</td><td class='#{starter['astart_class10']}' style='border: 1px inset #000;'>#{@game_recap.ap10_fgma}</td><td style='border: 1px inset #000;' class='#{starter['astart_class10']} hide_box_column'>#{@game_recap.ap10_3pma} </td><td class='#{starter['astart_class10']}' style='border: 1px inset #000;'>#{@game_recap.ap10_ftma}</td><td style='border: 1px inset #000;' class=' #{starter['astart_class10']} hide_box_column'>#{@game_recap.ap10_oreb}</td><td style='border: 1px inset #000;' class='#{starter['astart_class10']} hide_box_column'>#{@game_recap.ap10_dreb}</td><td class='#{starter['astart_class10']}' style='border: 1px inset #000;'>#{@game_recap.ap10_reb}</td><td class='#{starter['astart_class10']}' style='border: 1px inset #000;'>#{@game_recap.ap10_ast}</td><td style='border: 1px inset #000;' class='#{starter['astart_class10']} hide_box_column'>#{@game_recap.ap10_stl}</td><td style='border: 1px inset #000;' class='#{starter['astart_class10']} hide_box_column'>#{@game_recap.ap10_blk}</td><td style='border: 1px inset #000;' class='#{starter['astart_class10']} hide_box_column'>#{@game_recap.ap10_to}</td><td class='#{starter['astart_class10']}' style='border: 1px inset #000;'>#{@game_recap.ap10_pf}</td><td style='border: 1px inset #000;' class='#{starter['astart_class10']} hide_this'></td></tr>"

      else

      end

      if (@game_recap.ap11_name.to_s.strip.length > 0 )

        box_away += "<tr style='border: 1px inset #000;'><td class='#{starter['astart_class11']}'> #{@game_recap.ap11_name}</td><td class='#{starter['astart_class11']}' style='border: 1px inset #000;'> #{@game_recap.ap11_min}</td><td class='#{starter['astart_class11']}' style='border: 1px inset #000;'>#{@game_recap.ap11_pts}</td><td class='#{starter['astart_class11']}' style='border: 1px inset #000;'>#{@game_recap.ap11_fgma}</td><td style='border: 1px inset #000;' class='#{starter['astart_class11']} hide_box_column'>#{@game_recap.ap11_3pma} </td><td class='#{starter['astart_class11']}' style='border: 1px inset #000;'>#{@game_recap.ap11_ftma}</td><td style='border: 1px inset #000;' class=' #{starter['astart_class11']} hide_box_column'>#{@game_recap.ap11_oreb}</td><td style='border: 1px inset #000;' class='#{starter['astart_class11']} hide_box_column'>#{@game_recap.ap11_dreb}</td><td class='#{starter['astart_class11']}' style='border: 1px inset #000;'>#{@game_recap.ap11_reb}</td><td class='#{starter['astart_class11']}' style='border: 1px inset #000;'>#{@game_recap.ap11_ast}</td><td style='border: 1px inset #000;' class='#{starter['astart_class11']} hide_box_column'>#{@game_recap.ap11_stl}</td><td style='border: 1px inset #000;' class='#{starter['astart_class11']} hide_box_column'>#{@game_recap.ap11_blk}</td><td style='border: 1px inset #000;' class='#{starter['astart_class11']} hide_box_column'>#{@game_recap.ap11_to}</td><td class='#{starter['astart_class11']}' style='border: 1px inset #000;'>#{@game_recap.ap11_pf}</td><td style='border: 1px inset #000;' class='#{starter['astart_class11']} hide_this'></td></tr>"

      else

      end


      if (@game_recap.ap12_name.to_s.strip.length > 0 )

        box_away += "<tr style='border: 1px inset #000;'><td class='#{starter['astart_class12']}'> #{@game_recap.ap12_name}</td><td class='#{starter['astart_class12']}' style='border: 1px inset #000;'> #{@game_recap.ap12_min}</td><td class='#{starter['astart_class12']}' style='border: 1px inset #000;'>#{@game_recap.ap12_pts}</td><td class='#{starter['astart_class12']}' style='border: 1px inset #000;'>#{@game_recap.ap12_fgma}</td><td style='border: 1px inset #000;' class='#{starter['astart_class12']} hide_box_column'>#{@game_recap.ap12_3pma} </td><td class='#{starter['astart_class12']}' style='border: 1px inset #000;'>#{@game_recap.ap12_ftma}</td><td style='border: 1px inset #000;' class=' #{starter['astart_class12']} hide_box_column'>#{@game_recap.ap12_oreb}</td><td style='border: 1px inset #000;' class='#{starter['astart_class12']} hide_box_column'>#{@game_recap.ap12_dreb}</td><td class='#{starter['astart_class12']}' style='border: 1px inset #000;'>#{@game_recap.ap12_reb}</td><td class='#{starter['astart_class12']}' style='border: 1px inset #000;'>#{@game_recap.ap12_ast}</td><td style='border: 1px inset #000;' class='#{starter['astart_class12']} hide_box_column'>#{@game_recap.ap12_stl}</td><td style='border: 1px inset #000;' class='#{starter['astart_class12']} hide_box_column'>#{@game_recap.ap12_blk}</td><td style='border: 1px inset #000;' class='#{starter['astart_class12']} hide_box_column'>#{@game_recap.ap12_to}</td><td class='#{starter['astart_class12']}' style='border: 1px inset #000;'>#{@game_recap.ap12_pf}</td><td style='border: 1px inset #000;' class='#{starter['astart_class12']} hide_this'></td></tr>"

      else

      end


      if (@game_recap.ap13_name.to_s.strip.length > 0 )

        box_away += "<tr style='border: 1px inset #000;'><td class='#{starter['astart_class13']}'> #{@game_recap.ap13_name}</td><td class='#{starter['astart_class13']}' style='border: 1px inset #000;'> #{@game_recap.ap13_min}</td><td class='#{starter['astart_class13']}' style='border: 1px inset #000;'>#{@game_recap.ap13_pts}</td><td class='#{starter['astart_class13']}' style='border: 1px inset #000;'>#{@game_recap.ap13_fgma}</td><td style='border: 1px inset #000;' class='#{starter['astart_class13']} hide_box_column'>#{@game_recap.ap13_3pma} </td><td class='#{starter['astart_class13']}' style='border: 1px inset #000;'>#{@game_recap.ap13_ftma}</td><td style='border: 1px inset #000;' class=' #{starter['astart_class13']} hide_box_column'>#{@game_recap.ap13_oreb}</td><td style='border: 1px inset #000;' class='#{starter['astart_class13']} hide_box_column'>#{@game_recap.ap13_dreb}</td><td class='#{starter['astart_class13']}' style='border: 1px inset #000;'>#{@game_recap.ap13_reb}</td><td class='#{starter['astart_class13']}' style='border: 1px inset #000;'>#{@game_recap.ap13_ast}</td><td style='border: 1px inset #000;' class='#{starter['astart_class13']} hide_box_column'>#{@game_recap.ap13_stl}</td><td style='border: 1px inset #000;' class='#{starter['astart_class13']} hide_box_column'>#{@game_recap.ap13_blk}</td><td style='border: 1px inset #000;' class='#{starter['astart_class13']} hide_box_column'>#{@game_recap.ap13_to}</td><td class='#{starter['astart_class13']}' style='border: 1px inset #000;'>#{@game_recap.ap13_pf}</td><td style='border: 1px inset #000;' class='#{starter['astart_class13']} hide_this'></td></tr>"

      else

      end

      box_away +="<tr style='border: 1px inset #000;font-weight:800;'> <td  style='border: 1px inset #000;' colspan='2'>#{@game_recap.a_nick}<br/>Totals</td><td style='border: 1px inset #000;'>#{@game_recap.atotal}</td><td style='border: 1px inset #000;'>#{@game_recap.awaytfgma}</td><td style='border: 1px inset #000;' class='hide_box_column'>#{@game_recap.awayt3fgma}</td><td style='border: 1px inset #000;'>#{@game_recap.awaytftma}</td><td style='border: 1px inset #000;' class='hide_box_column'>#{@game_recap.awaytoreb}</td><td style='border: 1px inset #000;' class='hide_box_column'>#{@game_recap.awaytdreb}</td><td style='border: 1px inset #000;'>#{@game_recap.arebt} </td><td style='border: 1px inset #000;'>#{@game_recap.aastt}</td><td style='border: 1px inset #000;' class='hide_box_column'>#{@game_recap.astlt}</td><td style='border: 1px inset #000;' class='hide_box_column'>#{@game_recap.ablkt}</td><td style='border: 1px inset #000;' class='hide_box_column'>#{away_total_to}</td><td colspan='2' style='border: 1px inset #000;'>#{@game_recap.awaytpf}</td></tr>"
      

      box_away += "<table/>"



      return box_away





end


def home_boxscore


  home_total_to = (@game_recap.hp1_to.to_i+@game_recap.hp2_to.to_i+@game_recap.hp3_to.to_i+@game_recap.hp4_to.to_i+@game_recap.hp5_to.to_i+@game_recap.hp6_to.to_i+@game_recap.hp7_to.to_i+@game_recap.hp8_to.to_i+@game_recap.hp9_to.to_i+@game_recap.hp10_to.to_i+@game_recap.hp11_to.to_i+@game_recap.hp12_to.to_i+@game_recap.hp13_to.to_i)

  box_home = ""
  box_home += "<table id='boxscore_away'>"
  box_home += "<tr style='border: 1px inset #000;'><th style='border: 1px inset #000;' colspan='19'>#{@game_recap.hfname.downcase}<span class='digit_box_total'> #{@game_recap.htotal}</span></th></tr>"
  box_home += "<tr style='border: 1px inset #000;font-weight:800;'><td style='border: 1px inset #000;'>PLAYER</td><td style='border: 1px inset #000;'>MIN</td><td style='border: 1px inset #000;'>PTS</td><td style='border: 1px inset #000;'>FGM-A</td><td style='border: 1px inset #000;' class='hide_box_column'>3PM-A</td><td style='border: 1px inset #000;'>FTM-A</td><td style='border: 1px inset #000;' class='hide_box_column'>O-REB</td><td style='border: 1px inset #000;' class='hide_box_column'>D-REB</td><td style='border: 1px inset #000;'>REB</td><td style='border: 1px inset #000;'>AST</td><td style='border: 1px inset #000;' class='hide_box_column'>STL</td><td style='border: 1px inset #000;' class='hide_box_column'>BLK</td><td style='border: 1px inset #000;' class='hide_box_column'>TO</td><td style='border: 1px inset #000;'>PF</td><td style='border: 1px inset #000;' class='hide_this'>STARTER</td></tr>"
  box_home += "<tr style='border: 1px inset #000;'><td class='#{starter['hstart_class1']}'> #{@game_recap.hp1_name}</td><td class='#{starter['hstart_class1']}' style='border: 1px inset #000;'> #{@game_recap.hp1_min}</td><td class='#{starter['hstart_class1']}' style='border: 1px inset #000;'>#{@game_recap.hp1_pts}</td><td class='#{starter['hstart_class1']}' style='border: 1px inset #000;'>#{@game_recap.hp1_fgma}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class1']} hide_box_column'>#{@game_recap.hp1_3pma} </td><td class='#{starter['hstart_class1']}' style='border: 1px inset #000;'>#{@game_recap.hp1_ftma}</td><td style='border: 1px inset #000;' class=' #{starter['hstart_class1']} hide_box_column'>#{@game_recap.hp1_oreb}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class1']} hide_box_column'>#{@game_recap.hp1_dreb}</td><td class='#{starter['hstart_class1']}' style='border: 1px inset #000;'>#{@game_recap.hp1_reb}</td><td class='#{starter['hstart_class1']}' style='border: 1px inset #000;'>#{@game_recap.hp1_ast}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class1']} hide_box_column'>#{@game_recap.hp1_stl}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class1']} hide_box_column'>#{@game_recap.hp1_blk}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class1']} hide_box_column'>#{@game_recap.hp1_to}</td><td class='#{starter['hstart_class1']}' style='border: 1px inset #000;'>#{@game_recap.hp1_pf}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class1']} hide_this'></td></tr>"
  box_home += "<tr style='border: 1px inset #000;'><td class='#{starter['hstart_class2']}'> #{@game_recap.hp2_name}</td><td class='#{starter['hstart_class2']}' style='border: 1px inset #000;'> #{@game_recap.hp2_min}</td><td class='#{starter['hstart_class2']}' style='border: 1px inset #000;'>#{@game_recap.hp2_pts}</td><td class='#{starter['hstart_class2']}' style='border: 1px inset #000;'>#{@game_recap.hp2_fgma}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class2']} hide_box_column'>#{@game_recap.hp2_3pma} </td><td class='#{starter['hstart_class2']}' style='border: 1px inset #000;'>#{@game_recap.hp2_ftma}</td><td style='border: 1px inset #000;' class=' #{starter['hstart_class2']} hide_box_column'>#{@game_recap.hp2_oreb}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class2']} hide_box_column'>#{@game_recap.hp2_dreb}</td><td class='#{starter['hstart_class2']}' style='border: 1px inset #000;'>#{@game_recap.hp2_reb}</td><td class='#{starter['hstart_class2']}' style='border: 1px inset #000;'>#{@game_recap.hp2_ast}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class2']} hide_box_column'>#{@game_recap.hp2_stl}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class2']} hide_box_column'>#{@game_recap.hp2_blk}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class2']} hide_box_column'>#{@game_recap.hp2_to}</td><td class='#{starter['hstart_class2']}' style='border: 1px inset #000;'>#{@game_recap.hp2_pf}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class2']} hide_this'></td></tr>"
  box_home += "<tr style='border: 1px inset #000;'><td class='#{starter['hstart_class3']}'> #{@game_recap.hp3_name}</td><td class='#{starter['hstart_class3']}' style='border: 1px inset #000;'> #{@game_recap.hp3_min}</td><td class='#{starter['hstart_class3']}' style='border: 1px inset #000;'>#{@game_recap.hp3_pts}</td><td class='#{starter['hstart_class3']}' style='border: 1px inset #000;'>#{@game_recap.hp3_fgma}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class3']} hide_box_column'>#{@game_recap.hp3_3pma} </td><td class='#{starter['hstart_class3']}' style='border: 1px inset #000;'>#{@game_recap.hp3_ftma}</td><td style='border: 1px inset #000;' class=' #{starter['hstart_class3']} hide_box_column'>#{@game_recap.hp3_oreb}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class3']} hide_box_column'>#{@game_recap.hp3_dreb}</td><td class='#{starter['hstart_class3']}' style='border: 1px inset #000;'>#{@game_recap.hp3_reb}</td><td class='#{starter['hstart_class3']}' style='border: 1px inset #000;'>#{@game_recap.hp3_ast}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class3']} hide_box_column'>#{@game_recap.hp3_stl}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class3']} hide_box_column'>#{@game_recap.hp3_blk}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class3']} hide_box_column'>#{@game_recap.hp3_to}</td><td class='#{starter['hstart_class3']}' style='border: 1px inset #000;'>#{@game_recap.hp3_pf}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class3']} hide_this'></td></tr>"
  box_home += "<tr style='border: 1px inset #000;'><td class='#{starter['hstart_class4']}'> #{@game_recap.hp4_name}</td><td class='#{starter['hstart_class4']}' style='border: 1px inset #000;'> #{@game_recap.hp4_min}</td><td class='#{starter['hstart_class4']}' style='border: 1px inset #000;'>#{@game_recap.hp4_pts}</td><td class='#{starter['hstart_class4']}' style='border: 1px inset #000;'>#{@game_recap.hp4_fgma}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class4']} hide_box_column'>#{@game_recap.hp4_3pma} </td><td class='#{starter['hstart_class4']}' style='border: 1px inset #000;'>#{@game_recap.hp4_ftma}</td><td style='border: 1px inset #000;' class=' #{starter['hstart_class4']} hide_box_column'>#{@game_recap.hp4_oreb}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class4']} hide_box_column'>#{@game_recap.hp4_dreb}</td><td class='#{starter['hstart_class4']}' style='border: 1px inset #000;'>#{@game_recap.hp4_reb}</td><td class='#{starter['hstart_class4']}' style='border: 1px inset #000;'>#{@game_recap.hp4_ast}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class4']} hide_box_column'>#{@game_recap.hp4_stl}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class4']} hide_box_column'>#{@game_recap.hp4_blk}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class4']} hide_box_column'>#{@game_recap.hp4_to}</td><td class='#{starter['hstart_class4']}' style='border: 1px inset #000;'>#{@game_recap.hp4_pf}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class4']} hide_this'></td></tr>"
  box_home += "<tr style='border: 1px inset #000;'><td class='#{starter['hstart_class5']}'> #{@game_recap.hp5_name}</td><td class='#{starter['hstart_class5']}' style='border: 1px inset #000;'> #{@game_recap.hp5_min}</td><td class='#{starter['hstart_class5']}' style='border: 1px inset #000;'>#{@game_recap.hp5_pts}</td><td class='#{starter['hstart_class5']}' style='border: 1px inset #000;'>#{@game_recap.hp5_fgma}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class5']} hide_box_column'>#{@game_recap.hp5_3pma} </td><td class='#{starter['hstart_class5']}' style='border: 1px inset #000;'>#{@game_recap.hp5_ftma}</td><td style='border: 1px inset #000;' class=' #{starter['hstart_class5']} hide_box_column'>#{@game_recap.hp5_oreb}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class5']} hide_box_column'>#{@game_recap.hp5_dreb}</td><td class='#{starter['hstart_class5']}' style='border: 1px inset #000;'>#{@game_recap.hp5_reb}</td><td class='#{starter['hstart_class5']}' style='border: 1px inset #000;'>#{@game_recap.hp5_ast}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class5']} hide_box_column'>#{@game_recap.hp5_stl}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class5']} hide_box_column'>#{@game_recap.hp5_blk}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class5']} hide_box_column'>#{@game_recap.hp5_to}</td><td class='#{starter['hstart_class5']}' style='border: 1px inset #000;'>#{@game_recap.hp5_pf}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class5']} hide_this'></td></tr>"
  box_home += "<tr style='border: 1px inset #000;'><td class='#{starter['hstart_class6']}'> #{@game_recap.hp6_name}</td><td class='#{starter['hstart_class6']}' style='border: 1px inset #000;'> #{@game_recap.hp6_min}</td><td class='#{starter['hstart_class6']}' style='border: 1px inset #000;'>#{@game_recap.hp6_pts}</td><td class='#{starter['hstart_class6']}' style='border: 1px inset #000;'>#{@game_recap.hp6_fgma}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class6']} hide_box_column'>#{@game_recap.hp6_3pma} </td><td class='#{starter['hstart_class6']}' style='border: 1px inset #000;'>#{@game_recap.hp6_ftma}</td><td style='border: 1px inset #000;' class=' #{starter['hstart_class6']} hide_box_column'>#{@game_recap.hp6_oreb}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class6']} hide_box_column'>#{@game_recap.hp6_dreb}</td><td class='#{starter['hstart_class6']}' style='border: 1px inset #000;'>#{@game_recap.hp6_reb}</td><td class='#{starter['hstart_class6']}' style='border: 1px inset #000;'>#{@game_recap.hp6_ast}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class6']} hide_box_column'>#{@game_recap.hp6_stl}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class6']} hide_box_column'>#{@game_recap.hp6_blk}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class6']} hide_box_column'>#{@game_recap.hp6_to}</td><td class='#{starter['hstart_class6']}' style='border: 1px inset #000;'>#{@game_recap.hp6_pf}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class6']} hide_this'></td></tr>"
  box_home += "<tr style='border: 1px inset #000;'><td class='#{starter['hstart_class7']}'> #{@game_recap.hp7_name}</td><td class='#{starter['hstart_class7']}' style='border: 1px inset #000;'> #{@game_recap.hp7_min}</td><td class='#{starter['hstart_class7']}' style='border: 1px inset #000;'>#{@game_recap.hp7_pts}</td><td class='#{starter['hstart_class7']}' style='border: 1px inset #000;'>#{@game_recap.hp7_fgma}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class7']} hide_box_column'>#{@game_recap.hp7_3pma} </td><td class='#{starter['hstart_class7']}' style='border: 1px inset #000;'>#{@game_recap.hp7_ftma}</td><td style='border: 1px inset #000;' class=' #{starter['hstart_class7']} hide_box_column'>#{@game_recap.hp7_oreb}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class7']} hide_box_column'>#{@game_recap.hp7_dreb}</td><td class='#{starter['hstart_class7']}' style='border: 1px inset #000;'>#{@game_recap.hp7_reb}</td><td class='#{starter['hstart_class7']}' style='border: 1px inset #000;'>#{@game_recap.hp7_ast}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class7']} hide_box_column'>#{@game_recap.hp7_stl}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class7']} hide_box_column'>#{@game_recap.hp7_blk}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class7']} hide_box_column'>#{@game_recap.hp7_to}</td><td class='#{starter['hstart_class7']}' style='border: 1px inset #000;'>#{@game_recap.hp7_pf}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class7']} hide_this'></td></tr>"

  if (@game_recap.hp8_name.to_s.strip.length > 0 )

    box_home += "<tr style='border: 1px inset #000;'><td class='#{starter['hstart_class8']}'> #{@game_recap.hp8_name}</td><td class='#{starter['hstart_class8']}' style='border: 1px inset #000;'> #{@game_recap.hp8_min}</td><td class='#{starter['hstart_class8']}' style='border: 1px inset #000;'>#{@game_recap.hp8_pts}</td><td class='#{starter['hstart_class8']}' style='border: 1px inset #000;'>#{@game_recap.hp8_fgma}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class8']} hide_box_column'>#{@game_recap.hp8_3pma} </td><td class='#{starter['hstart_class8']}' style='border: 1px inset #000;'>#{@game_recap.hp8_ftma}</td><td style='border: 1px inset #000;' class=' #{starter['hstart_class8']} hide_box_column'>#{@game_recap.hp8_oreb}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class8']} hide_box_column'>#{@game_recap.hp8_dreb}</td><td class='#{starter['hstart_class8']}' style='border: 1px inset #000;'>#{@game_recap.hp8_reb}</td><td class='#{starter['hstart_class8']}' style='border: 1px inset #000;'>#{@game_recap.hp8_ast}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class8']} hide_box_column'>#{@game_recap.hp8_stl}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class8']} hide_box_column'>#{@game_recap.hp8_blk}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class8']} hide_box_column'>#{@game_recap.hp8_to}</td><td class='#{starter['hstart_class8']}' style='border: 1px inset #000;'>#{@game_recap.hp8_pf}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class8']} hide_this'></td></tr>"

  else

  end


  if (@game_recap.hp9_name.to_s.strip.length > 0 )

    box_home += "<tr style='border: 1px inset #000;'><td class='#{starter['hstart_class9']}'> #{@game_recap.hp9_name}</td><td class='#{starter['hstart_class9']}' style='border: 1px inset #000;'> #{@game_recap.hp9_min}</td><td class='#{starter['hstart_class9']}' style='border: 1px inset #000;'>#{@game_recap.hp9_pts}</td><td class='#{starter['hstart_class9']}' style='border: 1px inset #000;'>#{@game_recap.hp9_fgma}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class9']} hide_box_column'>#{@game_recap.hp9_3pma} </td><td class='#{starter['hstart_class9']}' style='border: 1px inset #000;'>#{@game_recap.hp9_ftma}</td><td style='border: 1px inset #000;' class=' #{starter['hstart_class9']} hide_box_column'>#{@game_recap.hp9_oreb}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class9']} hide_box_column'>#{@game_recap.hp9_dreb}</td><td class='#{starter['hstart_class9']}' style='border: 1px inset #000;'>#{@game_recap.hp9_reb}</td><td class='#{starter['hstart_class9']}' style='border: 1px inset #000;'>#{@game_recap.hp9_ast}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class9']} hide_box_column'>#{@game_recap.hp9_stl}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class9']} hide_box_column'>#{@game_recap.hp9_blk}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class9']} hide_box_column'>#{@game_recap.hp9_to}</td><td class='#{starter['hstart_class9']}' style='border: 1px inset #000;'>#{@game_recap.hp9_pf}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class9']} hide_this'></td></tr>"

  else

  end

  if (@game_recap.hp10_name.to_s.strip.length > 0 )

    box_home += "<tr style='border: 1px inset #000;'><td class='#{starter['hstart_class10']}'> #{@game_recap.hp10_name}</td><td class='#{starter['hstart_class10']}' style='border: 1px inset #000;'> #{@game_recap.hp10_min}</td><td class='#{starter['hstart_class10']}' style='border: 1px inset #000;'>#{@game_recap.hp10_pts}</td><td class='#{starter['hstart_class10']}' style='border: 1px inset #000;'>#{@game_recap.hp10_fgma}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class10']} hide_box_column'>#{@game_recap.hp10_3pma} </td><td class='#{starter['hstart_class10']}' style='border: 1px inset #000;'>#{@game_recap.hp10_ftma}</td><td style='border: 1px inset #000;' class=' #{starter['hstart_class10']} hide_box_column'>#{@game_recap.hp10_oreb}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class10']} hide_box_column'>#{@game_recap.hp10_dreb}</td><td class='#{starter['hstart_class10']}' style='border: 1px inset #000;'>#{@game_recap.hp10_reb}</td><td class='#{starter['hstart_class10']}' style='border: 1px inset #000;'>#{@game_recap.hp10_ast}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class10']} hide_box_column'>#{@game_recap.hp10_stl}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class10']} hide_box_column'>#{@game_recap.hp10_blk}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class10']} hide_box_column'>#{@game_recap.hp10_to}</td><td class='#{starter['hstart_class10']}' style='border: 1px inset #000;'>#{@game_recap.hp10_pf}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class10']} hide_this'></td></tr>"

  else

  end

  if (@game_recap.hp11_name.to_s.strip.length > 0 )

    box_home += "<tr style='border: 1px inset #000;'><td class='#{starter['hstart_class11']}'> #{@game_recap.hp11_name}</td><td class='#{starter['hstart_class11']}' style='border: 1px inset #000;'> #{@game_recap.hp11_min}</td><td class='#{starter['hstart_class11']}' style='border: 1px inset #000;'>#{@game_recap.hp11_pts}</td><td class='#{starter['hstart_class11']}' style='border: 1px inset #000;'>#{@game_recap.hp11_fgma}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class11']} hide_box_column'>#{@game_recap.hp11_3pma} </td><td class='#{starter['hstart_class11']}' style='border: 1px inset #000;'>#{@game_recap.hp11_ftma}</td><td style='border: 1px inset #000;' class=' #{starter['hstart_class11']} hide_box_column'>#{@game_recap.hp11_oreb}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class11']} hide_box_column'>#{@game_recap.hp11_dreb}</td><td class='#{starter['hstart_class11']}' style='border: 1px inset #000;'>#{@game_recap.hp11_reb}</td><td class='#{starter['hstart_class11']}' style='border: 1px inset #000;'>#{@game_recap.hp11_ast}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class11']} hide_box_column'>#{@game_recap.hp11_stl}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class11']} hide_box_column'>#{@game_recap.hp11_blk}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class11']} hide_box_column'>#{@game_recap.hp11_to}</td><td class='#{starter['hstart_class11']}' style='border: 1px inset #000;'>#{@game_recap.hp11_pf}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class11']} hide_this'></td></tr>"

  else

  end


  if (@game_recap.hp12_name.to_s.strip.length > 0 )

    box_home += "<tr style='border: 1px inset #000;'><td class='#{starter['hstart_class12']}'> #{@game_recap.hp12_name}</td><td class='#{starter['hstart_class12']}' style='border: 1px inset #000;'> #{@game_recap.hp12_min}</td><td class='#{starter['hstart_class12']}' style='border: 1px inset #000;'>#{@game_recap.hp12_pts}</td><td class='#{starter['hstart_class12']}' style='border: 1px inset #000;'>#{@game_recap.hp12_fgma}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class12']} hide_box_column'>#{@game_recap.hp12_3pma} </td><td class='#{starter['hstart_class12']}' style='border: 1px inset #000;'>#{@game_recap.hp12_ftma}</td><td style='border: 1px inset #000;' class=' #{starter['hstart_class12']} hide_box_column'>#{@game_recap.hp12_oreb}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class12']} hide_box_column'>#{@game_recap.hp12_dreb}</td><td class='#{starter['hstart_class12']}' style='border: 1px inset #000;'>#{@game_recap.hp12_reb}</td><td class='#{starter['hstart_class12']}' style='border: 1px inset #000;'>#{@game_recap.hp12_ast}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class12']} hide_box_column'>#{@game_recap.hp12_stl}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class12']} hide_box_column'>#{@game_recap.hp12_blk}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class12']} hide_box_column'>#{@game_recap.hp12_to}</td><td class='#{starter['hstart_class12']}' style='border: 1px inset #000;'>#{@game_recap.hp12_pf}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class12']} hide_this'></td></tr>"

  else

  end


  if (@game_recap.hp13_name.to_s.strip.length > 0 )

    box_home += "<tr style='border: 1px inset #000;'><td class='#{starter['hstart_class13']}'> #{@game_recap.hp13_name}</td><td class='#{starter['hstart_class13']}' style='border: 1px inset #000;'> #{@game_recap.hp13_min}</td><td class='#{starter['hstart_class13']}' style='border: 1px inset #000;'>#{@game_recap.hp13_pts}</td><td class='#{starter['hstart_class13']}' style='border: 1px inset #000;'>#{@game_recap.hp13_fgma}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class13']} hide_box_column'>#{@game_recap.hp13_3pma} </td><td class='#{starter['hstart_class13']}' style='border: 1px inset #000;'>#{@game_recap.hp13_ftma}</td><td style='border: 1px inset #000;' class=' #{starter['hstart_class13']} hide_box_column'>#{@game_recap.hp13_oreb}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class13']} hide_box_column'>#{@game_recap.hp13_dreb}</td><td class='#{starter['hstart_class13']}' style='border: 1px inset #000;'>#{@game_recap.hp13_reb}</td><td class='#{starter['hstart_class13']}' style='border: 1px inset #000;'>#{@game_recap.hp13_ast}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class13']} hide_box_column'>#{@game_recap.hp13_stl}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class13']} hide_box_column'>#{@game_recap.hp13_blk}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class13']} hide_box_column'>#{@game_recap.hp13_to}</td><td class='#{starter['hstart_class13']}' style='border: 1px inset #000;'>#{@game_recap.hp13_pf}</td><td style='border: 1px inset #000;' class='#{starter['hstart_class13']} hide_this'></td></tr>"

  else

  end

  box_home +="<tr style='border: 1px inset #000;font-weight:800;'> <td  style='border: 1px inset #000;' colspan='2'>#{@game_recap.h_nick}<br/>Totals</td><td style='border: 1px inset #000;'>#{@game_recap.htotal}</td><td style='border: 1px inset #000;'>#{@game_recap.hometfgma}</td><td style='border: 1px inset #000;' class='hide_box_column'>#{@game_recap.homet3fgma}</td><td style='border: 1px inset #000;'>#{@game_recap.hometftma}</td><td style='border: 1px inset #000;' class='hide_box_column'>#{@game_recap.hometoreb}</td><td style='border: 1px inset #000;' class='hide_box_column'>#{@game_recap.hometdreb}</td><td style='border: 1px inset #000;'>#{@game_recap.hrebt} </td><td style='border: 1px inset #000;'>#{@game_recap.hastt}</td><td style='border: 1px inset #000;' class='hide_box_column'>#{@game_recap.hstlt}</td><td style='border: 1px inset #000;' class='hide_box_column'>#{@game_recap.hblkt}</td><td style='border: 1px inset #000;' class='hide_box_column'>#{home_total_to}</td><td colspan='2' style='border: 1px inset #000;'>#{@game_recap.hometpf}</td></tr>"


  box_home += "<table/>"



  return box_home


end