# # Topics
#
# * classes
# * instance variables
# * string formats
# * modular arithmetic
#
# # Timer

class Timer

attr_accessor :seconds
attr_accessor :minutes
attr_accessor :hours
attr_accessor :start_time
attr_accessor :end_time

def initialize
  @start_time=Time.now
  @end_time=Time.now-@start_time
  #@hours=end_time

  @end_time=Time.at(@end_time)

  # I REALY HATE TIME CLASS AND TIME ZONES HERE!!!! 
  @end_time=@end_time.utc
 # @end_time=Time.at(@end_time)
end



def seconds
@end_time.sec

end
def seconds=(s)
  @end_time=Time.at(@end_time+s)
end

def time_string
 @end_time.strftime("%H:%M:%S")
#@end_time.asctime

end

#Doesn't shure that i'm totaly right understanded a task...
def padded(n)
   @end_time=Time.at(@end_time+n)
   @end_time.strftime("%S")
end
end