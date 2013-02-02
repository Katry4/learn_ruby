# # Array Extension
#
# # Topics
#
# * objects, methods, classes
# * reopening classes
#

class Array


def sum
  s=0
self.each {|val| s+=val }
  s
end

def square
rtrn=[]
 self.each{|val| rtrn << val*val}
rtrn
end

def square!

 self.each_index{|indx| self[indx]=self[indx]*self[indx]}

end


end
