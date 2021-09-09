using TestPkgTemplates
using Test

@testset "TestPkgTemplates.jl" begin
    # Write your tests here.
    @test testadd(1,2) == 3
end
