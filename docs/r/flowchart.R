DiagrammeR::grViz("digraph {

graph [layout = dot, rankdir = LR]

node [shape = circle, style = filled, fillcolor = magenta, fontcolor = white]

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

## Simple

 DiagrammeR("
 graph LR
 A-->B
 A-->C
 C-->E
 B-->D
 C-->D
 D-->F
 E-->F
 ")

## Custom

 DiagrammeR("
 graph LR
 A-->B
 A-->C
 C-->D
 C-->E
 B-->D
 B-->E
")

## Tree
 
DiagrammeR::grViz("digraph {

graph [layout = dot, rankdir = LR]

node [shape = rectangle, style = filled, fillcolor = white, fontcolor = blue]
toss [label = 'Toss']
h [label = 'H']
t [label = 'T']
f1 [label = '1']
f2 [label =  '2']
f3 [label = '3']
f4 [label = '4']
f5 [label= '5']
f6 [label= '6']

{toss}  -> {h, t} 
h -> {f1, f2, f3, f4, f5, f6}
t -> {f1, f2, f3, f4, f5, f6}
}")

## The above simpler

DiagrammeR::grViz("digraph {

 graph [layout = dot, rankdir = TB]

 node [shape = circle, style = filled, fillcolor = grey, 
 fontcolor = black, fontsize = 16]

{Coin}  -> {H,T} 
H -> {H1,H2,H3,H4,H5,H6}
T -> {T1,T2,T3,T4,T5,T6}
}")
