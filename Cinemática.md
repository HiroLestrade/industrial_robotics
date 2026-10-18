---
tags:
  - notes
  - done
date: 2026-09-24
links:
  - "[[Transformaciones Homogéneas]]"
---
---

El **problema de cinemática** describe el movimiento de un manipulador sin considerar las fuerzas y torques que causan el movimiento. La descripción cinemática es puramente geométrica.

El **problema de cinemática directa** es determinar la posición y orientación del efector final dados los valores de las variables articulares del robot.
$$
q = 
\begin{bmatrix}
q_1 \\
q_2 \\
\vdots \\
q_n
\end{bmatrix}
\in \mathbb R^n

\qquad
\begin{matrix}
f(q) \\
\Rightarrow
\end{matrix}
\qquad

X =
\begin{bmatrix}
x \\ y \\ z \\ \phi \\ \theta \\ \psi
\end{bmatrix} \in \mathbb R^6
$$
El **problema de cinemática inversa** es determinar el valor de las variables articulares dada una posición y orientación del efector final.
$$
X =
\begin{bmatrix}
x \\ y \\ z \\ \phi \\ \theta \\ \psi
\end{bmatrix} \in \mathbb R^6

\qquad
\begin{matrix}
g(X) \\
\Rightarrow
\end{matrix}
\qquad

q = 
\begin{bmatrix}
q_1 \\
q_2 \\
\vdots \\
q_n
\end{bmatrix}
\in \mathbb R^n

$$
Un robot con $n$ articulaciones tiene $n + 1$ eslabones dado que cada articulación conecta dos eslabones. Las articulaciones se numeran de $1$ a $n$ y los eslabones de $0$ a $n$ comenzando con la base. Por convención, la articulación $i$ conecta los eslabones $i - 1$ e $i$ y con ello, si se actúa la articulación $i$, se mueve el eslabón $i$.

Con la $i$-ésima articulación se asocia una **variable articular** representada por:
$$
q_i = \begin{cases}
\theta_i & \text{si la articulación $i$ es de revolución} \\
d_i & \text{si la articulación $i$ es prismática}
\end{cases}
$$

