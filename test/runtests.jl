using mopkg, Test

@testset "Sieczna" begin
	#f=x->cos(x)-x,pzero=0.5,pone=1,eps=(10^(-4.)),N=20
	@test secant(x->cos(x)-x,0.5,1,10^(-4.),20) == 0.739085132900112
	
	#x->cos(x)-2x,0.5,1,10^(-4.),20
	@test secant(x->cos(x)-2x,0.5,1,10^(-4.),20) == 0.45018361131030216

end
