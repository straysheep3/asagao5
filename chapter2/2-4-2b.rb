class Robot
  def initialize(name)
    @name = name
    @x = @y = 0
  end

  def move(x, y)
    @x += x; @y += y
    crash if @x < 0 || @y < 0
  end

  private
    def crash
      puts "ドカン!!"
    end
end

robo1 = Robot.new("ロボ1号")
robo1.move(200, -100)
robo1.crash
