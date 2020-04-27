using StaticArrays
using DelimitedFiles

# lattice Boltzmann equation related stuff in one and two dimension
abstract type moments end
abstract type distribution end

input = readdlm("../input/input.txt")
len = input[1,2]

mutable struct moments1d_64 <: moments
    height::Vector{Float64}
    velocity::Vector{Float64}
    energy::Vector{Float64}
end

mutable struct moments1d_static <: moments
    height::MVector{len, Float64}
    velocity::MVector{len, Float64}
    energy::MVector{len, Float64}
end

mutable struct moments1d_32 <: moments
    height::Float32
    velocity::Float32
    energy::Float32
end

mutable struct distribution_1d <: distribution
    f0::Vector{Float64}
    f1::Vector{Float64}
    f2::Vector{Float64}
end

mutable struct distributions1d_static <: distribution

    
end




