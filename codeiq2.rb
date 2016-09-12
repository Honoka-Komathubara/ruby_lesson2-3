@args = [[1,5],[2,3]]
i = 0

while line = gets
	ary = line.split("/")
	@args[i] = []
	@args[i][0] = ary[0].to_i
	@args[i][1] = ary[1].to_i
	i += 1
	break if i==2
end


def gcd(a,b)
	a,b=b,a%b while b>0
	a
end

a=@args[0][1]
b=@args[1][1]
if b>a
   w=a
   a=b
   b=w
end

g=gcd(a,b) #<-Å‘åŒö–ñ”
l=g*(a/g)*(b/g) #<-Å¬Œö”{”

@args[0][0]=@args[0][0]*l/@args[0][1]
@args[0][1]=l
@args[1][0]=@args[1][0]*l/@args[1][1]
@args[1][1]=l



bunsi=@args[0][0]+@args[1][0]
bunbo=l



if bunsi>bunbo
	g=gcd(bunsi,bunbo)
else
	g=gcd(bunbo,bunsi)
end

bunsi=bunsi/g
bunbo=bunbo/g

if bunbo==1
	puts bunsi
else
	puts "#{bunsi}/#{bunbo}"
end