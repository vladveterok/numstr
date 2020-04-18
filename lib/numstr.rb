 #require "numstr/version"

class Numstr
  def self.english_number(num)
    return "C'mon! '#{num}' is not a number!" unless num.is_a? Integer
    return 'zero, null, nil, nada, zip, goose egg' if num.zero?

    if num.negative?
      negative = true
      num = num.abs
    end

    num_string = ''

    ones_array = %w[one two three four five six seven eight nine]
    tens_array = %w[ten twenty thirty forty fifty sixty seventy eighty ninety]
    teenagers_array = %w[eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen]

    zillions = [
      ['hundred', 2],
      ['thousand', 3],
      ['million', 6],
      ['billion', 9],
      ['trillion', 12],
      ['quadrillion', 15],
      ['quintillion', 18],
      ['sextillion', 21],
      ['septillion', 24],
      ['octillion', 27],
      ['nonillion', 30],
      ['decillion', 33],
      ['undecillion', 36],
      ['duodecillion', 39],
      ['tredecillion', 42],
      ['quattuordecillion', 45],
      ['quindecillion', 48],
      ['sexdecillion', 51],
      ['septendecillion', 54],
      ['octodecillion', 57],
      ['novemdecillion', 60],
      ['vigintillion', 63],
      ['googol', 100]
    ]

    left = num

    if negative
      num_string = 'minus' + ' '
    end

    until zillions.empty?
      zill = zillions.pop
      zill_name = zill[0]
      zill_base = 10**zill[1]

      write = left / zill_base
      left -= write * zill_base

      if write > 0
        prefix = english_number write
        num_string += prefix + ' ' + zill_name

        num_string += ' ' if left.positive?
      end
    end

    write = left / 10
    left -= write * 10

    if write > 0
      if write == 1 && left > 0
        num_string += teenagers_array[left -1]
        left = 0
      else
        num_string += tens_array[write - 1]
      end
      num_string += ' ' if left.positive?
    end

    write = left
    left = 0

    if write > 0
      num_string += ones_array[write - 1]
    end
    num_string
  end
end

puts Numstr.english_number(false)
puts 
puts Numstr.english_number("...")
puts Numstr.english_number("&^&%")
puts Numstr.english_number(-0)
puts Numstr.english_number("hi!")
puts Numstr.english_number( 0)
puts Numstr.english_number( -9)
puts Numstr.english_number( -10)
puts Numstr.english_number( -11)
puts Numstr.english_number( -17)
puts Numstr.english_number( -32)
puts Numstr.english_number( -88)
puts Numstr.english_number( -99)
puts Numstr.english_number(-100)
puts Numstr.english_number(101)
puts Numstr.english_number(-234)
puts Numstr.english_number(-3211)
puts Numstr.english_number(-999999)
puts Numstr.english_number(-1000000000000)
puts Numstr.english_number(863724971203507846713847580327850678524758931757486238457037680425673467823)

