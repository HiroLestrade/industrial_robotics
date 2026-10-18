---
tags:
  - notes
  - done
date: 2026-09-16
links: "[[Transformaciones Homogéneas]]"
---
---

# Rotaciones en un plano
Se tienen dos marcos de referencia: el marco fijo $o_0 \{x_0, y_0\}$ y el marco rotado $o_1 \{x_1, y_1\}$ obtenido al girar un ángulo $\theta$ en sentido antihorario alrededor del origen.
![[Rotaciones 2026-09-16 23.02.29.excalidraw]]
La relación entre ambos marcos de referencia está dada por:
$$ 
R_1^0 = [x_1^0 \quad y_1^0]
=
\begin{bmatrix}
x_1 \cdot x_0 &y_1 \cdot x_0 \\
x_1 \cdot y_0 &y_1 \cdot y_0 \\
\end{bmatrix}
$$
Donde $x_1^0$ y $y_1^0$ son las representaciones de $x_1$ y $y_1$ en el marco de referencia $o_0$. Considerando la proyección de $x_1$ sobre $x_0$ y $y_0$ y la de $y_1$ sobre $x_0$ y $y_0$ podemos establecer:
![[Rotaciones 2026-09-16 23.06.13.excalidraw]]
$$
x_1^0 = x_1 \cos \theta - y_1 \sin \theta
$$
$$
y_1^0 = x_1 \sin \theta + y_1 \cos \theta
$$

Sustituyendo las relaciones y despejando matricialmente:
$$
R_1^0 = [x_1 \cos \theta - y_1 \sin \theta \quad x_1 \sin \theta + y_1 \cos \theta]
= \begin{bmatrix}
 \cos \theta &-\sin \theta \\
 \sin \theta &\cos \theta
\end{bmatrix}
\begin{bmatrix}
x_1 \\
y_1
\end{bmatrix}
= \begin{bmatrix}
 \cos \theta &-\sin \theta \\
 \sin \theta &\cos \theta
\end{bmatrix}

$$
encontramos la matriz de rotación que establece la orientación de $o_1$ con respecto a $o_0$. Las columnas de $R_1^0$ especifican la dirección de los vectores directores de $o_1$ respecto al marco de referencia $o_0$.

## Rotación activa
Se tiene un punto $p_0$ expresado en el marco de referencia $o_0$, una rotación activa establece que el punto se desplaza siguiendo el movimiento del sistema coordenado $o_1$, llegando a una nueva ubicación representada por $q_0$ en el mismo marco de referencia $o_0$.
$$
q_0 = R_1^0 p_0
$$
![[Rotaciones 2026-09-16 23.26.41.excalidraw]]

Ejemplo:
Considerando $p_0 = [3 \quad 3]'$ y $\theta = 45°$
- Se tiene que:
$$
q_0 =
\begin{bmatrix}
c(45°) &-s(45°) \\
s(45°) &c(45°)
\end{bmatrix}
\begin{bmatrix}
3 \\
3
\end{bmatrix}
=
\begin{bmatrix}
3 \frac{\sqrt 2}{2} - 3 \frac{\sqrt 2}{2} \\
3 \frac{\sqrt 2}{2} + 3 \frac{\sqrt 2}{2} \\
\end{bmatrix}
=
\begin{bmatrix}
0 \\
3 \sqrt 2
\end{bmatrix}
$$
- Si vemos estos movimientos desde el marco de referencia $o_1$:
$$
p_1 = (R_1^0)^{-1} p_0 = 
\begin{bmatrix}
c(45°) &-s(45°) \\
s(45°) &c(45°)
\end{bmatrix} ^{-1}
\begin{bmatrix}
3 \\
3
\end{bmatrix}
=
\begin{bmatrix}
c(45°) &s(45°) \\
-s(45°) &c(45°)
\end{bmatrix}
\begin{bmatrix}
3 \\
3
\end{bmatrix}
=
\begin{bmatrix}
3 \frac{\sqrt 2}{2} + 3 \frac{\sqrt 2}{2} \\
-3 \frac{\sqrt 2}{2} + 3 \frac{\sqrt 2}{2} \\
\end{bmatrix}

=
\begin{bmatrix}
3 \sqrt 2 \\
0
\end{bmatrix}
$$
$$
q_1 = R_1^0 p_1 =
\begin{bmatrix}
c(45°) &-s(45°) \\
s(45°) &c(45°)
\end{bmatrix}
\begin{bmatrix}
3 \sqrt 2 \\
0
\end{bmatrix}
=
\begin{bmatrix}
3 \sqrt 2 \cdot \frac{\sqrt 2}{2} \\
3 \sqrt 2 \cdot \frac{\sqrt 2}{2}
\end{bmatrix}
= 
\begin{bmatrix}
3 \\
3
\end{bmatrix}
$$

## Rotación pasiva
Se tiene un punto $p$ que se mantiene fijo ante la rotación del marco de referencia $o_1$ con respecto al marco de referencia $o_0$ por lo que tendrá coordenadas diferentes en el nuevo marco de referencia.
![[Rotaciones 2026-09-17 00.09.03.excalidraw]]
- Si conocemos el punto expresado en el marco de referencia $o_1$ y queremos conocer sus coordenadas en el marco de referencia $o_0$ representadas por $p_0$ usamos:
$$
p_0 = R_1^0 p_1
$$
	Por ejemplo, si $p_1 = [3\sqrt 2 \quad 0]'$ y $\theta = 45°$:
$$
p_0 = 
\begin{bmatrix}
c(45°) &-s(45°) \\
s(45°) &c(45°)
\end{bmatrix}
\begin{bmatrix}
3 \sqrt 2\\
0
\end{bmatrix}
=
\begin{bmatrix}
3 \sqrt 2 \cdot \frac{\sqrt 2}{2}\\
3 \sqrt 2 \cdot \frac{\sqrt 2}{2}\\
\end{bmatrix}
=
\begin{bmatrix}
3 \\
3
\end{bmatrix}
$$
- Si lo que conocemos es el punto expresado en el marco de referencia $o_0$ y queremos conocer sus coordenadas en $o_1$ representadas por $p_1$ usamos:
$$
p_1 = (R_1^0)^{-1} p_0
$$
	Por ejemplo, si $p_0 = [3 \quad 3]'$ y $\theta = 45°$:
$$
p_1 = 
\begin{bmatrix}
c(45°) &-s(45°) \\
s(45°) &c(45°)
\end{bmatrix}^{-1}
\begin{bmatrix}
3\\
3
\end{bmatrix}
=
\begin{bmatrix}
c(45°) &s(45°) \\
-s(45°) &c(45°)
\end{bmatrix}
\begin{bmatrix}
3\\
3
\end{bmatrix}
=
\begin{bmatrix}
3 \frac{\sqrt 2}{2} + 3 \frac{\sqrt 2}{2} \\
-3 \frac{\sqrt 2}{2} + 3 \frac{\sqrt 2}{2} \\
\end{bmatrix}

=
\begin{bmatrix}
3 \sqrt 2 \\
0
\end{bmatrix}
$$

---
# Matrices de rotación
Una matriz de rotación se puede interpretar de tres formas distintas:
1. Representa la orientación de un sistema coordenado rotado con respecto a un sistema coordenado fijo.
2. Es un operador que toma un vector y lo rota en un nuevo vector dentro del mismo sistema coordenado.
3. Representa una transformación de coordenadas, relacionando la ubicación de un punto $p$ en dos sistemas coordenados.

## Propiedades de las matrices de rotación
1. $R \in SO(n)$
2. $R^{-1} \in SO(n)$
3. $R^{-1} = R^T$
4. Los renglones y columnas de $R$ son mutuamente ortogonales.
5. Cada columna y renglón de $R$ es un vector unitario.
6. $\det R = 1$ 
7. $R_k(0) = I$
8. $(R_1^0)^T = R_0^1 \quad \Rightarrow (R_k(\theta))^T = R_k(-\theta)$   
9. $R_k(\theta) R_k(\phi) = R_k(\theta + \phi)$
El grupo al que pertenecen todas las matrices de rotación de $n \times n$ se conoce como el **Grupo Especial Ortogonal de orden $n$** y se representa con $SO(n)$.

## Rotaciones básicas
$$
R_z(\theta) =
\begin{bmatrix}
c(\theta) &-s(\theta) &0 \\
s(\theta) &c(\theta) &0 \\
0 &0 &1
\end{bmatrix}
$$
$$
R_x(\theta) =
\begin{bmatrix}
1 &0 &0 \\
0 &c(\theta) &-s(\theta) \\
0 &s(\theta) &c(\theta) \\
\end{bmatrix}
$$
$$
R_y(\theta) =
\begin{bmatrix}
c(\theta) &0 &s(\theta) \\
0 &1 &0 \\
-s(\theta) &0 &c(\theta) \\
\end{bmatrix}
$$

---
# Transformaciones de similitud
Un eje coordenado está definido por un conjunto de *vectores base*. Una matriz de rotación, como una transformación de coordenadas, puede verse como la definición de un cambio de base de un eje a otro. La  representación matricial general de una transformación lineal de un eje a otro utiliza la **transformación de similitud**.
Se tienen dos sistemas coordenados $o_0$ y $o_1$ relacionados por $R_1^0$. Si una matriz $A$ es la representación de una transformación lineal en el sistema $o_0$ y $B$ es la representación de la misma transformación en el sistema $o_1$, ambas están relacionadas por:
$$
B = (R_1^0)^{-1} A R_1^0
$$
Ejemplo:
Se tienen dos sistemas coordenados $o_0$ y $o_2$ relacionados por la matriz de rotación $R_2^0$:
$$
R_2^0 =
\begin{bmatrix}
0 &0 &1 \\
0 &1 &0 \\
-1 &0 &0
\end{bmatrix}
$$
![[Rotaciones 2026-09-20 14.57.54.excalidraw]]
Si se realiza una rotación $A = R_z(90°)$ con respecto al sistema $o_0$, podemos obtener el mismo efecto desde la perspectiva del sistema $o_2$ con una transformación de similitud:
$$
B = (R_2^0)^T A \ R_2^0 =
\begin{bmatrix}
0 &0 &1 \\
0 &1 &0 \\
-1 &0 &0 \\
\end{bmatrix}^T 
\begin{bmatrix}
0 &-1 &0 \\
1 &0 &0 \\
0 &0 &1 \\
\end{bmatrix}
\begin{bmatrix}
0 &0 &1 \\
0 &1 &0 \\
-1 &0 &0 \\
\end{bmatrix}
=
\begin{bmatrix}
1 &0 &0 \\
0 &0 &1 \\
0 &-1 &0
\end{bmatrix}
$$
Que corresponde a una rotación $R_x(-90°)$ en el marco de referencia $o_2$.

---
# Composición de rotaciones
Dado un eje fijo $o_0$ y un eje actual $o_1$ junto con una matriz de rotación $R_1^0$ que los relaciona, si para llegar al sistema $o_2$ se realiza una tercera rotación...
- **respecto al eje actual**, entonces se postmultiplica la rotación que ya se tenía para obtener la rotación total.
$$
R_2^0 = R_1^0 R_2^1
$$
	![[Rotaciones 2026-09-17 01.12.14.excalidraw]]
- **respecto al eje fijo**, entonces se premultiplica la rotación que ya se tenía para obtener la rotación total.
$$
R_2^0 = R R_1^0
$$

	![[Rotaciones 2026-09-17 01.12.03.excalidraw]]
	*No se utiliza la notación $R_2^1$ en este caso porque la rotación es respecto a $o_0$ pero tampoco utilizamos $R_2^0$ porque eso representa la rotación total, por eso simplemente se usa $R$.* 
Y esto se puede extender a $n$ rotaciones sucesivas.

- Ejemplo de equivalencia entre rotaciones respecto al eje fijo y respecto al eje actual. Considera la rotación $R = R_x R_y R_z$ :
	- Si se ejecuta respecto al eje actual:
	![[Rotaciones 2026-09-17 01.11.45.excalidraw]]
	- Si se ejecuta respecto al eje fijo:
	![[Rotaciones 2026-09-17 01.13.09.excalidraw]]
	Ambas deben dar el mismo resultado debido a que utilizan la misma operación matemática, pero el orden de ejecución interno de las rotaciones es distinto.
	- Considerando la rotación respecto al eje fijo, es un error invertir el orden matemático de las matrices ya que eso es una operación diferente con un equivalente respecto al eje actual diferente:
	![[Rotaciones 2026-09-17 01.13.33.excalidraw]]

- Equivalencia entre rotaciones respecto al eje fijo y respecto al eje actual usando transformaciones de similitud:
$$
\begin{align}
R_1 &= R_x \\ \\
R_2 &= (R_1 R_y R_1^T)R_1 \\ \\ 
R_3 &= (R_2 R_z R_2^T)R_2 \\
&= ([(R_1 R_y R_1^T)R_1] R_z [(R_1 R_y R_1^T)R_1]^T) [(R_1 R_y R_1^T) R_1] \\ 
&= R_1 R_y \cancel{R_1^T R_1} R_z \cancel{R_1^T} \cancel{(R_1 R_y R_1^T)^T (R_1 R_y R_1^T)} \cancel{R_1}
&= R_x R_y R_z
\end{align}
$$
