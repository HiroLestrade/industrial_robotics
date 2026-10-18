---
tags:
  - notes
  - done
date: 2026-09-14
links:
  - "[[Cinemática]]"
---
---

Para realizar un análisis cinemático, se fijan ejes coordenados de forma rígida en cada eslabón.
Una convención para seleccionar los marcos de referencia es la **convención de Denavit-Hartenberg**.

# Convención DH
Cada transformación homogénea es representada como el producto de cuatro transformaciones básicas:
$$
\begin{align}
H_i &= \text{HR}_z(\theta_i) \text{HT}_z(d_i) \text{HT}_x(a_i) \text{HR}_x(\alpha_i) \\\\
&=
\begin{bmatrix}
c(\theta_i) &-s(\theta_i) &0 &0 \\
s(\theta_i) &c(\theta_i) &0 &0 \\
0 &0 &1 &0 \\
0 &0 &0 &1 \\
\end{bmatrix}
\begin{bmatrix}
1 &0 &0 &0 \\
0 &1 &0 &0 \\
0 &0 &1 &d_i \\
0 &0 &0 &1 \\
\end{bmatrix}
\begin{bmatrix}
1 &0 &0 &a_i \\
0 &1 &0 &0 \\
0 &0 &1 &0 \\
0 &0 &0 &1 \\
\end{bmatrix}
\begin{bmatrix}
1 &0 &0 &0 \\
0 &c(\alpha_i) &-s(\alpha_i) &0 \\
0 &s(\alpha_i) &c(\alpha_i) &0 \\
0 &0 &0 &1 \\
\end{bmatrix} \\\\

&=
\begin{bmatrix}
c(\theta_i) &-s(\theta_i)c(\alpha_i) &-s(\theta_i)s(\alpha_i) &a_i c(\theta_i) \\
s(\theta_i) &c(\theta_i)c(\alpha_i) &-c(\theta_i)s(\alpha_i) &a_i s(\theta_i) \\
0 &s(\alpha_i) &c(\alpha_i) &d_i \\
0 &0 &0 &1
\end{bmatrix}

\end{align}
$$
Donde:
- $\theta_i$: **ángulo de articulación**, ángulo entre los ejes $x_i$ y $x_{i-1}$ al rededor del eje $z_{i-1}$.
- $d_i$: **offset del eslabón**, distancia entre los ejes $x_i$ y $x_{i-1}$ sobre el eje $z_{i-1}$.
- $a_i$: **longitud del eslabón**, distancia entre los ejes $z_i$ y $z_{i-1}$ sobre el eje $x_i$.
- $\alpha_i$: **torsión del eslabón**, ángulo entre los ejes $z_i$ y $z_{i-1}$ al rededor del eje $x_i$.

El **algoritmo de Denavit-Hartenberg** permite asignar los ejes coordenados de acuerdo a esta transformación:
1. Se asignan los ejes $z_i$ en la dirección del eje de rotación para una articulación rotacional o en la dirección del desplazamiento para una articulación prismática.
2. Se establece el eje de la base a conveniencia, sólo respetando que sea un sistema de mano derecha.
3. Se establecen los orígenes $o_i$ de los sistemas coordenados considerando los siguientes casos:
	a. $z_i$ y $z_{i-1}$ son perpendiculares: $o_i$ se coloca en el cruce de ambos ejes.
		![[Cinemática Directa 2026-09-24 16.16.08.excalidraw]]
	b. $z_i$ y $z_{i-1}$ son paralelos: se dibuja, en cualquier punto sobre $z_{i-1}$, una línea que atraviese perpendicularmente a ambos ejes y el origen $o_i$ se coloca en el cruce con el eje $z_i$.
		![[Cinemática Directa 2026-09-24 16.16.48.excalidraw]]
	c. $z_i$ y $z_{i-1}$ no comparten plano: se dibuja la línea de menor distancia entre los dos ejes y el origen $o_i$ se coloca en el cruce con $z_i$.
		![[Cinemática Directa 2026-10-05 22.12.57.excalidraw]]
4. Se establece el eje $x_i$ de acuerdo a los siguientes casos:
	a. $z_i$ y $z_{i-1}$ son perpendiculares: $x_i$ se coloca perpendicular a $z_i$ y $z_{i-1}$ pasando por $o_i$.
		![[Cinemática Directa 2026-09-24 16.27.35.excalidraw]]
	b. $z_i$ y $z_{i-1}$ son paralelos: $x_i$ se coloca de modo que atraviece a $z_i$ y $z_{i-1}$ pasando por $o_i$.
		![[Cinemática Directa 2026-09-24 16.27.45.excalidraw]]
	c. $z_i$ y $z_{i-1}$ no comparten plano: $x_i$ se coloca sobre la línea de menor distancia entre los dos ejes pasando por $o_i$
		![[Cinemática Directa 2026-09-24 16.27.55.excalidraw]]
5. Se establecen los ejes $y_i$ de modo que se forme un sistema de mano derecha.
6. Se establece el sistema del efector final

Para completar la cinemática directa, después de a la asignación de los ejes coordenados, se crea la tabla de parámetros:

| $i$ | $\theta_i$ | $d_i$ | $a_i$ | $\alpha_i$ |
| --- | ---------- | ----- | ----- | ---------- |
| 1   | $\theta_1$ | $d_1$ | $a_1$ | $\alpha_1$ |
| ... | ...        | ...   | ...   | ...        |
Se construyen las matrices de transformación $H_i$ y con ellas se obtiene
$$
	H = H_n^0 = H_1 H_2 \ ... \ H_{n-1} H_n
$$
que nos dará la posición y orientación del efector final respecto a la base.

# Efector Final
El sistema coordenado $o_n\{x_n, y_n, z_n\}$ se suele conocer como el **sistema de herramienta**. 
- El origen se suele colocar simétricamente entre los dedos de la pinza.
- Los vectores unitarios suelen nombrarse como:
	- $z_i \equiv a$: (approach) dirección de aproximación de la herramienta a un objeto.
	- $y_i \equiv s$: (sliding) dirección de deslizamiento de los dedos.
	- $x_i \equiv n$: (normal) dirección normal al plano formado por $a$ y $s$.
	 ![[Drawing 2026-10-05 23.34.03.excalidraw]]
