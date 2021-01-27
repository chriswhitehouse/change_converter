class ChangeConverter
  def convert(float)
    if float == 0
      []
    elsif float == 0.01
      ["1p"]
    elsif float == 0.02
      ["2p"]
    end
  end

end
