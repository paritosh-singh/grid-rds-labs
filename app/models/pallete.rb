class Pallete

  DEFAULT_COLOR = "white"

  @@pallete = {

  }


  def self.set_color color, hexcode
    @@pallete[color] = hexcode
    return @@pallete
  end

  def self.get_hexcode color
    return @@pallete[color]
  end

end