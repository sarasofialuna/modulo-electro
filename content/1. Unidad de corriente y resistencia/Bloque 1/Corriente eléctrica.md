---
tipo: teoria
estado: brote
bloque: 2
nivel: intermedio
prerrequisitos:
  - Ley de Gauss
  - potencial
  - diferencia de potencial
fuente: Bauer y Westfall (2011), cap. 24
---

Definición

Un capacitor es un par de conductores aislados entre sí, que reciben cargas
iguales y opuestas $+q$ y $-q$. Esa separación de carga establece una diferencia
de potencial $\Delta V$ entre ambos conductores.
La relación entre ambas cantidades resulta ser fija para cada dispositivo: al
duplicar la carga se duplica la diferencia de potencial, de modo que su cociente
permanece constante. Ese cociente es lo que define la capacitancia.


> [!definicion] Capacitancia ^def-capacitancia
> $$C = \frac{q}{|\Delta V|}$$
> La unidad en el SI es el **faradio**:
> $$1\ \mathrm{F} = 1\ \mathrm{C/V}$$
> $C$ depende solo de la geometría del arreglo y del medio entre los
> conductores. No depende de $q$ ni de $\Delta V$.
Esa última afirmación es el resultado central del capítulo, y las tres
geometrías que siguen lo confirman una a una.
Capacitor de placas paralelas
Consideremos dos placas conductoras paralelas de área $A$, separadas una
distancia $d$, con cargas $+q$ y $-q$. Si $d$ es pequeña frente a las dimensiones
de las placas, el campo entre ellas es uniforme y perpendicular a las
superficies, y puede despreciarse la deformación del campo en los bordes.
Paso 1 — el campo, por ley de Gauss. Tomamos una superficie gaussiana que
encierre la placa positiva, con su cara inferior dentro del espacio entre placas
y su cara superior dentro del conductor. En el interior del conductor el campo
es nulo, y en las caras laterales $\vec{E}$ es paralelo a la superficie. Solo
contribuye la cara inferior, donde $\vec{E}$ y $d\vec{A}$ son paralelos:
$$\oint \vec{E}\cdot d\vec{A} = EA = \frac{q}{\varepsilon_0}
\quad\Longrightarrow\quad E = \frac{q}{\varepsilon_0 A}$$
Paso 2 — la diferencia de potencial. Como el campo es uniforme, la integral
a lo largo de una trayectoria recta de una placa a la otra da simplemente
$$|\Delta V| = E,d$$
Paso 3 — la capacitancia. Sustituyendo en la definición:
$$C = \frac{q}{|\Delta V|} = \frac{q}{E d} = \frac{q}{\dfrac{q}{\varepsilon_0 A},d}$$
> [!ley] Capacitor de placas paralelas ^C-placas
> $$C = \frac{\varepsilon_0 A}{d}$$
> La carga se canceló: la capacitancia queda determinada por el área de las
> placas y su separación, nada más.
<span class="qed">∎</span>

> El faradio es una unidad enorme. Un capacitor de placas paralelas de
> $1\ \mathrm{F}$ con las placas separadas un milímetro necesitaría un área del
> orden de $10^{8}\ \mathrm{m^2}$: placas cuadradas de unos diez kilómetros de
> lado. Por eso en la práctica se trabaja con microfaradios y picofaradios, y
> por eso los capacitores reales usan dieléctricos y geometrías enrolladas.


### Capacitor cilíndrico
Dos cilindros conductores coaxiales de longitud $L$, radios $r_1 < r_2$, con
cargas $+q$ y $-q$. Despreciamos los efectos de los extremos, de modo que el
campo es radial y depende solo de la distancia al eje.
El campo. Superficie gaussiana: un cilindro coaxial de radio $r$ y longitud
$L$. Las tapas no contribuyen porque $\vec{E}$ es paralelo a ellas, y sobre la
pared lateral $\vec{E}$ tiene magnitud constante:
$$E,(2\pi r L) = \frac{q}{\varepsilon_0}
\quad\Longrightarrow\quad E = \frac{q}{2\pi\varepsilon_0 L, r}$$
El potencial. Integrando radialmente del cilindro interior al exterior:
$$|\Delta V| = \int_{r_1}^{r_2} E,dr
= \frac{q}{2\pi\varepsilon_0 L}\int_{r_1}^{r_2}\frac{dr}{r}
= \frac{q}{2\pi\varepsilon_0 L}\ln!\left(\frac{r_2}{r_1}\right)$$
> [!ley] Capacitor cilíndrico ^C-cilindrico
> $$C = \frac{2\pi\varepsilon_0 L}{\ln(r_2/r_1)}$$
<span class="qed">∎</span>
### Capacitor esférico
Dos esferas conductoras concéntricas de radios $r_1 < r_2$.
El campo. Por simetría esférica, con una gaussiana esférica de radio $r$:
$$E,(4\pi r^{2}) = \frac{q}{\varepsilon_0}
\quad\Longrightarrow\quad E = \frac{q}{4\pi\varepsilon_0 r^{2}}$$

El potencial.
$$|\Delta V| = \int_{r_1}^{r_2}\frac{q}{4\pi\varepsilon_0 r^{2}},dr
= \frac{q}{4\pi\varepsilon_0}\left(\frac{1}{r_1} - \frac{1}{r_2}\right)$$


[!ley] Capacitor esférico ^C-esferico
> $$C = 4\pi\varepsilon_0\,\frac{r_1 r_2}{r_2 - r_1}$$
<span class="qed">∎</span>
El caso límite: la esfera aislada
Si la esfera exterior se aleja indefinidamente, $r_2 \to \infty$, el cociente
$r_1r_2/(r_2-r_1)$ tiende a $r_1$:


> [!ley] Esfera conductora aislada ^C-esfera-aislada
> $$C = 4\pi\varepsilon_0 r_1$$
Un conductor solitario tiene capacitancia propia: puede almacenar carga aunque
no haya un segundo conductor cerca. El "otro conductor" es, en la práctica, el
infinito.
> [!pregunta] Para pensar
> Según la expresión del capacitor esférico, ¿qué ocurre con $C$ cuando $r_2$ se
> acerca a $r_1$? ¿Y cuándo se aleja? Compara ese comportamiento con lo que dice
> la fórmula de placas paralelas sobre la separación $d$. ¿Son el mismo
> fenómeno?
Visualización
La animación muestra cómo cambia la capacitancia de un capacitor esférico al
variar el radio exterior, manteniendo fijo el interior. Obsérvese que $C$ no
crece sin límite: tiende al valor de la esfera aislada.
![[capacitancia-radios.mp4]]



Y la vista tridimensional del mismo arreglo, con el corte que deja ver la esfera
interior y el campo radial en la región intermedia:


![[capacitancia-3d.mp4]]


### Capacitancia equivalente en paralelo 
> $$C_{eq} = \sum_{i=1}^{n} C_i$$
Conexión en serie
Aquí la carga es la misma en todos. Las placas intermedias están aisladas del
resto del circuito, de modo que su carga neta debe permanecer nula: la carga que
se induce en una placa es igual y opuesta a la de su vecina, y así a lo largo de
toda la cadena. Lo que se suma entonces son las diferencias de potencial:
$$\Delta V = \Delta V_1 + \Delta V_2 + \cdots
= \frac{q}{C_1} + \frac{q}{C_2} + \cdots$$
> [!ley] Capacitancia equivalente en serie ^C-serie
> $$\frac{1}{C_{eq}} = \sum_{i=1}^{n}\frac{1}{C_i}$$



Referencias
Bauer, W. y Westfall, G. D. (2011). Física para ingeniería y ciencias (Vol. 2),
cap. 24: Capacitores. McGraw-Hill.
> [!pendiente] Completar la cita
> Verificar edición, año y número de páginas del ejemplar que estás usando, y
> ajustar al formato APA 7 del documento de autor.