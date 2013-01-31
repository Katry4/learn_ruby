# # Topics
#
# * blocks
# * closures
# * yield
# * loops
#

def reverser
words=yield.split(" ")
outpt=""
words.map do
  |w|
outpt= outpt + w.reverse + " "
 end
outpt [0...-1]
end

def adder (i=1)
  yield+i
end


def repeater (n=1)
#i didn't know what have i done, but it's work
# ask Oleg what and why!!!
q=0
for i in 0...n do
yield
q=q+1
end
end