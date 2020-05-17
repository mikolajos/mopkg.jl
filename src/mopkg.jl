module mopkg

include("svopt.jl")

function secants_optimize(f,x0,x1;EPS=10^(-4.),maxit=20,method::SVOptMethod=SVSecant())
	optimizer = method
	optimizer(f,x0,x1;eps=EPS,N=maxit)
end	

export secants_optimize,SVOptMethod

end # module
