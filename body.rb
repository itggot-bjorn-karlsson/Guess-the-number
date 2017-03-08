def cls
  system('cls')
end

def s
  return sleep 2
end

def ss
  return sleep 2.5
end

def ut
  return ""
end

def root
  return ":: "
end

def welcome_first
  puts ""
  ss
  puts "Welcome to Guess The Number"
  ss
  puts "Type 0 to exit the loop"
  ss
end

def input
  return gets.to_i
end

def diff
  @diff = -1
  while true
  puts "Choose difficulty"

  ut
  puts "[1]:::::: Easy"

  puts "[2]:::::: Medium"

  puts "[3]:::::: Hard"

  puts "[4]:::::: Custom"

  puts "[5]:::::: Exit"
  print root
  @diff = input

  if @diff == 1
    break
  elsif @diff == 2
    break
  elsif @diff == 3
    break
  elsif @diff == 4
    break
  elsif @diff == 5
    break
  end



  cls
  end
end

def try

  x = true

  while x


    puts "Choose how many tries you will have"

    print ":: "

    z = input

    cls

    if z > 0

      @tries = z
      @kk = z

      break

    end



  end

end

def max_rand

  x = true

  while x


    puts "Choose how many numbers you can choose between"

    print ":: "

    z = input

    cls

    if z > 0

      @max = z
      @ff = z

      break

    end





  end

end

def check_custom_diff(choice)



    if choice == 1
      try
    elsif choice == 2
      max_rand
    elsif choice == 4
      exit
    end




end

def custom_diff

  x = true
  @kk = 0
  @ff = 0




  while x

    cls

    puts "Your options"
    puts ""
    puts "[1]::::: tries (#{@kk})"
    puts "[2]::::: Maximun of random numbers (#{@ff})"
    puts "[3]::::: Done"
    puts "[4]::::: Exit"
    print ":: "



    choose = input

    if choose == 3

      if @kk > 0 && @ff > 0
        return
      end

    end

    cls


    check_custom_diff(choose)







  end

end

def control_diff
  if @diff == 1
    @max = 10
    @tries = 6
  elsif @diff == 2
    @max = 15
    @tries = 4
  elsif @diff == 3
    @max = 20
    @tries = 3
  elsif @diff == 4
    custom_diff
  elsif @diff == 5
    exit
  else
    puts "Error"
    exit
  end
end

def welcome
  s
  puts "You can choose between 1 - #{@max} "
  s
  puts "You have #{@tries} tries"
  s
  puts "Good luck"
  s

end

def initz
  @correct_num = rand(1..@max)
  @runs = true
  @choose = -1
  @list = []
  @Hard_list = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
  @Medium_list = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
  @Easy_list = [1,2,3,4,5,6,7,8,9,10]
end

def check

  if @choose < @correct_num
    puts "higher!"
    ut
  elsif @choose > @correct_num
    puts "lower!"
    ut
  end



end

def check_win
  if @choose == @correct_num
    puts "you picked the correct number, you win... "
    exit
  end
end

def checktries
  if @tries > 1
    puts "Wrong!!!!, You have #{@tries - 1} tries left!!!"
    ut
  else
    puts "You lost!!!"

    ut
    puts "The correct number was #{@correct_num}"
    exit
  end
end

def l
  print "Your picked numbers : #{@list}"
end

def body

  while @runs == true 

    print root

    @choose = input
    @list << @choose






    if @choose == 0
      exit
    end





    cls

    if @diff == 1
      @Easy_list -= [@choose]
      print "this is the avalible numbers left #{@Easy_list}"
    elsif @diff == 2
      @Medium_list -= [@choose]
      print "this is the avalible numbers left #{@Medium_list}"
    elsif @diff == 3
      @Hard_list -= [@choose]
      print "this is the avalible numbers left #{@Hard_list}"
    end
    puts ""

    l
    puts "
    "


    puts "you picked #{@choose}"

    puts ""


    s
    puts check_win
    puts checktries

    puts check

    s






    @tries -= 1

  end



end


def guess_the_number
  cls
  welcome_first

  cls
  diff
  control_diff
  cls
  welcome
  cls
  initz
  body

end
