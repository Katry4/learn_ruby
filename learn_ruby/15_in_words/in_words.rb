class Fixnum 

@majNames = ["", 
        " thousand", 
        " million", 
        " billion", 
        " trillion", 
        " quadrillion", 
        " quintillion" ]

@tens_n =["", 
        " ten", 
        " twenty", 
        " thirty", 
        " forty", 
        " fifty", 
        " sixty", 
        " seventy", 
        " eighty", 
        " ninety" ]

@num_n =[ "", 
        " one", 
        " two", 
        " three", 
        " four", 
        " five", 
        " six", 
        " seven", 
        " eight", 
        " nine", 
        " ten", 
        " eleven", 
        " twelve", 
        " thirteen", 
        " fourteen", 
        " fifteen", 
        " sixteen", 
        " seventeen", 
        " eighteen", 
        " nineteen" ]

def c_lessThou(inp)
@majNames = ["", 
        " thousand", 
        " million", 
        " billion", 
        " trillion", 
        " quadrillion", 
        " quintillion" ]

@tens_n =["", 
        " ten", 
        " twenty", 
        " thirty", 
        " forty", 
        " fifty", 
        " sixty", 
        " seventy", 
        " eighty", 
        " ninety" ]

@num_n =[ "", 
        " one", 
        " two", 
        " three", 
        " four", 
        " five", 
        " six", 
        " seven", 
        " eight", 
        " nine", 
        " ten", 
        " eleven", 
        " twelve", 
        " thirteen", 
        " fourteen", 
        " fifteen", 
        " sixteen", 
        " seventeen", 
        " eighteen", 
        " nineteen" ]


  outpt=""
  if inp%100 <20 then
    outpt= @num_n [inp%100]
    inp/=100
  else
    outpt=@num_n[inp%10]
    inp/=10

    outpt=@tens_n[inp%10]+outpt
    inp/=10    
  end

  if inp == 0 then outpt else
    @num_n[inp]+" hundred" + outpt end
end

def in_words
  if self == 0 then 
      outpt="zero"
    else
      num=self
      pref=""

      outpt=""
      place=0

      while num>0 do
        n=num % 1000
        if n!= 0 then
          s=c_lessThou(n)
          outpt=s+@majNames[place]+ outpt
        end
        place+=1
        num/=1000
      end
(pref + outpt)[1..-1]
    end
end


end

class Bignum

def c_lessThou(inp)
@majNames = ["", 
        " thousand", 
        " million", 
        " billion", 
        " trillion", 
        " quadrillion", 
        " quintillion" ]

@tens_n =["", 
        " ten", 
        " twenty", 
        " thirty", 
        " forty", 
        " fifty", 
        " sixty", 
        " seventy", 
        " eighty", 
        " ninety" ]

@num_n =[ "", 
        " one", 
        " two", 
        " three", 
        " four", 
        " five", 
        " six", 
        " seven", 
        " eight", 
        " nine", 
        " ten", 
        " eleven", 
        " twelve", 
        " thirteen", 
        " fourteen", 
        " fifteen", 
        " sixteen", 
        " seventeen", 
        " eighteen", 
        " nineteen" ]


  outpt=""
  if inp%100 <20 then
    outpt= @num_n [inp%100]
    inp/=100
  else
    outpt=@num_n[inp%10]
    inp/=10

    outpt=@tens_n[inp%10]+outpt
    inp/=10    
  end

  if inp == 0 then outpt else
    @num_n[inp]+" hundred" + outpt end
end

def in_words
  if self == 0 then 
      outpt="zero"
    else
      num=self
      pref=""

      outpt=""
      place=0

      while num>0 do
        n=num % 1000
        if n!= 0 then
          s=c_lessThou(n)
          outpt=s+@majNames[place]+ outpt
        end
        place+=1
        num/=1000
      end
(pref + outpt)[1..-1]
    end



end
end

puts 1_234_567_890.in_words