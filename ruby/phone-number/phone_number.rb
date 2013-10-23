class PhoneNumber
  attr_reader :number

  def initialize(number_string)
    @number = clean_number(number_string)
  end

  def area_code
    number.slice(0,3)
  end

  def to_s
    "(#{area_code}) #{number.slice(3,3)}-#{number.slice(6,4)}"
  end

  private
  def invalid_number
    "0000000000"
  end

  def clean_number(number)
    number.gsub!(/\D/, '')

    if number.length == 11 && number[0] == "1"
      number.slice(1, 10)
    elsif number.length != 10
      invalid_number
    else
      number
    end
  end
end
