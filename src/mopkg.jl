module mopkg

"Funkcja ma zazadanie znajdywanie minimalnego punktu za pomocą metody siecznych"

function secant(f::Function,pzero,pone,eps,N)
		n=1
		p=0.
		while n<=N
			p=pone-f(pone)*(pone-pzero)/(f(pone)-f(pzero))
			if f(p)==0 || abs(p-pone)<eps
				return p
			end
			pzero=pone
			pone=p
			n=n+1
		end
		y=f(p)
		println("Nie udało się. Ostatnia iteracja dala nam $p z y= $y")
	end
export secant
end # module
