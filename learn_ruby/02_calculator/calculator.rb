def add (a,b)
a+b
end

def subtract (a,b)
a-b
end

def sum (a)
return a.inject(0) { |result, elem| result = result + elem}
end

def multiply (a)
return a.inject(1) { |result, elem| result = result * elem}
end

def power (a,b)
i=1;
ret=a;
while i<b 
ret=ret*a
b=+1
end
return ret
end

def factorial (a)
fac=0
b=1
if a>0
fac=1

while b<=a
fac=fac*b
b=b+1
end
end
return fac
end