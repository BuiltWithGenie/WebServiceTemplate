module AnalysisController
using Genie.Renderer
using Genie.Renderer.Html

using .Main.App.StatisticAnalysis

function analysis(N=20)
    x = gen_numbers(N)
    m = sum(x / N)
    html(Renderer.filepath("pages/analysis.jl.html"), m=m)
end

function numbers(N=20)
    html(Renderer.filepath("pages/numbers.jl.html"), x=gen_numbers(N))
end

end
