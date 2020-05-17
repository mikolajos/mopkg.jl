module mopkg

include("svopt.jl")

function line_optimize(f,x0,x1;EPS=10^(-4.),maxit=20,method::SVOptMethod=SVSecant())
	optimizer = method
	optimizer(f,x0,x1;eps=EPS,N=maxit)
end	

export line_optimize

end # module
