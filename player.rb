class Player
  attr_reader :length
  attr_accessor :direction

  def initialize
    @image = Gosu::Image.new("media/square.png")
    @x = @y = 0.0
    @speed = 5
    @direction = "right"
    @length = 0
  end

  def moveRight
    @x = @x + @speed
  end

  def moveLeft
    @x = @x - @speed
  end

  def moveUp
    @y = @y - @speed
  end

  def moveDown
    @y = @y + @speed
  end

  def draw
    @image.draw_rot(@x, @y, ZOrder::PLAYER, 90)
  end
end
