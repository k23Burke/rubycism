class Fixnum
  VERSION = 1
  ARRAY_FOR_ROMAN = [
    {num: 1000, roman: "M"},
    {num: 900,  roman: "CM"},
    {num: 500,  roman: "D"},
    {num: 400,  roman: "CD"},
    {num: 100,  roman: "C"},
    {num: 90,   roman: "XC"},
    {num: 50,   roman: "L"},
    {num: 40,   roman: "XL"},
    {num: 10,   roman: "X"},
    {num: 9,    roman: "IX"},
    {num: 5,    roman: "V"},
    {num: 4,    roman: "IV"},
    {num: 1,    roman: "I"}
  ]

  def to_roman
    total = self
    ret = ""
    i = 0
    while total > 0
      while i < ARRAY_FOR_ROMAN.length
        if ARRAY_FOR_ROMAN[i][:num] <= total
          ret += ARRAY_FOR_ROMAN[i][:roman]
          total -= ARRAY_FOR_ROMAN[i][:num]
          i = 0;
        else
          i += 1
        end
      end
    end
    ret
  end
end
