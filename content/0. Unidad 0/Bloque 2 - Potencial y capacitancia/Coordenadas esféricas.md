# ¿Por qué usar coordenadas esféricas?

> [!note] Aclaración
> Las coordenadas **no tienen que ser** esféricas. El trabajo definido como $W = \int \vec{F}\cdot d\vec{l}$ es un escalar y da el mismo resultado en cualquier sistema de coordenadas. Se eligen las esféricas porque se ajustan a la **simetría** de la fuerza de Coulomb. Abajo se muestra el cálculo en coordenadas esféricas y luego el mismo cálculo en coordenadas cartesianas para comprobarlo.

---

## 1. La simetría de la fuerza de Coulomb

La fuerza ejerce una carga $Q$ sobre una carga $q$ es

$$\vec{F} = k\,\frac{qQ}{r^2}\,\hat{r}$$

Esta fuerza tiene dos propiedades:

- **Su magnitud depende solo de la distancia $r$**: es igual en todos los puntos de una esfera centrada en $Q$.
- **Su dirección es siempre radial**: apunta a lo largo de la línea que une $Q$ con $q$.

<svg viewBox="0 8 640 300" xmlns="http://www.w3.org/2000/svg" style="width:100%;max-width:430px;height:auto;display:block;margin:0.3em auto"> <text x="160" y="30" text-anchor="middle" font-size="14" font-weight="bold" fill="currentColor">1. La magnitud solo depende de r</text> <g fill="none" stroke="currentColor" stroke-width="1" stroke-dasharray="3 4" opacity="0.4"><circle cx="160" cy="165" r="40"/><circle cx="160" cy="165" r="62"/><circle cx="160" cy="165" r="92"/></g> <g stroke="#B09144" stroke-width="2.6" stroke-linecap="round"> <line x1="199.2" y1="157.2" x2="236.5" y2="149.8"/> <line x1="182.2" y1="131.7" x2="203.3" y2="100.1"/> <line x1="152.2" y1="125.8" x2="144.8" y2="88.5"/> <line x1="126.7" y1="142.8" x2="95.1" y2="121.7"/> <line x1="120.8" y1="172.8" x2="83.5" y2="180.2"/> <line x1="137.8" y1="198.3" x2="116.7" y2="229.9"/> <line x1="167.8" y1="204.2" x2="175.2" y2="241.5"/> <line x1="193.3" y1="187.2" x2="224.9" y2="208.3"/> <line x1="211.6" y1="130.6" x2="222.8" y2="123.1"/> <line x1="172.1" y1="104.2" x2="174.7" y2="91.0"/> <line x1="125.6" y1="113.4" x2="118.1" y2="102.2"/> <line x1="99.2" y1="152.9" x2="86.0" y2="150.3"/> <line x1="108.4" y1="199.4" x2="97.2" y2="206.9"/> <line x1="147.9" y1="225.8" x2="145.3" y2="239.0"/> <line x1="194.4" y1="216.6" x2="201.9" y2="227.8"/> <line x1="220.8" y1="177.1" x2="234.0" y2="179.7"/> <line x1="250.2" y1="147.1" x2="254.1" y2="146.3"/> <line x1="211.1" y1="88.5" x2="213.3" y2="85.2"/> <line x1="142.1" y1="74.8" x2="141.3" y2="70.9"/> <line x1="83.5" y1="113.9" x2="80.2" y2="111.7"/> <line x1="69.8" y1="182.9" x2="65.9" y2="183.7"/> <line x1="108.9" y1="241.5" x2="106.7" y2="244.8"/> <line x1="177.9" y1="255.2" x2="178.7" y2="259.1"/> <line x1="236.5" y1="216.1" x2="239.8" y2="218.3"/> </g> <path d="M240.4,149.0 L234.7,153.4 L233.4,147.1 z" fill="#B09144"/><path d="M205.6,96.8 L204.6,104.0 L199.3,100.4 z" fill="#B09144"/><path d="M144.0,84.6 L148.4,90.3 L142.1,91.6 z" fill="#B09144"/><path d="M91.8,119.4 L99.0,120.4 L95.4,125.7 z" fill="#B09144"/><path d="M79.6,181.0 L85.3,176.6 L86.6,182.9 z" fill="#B09144"/><path d="M114.4,233.2 L115.4,226.0 L120.7,229.6 z" fill="#B09144"/><path d="M176.0,245.4 L171.6,239.7 L177.9,238.4 z" fill="#B09144"/><path d="M228.2,210.6 L221.0,209.6 L224.6,204.3 z" fill="#B09144"/><path d="M226.1,120.8 L222.5,127.1 L218.9,121.8 z" fill="#B09144"/><path d="M175.5,87.0 L177.4,94.0 L171.1,92.8 z" fill="#B09144"/><path d="M115.8,98.9 L122.1,102.5 L116.8,106.1 z" fill="#B09144"/><path d="M82.0,149.5 L89.0,147.6 L87.8,153.9 z" fill="#B09144"/><path d="M93.9,209.2 L97.5,202.9 L101.1,208.2 z" fill="#B09144"/><path d="M144.5,243.0 L142.6,236.0 L148.9,237.2 z" fill="#B09144"/><path d="M204.2,231.1 L197.9,227.5 L203.2,223.9 z" fill="#B09144"/><path d="M238.0,180.5 L231.0,182.4 L232.2,176.1 z" fill="#B09144"/><path d="M258.0,145.5 L252.3,149.9 L251.0,143.6 z" fill="#B09144"/><path d="M215.5,81.9 L214.6,89.1 L209.3,85.5 z" fill="#B09144"/><path d="M140.5,67.0 L144.9,72.7 L138.6,74.0 z" fill="#B09144"/><path d="M76.9,109.5 L84.1,110.4 L80.5,115.7 z" fill="#B09144"/><path d="M62.0,184.5 L67.7,180.1 L69.0,186.4 z" fill="#B09144"/><path d="M104.5,248.1 L105.4,240.9 L110.7,244.5 z" fill="#B09144"/><path d="M179.5,263.0 L175.1,257.3 L181.4,256.0 z" fill="#B09144"/><path d="M243.1,220.5 L235.9,219.6 L239.5,214.3 z" fill="#B09144"/> <text x="199.7" y="185.5" font-size="12" font-style="italic" fill="currentColor" opacity="0.8">r₁</text> <text x="220.1" y="193.9" font-size="12" font-style="italic" fill="currentColor" opacity="0.8">r₂</text> <text x="247.8" y="205.4" font-size="12" font-style="italic" fill="currentColor" opacity="0.8">r₃</text> <circle cx="160" cy="165" r="11" fill="#C1743A"/><text x="160" y="169.5" text-anchor="middle" font-size="12" font-style="italic" fill="#FFFFFF">Q</text> <text x="160" y="282" text-anchor="middle" font-size="11.5" fill="currentColor">Misma esfera → flechas iguales</text> <text x="160" y="298" text-anchor="middle" font-size="11.5" fill="currentColor">Mayor r → flechas más cortas (|F| ∝ 1/r²)</text> <text x="480" y="30" text-anchor="middle" font-size="14" font-weight="bold" fill="currentColor">2. La dirección siempre es radial</text> <circle cx="480" cy="165" r="70" fill="none" stroke="currentColor" stroke-width="1" stroke-dasharray="3 4" opacity="0.4"/> <g stroke="currentColor" stroke-width="1" stroke-dasharray="4 4" opacity="0.5"><line x1="480" y1="165" x2="454.1" y2="100.0"/><line x1="480" y1="165" x2="410.9" y2="176.0"/><line x1="480" y1="165" x2="472.1" y2="234.6"/><line x1="480" y1="165" x2="534.3" y2="209.2"/><line x1="480" y1="165" x2="583.6" y2="89.8"/></g> <g stroke="#B09144" stroke-width="2.6" stroke-linecap="round"> <line x1="536.6" y1="123.9" x2="544.5" y2="118.1"/> <line x1="454.1" y1="100.0" x2="450.5" y2="90.9"/> <line x1="410.9" y1="176.0" x2="401.3" y2="177.6"/> <line x1="472.1" y1="234.6" x2="471.1" y2="244.2"/> <line x1="534.3" y1="209.2" x2="541.8" y2="215.3"/> <line x1="512.4" y1="141.5" x2="543.1" y2="119.2"/> <line x1="569.0" y1="100.3" x2="570.2" y2="99.4"/> </g> <path d="M547.7,115.8 L544.3,122.2 L540.6,117.0 z" fill="#B09144"/><path d="M449.0,87.2 L454.4,92.1 L448.4,94.5 z" fill="#B09144"/><path d="M397.3,178.2 L403.2,174.0 L404.3,180.3 z" fill="#B09144"/><path d="M470.6,248.2 L468.2,241.4 L474.5,242.1 z" fill="#B09144"/><path d="M544.9,217.8 L537.9,216.2 L541.9,211.3 z" fill="#B09144"/><path d="M546.3,116.8 L543.0,123.2 L539.2,118.0 z" fill="#B09144"/><path d="M573.5,97.1 L570.1,103.5 L566.3,98.3 z" fill="#B09144"/> <circle cx="536.6" cy="123.9" r="4.5" fill="#56A5C4"/> <circle cx="454.1" cy="100.0" r="4.5" fill="#56A5C4"/> <circle cx="410.9" cy="176.0" r="4.5" fill="#56A5C4"/> <circle cx="472.1" cy="234.6" r="4.5" fill="#56A5C4"/> <circle cx="534.3" cy="209.2" r="4.5" fill="#56A5C4"/> <circle cx="512.4" cy="141.5" r="4.5" fill="#56A5C4" opacity="0.55"/> <circle cx="569.0" cy="100.3" r="4.5" fill="#56A5C4" opacity="0.55"/> <line x1="480" y1="165" x2="498.6" y2="151.5" stroke="currentColor" stroke-width="2"/><path d="M502.7,148.5 L499.3,155.0 L495.5,149.8 z" fill="currentColor"/> <text x="502.2" y="169.2" font-size="13" font-style="italic" fill="currentColor">r̂</text> <text x="544.6" y="139.9" font-size="13" font-style="italic" fill="#56A5C4">q</text> <text x="534.6" y="105.9" font-size="13" font-style="italic" fill="#B09144">F</text> <circle cx="480" cy="165" r="11" fill="#C1743A"/><text x="480" y="169.5" text-anchor="middle" font-size="12" font-style="italic" fill="#FFFFFF">Q</text> <text x="480" y="282" text-anchor="middle" font-size="11.5" fill="currentColor">En toda posición F apunta sobre la línea Q → q</text> <text x="480" y="298" text-anchor="middle" font-size="11.5" fill="currentColor">Sobre una misma línea solo cambia el tamaño</text> </svg>

A esto le llamamos **simetría esférica**. Cuando un problema tiene esta simetría, lo natural es describirlo con una coordenada que mida la distancia al centro ($r$) y dos que midan la dirección ($\theta$, $\phi$). Eso son las coordenadas esféricas.

---

## 2. Desplazamiento infinitesimal en esféricas

El vector posición de $q$ es

$$\vec{r} = r\sin\theta\cos\phi\;\hat{x} + r\sin\theta\sin\phi\;\hat{y} + r\cos\theta\;\hat{z}$$

Por regla de la cadena, un desplazamiento infinitesimal es

$$d\vec{l} = \frac{\partial \vec{r}}{\partial r}\,dr + \frac{\partial \vec{r}}{\partial \theta}\,d\theta + \frac{\partial \vec{r}}{\partial \phi}\,d\phi$$

Calculando cada derivada parcial:

$$\frac{\partial \vec{r}}{\partial r} = \sin\theta\cos\phi\;\hat{x} + \sin\theta\sin\phi\;\hat{y} + \cos\theta\;\hat{z} = \hat{r}$$

$$\frac{\partial \vec{r}}{\partial \theta} = r\cos\theta\cos\phi\;\hat{x} + r\cos\theta\sin\phi\;\hat{y} - r\sin\theta\;\hat{z} = r\,\hat{\theta}$$

$$\frac{\partial \vec{r}}{\partial \phi} = -r\sin\theta\sin\phi\;\hat{x} + r\sin\theta\cos\phi\;\hat{y} = r\sin\theta\,\hat{\phi}$$

Por tanto

$$d\vec{l} = dr\,\hat{r} + r\,d\theta\,\hat{\theta} + r\sin\theta\,d\phi\,\hat{\phi}$$

Los vectores $\hat{r}$, $\hat{\theta}$ y $\hat{\phi}$ son perpendiculares entre sí:

$$\hat{r}\cdot\hat{\theta} = 0 \qquad \hat{r}\cdot\hat{\phi} = 0 \qquad \hat{r}\cdot\hat{r} = 1$$

---

## 3. Producto punto en esféricas

$$\vec{F}\cdot d\vec{l} = k\,\frac{qQ}{r^2}\Big[dr\,(\hat{r}\cdot\hat{r}) + r\,d\theta\,(\hat{r}\cdot\hat{\theta}) + r\sin\theta\,d\phi\,(\hat{r}\cdot\hat{\phi})\Big] = k\,\frac{qQ}{r^2}\,dr$$

Como la fuerza apunta en $\hat{r}$ y uno de los vectores base **es** $\hat{r}$, los términos angulares desaparecen por ortogonalidad. 

---

## 4. El mismo cálculo en cartesianas

Para comprobar que el sistema de coordenadas no cambia el resultado, se repite en cartesianas. Como $\hat{r} = \vec{r}/r$:

$$\vec{F} = k\,\frac{qQ}{r^3}\,\vec{r} = k\,\frac{qQ}{r^3}\,\big(x\,\hat{x} + y\,\hat{y} + z\,\hat{z}\big), \qquad r = \sqrt{x^2 + y^2 + z^2}$$

El desplazamiento infinitesimal es

$$d\vec{l} = dx\,\hat{x} + dy\,\hat{y} + dz\,\hat{z}$$

El producto punto queda

$$\vec{F}\cdot d\vec{l} = k\,\frac{qQ}{r^3}\,\big(x\,dx + y\,dy + z\,dz\big)$$

Aquí la expresión todavía no está en términos de $r$. Para llegar ahí se diferencia $r^2 = x^2 + y^2 + z^2$:

$$2r\,dr = 2x\,dx + 2y\,dy + 2z\,dz \quad\Longrightarrow\quad x\,dx + y\,dy + z\,dz = r\,dr$$

Sustituyendo:

$$\vec{F}\cdot d\vec{l} = k\,\frac{qQ}{r^3}\,r\,dr = k\,\frac{qQ}{r^2}\,dr$$

Es **exactamente el mismo resultado**, pero hizo falta un paso adicional para descubrir que la combinación $x\,dx + y\,dy + z\,dz$ es en realidad un cambio en la distancia radial.

---

## 5. Conclusión

| | Esféricas | Cartesianas |
|---|---|---|
| Forma de $\vec{F}$ | Una sola componente ($\hat{r}$) | Tres componentes |
| Términos que se anulan | Los angulares, por ortogonalidad | Ninguno se anula directamente |
| Paso extra | No | Reconocer que $x\,dx + y\,dy + z\,dz = r\,dr$ |
| Resultado | $k\,\dfrac{qQ}{r^2}\,dr$ | $k\,\dfrac{qQ}{r^2}\,dr$ |

Las coordenadas esféricas no son obligatorias: son la elección que **respeta la simetría del problema**. En esas coordenadas la física aparece directamente: solo el movimiento radial (acercarse o alejarse de $Q$) hace trabajo, y moverse sobre una esfera centrada en $Q$ no lo hace.

---

← Volver a [[Fuerza electrostática conservativa]]