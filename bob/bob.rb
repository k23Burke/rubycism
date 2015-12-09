class Bob
  def hey(r)
    res = 'Whatever.'

    if r[r.length - 1] == '?'
      if r == r.upcase && r =~ /[a-zA-Z]/
        res = 'Whoa, chill out!';
      else
        res = 'Sure.'
      end
    elsif r == r.upcase && r =~ /[a-zA-Z]/
        res = 'Whoa, chill out!';
    elsif r == '' || r =~ /\s/
      if !(r =~ /[a-zA-Z0-9]/)
        res = 'Fine. Be that way!'
      end
    end
    res
  end

end