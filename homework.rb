class Calculator
	def plus(num1, num2)
		number=num1+num2
		number
	end
	def minus(num1, num2)
		number=num1-num2
		number
	end
	def times(num1, num2)
		number=num1*num2
		number
	end
	def divided(num1, num2)
		number=num1/num2
		number
	end
end

calculator=Calculator.new
p calculator.plus(5.0,2)
p calculator.minus(5.0,2)
p calculator.times(5.0,2)
p calculator.divided(5.0,2)


class Elevator
	attr_reader :floor, :greeting_array
	def initialize
		@floor=1
		@greeting_array=["Hello", "Bonjour", "Hola","Guten Tag","Ciao", "Namaste", "Salaam","Merhaba", "Sain Bainuu","Szia", "Marhaba","Jambo"]
		@lowest_level=1
		@highest_level=12
	end
	def go_up
		if @floor<@highest_level
			@floor+=1
			p @floor
			cheery_greeting(@floor)
		
		end
	end
	
	def go_down
		if @floor>@lowest_level
			@floor-=1
			p @floor
			cheery_greeting(@floor)
			
		end
	end
	def cheery_greeting(num)
		
		@greeting_array[num]
	end
end
elevator=Elevator.new
p elevator.go_up
p elevator.go_up
p elevator.go_down