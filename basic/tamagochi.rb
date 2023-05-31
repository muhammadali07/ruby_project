class Tamagotchi
    attr_accessor :name, :hunger, :happiness
  
    def initialize(name)
      @name = name
      @hunger = 0
      @happiness = 5
    end
  
    def feed
      @hunger -= 1
      puts "#{@name} has been fed."
    end
  
    def play
      @happiness += 1
      puts "#{@name} is happy playing."
    end
  
    def status
      puts "#{@name}'s hunger level: #{@hunger}"
      puts "#{@name}'s happiness level: #{@happiness}"
    end
  
    def is_alive?
      @hunger < 5 && @happiness > 0
    end
  end
  
  puts "Welcome to Tamagotchi!"
  
  print "Enter your Tamagotchi's name: "
  name = gets.chomp
  
  tamagotchi = Tamagotchi.new(name)
  
  while tamagotchi.is_alive?
    puts "\nWhat do you want to do with #{@name}?"
    puts "1. Feed"
    puts "2. Play"
    puts "3. Check Status"
    puts "4. Quit"
  
    print "Enter your choice (1-4): "
    choice = gets.chomp.to_i
  
    case choice
    when 1
      tamagotchi.feed
    when 2
      tamagotchi.play
    when 3
      tamagotchi.status
    when 4
      puts "Goodbye!"
      break
    else
      puts "Invalid choice. Please enter a number between 1 and 4."
    end
  end
  
  puts "\n#{@name} has passed away. Game over!"
  