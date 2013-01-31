# # Topics
#
# * stubs
# * blocks
# * yield
#
# # Performance Monitor
#
# This is (a stripped down version of) an actual useful concept: a function that runs a block of code and then tells you how long it took to run.

def measure (n=1)
  cnt=0
elapsed_time=Time.now

n.times {
  cnt+=1
  yield} 
elapsed_time=(Time.now-elapsed_time)/cnt

end