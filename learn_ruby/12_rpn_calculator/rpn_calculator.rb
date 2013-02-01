# # Topics
# * arrays
# * arithmetic
# * strings
#
# # RPN Calculator
#
# "RPN" stands for "Reverse Polish Notation". (See [the wikipedia entry](http://en.wikipedia.org/wiki/Reverse_Polish_notation) for more information on this colorful term.) Briefly, in an RPN world, instead of using normal "infix" notation, e.g.
#
#     2 + 2
#
# you use "postfix" notation, e.g.
#
#     2 2 +
#
# While this may seem bizarre, there are some advantages to doing things this way. For one, you never need to use parentheses, since there is never any ambiguity as to what order to perform operations in. The rule is, you always go from the back, or the left side.
#
#     1 + 2 * 3 =>
#     (1 + 2) * 3 or
#     1 + (2 * 3)
#
#     1 2 + 3 * => (1 + 2) * 3
#     1 2 3 * + => 1 + (2 * 3)
#
# Another advantage is that you can represent any mathematical formula using a simple and elegant data structure, called a [stack](http://en.wikipedia.org/wiki/Stack_(data_structure)).
#
# # Hints
#
# Ruby doesn't have a built-in stack, but the standard Array has all the methods you need to emulate one (namely, `push` and `pop`, and optionally `size`).
#

# See
# * <http://en.wikipedia.org/wiki/Reverse_Polish_notation>
# * <http://www.calculator.org/rpn.aspx>
#



class RPNCalculator

attr_accessor :p_stack
attr_accessor :value
attr_accessor :oper_arr

def initialize
@p_stack=[]
@oper_arr=["+","-","*","/"]
end

def push(s)
  @p_stack << s
end

def plus

 if @p_stack.size>=2 then 
@value=@p_stack.pop + @p_stack.pop
@p_stack << @value
else
	raise "calculator is empty"
end
end

def minus
	 if @p_stack.size>=2 then 
@value=@p_stack.pop - @p_stack.pop
@p_stack << @value
else
	raise "calculator is empty"
end
end

def divide
if @p_stack.size>=2 then 
@value=@p_stack.pop.to_f / @p_stack.pop
@p_stack << @value
else
	raise "calculator is empty"
end
end

def times
if @p_stack.size>=2 then 
@value=@p_stack.pop * @p_stack.pop
@p_stack << @value
else
	raise "calculator is empty"
end
end

def tokens (str)
tmp=str.split(" ")
tmp.each do 
	|el	|
	@oper_arr.include?(el) ? @p_stack << el.to_sym : @p_stack << el.to_i
end
@p_stack
end


#### Перепутав завдання  і подумав, що потрібно записати польський запис в нормальній формі з дужками
def evaluates(str)
	tmp=str.split(" ")
	prev_op=2

	tmp.each do
		| el|
		if @oper_arr.include?(el) then
			if el=="-" or el=="+" then cur_op=1 else cur_op=2 end

			if cur_op<prev_op then
				tmp1=@p_stack.pop
				tmp2=@p_stack.pop
				tmp3="(#{tmp1})#{el}#{tmp2}"
			else
				tmp1=@p_stack.pop
				tmp2=@p_stack.pop
				tmp3="#{tmp1}#{el}#{tmp2}"
			end
			@p_stack << tmp
			
		else
			@p_stack << el.to_i
		end
	end
@p_stack
end


def evaluate(str)
	tmp=str.split(" ")
	
	tmp.each do
		| el |
		if @oper_arr.include?(el) then

			tmp1=@p_stack.pop
			tmp2=@p_stack.pop
			
			case el
				when "+"
					tmp3=tmp1+tmp2
				when "-"
					tmp3=tmp1-tmp2
				when "*"
					tmp3=tmp1*tmp2
				when "/"
					tmp3=tmp1/tmp2
			end
			
			@p_stack << tmp3.to_f
			
		else
			@p_stack << el.to_f
		end
	end
@p_stack.pop
end

end