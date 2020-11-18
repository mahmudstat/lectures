DiagrammeR::grViz("digraph {

graph [layout = dot, rankdir = LR]

node [shape = rectangle, style = filled, fillcolor = blue, fontcolor = white]

start [label = 'Start']
a [label = 'A']
b [label = 'B']

{start}  -> {a, b}
}")

# Latex within flowchart

data <- list(a=1000, b=800, c=600, d=400)


DiagrammeR::grViz("
digraph graph2 {

graph [layout = dot]

# node definitions with substituted label text
node [shape = rectangle, width = 4, fillcolor = Biege]
a [label = '@@1']
b [label = '@@2']
c [label = '@@3']
d [label = '@@4']

a -> b -> c -> d

}

[1]: Sum = 1+2
[2]: paste0(expression(x^2))
[3]: paste0('Identify Potential Customers (n = ', data$c, ')')
[4]: paste0('Select Top Priorities (n = ', data$d, ')')
")

## Mathjax within flowchart

DiagrammeR::add_mathjax(gv = grViz("digraph {

graph [layout = dot, rankdir = LR]

node [shape = rectangle, style = filled, fillcolor = blue, fontcolor = white]

start [label = 'Start']
a [label = '$x^2$']
b [label = 'B']

{start}  -> {a, b}
}"), 
            include_mathjax = TRUE)