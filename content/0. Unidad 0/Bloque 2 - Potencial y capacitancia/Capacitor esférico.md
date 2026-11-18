---
tipo: demostracion
estado: planta
unidad: 0
bloque: 2
nivel: intermedio
prerrequisitos:
  - Capacitor de placas paralelas
  - Ley de Gauss
fuente: Apuntes propios
---

> [!volti] Dr. Volti
> Tercera geometría, mismo método. Aquí la superficie gaussiana es una esfera, y
> el resultado tiene detalles que veremos al final.

## La geometría

Consideremos dos esferas **concéntricas**, separadas por aire, de tal manera
que: una esfera interna tendrá radio $r_1$ y la externa radio $r_2$.

<svg viewBox="0 0 320 275" xmlns="http://www.w3.org/2000/svg" style="width:100%;max-width:330px;height:auto;display:block;margin:1em auto">
  <defs>
    <marker id="fes" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="5" markerHeight="5" orient="auto-start-reverse">
      <path d="M0,1 L10,5 L0,9 z" fill="#B09144"/>
    </marker>
  </defs>
  <circle cx="155" cy="130" r="106" fill="none" stroke="#56A5C4" stroke-width="3.2"/>
  <ellipse cx="155" cy="130" rx="40" ry="106" fill="none" stroke="#56A5C4" stroke-width="1" opacity="0.45"/>
  <ellipse cx="155" cy="130" rx="106" ry="34" fill="none" stroke="#56A5C4" stroke-width="1" opacity="0.45"/>
  <circle cx="155" cy="130" r="70" fill="none" stroke="#8D6FB0" stroke-width="1.6" stroke-dasharray="5 4"/>
  <g stroke="#B09144" stroke-width="1.5" marker-end="url(#fes)">
    <line x1="190" y1="130" x2="254" y2="130"/>
    <line x1="180" y1="105" x2="226" y2="59"/>
    <line x1="155" y1="95" x2="155" y2="31"/>
    <line x1="130" y1="105" x2="84" y2="59"/>
    <line x1="120" y1="130" x2="56" y2="130"/>
    <line x1="130" y1="155" x2="84" y2="201"/>
    <line x1="155" y1="165" x2="155" y2="229"/>
    <line x1="180" y1="155" x2="226" y2="201"/>
  </g>
  <circle cx="155" cy="130" r="32" fill="#C1743A"/>
  <text x="155" y="135" text-anchor="middle" font-size="13" font-style="italic" fill="#FFFFFF">+Q</text>
  <line x1="155" y1="130" x2="230" y2="55" stroke="#56A5C4" stroke-width="1.4" opacity="0.6"/>
  <text x="206" y="82" font-size="13" font-style="italic" fill="#56A5C4">r₂</text>
  <line x1="155" y1="130" x2="105" y2="180" stroke="#8D6FB0" stroke-width="1.4" opacity="0.7"/>
  <text x="112" y="167" font-size="13" font-style="italic" fill="#8D6FB0">r</text>
  <text x="252" y="248" text-anchor="end" font-size="13" font-style="italic" fill="#56A5C4">−Q</text>
  <text x="155" y="265" text-anchor="middle" font-size="11" fill="currentColor" opacity="0.7">la circunferencia punteada es la superficie gaussiana</text>
</svg>

Así como en el [[Capacitor cilíndrico]], este capacitor estará conectado a una
fuente de alimentación, de tal manera que la distribución de cargas será la
siguiente: una vez estén completamente cargados, el conductor de radio $r_1$
tendrá una carga $+Q$ total y el de radio $r_2$ una $-Q$.

## Planteamiento

Nuevamente calcularemos la capacitancia, la cual sabemos que es

$$C = \frac{Q}{\Delta V}
\qquad\text{en donde}\qquad
\Delta V = -\int_{-}^{+} \vec{E}\cdot d\vec{l} \tag{1}$$

En caso de no conocer el campo eléctrico $\vec{E}$, nos basamos en la ley de
Gauss para hallarlo:

$$\oint \vec{E}\cdot\hat{n}\,ds = \frac{q_{\text{enc}}}{\varepsilon_0}$$

## El campo, por ley de Gauss

Dibujamos una superficie gaussiana en donde el campo fluye hacia afuera debido a
la carga positiva, y el vector normal va en su misma dirección.

Así que

$$\vec{E}\cdot\hat{n} = E\,(1)\cos 0° = E$$

El producto punto del campo con el vector normal nos arroja la magnitud del
campo, debido a que el ángulo que forman estos dos vectores es $0$.

Y por lo tanto

$$\oint E\,ds = \frac{+Q}{\varepsilon_0}$$

La carga encerrada es la carga total que está dentro de la superficie gaussiana
$(+Q)$, y ya que el campo eléctrico es una constante sobre ella, este sale de la
integral, dejando por integrar solamente $ds$.

Esta integral es simplemente la superficie de una esfera, $4\pi r^{2}$, dejando
como resultado

$$E\,(4\pi r^{2}) = \frac{+Q}{\varepsilon_0}$$

Así que el campo es igual a

$$E = \frac{1}{4\pi r^{2}}\cdot\frac{Q}{\varepsilon_0}$$

Y reacomodando para obtener matemáticamente la constante eléctrica:

> [!ley] El campo entre los conductores ^campo-esferico
> $$E = \frac{1}{4\pi\varepsilon_0}\cdot\frac{Q}{r^{2}} = \frac{KQ}{r^{2}} \tag{2}$$

## De $d\vec{l}$ a $dr$

Una vez hallado el campo, calculamos la diferencia de potencial.

El campo $\vec{E}$ es radial hacia afuera del conductor de radio $r_1$,
mientras que $d\vec{l}$, por convención en la integral, va desde $r_2$ hasta
$r_1$, en dirección contraria al campo. Este ángulo de $180°$ se forma
precisamente porque $\vec{E}$ y $d\vec{l}$ son **antiparalelos**:

$$\vec{E}\cdot d\vec{l} = E\,dl\cos 180° = -E\,dl$$

Sustituyendo en $(1)$, el signo negativo de la definición se cancela con el
$-1$ del coseno:

$$\Delta V = -\int (-E\,dl) = +\int E\,dl$$

Ya que el campo está en término del radio, introducimos una trayectoria $dr$ que
va en la misma dirección que el campo, y entendemos que su dirección contraria
es igual a $d l$:

$$d l = -dr$$

Por lo que

$$\Delta V = \int E\,(-dr) = -\int_{r_2}^{r_1} E\,dr$$

## La integral

$$\Delta V = -\int_{r_2}^{r_1} \frac{KQ}{r^{2}}\,dr$$

$$\Delta V = \left.\frac{KQ}{r}\right|_{r_2}^{r_1}$$

$$\Delta V = KQ\left(\frac{1}{r_1} - \frac{1}{r_2}\right)$$

Dando como resultado

$$\Delta V = KQ\left(\frac{r_2 - r_1}{r_1 r_2}\right)$$

## La capacitancia

Por lo tanto la capacitancia sería

$$C = \frac{Q}{\Delta V} = \frac{Q}{KQ\left(\dfrac{r_2 - r_1}{r_1 r_2}\right)}$$

> [!ley] Capacitor esférico ^C-esferico
> $$C = \frac{r_1 r_2}{K\,(r_2 - r_1)}$$

De esta manera obtenemos la capacitancia de un capacitor esférico.

<span class="qed">∎</span>

### La misma expresión con $\varepsilon_0$

Como $K = \dfrac{1}{4\pi\varepsilon_0}$, entonces $\dfrac{1}{K} = 4\pi\varepsilon_0$,
y la expresión anterior también se escribe

$$C = 4\pi\varepsilon_0\,\frac{r_1 r_2}{r_2 - r_1}$$

Es la forma que aparece en la tabla del directorio de
[[Capacitores y dieléctricos]]. Son la misma fórmula.

> [!ley] ¡La capacitancia depende únicamente de la geometría del dispositivo! ^solo-geometria
> En las tres geometrías la carga $Q$ se canceló al dividir. Lo que queda son
> puros datos del arreglo: áreas, radios, longitudes.

