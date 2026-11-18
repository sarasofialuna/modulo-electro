---
tipo: demostracion
estado: planta
unidad: 0
bloque: 2
nivel: intermedio
prerrequisitos: [Capacitores y dieléctricos, Ley de Gauss]
fuente: Apuntes propios
---

> [!volti] Dr. Volti
> El método es el mismo de siempre: hallar el campo con la ley de Gauss,
> integrarlo para obtener $\Delta V$, y dividir. Lo único que cambia respecto a
> las placas paralelas es la superficie gaussiana, que aquí conviene que sea un
> cilindro.

En la vida cotidiana, un cable de conexión hace el papel de condensador
cilíndrico.

## La geometría

Nos imaginamos un **conductor interno** que será simétrico a otro **conductor
externo**. Este conductor externo tendrá una longitud $L$.

<svg viewBox="0 0 400 190" xmlns="http://www.w3.org/2000/svg" style="width:100%;max-width:420px;height:auto;display:block;margin:1em auto">
  <ellipse cx="80" cy="90" rx="17" ry="48" fill="none" stroke="#56A5C4" stroke-width="2.4"/>
  <ellipse cx="310" cy="90" rx="17" ry="48" fill="none" stroke="#56A5C4" stroke-width="2.4"/>
  <line x1="80" y1="42" x2="310" y2="42" stroke="#56A5C4" stroke-width="2.4"/>
  <line x1="80" y1="138" x2="310" y2="138" stroke="#56A5C4" stroke-width="2.4"/>
  <ellipse cx="80" cy="90" rx="7" ry="17" fill="none" stroke="#C1743A" stroke-width="2.4"/>
  <ellipse cx="310" cy="90" rx="7" ry="17" fill="#C1743A" stroke="#C1743A" stroke-width="2.4"/>
  <line x1="80" y1="73" x2="310" y2="73" stroke="#C1743A" stroke-width="2.4"/>
  <line x1="80" y1="107" x2="310" y2="107" stroke="#C1743A" stroke-width="2.4"/>
  <text x="195" y="96" text-anchor="middle" font-size="12" fill="currentColor" opacity="0.75">aire</text>
  <g stroke="currentColor" stroke-width="1.2" opacity="0.8">
    <line x1="80" y1="162" x2="310" y2="162"/>
    <line x1="80" y1="157" x2="80" y2="167"/>
    <line x1="310" y1="157" x2="310" y2="167"/>
  </g>
  <text x="195" y="180" text-anchor="middle" font-size="13" font-style="italic" fill="currentColor">L</text>
  <text x="340" y="70" font-size="12" fill="#C1743A">conductor interno</text>
  <text x="340" y="134" font-size="12" fill="#56A5C4">conductor externo</text>
</svg>

La situación es la siguiente: tenemos dos conductores que estarán separados por
un dieléctrico, el cual será **aire**.

Para analizar el capacitor, ya no lo veremos de lado como en el diagrama
anterior. Lo veremos **de frente**.

<svg viewBox="0 0 320 275" xmlns="http://www.w3.org/2000/svg" style="width:100%;max-width:330px;height:auto;display:block;margin:1em auto">
  <defs>
    <marker id="fcl" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="5" markerHeight="5" orient="auto-start-reverse">
      <path d="M0,1 L10,5 L0,9 z" fill="#B09144"/>
    </marker>
  </defs>
  <circle cx="155" cy="130" r="106" fill="none" stroke="#56A5C4" stroke-width="3.2"/>
  <circle cx="155" cy="130" r="70" fill="none" stroke="#8D6FB0" stroke-width="1.6" stroke-dasharray="5 4"/>
  <g stroke="#B09144" stroke-width="1.5" marker-end="url(#fcl)">
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
  <line x1="155" y1="130" x2="177" y2="108" stroke="#FFFFFF" stroke-width="1.6"/>
  <text x="172" y="122" font-size="12" font-style="italic" fill="#FFFFFF">r₁</text>
  <line x1="155" y1="130" x2="230" y2="55" stroke="#56A5C4" stroke-width="1.4" opacity="0.6"/>
  <text x="206" y="82" font-size="13" font-style="italic" fill="#56A5C4">r₂</text>
  <line x1="155" y1="130" x2="105" y2="180" stroke="#8D6FB0" stroke-width="1.4" opacity="0.7"/>
  <text x="112" y="167" font-size="13" font-style="italic" fill="#8D6FB0">r</text>
  <text x="155" y="265" text-anchor="middle" font-size="11" fill="currentColor" opacity="0.7">vista de frente · la circunferencia punteada es la superficie gaussiana</text>
</svg>

El conductor interno será de radio $r_1$ y el externo tendrá radio $r_2$.
Dentro, consideraremos aire.

Luego colocamos la fuente de alimentación, positiva y negativa, según como estén
conectadas a los conductores. Cuando el capacitor esté completamente cargado, el
conductor interno tendrá una carga $+Q$ y el externo $-Q$.

## Planteamiento

Por tanto, la capacitancia será

$$C = \frac{Q}{\Delta V}$$

siendo $Q$ la carga de las placas y $\Delta V$ la diferencia de potencial una
vez estando cargado.

Sabemos que $\Delta V$ la podemos calcular mediante una **integral de línea**:

$$\Delta V = -\int_{-}^{+} \vec{E}\cdot d\vec{l} \tag{1}$$

es decir, el campo eléctrico por un diferencial de longitud que recorre una
trayectoria desde la polaridad negativa hasta la polaridad positiva.

Por otro lado, si no conocemos cuál es el campo eléctrico, lo podemos deducir
mediante la **ley de Gauss**:

$$\oint \vec{E}\cdot\hat{n}\,ds = \frac{q_{\text{enc}}}{\varepsilon_0}$$

## El campo, por ley de Gauss

En esta situación de capacitor, consideramos una superficie gaussiana dentro del
capacitor, en donde el campo eléctrico $\vec{E}$ es **radial y hacia afuera**, y
el vector normal $\hat{n}$ también es radial y hacia afuera.

Aquí

$$\vec{E}\cdot\hat{n} = E\,(1)\cos 0° = E$$

ya que ambos van en la misma dirección. Por lo que lo que queda es la magnitud
del campo, y por lo tanto la integral de superficie cerrada será igual a

$$\oint E\,ds = \frac{q_{\text{enc}}}{\varepsilon_0}$$

Esta carga encerrada es la carga $+Q$ que encierra la superficie gaussiana, así
que

$$\oint E\,ds = \frac{+Q}{\varepsilon_0}$$

El campo es una constante sobre esa superficie, por lo que puede salir de la
integral, y lo que queda por integrar es $ds$, es decir el área total de la
superficie gaussiana.

Miremos: si la superficie gaussiana es un cilindro de radio $r$, su área lateral
será $2\pi r$ por una longitud $L$. Es decir que

$$E\,(2\pi r L) = \frac{+Q}{\varepsilon_0}$$

> [!ley] El campo entre los conductores ^campo-cilindrico
> $$E = \frac{Q}{2\pi\varepsilon_0 L}\cdot\frac{1}{r} \tag{2}$$

## De $d\vec{l}$ a $dr$

Y conocido este campo, podemos usar la ecuación $(1)$.

Como vemos, el campo va en la dirección que **sale** del capacitor, y el
$d\vec{l}$, por convención según la ecuación, va de la polaridad negativa a la
positiva — es decir, **hacia adentro**.

Si observamos bien, nos damos cuenta de que los dos vectores son antiparalelos:

$$\vec{E}\cdot d\vec{l} = E\,dl\cos 180° = -E\,dl$$

Sustituyendo en $(1)$, el signo negativo de la definición se cancela con el
$-1$ del coseno:

$$\Delta V = -\int (-E\,dl) = +\int E\,dl$$

Sin embargo, el campo según la ecuación $(2)$ depende de $r$ y no de $l$. Pero
podemos convenientemente cambiar de variable.

<svg viewBox="0 0 360 175" xmlns="http://www.w3.org/2000/svg" style="width:100%;max-width:380px;height:auto;display:block;margin:1em auto">
  <defs>
    <marker id="me" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="5" markerHeight="5" orient="auto-start-reverse">
      <path d="M0,1 L10,5 L0,9 z" fill="#B09144"/>
    </marker>
    <marker id="ml" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="5" markerHeight="5" orient="auto-start-reverse">
      <path d="M0,1 L10,5 L0,9 z" fill="#56A5C4"/>
    </marker>
    <marker id="mr" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="5" markerHeight="5" orient="auto-start-reverse">
      <path d="M0,1 L10,5 L0,9 z" fill="#8D6FB0"/>
    </marker>
  </defs>
  <g stroke="currentColor" stroke-width="1" stroke-dasharray="3 4" opacity="0.35">
    <line x1="160" y1="28" x2="160" y2="140"/>
    <line x1="250" y1="28" x2="250" y2="140"/>
  </g>
  <line x1="160" y1="45" x2="250" y2="45" stroke="#B09144" stroke-width="2.4" marker-end="url(#me)"/>
  <text x="150" y="50" text-anchor="end" font-size="14" font-style="italic" fill="#B09144">E</text>
  <line x1="250" y1="85" x2="160" y2="85" stroke="#56A5C4" stroke-width="2.4" marker-end="url(#ml)"/>
  <text x="150" y="90" text-anchor="end" font-size="14" font-style="italic" fill="#56A5C4">dl</text>
  <line x1="160" y1="125" x2="250" y2="125" stroke="#8D6FB0" stroke-width="2.4" marker-end="url(#mr)"/>
  <text x="150" y="130" text-anchor="end" font-size="14" font-style="italic" fill="#8D6FB0">dr</text>
  <text x="262" y="50" font-size="11" fill="currentColor" opacity="0.7">sale del capacitor</text>
  <text x="262" y="90" font-size="11" fill="currentColor" opacity="0.7">de − hacia +</text>
  <text x="262" y="130" font-size="11" fill="currentColor" opacity="0.7">r creciente</text>
  <text x="180" y="163" text-anchor="middle" font-size="12" fill="currentColor">mismo tramo, sentidos opuestos</text>
</svg>

Un $r$ va en dirección al campo, y un $dr$ también. Esto significa que un $dr$
iría en dirección contraria a un $dl$, y podríamos decir que un $dl$ es igual a
un $dr$ contrario:

$$d l = -dr$$

Así que

$$\Delta V = \int E\,(-dr) = -\int_{r_2}^{r_1} E\,dr$$

Los límites van de $r_2$ a $r_1$ porque la trayectoria arranca en el conductor
negativo (el externo) y termina en el positivo (el interno).

## La integral

Tenemos entonces que

$$\Delta V = -\int_{r_2}^{r_1} \frac{Q}{2\pi\varepsilon_0 L}\cdot\frac{dr}{r}$$

$$\Delta V = -\frac{Q}{2\pi\varepsilon_0 L}\ln\!\left(\frac{r_1}{r_2}\right)$$

Para organizar el signo negativo que queda en la ecuación, sabemos que por
propiedades de logaritmos $\ln(r_1/r_2)$ es igual a $\ln r_1 - \ln r_2$, y como
$r_1 < r_2$ el resultado será un número negativo, que se cancelará con el $(-)$
externo. Para dejar eso explícito lo expresaremos como $\ln(r_2/r_1)$:

$$\Delta V = \frac{Q}{2\pi\varepsilon_0 L}\ln\!\left(\frac{r_2}{r_1}\right)$$

El resultado es positivo, como debe ser: el conductor interno está a mayor
potencial.

## La capacitancia

Entonces la capacitancia será

$$C = \frac{Q}{\dfrac{Q}{2\pi\varepsilon_0 L}\ln\!\left(\dfrac{r_2}{r_1}\right)}$$

> [!ley] Capacitor cilíndrico ^C-cilindrico
> $$C = \frac{2\pi\varepsilon_0 L}{\ln(r_2/r_1)}$$

<span class="qed">∎</span>

## Otra forma de expresarlo

Para efectos de cálculo, en algunos libros está enunciado en términos de la
**constante eléctrica**:

$$K_e = \frac{1}{4\pi\varepsilon_0} = 9\times 10^{9}\ \frac{\mathrm{N\cdot m^2}}{\mathrm{C^2}}$$

Entonces, multiplicando numerador y denominador por $2$ para tener en el
numerador un $4\pi$:

$$C = \frac{(2)\,2\pi\varepsilon_0 L}{(2)\,\ln(r_2/r_1)}
= \frac{4\pi\varepsilon_0 L}{2\ln(r_2/r_1)}$$

Y reescribiendo:

$$C = \frac{L}{\left(\dfrac{1}{4\pi\varepsilon_0}\right)\,2\ln(r_2/r_1)}$$

Lo que está en el paréntesis es igual a la constante eléctrica, por lo que

> [!ley] Forma equivalente ^C-cilindrico-K
> $$C = \frac{L}{2K\,\ln(r_2/r_1)}$$

## ¿Qué concluimos?

La dependencia con los radios es **logarítmica**, no lineal. Separar los
conductores reduce la capacitancia cada vez más despacio.

En cambio, $C$ crece proporcionalmente con la longitud $L$: un cable largo tiene
más capacitancia que uno corto de la misma sección.

> [!pregunta] Para pensar
> ¿Qué ocurre con $C$ cuando $r_2 \to r_1$? Compara ese comportamiento con lo
> que dice $C = \varepsilon_0 A/d$ sobre la separación $d$ en
> [[Capacitor de placas paralelas]]. ¿Es el mismo fenómeno?



