class SaySomething
	def initialize(name)
		@name = name.capitalize
	end

	def sayHello
		puts "Hello #{@name}";
	end
end

hello = SaySomething.new("World")
hello.sayHello