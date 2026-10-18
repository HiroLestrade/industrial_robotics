---
tags:
  - notes
  - done
date: 2026-10-06
links: "[[Cinemática]]"
---
%%%%---

# Problema general
Dada una transformación homogénea
$$
H =
\begin{bmatrix}
R &o \\
0 &1
\end{bmatrix}
$$
encontrar una o todas las soluciones para la ecuación:
$$
H_n^0(q_1, ...\ , q_n) = H
$$
Esto resulta en doce ecuaciones con $n$ incógnitas de la forma:
$$
{H_0^n}_{ij} = h_{ij}
$$
Mientras que la cinemática directa siempre tiene una solución única, la cinemática directa puede o no puede tener solución. Incluso si la solución existe, puede no ser única. Debido a que las ecuaciones de la cinemática directa suelen ser complicadas funciones no lineales de las variables articulares, la solución puede ser difícil de obtener incluso cuando existe.
Resolver la cinemática inversa consiste en encontrar una forma cerrada de la relación:
$$
q_k = f_k(h_{11},\ ...\ ,h_{34})
$$
Soluciones cerradas se prefieren sobre soluciones numéricas debido a la velocidad con la que deben resolverse.

# Desacople cinemático
Para manipuladores con seis articulaciones, con una muñeca esférica en las tres últimas, es posible separar el problema de cinemática inversa en dos más simples: **cinemática inversa de posición** y **cinemática inversa de orientación**. 
El punto importante a considerar es que el movimiento de las últimas tres articulaciones no cambia la posición de un punto $o_c$ conocido como **punto de desacople**. 
Considerando
$$
R_6^0(q_1\ ... \ ,q_n) = R_3^0 R_6^3 = R 
$$
$$
o_6^0(q_1,\ ... \ , q_n) = o_c^0 + d_6 R z_0 = o 
$$
con $R$ y $o$ siendo la orientación y posición deseadas para el eje de herramienta.
El punto de desacople puede encontrarse con:
$$
o_c = o - d_6 R z_0
$$
y la orientación de las articulaciones de la muñeca con:
$$
R_6^3 = (R_3^0)^{-1} R = (R_3^0)^T R
$$

# Algoritmo de cinemática inversa
1. Encontrar el punto de desacople
$$
o_c = o - d_6 R z_0
$$
2. Encontrar $q_1$, $q_2$, $q_3$, resolviendo la cinemática inversa para 3DOF
3. Encontrar la orientación en el punto de desacople $R_3^0$ con cinemática directa de 3DoF
4. Calcular la orientación de la muñeca
$$
R_6^3 = (R_3^0)^T R
$$
5. Encontrar el conjunto de ángulos de Euler correspondientes a $R_6^3$ para obtener $q4$, $q5$ y $q6$.

