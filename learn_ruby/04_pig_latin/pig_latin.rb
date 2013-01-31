def translate (ss)
golosn =  ['e', 'y', 'u', 'i', 'o', 'a', 'E', 'Y', 'U', 'I', 'O', 'A']
phonemes= ['qu','sch']
orfo=[',','.','!',"?"]
s=""
q=""

ph1='qu'
ph2='sch'
arr=ss.split(" ")
arr.each{|word|
first_part_w=[]
step=0
str=[]
phn=[]
str[0]=word[0..0]
phn1=(word[0..1])
phn2=(word[0..2])

if word[-1].chars.to_a & orfo !=[]
ismark=true
else
ismark=false
end

if ismark
mark=word[-1]
word=word[0...-1] else mark=''
end
#виключаєм ласт символ (знак пунктуації)
if str & golosn != []

	s=word+"ay"+mark
	
	#elsif ((phn1 & phonemes !=[])or(phn2 & phonemes !=[]))
	#s=word +(phn1 & phonemes ==[] ? phn2:phn1)+"ay"
	
	elsif ((phn1==ph1)or(phn2==ph1))
	s=word+ph1+"ay"+mark
	s=s[ph1.size..-1]
	elsif ((phn2==ph2)or(phn1==ph2))
	s=word+ph2+"ay"+mark
	s=s[ph2.size..-1]
	elsif
	first_part_w=first_part_w<<str[0]
	str[0]=word[1..1]
	i=1
	while (( str & golosn == []) and (i<word.size))
	first_part_w=first_part_w<<str[0]
	i+=1;
	str[0]=word[i..i]	
	end
	step=i
	s=word + first_part_w.join()+"ay"+mark
	s=s[step..s.size]
	#s=first_part_w.join()
	end
q=q+s+' '
}

q=q[0...-1].to_s



end


def Translate (ss)
titleize(translate(ss))
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
