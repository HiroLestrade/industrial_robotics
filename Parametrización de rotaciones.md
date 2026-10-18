---
tags:
  - notes
  - not_started
  - homogeneous_transformations
date:
links:
  - "[[Rotaciones]]"
---
Los nueve elementos $r_{ij}$ en una matriz de rotación no son cantidades independientes.
- Las columnas de una matriz de rotación son vectores unitarios
$$
\sum_i r_{ij}^2 = 1  \quad j \in \{1, 2, 3\}
$$
- Las columnas de una matriz de rotación son mutuamente ortogonales
$$
r_{1i} r_{1j} + r_{2i} r_{2j} + r_{3 i} r_{3 j} = 0 \quad i \neq j
$$
Juntas, estas restricciones definen seis ecuaciones independientes con nueve incógnitas.

# Angulos de Euler
Un método común para especificar una matriz de rotación en términos de tres cantidades independientes son los **ángulos de Euler**.
$$
\begin{align}
R_{ZYZ} &= R_z(\phi) R_y(\theta) R_z(\psi) =
\begin{bmatrix}
c_\phi c_\theta c_\psi - s_\phi s_\psi &-c_\phi c_\theta s_\psi - s_\phi c_\psi &c_\phi s_\theta \\
s_\phi c_\theta c_\psi - c_\phi s_\psi &-s_\phi c_\theta s_\psi + c_\phi c_\psi &c_\phi s_\theta \\
-s_\theta c_\psi &s_\theta s_\psi &c_\theta
\end{bmatrix}
\end{align}
$$
El problema a resolver es: dada una matriz de rotación $R$, determinar el conjunto de ángulos de Euler $\phi$, $\theta$ y $\psi$ de modo que:
$$
R = R_{ZYZ}
$$
