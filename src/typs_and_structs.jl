using DelimitedFiles

# lattice Boltzmann equation related stuff in one and two dimension
abstract type moments end
abstract type distribution end

mutable struct moments1d_64 <: moments
    height::Vector{Float64}
    velocity::Vector{Float64}
    energy::Vector{Float64}
end

mutable struct moments1d_32 <: moments
    height::Float32
    velocity::Float32
    energy::Float32
end

mutable struct distribution64_1d <: distribution
    f0::Vector{Float64}
    f1::Vector{Float64}
    f2::Vector{Float64}
end

mutable struct distribution32_1d <: distribution
    f0::Vector{Float32}
    f1::Vector{Float32}
    f2::Vector{Float32}
end

mutable struct distribution64_2d <: distribution
    f0::Vector{Float64}
    f1::Vector{Float64}
    f2::Vector{Float64}
    f3::Vector{Float64}
    f4::Vector{Float64}
    f5::Vector{Float64}
    f6::Vector{Float64}
    f7::Vector{Float64}
    f8::Vector{Float64}
end




