using Test
using Ipopt
using KuMo
using KuMoMinCostFlow

@testset "KuMoMinCostFlow.jl" begin
    algo = MinCostFlow(Ipopt.Optimizer)

    @test KuMo.vtx(algo) == 2

    simulate(SCENARII[:four_nodes], algo)

end # KuMoMinCostFlow.jl tests
