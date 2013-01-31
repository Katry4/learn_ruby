class Temperature

attr_accessor:tmper
attr_accessor:f_tmp
attr_accessor:cur_el



def initialize (tmpr)
   @cur_el=tmpr
   tmp={}
  #tmpr[:f]!=nil ? @tmp{:c => (tmpr[:f]-32)*5/9.0} : @tmp{:f => (ftmpr[:c]*9/5.0+32)}
   if @cur_el[:f]== nil
    tmp=nil
    tmp={:f => (tmpr[:c]*9/5.0+32)}
  else
    tmp=nil
    tmp={:c => (tmpr[:f]-32)*5/9.0}
  end
    @cur_el=@cur_el.merge(tmp)
  
end

def in_fahrenheit
@cur_el[:f]
end

def in_celsius
@cur_el[:c]
end

def Temperature.from_celsius(temper)
  Temperature.new(:c=>temper)
end

def Temperature.from_fahrenheit(temper)
  Temperature.new(:f=>temper)
end

end


class Celsius < Temperature


  def initialize (temp)
    temp_hash={:c => temp}
    super(temp_hash)
  end


  end

  class Fahrenheit < Temperature
    def initialize (temp)
    temp_hash={:f => temp}
    super(temp_hash) 
    end
  end

