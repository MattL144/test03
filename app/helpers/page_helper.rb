module PageHelper
  def calendar(month, year)
    current_date = Date.new(year, month, 1)

    prev_month = month -1
    prev_year = year
    next_month = month +1
    next_year = year
    if(prev_month <= 0)
      prev_month = 12
      prev_year = year -1
    end

    if(next_month >= 12)
      next_month = 1
      next_year = year + 1
    end

    cal = ""
    cal += "</br>"
    cal += "</br>"
    cal += link_to "Prev \n", calendar_path(:month=> prev_month, :year=> prev_year)
    cal += link_to "Next \n", calendar_path(:month=> next_month, :year=> next_year)
    cal += "</br>"

    cal += current_date.strftime("%B")
    day_of_week = current_date.strftime("%w").to_i
    cal += "<table border= '1'>\n\t<tr>\n".html_safe
    days = %w(Sun Mon Tue Wed Thu Fri Sat)
    days.each do | day |
      cal +="\t\t<td>#{day}</td>\n".html_safe
    end
    cal += "<tr>".html_safe
    day_of_week.times do |day|
      cal += "<td> &nbsp;</td>".html_safe
    end
    #print the days of week starting with 1
    (7 - day_of_week).times do |day|
        cal += "<td> #{day + 1}</td>".html_safe
    end

    #loop to do the in-between rows

    #final loop to do the last row

    cal += "</tr>".html_safe
    cal += "\t</tr>\n</table>\n".html_safe
    cal += "Month: #{month}</br>Year: #{year}</br>".html_safe
    cal += "Date: #{current_date}</br>".html_safe
    cal += day_of_week.to_s
    return cal
  end
end
