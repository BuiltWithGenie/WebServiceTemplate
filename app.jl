module App
using GenieFramework
using Genie.Requests
include("lib/StatisticAnalysis.jl")
include("controllers/AnalysisController.jl")
using .StatisticAnalysis
using .AnalysisController

route("/analysis", AnalysisController.analysis)

route("/form") do
    html(Renderer.filepath("pages/form.jl.html"))
end

route("/form", method=POST) do
    N = parse(Int, postpayload(:N, 20))
    AnalysisController.analysis(N)
end

route("/numbers/:N::Int") do
    AnalysisController.numbers(payload(:N))
end

end
