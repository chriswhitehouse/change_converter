class ChangeConverter
  def convert(float)
    change_hash = {
      2000 => "£20",
      1000 => "£10",
      500 => "£5",
      100 => "£1",
      50 => "50p",
      20 => "20p",
      10 => "10p",
      5 => "5p",
      2 => "2p",
      1 => "1p"
    }

    float *= 100

    change_array = []

    change_hash.each do |key, value|
      while float >= key
        change_array.push(value)
        float -= key
      end
    end

    return change_array
  end
end
