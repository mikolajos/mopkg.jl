using mopkg
using Test

@testset "Single variable optimizers" begin
	
	@testset "Test Epsilonu" begin
		for tolerance in [1e-1, 1e-3, 1e-5, 1e-7]
			@test isapprox(line_optimize(x->x^2-1, 3.0, 10; EPS=tolerance)[1], 1.0000000010382313, atol=tolerance)
			@test isapprox(line_optimize(x->x^2-1, 3.0, 10; EPS=tolerance)[2], 2.076462557454306e-9, atol= tolerance)
		end
	end
	
	

end


