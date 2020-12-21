require 'pry'

class Board

    attr_accessor :cells

    

    def initialize
        reset!
    end 

    def reset!
        @cells = Array.new(9," ")
        #we reset the cells by creating a new array. 
    end
    


        def display
            puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
            puts "-----------"
            puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
            puts "-----------"
            puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
        end 
            
        def position(input)

            cells[input.to_i-1] 

            #when  you get input from user it comes as a string.
            #so you use to_i. humans count from 1 so puts our spot to 1 so we need to -1
            #to be able to translate it into computer positioning
        end 

        def full?
           cells.all?{|character| character == "X" || character == "O"}

           #the .all? iterates over every part of the array and checks the conditions

        end
        
        def turn_count
            
            cells.count("X") + cells.count("O")
               
        end 

        def taken?(input)
            position(input) == "X" || position(input) == "O"
              
        end 
        
        def valid_move?(input)
            input.to_i.between?(1, 9) && !taken?(input)
        end 
   
        def update(input,player)
            # position(input) = player
            cells[input.to_i-1] = player.token
        end

end 