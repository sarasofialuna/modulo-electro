---
tipo: teoría
estado: brote
bloque: 2
nivel: intermedio
prerrequisitos:
  - Ley de Gauss
  - Campo eléctrico y líneas de campo
fuente: Apuntes propios
cssclasses:
  - nota-teoria
---
> [!volti] Dr. Volti: En el bloque anterior describimos **fuerzas** entre cargas. Aquí cambiamos de herramienta: en lugar de preguntar qué fuerza siente una carga, preguntamos cuánto **trabajo** cuesta moverla. El resultado es una magnitud escalar.

Recordando que la fuerza de Coulomb es [[Fuerza electrostática conservativa|conservativa]]:

$$\vec{F} = k,\frac{q_1 q_2}{r^{2}},\hat{r}$$

El trabajo que realiza esta fuerza a lo largo de cualquier trayectoria cerrada es cero:

$$W = \oint \vec{F}\cdot d\vec{l} = 0$$

Si existe una fuerza conservativa, implica que también existe la función de energía potencial.

Por otro lado, partiendo de que una fuerza es conservativa, se puede decir que el trabajo realizado equivale a un cambio en la energía potencial:

> [!ley] Trabajo y energía potencial 
>  $$W = -\Delta U$$

## De la fuerza al campo

La fuerza eléctrica también se puede escribir como $\vec{F} = q\vec{E}$, teniendo en cuenta que es una expresión a la que se llega cuando se factorizan las cargas fuente y se deja afuera la carga de prueba.

Partimos de la fuerza entre dos cargas:

$$\vec{F} = k,\frac{q_i,q}{r^{2}},\hat{r}$$

Para varias cargas fuente se hace una suma debido al principio de superposición:

$$\vec{F} = \sum_{i=1}^{N} k,\frac{q_i,q}{|\vec{r}-\vec{r}_i|^{2}},\hat{r}_i$$

Y luego se factoriza $q$, que es la carga de prueba:

$$\vec{F} = q\underbrace{\left[\sum_{i=1}^{N} k,\frac{q_i}{|\vec{r}-\vec{r}_i|^{2}},\hat{r}_i\right]}_{\vec{E}(\vec{r})}$$

> [!pregunta] ¿Por qué a eso se le denomina campo? Porque un campo en física es una cantidad que tiene un valor definido en cada punto del espacio. La velocidad del agua en un río, $\vec{v}(\vec{r})$, implica que en cada punto del río el agua tendría un valor de velocidad asignado.
> 
> La expresión del corchete le asigna un valor a cada posición según las cargas fuente, y eso resulta siendo un **campo vectorial**.

Y por ende:

$$\vec{F} = q\vec{E}$$

Si la fuerza de Coulomb es conservativa, este campo $\vec{E}$ también es conservativo.

> [!pendiente] Preguntar a Francisco Revisar la redacción de la idea del corchete: si lo que asigna el valor es la posición de la carga de prueba o la posición del punto del espacio.

### Analogía con la Tierra

|Caso eléctrico|Caso gravitacional|
|---|---|
|$Q$ → fuente|$M_T$ → fuente|
|$q$ → carga de prueba|Pelota → se mueve dentro del campo gravitacional|

Si muevo la pelota dentro del campo de la Tierra, es ella quien está experimentando una fuerza.

Así mismo, si tengo una fuente que genera campo, quien va a experimentar la fuerza eléctrica de ese campo será la carga de prueba, que a su vez se va a mover, porque el campo hace que la carga experimente una fuerza.

## El trabajo para mover una carga de $a$ hasta $b$

<svg viewBox="0 0 390 195" xmlns="http://www.w3.org/2000/svg" style="width:100%;max-width:430px;height:auto;display:block;margin:1em auto"> <defs> <marker id="pf" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="5" markerHeight="5" orient="auto-start-reverse"> <path d="M0,1 L10,5 L0,9 z" fill="#B09144"/> </marker> <marker id="pt" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="6" markerHeight="6" orient="auto-start-reverse"> <path d="M0,1 L10,5 L0,9 z" fill="#56A5C4"/> </marker> </defs> <g stroke="#B09144" stroke-width="1.5" marker-end="url(#pf)"> <line x1="107" y1="110" x2="147" y2="110"/> <line x1="100.6" y1="94.4" x2="128.8" y2="66.2"/> <line x1="85" y1="88" x2="85" y2="48"/> <line x1="69.4" y1="94.4" x2="41.2" y2="66.2"/> <line x1="63" y1="110" x2="23" y2="110"/> <line x1="69.4" y1="125.6" x2="41.2" y2="153.8"/> <line x1="85" y1="132" x2="85" y2="172"/> <line x1="100.6" y1="125.6" x2="128.8" y2="153.8"/> </g> <circle cx="85" cy="110" r="16" fill="#C1743A"/> <text x="85" y="115" text-anchor="middle" font-size="14" font-style="italic" fill="#FFFFFF">Q</text> <path d="M180,60 Q270,52 348,118" fill="none" stroke="#56A5C4" stroke-width="1.8" marker-end="url(#pt)"/> <circle cx="180" cy="60" r="3.5" fill="currentColor"/> <circle cx="267" cy="70" r="3.5" fill="currentColor"/> <text x="174" y="53" text-anchor="end" font-size="14" font-style="italic" fill="currentColor">a</text> <text x="267" y="60" text-anchor="middle" font-size="14" font-style="italic" fill="currentColor">q</text> <text x="357" y="116" font-size="14" font-style="italic" fill="currentColor">b</text> <text x="296" y="102" font-size="13" font-style="italic" fill="#56A5C4">C</text> </svg>

El campo $\vec{E} = \dfrac{kQ}{r^{2}},\hat{r}$ es el que genera la fuente, y $q$ es la que se va a mover.

**¿Cuál es el trabajo que se hace para mover una carga de un punto $a$ a un punto $b$?**

$$W = \int_{c} \vec{F}\cdot d\vec{l}$$

$$W = \int_{c} q\vec{E}\cdot d\vec{l}$$

$$\frac{W}{q} = \int_{c} \vec{E}\cdot d\vec{l}$$

Y usando la relación entre trabajo y energía potencial:

$$-\frac{\Delta U}{q} = \int_{c} \vec{E}\cdot d\vec{l}$$

$$\frac{\Delta U}{q} = -\int_{c} \vec{E}\cdot d\vec{l} = \Delta V$$

> [!ley] Diferencia de potencial 
$$\Delta V = \frac{\Delta U}{q}$$ Es el trabajo por unidad de carga que se requiere para transportar una carga $q$ de un punto $a$ a un punto $b$.

### Unidades

$$[\Delta V] = \frac{\mathrm{J}}{\mathrm{C}} = \mathrm{V}\ \text{(voltios)}$$

> [!historia] Si queremos entender cómo es que funciona, por ejemplo, una pila de 9V, debemos saber que esta lo que hace es mover electrones con esa diferencia de potencial.

### Potencial frente a diferencia de potencial

$V$ es el **potencial eléctrico**: el trabajo por unidad de carga asociado a un punto específico del circuito.

Se necesita $\Delta V$ porque compara el potencial en los **dos puntos** entre los que se desplaza la carga, por eso cuando se mide con un multímetro o se conecta una pila a un circuito, estos dos se relacionan mediante dos puntos.

## La componente del campo que importa

$$\Delta V = -\int_{a}^{b} \vec{E}\cdot d\vec{l}$$

donde $d\vec{l}$ es la trayectoria que recorre esa carga.

<svg viewBox="0 0 400 200" xmlns="http://www.w3.org/2000/svg" style="width:100%;max-width:430px;height:auto;display:block;margin:1em auto"> <defs> <marker id="pe" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="5" markerHeight="5" orient="auto-start-reverse"> <path d="M0,1 L10,5 L0,9 z" fill="#B09144"/> </marker> <marker id="pl" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="5" markerHeight="5" orient="auto-start-reverse"> <path d="M0,1 L10,5 L0,9 z" fill="#56A5C4"/> </marker> </defs> <path d="M55,155 Q195,168 355,62" fill="none" stroke="currentColor" stroke-width="1.5" opacity="0.5"/> <text x="60" y="174" font-size="14" font-style="italic" fill="currentColor">c</text> <line x1="200" y1="138.3" x2="240.7" y2="125.6" stroke="#8D6FB0" stroke-width="7" stroke-linecap="round" opacity="0.35"/> <line x1="229" y1="88" x2="240.7" y2="125.6" stroke="#8D6FB0" stroke-width="1.1" stroke-dasharray="4 3" opacity="0.75"/> <line x1="200" y1="138.3" x2="264.9" y2="118.1" stroke="#56A5C4" stroke-width="2" marker-end="url(#pl)"/> <line x1="200" y1="138.3" x2="229" y2="88" stroke="#B09144" stroke-width="2.2" marker-end="url(#pe)"/> <circle cx="200" cy="138.3" r="4" fill="currentColor"/> <text x="224" y="80" text-anchor="middle" font-size="14" font-style="italic" fill="#B09144">E</text> <text x="271" y="114" font-size="14" font-style="italic" fill="#56A5C4">dl</text> <text x="118" y="188" font-size="11.5" fill="#8D6FB0">componente de E que hace trabajo</text> </svg>

En este caso, deberíamos entender que la componente del campo que va a interactuar es aquella que sigue la trayectoria $c$. El vector de campo $\vec{E}$ se descompone y estudiamos la componente que va en dirección al punto final.

> [!pendiente] 
> 
> Una carga **positiva** que se desplaza en el mismo sentido que $\vec{E}$ pasa a puntos de **menor** potencial. Si se mueve en contra de $\vec{E}$, pasa a puntos de mayor potencial. Para una carga negativa ocurre lo contrario.
> 
> Esto se ve directo en $\Delta V = -\int \vec{E}\cdot d\vec{l}$: si $\vec{E}$ y $d\vec{l}$ apuntan en el mismo sentido, el producto escalar es positivo y el signo menos hace que $\Delta V < 0$.

> [!obstaculo] Concepciones alternativas
> 
> - $V$ y $\vec{E}$ usados indistintamente. Puede haber $V \neq 0$ con $\vec{E} = 0$, y $\vec{E} \neq 0$ con $V = 0$
> - Confusión entre $V$ (propiedad del punto) y $U$ (propiedad de la carga ubicada en ese punto)
> - La elección del cero de potencial se toma como un hecho físico y no como una convención


