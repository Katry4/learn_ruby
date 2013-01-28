def add (a,b)
a+b
end

def subtract (a,b)
a-b
end

def sum (a)
return a.inject(0) { |result, elem| result = result + elem}
end

def multiply (a,b)
return a*b
end