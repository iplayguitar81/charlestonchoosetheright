module GameRecapsHelper




  def game_summary_snippet ( h_initials, a_initials, a_nick, h_nick, hometfgma, awaytfgma, hfgp, afgp, hometftma, awaytftma, hftp, aftp, homet3fgma, awayt3fgma, h3ptp, a3ptp, hometoreb, awaytoreb, hometdreb, awaytdreb, hrebt, arebt, hastt, aastt, hstlt, astlt, hblkt, ablkt, hometto, awaytto, ref1, ref2, ref3, attendance, capacity, arena )


    game_box_recap = ''

    attendance_percentage = ((attendance.to_f/capacity.strip.to_f)*100).round(2).to_s

    if(h_initials == 'POR')


      game_box_recap="The Trail Blazers made "+ hometfgma + " shots they attempted resulting in a total team field goal percentage of "+hfgp+"% for the game.  Meanwhile, the "+a_nick+"  made "+ awaytfgma+" shots that they attempted resulting in a total team field goal percentage of "+afgp+ "% for the game.  The Trail Blazers hit "+hometftma+ " free throws shooting " + hftp + "% from the free throw line and the " +a_nick+" hit "+awaytftma+" free throws shooting "+ aftp+"% from the free throw line.  The Trail Blazers made "+homet3fgma+" of the 3-pointers they shot resulting in a total team 3 point field goal percentage of "+h3ptp+"% and the "+a_nick+" made "+awayt3fgma+" of the 3-pointers they shot resulting in a total team 3 point field goal percentage of "+a3ptp+"%.  The Blazers collected "+ hometoreb +" offensive rebounds, "+ hometdreb + " defensive rebounds for a total of "+ hrebt+" rebounds and the " +a_nick+ " scooped up "+awaytoreb+" offensive rebounds, "+awaytdreb+" defensive rebounds for a total of "+arebt+" rebounds.  The Blazers dished out "+hastt+" assists while the " +a_nick+ " dished out "+aastt+".  The Blazers collected "+hstlt+" steals and the "+a_nick+" collected "+astlt+ " steals.  The Blazers blocked " +hblkt+" of the "+a_nick+" shots.  The "+a_nick+" blocked "+ablkt+" of the Blazers shots.  The Blazers turned the ball over "+hometto+" times.  The " +a_nick+" turned the ball over "+awaytto+" times."+"  <br/><br/>  The game was officiated by "+ref1+", "+ref2+" and "+ref3+"<br/><br/> There were "+attendance+" out of a possible "+capacity+" fans in attendace.  This means that "+arena+" was " + attendance_percentage + "% filled to capacity."


    elsif(a_initials == 'POR')



      game_box_recap= "The Trail Blazers made "+ awaytfgma + " shots they attempted resulting in a total team field goal percentage of "+afgp+"% for the game.  Meanwhile, the "+ h_nick+"  made "+ hometfgma+" shots that they attempted resulting in a total team field goal percentage of "+hfgp+ "% for the game.  The Trail Blazers hit "+awaytftma+ " free throws shooting " + aftp + "% from the free throw line and the " + h_nick+ " hit "+hometftma+" free throws shooting "+ hftp+"% from the free throw line.  The Trail Blazers made "+awayt3fgma+"of the 3-pointers they shot resulting in a total team 3 point field goal percentage of "+a3ptp+"% and the "+h_nick+" made "+homet3fgma+" of the 3-pointers they shot resulting in a total team 3 point field goal percentage of "+h3ptp+"%.  The Blazers collected "+ awaytoreb + " offensive rebounds and " + awaytdreb + " defensive rebounds for a total of "+ arebt+" rebounds and the "+h_nick+ " scooped up "+hometoreb+" offensive rebounds and " +hometdreb+" defensive rebounds for a total of "+hrebt+" rebounds.  The Blazers dished out "+aastt+" assists while the "+ h_nick + " dished out "+hastt+".  The Blazers collected "+astlt+" steals and the "+h_nick+" collected "+hstlt+ " steals.  The Blazers blocked "+ablkt+" of the " +h_nick+" shots.  The "+h_nick+" blocked "+hblkt+" of the Blazers shots.  The Blazers turned the ball over "+awaytto+" times.  The "+h_nick+" turned the ball over "+hometto+" times.<br/><br/>  The game was officiated by "+ref1+", "+ref2+" and "+ref3+"<br/><br/> There were "+attendance+" out of a possible "+capacity+" fans in attendace.  This means that "+arena+" was " + attendance_percentage + "% filled to capacity."


    end





    return game_box_recap




  end

end
