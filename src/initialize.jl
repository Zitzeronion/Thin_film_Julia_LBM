function readinput(file)
    # Length of the input file
    num = countlines(file)
    # Actually reading of the file and saving to an array
    input = readdlm(file)
    # Extracting of numerical values
    values = []
    arguments = ["length", "time", "delta_t", "gravity", "surface_tension"]
    for arg in arguments
        push!(values, findfirst(x -> x == arg, vec(input))) 
    end

    length = input[values[1], 2]
    maxtime = input[values[2], 2]
    deltatime =  input[values[3], 2]
    γ = input[values[5], 2]
    g = input[values[4], 2]

    return length, maxtime, deltatime, g, γ
end
