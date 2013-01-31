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

def start_of_word (str, n)
str[0,n]
end

def first_word (str)
str.split(" ").first
end

def titleize (str)
sub_str=str.split(' ')
sub_str[0].capitalize;
for i in 1..sub_str.size do
  if sub_str[i].to_s.length>3
     sub_str[i].to_s.capitalize
  end
end
retrn =""
sub_str.map! {|w|  if w.length>3 then w.capitalize else w end}.join(' ')
sub_str[0]=sub_str[0].capitalize
sub_str.map{ |wrd| wrd }.join(' ')
end