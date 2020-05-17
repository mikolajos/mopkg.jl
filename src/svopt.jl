abstract type SVOptMethod end


struct SVSecant <: SVOptMethod end

function (svs::SVSecant)(f,x0,x1;eps,N)
	n=1
	x=0.
	while n<=N
		x=x1-f(x1)*(x1-x0)/(f(x1)-f(x0))
		if f(x)==0 || abs(x-x1)<eps
			y=f(x)
			return y,x
		end
		x0=x1
		x1=x
		n=n+1
	end
	y=f(x)
	println("Nie  udało się wyliczyć. Ostatni iteracja dała nam $x z y=$y")
end

