require 'gosu'

class NoodleBaby < Gosu::Window

  def initialize(width, height)
    # call super to run the 'initialize' method in the Window class.
    # This method takes 2 arguments: window width and height
    @character = Gosu::Image.new('assets/characters/raiden/idle/01.png')
    @character_x = 0
    @character_y = 0
    super(width, height)
  end

  def set_background(background_image)
    @background_image = background_image
  end

  # This function updates the state of the game (runs 60 times per second)
  def update
    @character_x += 3 unless @character_x >= 40
  end

  # This function renders the visuals based on the state of the game (runs 60 times per second)
  def draw
    @background_image.draw(0, 0, 0, 2, 2)
    @character.draw(@character_x, @character_y, 1, 2, 2)
  end
end

background_image = Gosu::Image.new('assets/backgrounds/swamp/01.png')

noodle_baby_window = NoodleBaby.new(background_image.width * 2, background_image.height * 2)
noodle_baby_window.set_background(background_image)
noodle_baby_window.show
