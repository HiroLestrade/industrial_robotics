---
tags:
  - notes
  - done
date: 2026-09-17
links:
  - "[[Introducción]]"
---

# Movimiento Rígido
Un movimiento rígido es un par ordenado $(o, R)$ donde $o \in \mathbb{R}^3$ y $R \in SO(3)$ con el que se representa la orientación y traslación de un cuerpo rígido en un sistema con respecto a otro.
$$
p^0 = R_1^0 p_1 + o_1^0
$$
El grupo de todos los movimientos rígidos se conoce como el **Grupo Especial Euclideo** denotado por $SE(3)$.

## Composición de movimientos rígidos
$$
\begin{align}
p_0 &= R_n^0 p_n + o_n^0 \\ \\
    &= R_{n-1}^0 R_n^{n-1} p_n + R_{n-1}^0 o_n^{n-1} + o_{n-1}^0 \\ \\
    &= R_1^0 R_2^1...R_n^{n-1}p_n + R_1^0 R_2^1 ... R_{n-1}^{n-2} o_n^{n-1} + ... + R_1^0 o_2^1 + o_1^0 \\ \\
    &= \left ( \prod_{i=1}^n R_i^{i-1} \right ) p_n + \sum_{k = 1}^n \left ( \prod_{i=1}{k-1} R_i^{i-1} \right)o_k^{k-1}
 \end{align}
$$
- Ejemplo:
$$
\begin{align}
p_1^0 &= R_1^0 p_1 + o_1^0 \\ \\
p_2^1 &= R_2^1 p_2 + o_2^1 \\ \\
p_2^0 &= R_1^0 p_2^1 + o_1^0 \\
&= R_1^0 (R_2^1 p_2 + o_2^1) + o_1^0 \\
&= R_1^0 R_2^1 p_2 + R_1^0 o_2^1 + o_1^0
\end{align}
$$
	Considerando esto, podemos establecer las relaciones generales de orientación y posición como:
$$
R_2^0 = R_1^0 R_2^1
$$
$$
o_2^0 = R_1^0 o_2^1 + o_1^0
$$

# Matrices de transformación homogénea
Una **transformación homogénea** es la representación matricial de un movimiento rígido.
$$
H =
\begin{bmatrix}
R &o \\
0 &1
\end{bmatrix}
$$
Con $R \in SO(3)$, $d \in \mathbb R^3$ y $H \in SE(3)$.
- La inversa de una transformación homogénea tiene la forma:
$$
H^{-1} =
\begin{bmatrix}
R^T &-R^T o \\
0 &1
\end{bmatrix}
$$
- Para poder realizar transformaciones por multiplicación matricial es necesario aumentar los vectores agregando un componente extra de la siguiente forma:
$$
P_0 = 
\begin{bmatrix}
p_0 \\
1
\end{bmatrix}
$$
- La composición de transformaciones homogéneas es igual que en las matrices de rotación. Dada una transformación homogénea $H_1^0$ relacionando dos sistemas coordenados, si se realiza un segundo movimiento rígido representado por $H$...
	- Respecto al eje actual, entonces se postmultiplica la transformación que ya se tenía para obtener la transformación total.
$$
H_2^0 = H_1^0 H_2^1
$$
	- Respecto al eje fijo, entonces se premultiplica la transformación que se tenía para obtener la transformación total.
$$
H_2^0 = H H_1^0
$$
- Ejemplo de traslación y rotación de un punto por dos transformaciones:
$$
\begin{align}
P_2^0 &= H_2^0 P_2 =
\begin{bmatrix}
R_2^0 &o_2^0 \\
0 &1
\end{bmatrix}
\begin{bmatrix}
p_2 \\
1
\end{bmatrix}
=
\begin{bmatrix}
R_2^0 p_2 + o_2^0 \\
1
\end{bmatrix} \\ \\
&= H_1^0 H_2^1 P_2 = 
\begin{bmatrix}
R_1^0 &o_1^0 \\
0 &1
\end{bmatrix}
\begin{bmatrix}
R_2^1 &o_2^1 \\
0 &1
\end{bmatrix}
\begin{bmatrix}
p_2 \\
1
\end{bmatrix}
=
\begin{bmatrix}
R_1^0 R_2^1 &R_1^0 o_2^1 + o_1^0 \\
0 &1
\end{bmatrix}
\begin{bmatrix}
p_2 \\
1
\end{bmatrix}
=
\begin{bmatrix}
R_1^0 R_2^1 p_2 + R_1^0 o_2^1 + o_1^0 \\
1
\end{bmatrix}
\end{align}
$$
- Las transformaciones homogéneas son un caso especial de las coordenadas homogéneas, utilizadas en computación gráfica. La forma general de una transformación homogénea tiene la forma:
$$
H =
\begin{bmatrix}
R_{3 \times 3} &o_{3 \times 1} \\
f_{1 \times 3} &s_{1 \times 1}
\end{bmatrix}
=
\begin{bmatrix}
\text{Rotación} &\text{Traslación} \\
\text{Perspectiva} &\text{Escala}
\end{bmatrix}
$$

## Transformaciones homogéneas básicas
$$
HT_x(d) =
\begin{bmatrix}
1 &0 &0 &d \\
0 &1 &0 &0 \\
0 &0 &1 &0 \\
0 &0 &0 &1 \\
\end{bmatrix}
$$
$$
HT_y(d) =
\begin{bmatrix}
1 &0 &0 &0 \\
0 &1 &0 &d \\
0 &0 &1 &0 \\
0 &0 &0 &1 \\
\end{bmatrix}
$$
$$
HT_z(d) =
\begin{bmatrix}
1 &0 &0 &0 \\
0 &1 &0 &0 \\
0 &0 &1 &d \\
0 &0 &0 &1 \\
\end{bmatrix}
$$
$$
HR_x(\theta) =
\begin{bmatrix}
1 &0 &0 &0 \\
0 &c(\theta) &-s(\theta) &0 \\
0 &s(\theta) &c(\theta) &0 \\
0 &0 &0 &1 \\
\end{bmatrix}
$$
$$
HR_y(\theta) =
\begin{bmatrix}
c(\theta) &0 &s(\theta) &0 \\
0 &1 &0 &0 \\
-s(\theta) &0 &c(\theta) &0 \\
0 &0 &0 &1 \\
\end{bmatrix}
$$
$$
HR_z(\theta) =
\begin{bmatrix}
c(\theta) &-s(\theta) &0 &0 \\
s(\theta) &c(\theta) &0 &0 \\
0 &0 &1 &0 \\
0 &0 &0 &1 \\
\end{bmatrix}
$$
