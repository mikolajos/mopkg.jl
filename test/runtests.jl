using mopkg
using Test
import InteractiveUtils: subtypes

"""

Single wariable global test function - functions with single global minimum key is function (lambda), value (y,x) in minimum


"""

svltf2 = Dict(
	(x-> x^2 - 1)=> (1.0000000010382313,2.076462557454306e-9),
	(x->sin(x)+2x-3)=>(1.0630731347927889,4.176037293746049e-11),
	(x->14x-30)=>(2.142857142857143, 0.0)
	)


@testset "Single variable optimizers" begin
	for (fun, min) in svltf2
		stval=(min[2]+1)
		stval1=(min[2]+5)
		@testset "Test Epsilonu" begin
			for optim in subtypes(SVOptMethod)
				for tolerance in [1e-2, 1e-4, 1e-6]
					@test isapprox(secants_optimize(fun, stval,stval1; EPS=tolerance, method=mopkg.SVSecant())[2], min[1] , atol= tolerance)
				end
			end
		end
	end
end


