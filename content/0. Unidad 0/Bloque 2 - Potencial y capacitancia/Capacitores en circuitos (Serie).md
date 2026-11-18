---
tipo: demostracion
estado: planta
unidad: 0
bloque: 2
nivel: intermedio
prerrequisitos:
  - Capacitores y dieléctricos
fuente: Apuntes propios
---

> [!volti] Dr. Volti
> Hasta aquí hemos analizado capacitores sueltos. En un circuito real aparecen
> varios a la vez, y nos podría surgir la pregunta de si podemos reemplazarlos por **uno solo**
> que se comporte igual. La respuesta depende de cómo estén conectados.

## El símbolo

El capacitor se simboliza con dos placas paralelas enfrentadas. En algunas
fuentes una de las placas se dibuja curva, para distinguir capacitores
polarizados de los que no lo son.

## Capacitores en serie

Consideremos 3 capacitores en serie:

<svg viewBox="0 0 430 205" xmlns="http://www.w3.org/2000/svg" style="width:100%;max-width:440px;height:auto;display:block;margin:1em auto">
  <g stroke="currentColor" stroke-width="1.6" fill="none" opacity="0.85">
    <path d="M55,55 L109,55"/>
    <path d="M121,55 L209,55"/>
    <path d="M221,55 L309,55"/>
    <path d="M321,55 L375,55"/>
    <path d="M55,55 L55,155"/>
    <path d="M375,55 L375,155"/>
    <path d="M55,155 L209,155"/>
    <path d="M221,155 L375,155"/>
  </g>
  <g stroke="#C1743A" stroke-width="3">
    <line x1="109" y1="40" x2="109" y2="70"/>
    <line x1="209" y1="40" x2="209" y2="70"/>
    <line x1="309" y1="40" x2="309" y2="70"/>
  </g>
  <g stroke="#56A5C4" stroke-width="3">
    <line x1="121" y1="40" x2="121" y2="70"/>
    <line x1="221" y1="40" x2="221" y2="70"/>
    <line x1="321" y1="40" x2="321" y2="70"/>
  </g>
  <g font-size="13" font-style="italic" fill="currentColor" text-anchor="middle">
    <text x="115" y="30">C₁</text>
    <text x="215" y="30">C₂</text>
    <text x="315" y="30">C₃</text>
  </g>
  <g font-size="11.5" font-style="italic">
    <text x="105" y="88" text-anchor="end" fill="#C1743A">+Q</text>
    <text x="125" y="88" fill="#56A5C4">−Q</text>
    <text x="205" y="88" text-anchor="end" fill="#C1743A">+Q</text>
    <text x="225" y="88" fill="#56A5C4">−Q</text>
    <text x="305" y="88" text-anchor="end" fill="#C1743A">+Q</text>
    <text x="325" y="88" fill="#56A5C4">−Q</text>
  </g>
  <line x1="209" y1="141" x2="209" y2="169" stroke="currentColor" stroke-width="2.2"/>
  <line x1="221" y1="147" x2="221" y2="163" stroke="currentColor" stroke-width="5"/>
  <text x="215" y="190" text-anchor="middle" font-size="13" font-style="italic" fill="currentColor">ΔV_F</text>
</svg>

Al encender la fuente habrá un movimiento de electrones, de tal manera que los
electrones estarán siendo atraídos por la polaridad positiva y repelidos por la
polaridad negativa.

Este movimiento de electrones causará que haya una acumulación en la placa 3, y
en la placa 1 queda la misma magnitud de carga pero evidentemente de signo
contrario.

### ¿Por qué la carga es la misma en todos?

> [!definicion] La condición importante ^condicion-serie
> En un arreglo en serie de capacitores, la distribución de carga será igual en
> todos los capacitores **siempre que inicialmente estén descargados**.

Miremos este ejemplo. Recordemos nuestra clase de electrostática, en donde
aprendimos que al acercar un objeto cargado a una esfera metálica se reordenan
las cargas: la carga negativa queda acumulada a un lado de la esfera y la
positiva al otro lado.

<svg viewBox="0 0 380 170" xmlns="http://www.w3.org/2000/svg" style="width:100%;max-width:400px;height:auto;display:block;margin:1em auto">
  <rect x="48" y="40" width="26" height="86" rx="3" fill="none" stroke="#C1743A" stroke-width="2.2"/>
  <g font-size="12" fill="#C1743A" text-anchor="middle">
    <text x="61" y="58">+</text><text x="61" y="76">+</text>
    <text x="61" y="94">+</text><text x="61" y="112">+</text>
  </g>
  <text x="61" y="146" text-anchor="middle" font-size="11" fill="currentColor" opacity="0.75">objeto cargado</text>
  <circle cx="190" cy="83" r="46" fill="none" stroke="currentColor" stroke-width="2" opacity="0.8"/>
  <g font-size="13" fill="#56A5C4" text-anchor="middle">
    <text x="153" y="70">−</text><text x="150" y="90">−</text><text x="156" y="108">−</text>
  </g>
  <g font-size="12" fill="#C1743A" text-anchor="middle">
    <text x="226" y="70">+</text><text x="229" y="90">+</text><text x="223" y="108">+</text>
  </g>
  <text x="190" y="146" text-anchor="middle" font-size="11" fill="currentColor" opacity="0.75">esfera metálica neutra</text>
  <text x="290" y="72" font-size="11.5" fill="currentColor" opacity="0.8">la esfera sigue</text>
  <text x="290" y="88" font-size="11.5" fill="currentColor" opacity="0.8">siendo neutra:</text>
  <text x="290" y="104" font-size="11.5" fill="currentColor" opacity="0.8">solo se reordenó</text>
</svg>

Entonces de la misma forma pasa en los capacitores, y en todos es la misma
magnitud de carga.

### La suma de los voltajes

En cada capacitor habrá una diferencia de potencial distinta, por lo que
$\Delta V_F$ sería igual a la suma de las tres diferencias de potencial:

> [!ley] Conservación de la energía ^suma-voltajes
> $$\Delta V_F = \Delta V_{C_1} + \Delta V_{C_2} + \Delta V_{C_3} \tag{1}$$

### El capacitor equivalente

Si recordamos, la capacitancia se define como

$$C = \frac{Q}{\Delta V_c}$$

Así que $\Delta V_c$ sería

$$\Delta V_c = \frac{Q}{C}$$

Ahora, teniendo eso en cuenta, debemos encontrar **un capacitor que iguale la
carga de los tres** que estamos analizando. Algo así como:

<svg viewBox="0 0 300 200" xmlns="http://www.w3.org/2000/svg" style="width:100%;max-width:310px;height:auto;display:block;margin:1em auto">
  <g stroke="currentColor" stroke-width="1.6" fill="none" opacity="0.85">
    <path d="M60,55 L144,55"/>
    <path d="M156,55 L240,55"/>
    <path d="M60,55 L60,150"/>
    <path d="M240,55 L240,150"/>
    <path d="M60,150 L144,150"/>
    <path d="M156,150 L240,150"/>
  </g>
  <line x1="144" y1="40" x2="144" y2="70" stroke="#C1743A" stroke-width="3"/>
  <line x1="156" y1="40" x2="156" y2="70" stroke="#56A5C4" stroke-width="3"/>
  <text x="150" y="30" text-anchor="middle" font-size="13" font-style="italic" fill="currentColor">C_s</text>
  <text x="140" y="88" text-anchor="end" font-size="11.5" font-style="italic" fill="#C1743A">+Q</text>
  <text x="160" y="88" font-size="11.5" font-style="italic" fill="#56A5C4">−Q</text>
  <line x1="144" y1="136" x2="144" y2="164" stroke="currentColor" stroke-width="2.2"/>
  <line x1="156" y1="142" x2="156" y2="158" stroke="currentColor" stroke-width="5"/>
  <text x="150" y="185" text-anchor="middle" font-size="13" font-style="italic" fill="currentColor">ΔV_F</text>
</svg>

A este capacitor lo llamaremos **capacitor en serie** $(C_s)$.

Por otro lado, tenemos que la diferencia de potencial $\Delta V_F$ es la
diferencia de potencial de $C_s$, y ya sabemos que es

$$\Delta V_F = \frac{Q}{C_s}$$

Este capacitor representará el conjunto de capacitores, y así, como en la
ecuación $(1)$, la diferencia de potencial de todo el sistema será igual a la
suma de diferencias de potenciales:

$$\frac{Q}{C_s} = \frac{Q}{C_1} + \frac{Q}{C_2} + \frac{Q}{C_3}$$

Y como las cargas son las mismas, entonces se cancelan:

$$\frac{1}{C_s} = \frac{1}{C_1} + \frac{1}{C_2} + \frac{1}{C_3}$$

O escrito de otra forma:

$$C_s = \left(\frac{1}{C_1} + \frac{1}{C_2} + \frac{1}{C_3}\right)^{-1}
\qquad\text{o también}\qquad
C_s = \left(\sum_{i=1}^{3}\frac{1}{C_i}\right)^{-1}$$

### Generalización

Para $n$ capacitores en serie:

> [!ley] Capacitancia equivalente en serie ^C-serie
> $$C_s = \left(\sum_{i=1}^{n}\frac{1}{C_i}\right)^{-1}$$

De esta forma encontramos un capacitor que es equivalente al sistema de
capacitores en serie.

<span class="qed">∎</span>

## Capacitores en paralelo

> [!pendiente] Por escribir
> Falta desarrollar la conexión en paralelo con la misma lógica que la serie:
> - ¿Qué magnitud es **igual** para todos los capacitores en paralelo? ¿El
>   voltaje o la carga?
> - ¿Cuál es entonces la que **se suma**?
> - De ahí sale $C_{eq}$.
>
> El resultado al que deberías llegar es $C_{eq} = \sum_i C_i$, pero el punto
> es la deducción, no la fórmula.

> [!obstaculo] Punto crítico
> Las reglas de serie y paralelo están **invertidas** respecto de las
> resistencias, en el estudio puede generar errores. Conviene deducirlas
> cada vez en lugar de memorizarlas, apoyándose en la pregunta correcta:
> - En serie, ¿qué es igual para todos? La carga.
> - En paralelo, ¿qué es igual para todos? El voltaje.


