def echo(str)
return str
end

def shout(str)
return str.upcase
end



def repeat str,n=2
str2=""
n-=1
n.times {str2=str2+str+" "}
return str2+str
end