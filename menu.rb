require './lib/triangle_oo.rb'

  @list = []

  def main_menu
    loop do
      puts "Press 'e' to enter three sides of a triangle."
      puts "Press 't' to see the type."
      puts "Press 'x' to exit."
      main_choice = gets.chomp
      if main_choice == 'e'
        add_triangle
      elsif main_choice == 't'
        the_type
      elsif main_choice == 'x'
        puts "Like...whatever!"
        exit
      else
        puts 'Please enter a valid option.'
      end
    end
  end

  def add_triangle
    puts 'Enter the length of the first side'
    side1 = gets.chomp
    puts 'Enter the length of the second side'
    side2 = gets.chomp
    puts 'Enter the length of the third side'
    side3 = gets.chomp
    @list << Triangle.new(side1, side2, side3)
    puts 'Triangle entered.'
  end

  def the_type
    puts "Triangle types:"
    @list.each do  |triangle|
    puts triangle.type.to_s
  end

end
main_menu
