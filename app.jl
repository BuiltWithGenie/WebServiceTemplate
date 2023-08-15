module App
using GenieFramework
include("lib/StatisticAnalysis.jl")
include("controllers/AnalysisController.jl")
using .StatisticAnalysis
using .AnalysisController

route("/", AnalysisController.index)

route("/form") do
    html(Renderer.filepath("pages/form.jl.html"))
end

route("/form", AnalysisController.analysis,  method=POST)

route("/numbers/:N::Int", AnalysisController.numbers)


end
