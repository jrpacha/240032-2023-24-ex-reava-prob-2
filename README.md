# 240032 Resit Exam. Course 2023-24. Problem 1

Consider the hexagonal domain shown in the figure, with nodes $(0,0)$, $(1,0)$, $(1/2,1/2)$, $(-1/2,1/2)$, $(-1,0)$, $(-1/2,-1/2)$, $(1/2,-1/2)$. We want to solve the Poisson equation

$$ 
-c\Delta u=5 
$$ 

with $c=11$ using $6$ triangular elements by the right isosceles triangles of the figure.

![mash-raw.png](mesh.png) 

(a) (2 points) Let us choose a local numbering in element $\Omega^1$ given by the global nodes $2$, $3$ and $1$. Let $K^1$ be the local stiffness matrix at this element. Which is the value of $K_{1,1}^1$?

- [ ] `-1.10e+01` 
- [x] `5.50e+00`
- [ ] Empty answer (no penalty) 
- [ ] `1.10e+01` 
- [ ] `-5.50e+00`

(b) (2 points) Give the value of $K_{1,1}$ of the assembled stiffness matrix K.

- [ ] Empty answer (no penalty) 
- [ ] `1.10e+01` 
- [ ] `-1.10e+01` 
- [ ] `1.65e+01` 
- [x] `4.40e+01`

(c) (3 points) In this section we consider the essential boundary conditions givren by only $u=7$ at the boundary of the hexagon, that is, at the edges that join the vertices $2$, $3$, $4$, $5$, $6$, and $7$. Which is the value of $u$ at node $1$?

- [ ] Empty answer (no penalty) 
- [ ] `7.3432e+00`
- [ ] `7.2789e+00` 
- [ ] `6.7936e+00` 
- [x] `7.0568e+00`

(d) (3 points) In this section, we replace the essential boundary conditions only on edges 2\-3 and 3\-4 by the following natural conditions. Fisrt assume that on the edge 2\-3 we take an insulating condition $q_n =0$. Second, on the edge 3\-4 we consider the following condition $\frac{\partial u}{\partial y}=1+x$. Which is the value of $Q_3$ in the assembled system?

- [ ] Empty answer (no penalty) 
- [x] `6.4167e+00` 
- [ ] `4.5833e+00` 
- [ ] `8.2500e+00`
- [ ] `6.6819e+00` 
