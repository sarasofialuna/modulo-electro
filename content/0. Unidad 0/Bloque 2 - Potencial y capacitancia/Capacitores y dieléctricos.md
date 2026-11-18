---
tipo: teoria
estado: brote
bloque: 2
nivel: intermedio
prerrequisitos:
  - Ley de Gauss
  - potencial
  - diferencia de potencial
fuente: Apuntes propios
---

> [!volti] Dr. Volti
> Hasta ahora hemos preguntado qué campo y qué potencial produce una
> distribución de carga dada. Aquí invertimos la pregunta: si queremos
> **almacenar** carga separada, ¿cuánta cabe? La respuesta no depende de la
> batería que usemos, sino de la forma del dispositivo.

## Qué es un capacitor

Un **capacitor** o **condensador** es un dispositivo eléctrico pasivo que
almacena carga separada en dos conductores, gracias al campo eléctrico que se
establece entre ellos.

*Pasivo* quiere decir que no genera energía propia: solo almacena la que recibe
y después la devuelve.

> [!definicion] Dieléctrico
> Material con baja conductividad eléctrica, que se coloca entre los dos
> conductores del capacitor.

Un capacitor comercial está construido **como un rollo de sushi con dos
ingredientes**: una lámina de material conductor enrollada junto con una de
dieléctrico. Enrollarlo permite meter mucha área en poco volumen.

## Situación 1 · ¿Qué pasa al conectar la batería?

Consideremos un condensador de placas paralelas conectado a una fuente.

<svg viewBox="0 0 380 215" xmlns="http://www.w3.org/2000/svg" style="width:100%;max-width:420px;height:auto;display:block;margin:1em auto">
  <defs>
    <marker id="fc" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="5" markerHeight="5" orient="auto-start-reverse">
      <path d="M0,1 L10,5 L0,9 z" fill="#B09144"/>
    </marker>
  </defs>
  <g stroke="currentColor" stroke-width="1.6" fill="none" opacity="0.75">
    <path d="M52,98 L52,55 L250,55 L250,85"/>
    <path d="M64,132 L64,180 L250,180 L250,150"/>
  </g>
  <line x1="52" y1="98" x2="52" y2="132" stroke="currentColor" stroke-width="2.2"/>
  <line x1="64" y1="107" x2="64" y2="123" stroke="currentColor" stroke-width="5"/>
  <text x="40" y="120" text-anchor="end" font-size="14" font-style="italic" fill="currentColor">ΔV</text>
  <line x1="180" y1="85" x2="320" y2="85" stroke="#C1743A" stroke-width="4.5"/>
  <line x1="180" y1="150" x2="320" y2="150" stroke="#56A5C4" stroke-width="4.5"/>
  <g font-size="13" fill="#C1743A" text-anchor="middle">
    <text x="195" y="79">+</text><text x="222" y="79">+</text><text x="249" y="79">+</text>
    <text x="276" y="79">+</text><text x="303" y="79">+</text>
  </g>
  <g font-size="14" fill="#56A5C4" text-anchor="middle">
    <text x="195" y="166">−</text><text x="222" y="166">−</text><text x="249" y="166">−</text>
    <text x="276" y="166">−</text><text x="303" y="166">−</text>
  </g>
  <g stroke="#B09144" stroke-width="1.6" marker-end="url(#fc)">
    <line x1="200" y1="92" x2="200" y2="143"/>
    <line x1="233" y1="92" x2="233" y2="143"/>
    <line x1="266" y1="92" x2="266" y2="143"/>
    <line x1="299" y1="92" x2="299" y2="143"/>
  </g>
  <text x="330" y="82" font-size="13" font-style="italic" fill="#C1743A">+Q</text>
  <text x="330" y="154" font-size="13" font-style="italic" fill="#56A5C4">−Q</text>
  <text x="252" y="118" font-size="13" font-style="italic" fill="#B09144">E</text>
</svg>

Al conectar la batería al capacitor aparece entre sus bornes una diferencia de
potencial

$$\Delta V = -\int \vec{E}\cdot d\vec{l}$$

que da origen a un campo eléctrico. Los electrones que están en las placas se
mueven por los alambres hacia el borne al que están conectados.

> [!definicion] Dónde se acumula la carga
> La carga de un conductor se almacena **en su superficie**. Es consecuencia de
> que el campo en el interior de un conductor en equilibrio es nulo; ver
> [[Ley de Gauss]].

### ¿Qué está pasando?

Como el capacitor está conectado a una fuente que mantiene $\Delta V$, los
electrones de las placas se desplazan por efecto del campo. Esto hace que las
placas dejen de ser neutras: **una queda con exceso de electrones y la otra con
defecto de electrones**.

La placa con defecto queda cargada positivamente, no porque haya ganado
protones —los núcleos no se mueven— sino porque perdió electrones.

Aplicando la ley de Gauss a una superficie que encierre una de las placas:

$$\oint \vec{E}\cdot\hat{n}\,ds = \frac{q_{\text{enc}}}{\varepsilon_0}$$

se confirma que hay campo entre las placas precisamente porque hay carga
encerrada en ellas.

### ¿Cuándo se detiene el proceso?

> [!ley] Condición de capacitor cargado ^capacitor-cargado
> $$\Delta V_c = \Delta V_f$$
> La diferencia de potencial del capacitor iguala a la de la fuente.

Se llega a esta igualdad porque habrá un instante en el que ya no se puedan
transportar más cargas: el campo acumulado en el capacitor se opone al de la
fuente con igual intensidad, y el condensador queda **totalmente cargado**.

## La capacidad depende de la geometría

> [!ley] Independencia de la fuente ^independencia-fuente
> La capacidad de almacenamiento de un capacitor es **independiente de la
> fuente**. Depende únicamente de la geometría con la que esté construido y del
> material entre sus conductores.

> [!experimento] El vaso y el gotero
> ¿Con qué puedo llenar un vaso? Con un gotero, con una jeringa, con una
> manguera, con un chorro de agua. Cada uno tarda distinto y entrega el agua de
> otra manera, pero **la capacidad del vaso es siempre la misma**: depende solo
> de su geometría.
>
> Así mismo un capacitor. La fuente decide qué tan rápido se carga y hasta qué
> voltaje, pero no cuánta carga cabe por cada voltio.

## La capacitancia

Las placas del capacitor tienen un área $A$ y una distancia de separación $d$.
Si medimos pares de valores $(\Delta V_c,\, Q)$ sobre un mismo capacitor:

| $\Delta V_c$ | $Q$ |
| --- | --- |
| $\Delta V_1$ | $Q_1$ |
| $\Delta V_2$ | $Q_2$ |
| $\vdots$ | $\vdots$ |
| $\Delta V_n$ | $Q_n$ |

y los graficamos, obtenemos una recta que pasa por el origen:

<svg viewBox="0 0 360 215" xmlns="http://www.w3.org/2000/svg" style="width:100%;max-width:400px;height:auto;display:block;margin:1em auto">
  <g stroke="currentColor" stroke-width="1" opacity="0.18">
    <line x1="112" y1="180" x2="112" y2="45"/>
    <line x1="175" y1="180" x2="175" y2="45"/>
    <line x1="238" y1="180" x2="238" y2="45"/>
    <line x1="300" y1="180" x2="300" y2="45"/>
  </g>
  <line x1="50" y1="180" x2="50" y2="38" stroke="currentColor" stroke-width="1.4"/>
  <line x1="50" y1="180" x2="330" y2="180" stroke="currentColor" stroke-width="1.4"/>
  <line x1="50" y1="180" x2="300" y2="48" stroke="#8D6FB0" stroke-width="2.4"/>
  <g fill="#8D6FB0">
    <circle cx="112" cy="147" r="3.6"/>
    <circle cx="175" cy="114" r="3.6"/>
    <circle cx="238" cy="81" r="3.6"/>
    <circle cx="300" cy="48" r="3.6"/>
  </g>
  <text x="338" y="184" font-size="13" font-style="italic" fill="currentColor">ΔV</text>
  <text x="44" y="34" text-anchor="end" font-size="13" font-style="italic" fill="currentColor">Q</text>
  <text x="300" y="36" text-anchor="end" font-size="12" fill="#8D6FB0">la pendiente es C</text>
  <text x="190" y="202" text-anchor="middle" font-size="11" fill="currentColor" opacity="0.7">cada punto es una medida sobre el mismo capacitor</text>
</svg>

Una relación lineal que se puede describir como $y = mx$, es decir
$Q = m\,\Delta V_c$. A esa pendiente $m$ la llamaremos **capacitancia**:

> [!ley] Capacitancia ^def-capacitancia
> $$C = \frac{Q}{\Delta V_c}$$
> Es la razón entre la carga almacenada y el voltaje aplicado: mide cuánta
> carga almacena el capacitor **por cada voltio** de diferencia de potencial.

### Unidades

$$[C] = \frac{\mathrm{C}}{\mathrm{V}} = \mathrm{F}\quad\text{(faradio)}$$

El faradio es una unidad enorme, así que en la práctica se trabaja con
submúltiplos:

| Prefijo | Símbolo | Equivalencia |
| --- | --- | --- |
| milifaradio | $\mathrm{mF}$ | $10^{-3}\ \mathrm{F}$ |
| microfaradio | $\mu\mathrm{F}$ | $10^{-6}\ \mathrm{F}$ |
| nanofaradio | $\mathrm{nF}$ | $10^{-9}\ \mathrm{F}$ |
| picofaradio | $\mathrm{pF}$ | $10^{-12}\ \mathrm{F}$ |

En cada capacitor comercial viene impresa su capacitancia.

## Directorio de geometrías

Cada geometría se deduce con el mismo método: campo por ley de Gauss, integrar
para obtener $\Delta V$, y dividir.

| [[Capacitor de placas paralelas]] |            [[Capacitor cilíndrico]]             |               [[Capacitor esférico]]                |
| :-------------------------------: | :---------------------------------------------: | :-------------------------------------------------: |
|   ![[portada-placas.png\|1400]]   |        ![[portada-cilindrico.png\|1400]]        |           ![[portada-esferico.png\|1400]]           |

## Energía almacenada

Cuando se conecta un capacitor a una fuente de voltaje, inicialmente las cargas
se mueven con facilidad. Pero a medida que una placa acumula electrones, empieza
a repeler a los que vienen: hace falta **realizar trabajo** para seguir
separando carga.

El trabajo para mover una carga $dq$ contra la diferencia de potencial que ya
existe en el capacitor es

$$dW = \Delta V_c\,dq$$

Y como $C = \dfrac{Q}{\Delta V_c}$, entonces $\Delta V_c = \dfrac{q}{C}$ en cada
instante del proceso. Integrando desde la placa descargada hasta la carga final:

$$W = \int_{0}^{Q}\frac{q}{C}\,dq = \left.\frac{1}{2}\frac{q^{2}}{C}\right|_{0}^{Q}$$

$$W = \frac{1}{2}\frac{Q^{2}}{C}$$

Todo ese trabajo fue necesario para separar las cargas, y queda almacenado como
energía potencial:

> [!ley] Energía almacenada en un capacitor ^energia-capacitor
> $$U = \frac{1}{2}\frac{Q^{2}}{C} = \frac{1}{2}C\,\Delta V_c^{2}$$

Se almacena ese trabajo para luego ser liberado: la carga puede descargarse en
un circuito y encender un bombillo, por ejemplo.


## Capacitores en circuitos

### Conexión en paralelo

Todos los capacitores comparten la misma diferencia de potencial, porque sus
terminales están unidas a los mismos dos nodos. La carga total es la suma de las
cargas individuales:

$$Q = Q_1 + Q_2 + \cdots = C_1\Delta V + C_2\Delta V + \cdots
= \left(\sum_i C_i\right)\Delta V$$

> [!ley] Capacitancia equivalente en paralelo ^C-paralelo
> $$C_{eq} = \sum_{i=1}^{n} C_i$$

### Conexión en serie

Aquí la carga es la misma en todos. Las placas intermedias están aisladas del
resto del circuito, de modo que su carga neta debe permanecer nula. Lo que se
suma entonces son las diferencias de potencial:

$$\Delta V = \Delta V_1 + \Delta V_2 + \cdots
= \frac{Q}{C_1} + \frac{Q}{C_2} + \cdots$$

> [!ley] Capacitancia equivalente en serie ^C-serie
> $$\frac{1}{C_{eq}} = \sum_{i=1}^{n}\frac{1}{C_i}$$

<svg viewBox="0 0 400 205" xmlns="http://www.w3.org/2000/svg" style="width:100%;max-width:430px;height:auto;display:block;margin:1em auto">
  <g stroke="currentColor" stroke-width="1.6" fill="none" opacity="0.8">
    <path d="M50,45 L150,45"/>
    <path d="M50,155 L150,155"/>
    <path d="M75,45 L75,92"/>
    <path d="M75,108 L75,155"/>
    <path d="M125,45 L125,92"/>
    <path d="M125,108 L125,155"/>
  </g>
  <g stroke="#C1743A" stroke-width="3.2">
    <line x1="62" y1="92" x2="88" y2="92"/>
    <line x1="112" y1="92" x2="138" y2="92"/>
  </g>
  <g stroke="#56A5C4" stroke-width="3.2">
    <line x1="62" y1="108" x2="88" y2="108"/>
    <line x1="112" y1="108" x2="138" y2="108"/>
  </g>
  <text x="56" y="86" text-anchor="end" font-size="12" font-style="italic" fill="currentColor">C₁</text>
  <text x="144" y="86" font-size="12" font-style="italic" fill="currentColor">C₂</text>
  <text x="100" y="180" text-anchor="middle" font-size="12" fill="currentColor">Paralelo: mismo ΔV</text>
  <g stroke="currentColor" stroke-width="1.6" fill="none" opacity="0.8">
    <path d="M270,45 L310,45"/>
    <path d="M290,45 L290,78"/>
    <path d="M290,92 L290,118"/>
    <path d="M290,132 L290,155"/>
    <path d="M270,155 L310,155"/>
  </g>
  <g stroke="#C1743A" stroke-width="3.2">
    <line x1="277" y1="78" x2="303" y2="78"/>
    <line x1="277" y1="118" x2="303" y2="118"/>
  </g>
  <g stroke="#56A5C4" stroke-width="3.2">
    <line x1="277" y1="92" x2="303" y2="92"/>
    <line x1="277" y1="132" x2="303" y2="132"/>
  </g>
  <text x="312" y="89" font-size="12" font-style="italic" fill="currentColor">C₁</text>
  <text x="312" y="129" font-size="12" font-style="italic" fill="currentColor">C₂</text>
  <text x="290" y="180" text-anchor="middle" font-size="12" fill="currentColor">Serie: misma carga</text>
</svg>

> [!obstaculo] Punto crítico
> Las reglas están **invertidas** respecto de las resistencias, y ese cruce
> genera errores persistentes. Conviene deducirlas cada vez en lugar de
> memorizarlas, apoyándose en la pregunta correcta:
> - En serie, ¿qué es igual para todos? La carga.
> - En paralelo, ¿qué es igual para todos? El voltaje.
>
> Nótese además que en serie la capacitancia equivalente es **menor** que la
> más pequeña del conjunto.

## Concepciones alternativas

> [!obstaculo] Lo que suele confundirse
> - "El capacitor almacena carga." La carga **neta** del dispositivo es cero:
>   una placa tiene $+Q$ y la otra $-Q$. Lo que almacena es carga *separada*, y
>   con ella energía en el campo
> - "La placa positiva ganó protones." Los núcleos no se mueven. Esa placa
>   perdió electrones
> - "Un capacitor más grande siempre almacena más energía." Depende de qué se
>   mantenga constante: con $\Delta V$ fijo sí, con $Q$ fijo es al revés
> - "La capacitancia depende del voltaje aplicado." Es justo lo contrario:
>   $C$ es la constante de proporcionalidad entre $Q$ y $\Delta V$

> [!pendiente] Pendientes de esta nota
> - Dieléctricos: constante $\kappa$, polarización, los dos casos (batería
>   conectada frente a desconectada) y rigidez dieléctrica
> - Ejercicio resuelto de una configuración mixta serie-paralelo
> - Completar el campo `fuente` si se apoya en algún texto además de los apuntes