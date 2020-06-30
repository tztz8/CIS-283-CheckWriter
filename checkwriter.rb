############################################################
#
#  Name:        Timbre Freeman
#  Assignment:  CheckWriter_v2
#  Date:        02/24/2020
#  Class:       CIS 283
#  Description: Class to help make checkes
#
############################################################
class Float
  def to_check_string
    # setting up things
    puts "\nDebug\n" if $debug
    end_value = ((self % 1)*100).round
    puts "val % 1 = #{self % 1}"
    puts "end_value = #{end_value}" if $debug
    start_value = (self - (end_value/100)).to_i
    puts "start_value = #{start_value}" if $debug
    return_string = ""

    # hundred thousand
    if (start_value.to_s.length >= 6)
      hundred_thousand_digit = (start_value-(start_value%100000))/100000
      puts "hundred_thousand_digit = #{hundred_thousand_digit}" if $debug
      return_string << zero_to_ninty_nine(hundred_thousand_digit)
      return_string << " hundred"
    end
    # thousand
    if (start_value.to_s.length >= 4)
      thousand_digits = ((start_value%100000) - ((start_value%100000)%1000))/1000
      puts "thousand_digits = #{thousand_digits}" if $debug
      if (thousand_digits != 0)
        return_string << " " if (start_value.to_s.length >= 6)
        return_string << zero_to_ninty_nine(thousand_digits)
      end
      return_string << " thousand"
      if (((start_value%100000)%1000) != 0)
        return_string << ","
      end
    end
    # hundred
    if (start_value.to_s.length >= 3)
      hundred_digits = (((start_value%100000)%1000) - ((start_value%100000)%1000)%100)/100
      puts "hundred_digits = #{hundred_digits}" if $debug
      if (hundred_digits != 0)
        return_string << " " if (start_value.to_s.length >= 4)
        return_string << zero_to_ninty_nine(hundred_digits)
        return_string << " hundred"
      end
    end
    # first two
    first_two_digits = ((start_value%100000)%1000)%100
    puts "first_two_digits = #{first_two_digits}" if $debug
    if (start_value.to_s.length >= 3) && (first_two_digits == 0)
    else
      return_string << " " if (start_value.to_s.length >= 3)
      return_string << zero_to_ninty_nine(first_two_digits)
    end

    # end dollors
    return_string << " dollar" if start_value == 1
    return_string << " dollars" if start_value != 1

    # the move to cents
    return_string << " and "

    # doing cents
    return_string << zero_to_ninty_nine(end_value)
    return_string << " cent" if end_value == 1
    #return_string << " Cents" if end_value != 1
    return_string << " cents" if end_value != 1 # does not work ???
    return return_string
  end
  private
  def zero_to_ninty_nine(val)
    one_nieteen = {
        1 => "one",
        2 => "two",
        3 => "three",
        4 => "four",
        5 => "five",
        6 => "six",
        7 => "seven",
        8 => "eight",
        9 => "nine",
        10 => "ten",
        11 => "eleven",
        12 => "twelve",
        13 => "thirteen",
        14 => "fourteen",
        15 =>"fifteen",
        16 => "sixteen",
        17 => "seventeen",
        18 => "eighteen",
        19 => "nineteen"
    }
    tens_names = {
        20 => "twenty",
        30 => "thirty",
        40 => "forty",
        50 => "fifty",
        60 => "sixty",
        70 => "seventy",
        80 => "eighty",
        90 => "ninety"
    }
    if val == 0
      #return "Zero"
      return "zero" # does not work ???
    elsif val <= 19
      return one_nieteen[val]
    else
      return_string = tens_names[((val/10)*10).round]
      if ((val%10).round != 0)
        return_string = "#{return_string} #{one_nieteen[(val%10).round]}"
      end
      return return_string
    end
  end
end