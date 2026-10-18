---
tags:
  - notes
  - done
date: 2026-09-14
links:
  - "[[Robótica Industrial]]"
---
# Definición y orígenes
- El término **robot** fue introducido por primera vez por el escritor checo Karel Capek en su libro de 1920 Robots Universales Rossum, la palabra viene de *robota* que en checo significa trabajo.
- Definición de robot industrial:
	- **Robot Institute of America** (RIA): un robot es un manipulador reprogramable y multifuncional diseñado para mover material, herramientas o dispositivos especializados a través de movimientos programados para el desempeño de una variedad de tareas.
	- **ISO 8373**: Un robot manipulador industrial es un sistema controlado por retroalimentación, reprogramable y multipropósito.
	![[A465.jpg | Robot CRS A465]]

- Orígenes:
	- Teleoperadores: dispositivos esclavo-maestro, fueron desarrollados durante la segunda guerra mundial para manejar materiales radioactivos.
		![[goertz-teleoperator.jpg | Teleoperador de Raymond Goertz]]
	- Control Numérico Computarizado: fue desarrollado por la demanda de alta precisión para la manufactura de ciertos elementos, como componentes de aeronaves.
		![[cnc.webp| Máquina CNC |503]]

 - Primer robot industrial
	![[unimate.webp | Robot Unimate]]

# Partes de un robot
- Un robot manipulador se compone de **articulaciones** conectadas por **eslabones** formando una **cadena cinemática**.
- Adicionalmente se mencionan como partes el **efector final** y la **base**, formando una **cadena cinemática abierta**.
- Existen dos tipos de articulaciones: **rotacionales** (R) y **prismáticas** (P).
![[articulaciones.png | Representación simbólica de los tipos de articulaciones.]]

## Arreglos cinemáticos
- Antropomórfico (RRR)
	![[elbow_manipulator.png]]
- Esférico (RRP)
	![[spherical_manipulator.png]]
- Selective Compliance Assembly Robot Arm, SCARA (RRP / PRR)
	![[scara_manipulator.png]]
- Cilíndrico (RPP)
	![[cilindrical_manipulator.png]]
- Cartesiano (PPP)
	![[cartesian_manipulator.png]]
- Muñeca esférica
	![[spherical_wrist.png]]


# Cuerpo Rígido
- El número de **grados de libertad** se define como el número de coordenadas independientes (no incluido el tiempo) que son necesarias para la completa descripción de la posición de una partícula.
- El término **pose** se utiliza para referirse a la posición y orientación de un cuerpo.
- Un cuerpo en el espacio tridimensional tiene 6 DoF: tres de **posición** y tres de **orientación**.
- Un manipulador de más de seis eslabones es llamado **manipulador cinemáticamente redundante**.
	

# Espacio
- La **configuración** de un manipulador es la especificación completa de la localización de cada articulación en el manipulador.
- El conjunto de todas las posibles configuraciones es el **espacio de configuración** o **espacio articular**.
- El **estado** de un manipulador es el conjunto de variables que juntas, con una descripción de la dinámica del manipulador y su entrada, son suficientes para determinar cualquier estado futuro.
- El conjunto de todos los posibles estados es el **espacio de estados**.
- El **espacio de trabajo** de un manipulador es el volumen total recorrido por el ejector final al ejecutar todos los posibles movimientos.
- El **espacio alcanzable** es el subconjunto del espacio de trabajo donde el robot no tiene algún "pero" para llegar.
- El **espacio de destreza** es el subconjunto del espacio de trabajo que el manipulador puede alcanzar con una orientación arbitraria del efector final.
![[franka-research-3.png | Franka Research 3, manipulador con redundancia cinemática.|414]]

# Componentes
## Sensores
- Clasificación:
	- Propioceptivos: acceden al estado interno del robot.
		- Posición
		- Velocidad
		- Torque en las articulaciones
	- Exteroceptivos: entregan información del entorno del robot.
		- Fuerza
		- Táctil
		- Distancia
		- Visión
- Sensores comunes:
	- Potenciómetro
		![[sensor_potentiometer.jpeg | Potenciómetro como sensor de posición]]
	- Encoders ópticos y magnéticos
		- Absolutos
		- De cuadratura
		![[encoder_absolte_vs_incremental.gif | Comparación de funcionamiento entre un encoder óptico de cuadratura contra uno incremental.]]
	- IMUs (Inertial Measurement unit)
		![[imu.png | IMU de 9DoF.]]

# Actuadores
- Eléctricos (Motores)
	- DC
		![[dc_motor_diagram.png|355]]
	- Brushless
		![[bldc_diagram.png]]
	- Stepper
		![[stepper_motor_diagram.jpg]]
	- AC
- Hidráulicos
- Neumáticos

Un servo o **servomecanismo** es un sistema que trabaja con el principio de retroalimentación negativa para inducir una acción que esclavice la salida a la entrada.

---
# Referencias
- Mark W. Spong. *Robot Modeling and Control*. 1st. 2005.
- Tadej Bajd. *Robotics*. 1st. Springer. 2010.
- George W. Younkin. *Industrial Servo Control Systems Fundamentals and Applications*. 2nd. 2003.