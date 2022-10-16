#1 https://en.wikipedia.org/wiki/Surface_gravity

#2
using DelimitedFiles
dados = readdlm("surface_gravity.txt",',')

#3
h = 120
tempo(h,g) = sqrt(2h/g)


todos_tempos = []
for planeta ∈ eachrow(dados)
    g = planeta[2]*9.8
    t_q = round(tempo(h,g),digits=3)
    println("$(planeta[1]): tempo de queda é $( t_q ) segundos")

    push!(todos_tempos, t_q)
end

#4
idx_min = findmin(todos_tempos)[2]
idx_max = findmax(todos_tempos)[2]

println("queda mais rápida aconteceu em : $(dados[idx_min,1])")
println("queda mais lenta aconteceu em : $(dados[idx_max,1])")