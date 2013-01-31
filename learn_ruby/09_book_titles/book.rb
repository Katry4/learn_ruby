class Book
	@title
	def initialize
	end

def title
@title
end

def title=(ttl)
	@title=titleize(ttl)
end

def titleize (str)
	exept=["the","an","a","and","in","of"]
	alws=['i']
sub_str=str.split(' ')
sub_str[0].capitalize;
#for i in 1..sub_str.size do
#  if sub_str[i].to_s.length>3
#     sub_str[i].to_s.capitalize
#  end
#end
retrn =""
sub_str.map! {|w|  if !(exept.include? w)  then w.capitalize else w end}
sub_str[0]=sub_str[0].capitalize
sub_str.map{ |wrd| wrd }.join(' ')
end

end