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
> El método es siempre el mismo, y conviene tenerlo presente antes de empezar:
> hallar el campo con la ley de Gauss, integrarlo para obtener $\Delta V$, y
> dividir según la definición de capacitancia. Lo único que cambia de una
> geometría a otra es la superficie gaussiana que conviene elegir.

**Problema:** encontremos la capacitancia de un condensador de placas
paralelas.

<svg viewBox="0 0 400 235" xmlns="http://www.w3.org/2000/svg" style="width:100%;max-width:430px;height:auto;display:block;margin:1em auto">
  <defs>
    <marker id="fp" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="5" markerHeight="5" orient="auto-start-reverse">
      <path d="M0,1 L10,5 L0,9 z" fill="#B09144"/>
    </marker>
  </defs>
  <rect x="150" y="52" width="100" height="66" fill="none" stroke="#8D6FB0" stroke-width="1.5" stroke-dasharray="5 4"/>
  <text x="256" y="46" font-size="11" fill="#8D6FB0">superficie gaussiana</text>
  <line x1="90" y1="70" x2="310" y2="70" stroke="#C1743A" stroke-width="4.5"/>
  <g font-size="13" fill="#C1743A" text-anchor="middle">
    <text x="105" y="64">+</text><text x="135" y="64">+</text><text x="165" y="64">+</text>
    <text x="195" y="64">+</text><text x="225" y="64">+</text><text x="255" y="64">+</text>
    <text x="285" y="64">+</text>
  </g>
  <g stroke="#B09144" stroke-width="1.6" marker-end="url(#fp)">
    <line x1="110" y1="78" x2="110" y2="163"/>
    <line x1="140" y1="78" x2="140" y2="163"/>
    <line x1="170" y1="78" x2="170" y2="163"/>
    <line x1="200" y1="78" x2="200" y2="163"/>
    <line x1="230" y1="78" x2="230" y2="163"/>
    <line x1="260" y1="78" x2="260" y2="163"/>
    <line x1="290" y1="78" x2="290" y2="163"/>
  </g>
  <text x="208" y="128" font-size="13" font-style="italic" fill="#B09144">E</text>
  <line x1="90" y1="170" x2="310" y2="170" stroke="#56A5C4" stroke-width="4.5"/>
  <g font-size="14" fill="#56A5C4" text-anchor="middle">
    <text x="105" y="186">−</text><text x="135" y="186">−</text><text x="165" y="186">−</text>
    <text x="195" y="186">−</text><text x="225" y="186">−</text><text x="255" y="186">−</text>
    <text x="285" y="186">−</text>
  </g>
  <text x="82" y="75" text-anchor="end" font-size="13" font-style="italic" fill="#C1743A">+Q</text>
  <text x="82" y="175" text-anchor="end" font-size="13" font-style="italic" fill="#56A5C4">−Q</text>
  <g stroke="currentColor" stroke-width="1.2" opacity="0.8">
    <line x1="332" y1="70" x2="332" y2="170"/>
    <line x1="327" y1="70" x2="337" y2="70"/>
    <line x1="327" y1="170" x2="337" y2="170"/>
  </g>
  <text x="342" y="124" font-size="13" font-style="italic" fill="currentColor">d</text>
  <text x="200" y="215" text-anchor="middle" font-size="11" fill="currentColor" opacity="0.7">placas de área A, separadas una distancia d</text>
</svg>

## 1. El campo, por ley de Gauss

Partimos de las dos relaciones que ya conocemos:

$$\Delta V_c = -\int_{-}^{+} \vec{E}\cdot d\vec{l}
\qquad\qquad
\oint \vec{E}\cdot\hat{n}\,ds = \frac{q_{\text{enc}}}{\varepsilon_0}$$

Elegimos como superficie gaussiana una caja que encierre la placa positiva, con
su tapa superior **dentro** del conductor y la inferior en el espacio entre
placas. Examinemos cara por cara:

- En la tapa superior, $\vec{E} = 0$ porque está dentro del conductor: no
  aporta flujo.
- En las caras laterales, $\vec{E}$ es paralelo a la superficie, de modo que
  $\hat{n}$ forma $90°$ con $\vec{E}$: tampoco aportan.
- En la tapa inferior, $\hat{n}$ forma $0°$ con $\vec{E}$ y el campo es
  constante sobre toda ella.

Solo contribuye la tapa inferior, y como $E$ es constante sale de la integral:

$$\int E\,ds = \frac{Q}{\varepsilon_0}
\quad\Longrightarrow\quad
E\int ds = \frac{Q}{\varepsilon_0}
\quad\Longrightarrow\quad
EA = \frac{Q}{\varepsilon_0}$$

$$\boxed{\;E = \frac{Q}{A\varepsilon_0}\;}$$

## 2. La diferencia de potencial

La integral definida va de la placa negativa a la positiva. El campo $\vec{E}$
apunta en una sola dirección —de la placa positiva a la negativa— mientras que
$d\vec{l}$ recorre el camino contrario. Los dos vectores forman $180°$:

$$\Delta V_c = -\int_{-}^{+} E\,dl\,\underbrace{\cos 180°}_{-1}
= +\int_{-}^{+} E\,dl$$

Como $E$ es constante entre las placas, sale de la integral:

$$\Delta V_c = \frac{Q}{A\varepsilon_0}\int_{-}^{+} dl$$

Y esa integral vale exactamente $d$, porque es la suma infinitesimal de todo el
recorrido desde la polaridad negativa hasta la positiva:

$$\Delta V_c = \frac{Q\,d}{A\varepsilon_0}$$

El resultado es positivo, como debe ser: la placa positiva está a mayor
potencial.

## 3. La capacitancia

Sustituyendo en [[Capacitores y dieléctricos#^def-capacitancia|la definición]]:

$$C = \frac{Q}{\Delta V_c} = \frac{Q}{\dfrac{Q\,d}{A\varepsilon_0}}$$

> [!ley] Capacitor de placas paralelas ^C-placas
> $$C = \frac{\varepsilon_0 A}{d}$$
> La carga se canceló: la capacitancia queda determinada por el área de las
> placas y su separación, nada más.

<span class="qed">∎</span>

## ¿Qué concluimos?

Si en un capacitor de placas paralelas la distancia que separa las placas es
**grande**, la capacidad de almacenar carga será **menor**. Así mismo, si las
placas están muy cerca, la capacitancia será **mayor**.

Esto confirma lo que se había anunciado en
[[Capacitores y dieléctricos#^independencia-fuente|la nota general]]: la
capacitancia depende de la geometría, no de la fuente.

> [!pregunta] Para pensar
> La expresión dice que $C \to \infty$ cuando $d \to 0$. ¿Qué impide, en un
> capacitor real, acercar las placas tanto como se quiera?



> [!volti] Dr. Volti
> Un ejercicio que vale la pena hacer: calcular qué área necesitarían dos placas
> separadas un milímetro para alcanzar $1\ \mathrm{F}$. El resultado explica por
> qué los capacitores reales se enrollan y por qué se usan dieléctricos.

**Otras geometrías:** [[Capacitor cilíndrico]] · [[Capacitor esférico]]