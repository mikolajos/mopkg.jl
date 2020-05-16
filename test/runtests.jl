using mopkg
using Test

@testset "Funckja 1" begin
   	@test example_func(2) == 4
	@test example_func(-2) == 4
end


@testset "Funckja 2" begin
   	@test example_func2(2) == 0
	@test example_func2(-3) == -5
	@test example_func2(9) == 7
end
