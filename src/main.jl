import Pkg
Pkg.add(["DelimitedFiles"])
using DelimitedFiles

# Inclusion of all part to run the simulation
include("typs_and_structs.jl")
include("initialize.jl")
include("equilibriumcalculation.jl")

# Reading the input file 
path = mkpath("../input/")
len, maxtime, dt, g, γ = readinput(path * "/input.txt")
println("Chain length : ", len, "\nRuntime : ", maxtime, "\nδt : ", dt, "\ngravity : ", g, "\nγ : ", γ)

lbemoments = moments1d_64(ones(len), zeros(len), zeros(len))
println(lbemoments.velocity)

equilibriumdist = calc_equilibrium_distribution(lbemoments, g)
println(equilibriumdist.f0)

# n = []
# for i in lbemoments.height
#     push!(n, i)
# end
# println(n)