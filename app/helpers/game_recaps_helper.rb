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










end
