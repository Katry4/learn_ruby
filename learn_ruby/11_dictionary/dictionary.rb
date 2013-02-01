# # Topics
#
# * Hash
# * Array
# * instance variables
# * regular expressions
#

class Dictionary
attr_accessor :entries

def initialize
  @entries={}
end

def add(inpt)
  
  if inpt.class == String then added ={inpt => nil} else added=inpt end
  @entries.update(added)
  
end

def keywords
 # rtrn = @entries.each_key {|key| key}
  return (@entries.keys).sort
end

def include? (str)
(@entries.keys).include? str
end

def find (str)


outpt={}
@entries.each do
|key, value|
 filtered_str = /#{str}/.match key
 if filtered_str!=nil 
  outpt[key]=value
end
end
outpt
end


def printable

  outpt_arr=@entries.sort
  outpt_str=""
  outpt_arr.each do
    |key,value|
      outpt_str=outpt_str+%Q{[#{key}] "#{value}"\n}
  end
  outpt_str.chop
end

end
