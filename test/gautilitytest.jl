@testset "Calculate required chromosome size" begin
    @test chromosomesize(4) == 8
    @test chromosomesize(10) == 40
    @test chromosomesize(13) == 52
end