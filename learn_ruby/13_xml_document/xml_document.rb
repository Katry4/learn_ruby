# # Topics
#
# * method_missing
# * blocks
# * strings
# * hashes
#
# # Builder
#
# Here we will implement the so-called Builder Pattern: we will make an object, XmlDocument, that *builds* an XML file, which can contain arbitrary tags.

# Stuff you'll learn:
# method_missing
# nested closures
# "builder pattern"


class XmlDocument 

@indnds
def initialize (ind=false)
  @indnds=ind
end

#def hello (hash={})
 # if block_given? then
  #outpt="<hello>#{yield}</hello>"
  #else
   # if hash.empty? then outpt="<hello/>" else 
    #hash.each {|key,value| outpt="<hello #{key}='#{value}'/>"}
    #end
#end
#outpt =outpt + '\n' if @indnds
 # outpt
#end


#def send (tag_name)
#  "<#{tag_name}/>"
#end


def method_missing(name, hash={})
  
  if block_given? then
    substr1="\n  "
    substr2="  "

  outpt="<#{name}>"+substr1+substr2+"#{yield}"+substr1+substr2+"</#{name}>"
  outpt.gsub!(substr1,"") if !@indnds
  outpt.gsub!(substr2,"") if !@indnds

  #outpt.sub!(substr,"") if !@indnds
  else
    if hash.empty? then outpt="<#{name}/>" else 

    hash.each {|key,value| outpt="<#{name} #{key}='#{value}'/>"}
 
    end
end
  
  outpt

end
end
