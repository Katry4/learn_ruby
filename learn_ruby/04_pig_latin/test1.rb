
ss="sss mamo 123456789aaaa"
golosn =  ['e', 'y', 'u', 'i', 'o', 'a', 'E', 'Y', 'U', 'I', 'O', 'A']
s=""
q=""



arr=ss.split(" ")
arr.each{|word|
first_part_w=[]
step=0
str=[]
str[0]=word[0..0]
if str & golosn != []
	s=word+"ay"
else 
	
	first_part_w=first_part_w<<str[0]
	str[0]=word[1..1]
	i=1
	while (( str & golosn == []) and (i<word.size))
	first_part_w=first_part_w<<str[0]
	i+=1;
	str[0]=word[i..i]	
	end
	step=i
	s=word + first_part_w.join()+"ay"
	s=s[step..s.size]
	#s=first_part_w.join()
	end
q=q+s+' '
}

q[0...-1]
puts q
