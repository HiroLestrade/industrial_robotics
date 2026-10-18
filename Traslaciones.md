---
tags:
  - notes
  - done
date: 2026-09-16
links:
  - "[[Transformaciones Homogéneas]]"
---
---

Gran parte de la cinemática de robots se enfoca en el establecimiento de varios sistemas coordenados para representar las posiciones y orientaciones de cuerpos rígidos y las transformaciones entre dichos sistemas.

# Representación de posiciones
- Para poder asignar coordenadas, es necesario especificar un **sistema coordenado**/**marco de referencia**.
- Geométricamente un **punto** corresponde a una ubicación específica en el espacio, mientras que un **vector** especifica dirección y magnitud. 
- Puntos y vectores no son equivalentes ya que los puntos se refieren a una ubicación específica y los vectores pueden moverse por el espacio.
- La notación de $p$ es una entidad geométrica, un punto en el espacio, mientras que $p^0$ y $p^1$ son vectores que representan la ubicación del punto en el espacio con respecto a los sistemas coordenados $o_0 \{ x_0 y_0 \}$ y $o_1 \{ x_1 y_1 \}$ respectivamente.
	![[Traslaciones 2026-09-16 18.56.52.excalidraw | center]]

- Dado que el origen de un sistema coordenado es un punto en el espacio, podemos asignar coordenadas que representen la posición del origen de un sistema coordenado con respecto a otro.
	![[Traslaciones 2026-09-16 18.57.39.excalidraw]]
	$o_1^0$ es la representación del origen del sistema $o_1$ con respecto a $o_0$ y $o_0^1$ es la representación del origen del sistema $o_0$ con respecto a $o_1$.

# Traslaciones
Para poder realizar manipulaciones algebráicas usando coordenadas, es esencial que todos los vectores coordinados estén expresados en el mismo marco de referencia.
$$
p_1^0 = p_1 + o_1^0
$$
> Por ejemplo, 

En primer lugar, se representan los orígenes de los sistemas coordenados:
![[Traslaciones 2026-09-16 19.02.03.excalidraw]]
$$
\begin{align}
o_0^0 &= [ \ 0 \quad 0 \ ]' \\ \\
o_1^0 &= [ \ 5 \quad -4 \ ]' \\ \\
o_2^0 &= [ \ 0 \quad 5 \ ]' \\ \\
o_0^1 &= [ \ -5 \quad 4 \ ]' \\ \\
o_1^1 &= [ \ 0 \quad 0 \ ]' \\ \\
o_2^1 &= [ \ 5 \quad 4 \ ]' \\ \\
o_0^2 &= [ \ -10 \quad 0 \ ]' \\ \\
o_1^2 &= [ \ -5 \quad -4 \ ]' \\ \\
o_2^2 &= [ \ 0 \quad 0 \ ]' \\
\end{align}
$$
La representación de un punto en un sistema coordenado puede ser trasladada con respecto a otro:
$$
\begin{align}
p_0^0 &= [5 \quad 0]' \\ \\
p_1^1 &= [0 \quad 4]' \\ \\
p_2^2 &= [-5 \quad 0]'
\end{align}
$$
![[Traslaciones 2026-09-16 19.17.35.excalidraw]]

$$
\begin{align}
p_1^0 &= p_1^1 + o_1^0 = [0 \quad 4]' + [5 \quad -4]' = [5 \quad 0]' \\ \\
p_2^0 &= p_2^2 + o_2^0 = [-5 \quad 0]' + [10 \quad 0]' = [5 \quad 0]'
\end{align}
$$
Una misma posición puede representarse con más de dos sistemas coordenados a través de una composición de traslaciones:
$$
p_2^0 = p_2^2 + o_2^1 + o_1^0 = [-5 \quad 0]' + [5 \quad 4]' + [5 \quad -4]' = [5 \quad 0]'
$$
