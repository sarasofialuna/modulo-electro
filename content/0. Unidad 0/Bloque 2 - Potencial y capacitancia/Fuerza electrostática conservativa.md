---
tipo: demostración
estado: planta
bloque: 2
nivel: intermedio
prerrequisitos:
  - Ley de Gauss
  - Campo eléctrico y líneas de campo
fuente: Apuntes propios
cssclasses:
  - nota-demostracion
---

> [!volti] Dr. Volti: Toda la sección de potencial y diferencia de potencial está basada en que la fuerza electrostática es conservativa. Sin ella no existe la función de energía potencial, y a contiuación se presenta la demostración.

**Se debe probar que:**  la circulación de la fuerza electrostática sobre cualquier trayectoria cerrada es nula.

$$\oint \vec{F}\cdot d\vec{l} = 0$$

## 1. La fuerza en una carga puntual

Tenemos una carga fuente $Q$ en el origen que ejerce una fuerza 
$$\vec{F} = k\:\frac{qQ}{r^{2}}\:\hat{r}$$
sobre $q$

Así mismo, tenemos un desplazamiento infinitesimal arbitrario en [[coordenadas esféricas]] que es

$$d\vec{l} = dr \:\hat{r} + r d\theta\:\hat{\theta} + r\sin\theta d\phi \:\hat{\phi}$$

Como la fuerza solo tiene componente en $\hat{r}$, y $\hat{r}$ es perpendicular a $\hat{\theta}$ y $\hat{\phi}$, en el producto punto sobrevive solo el término radial:

$$\vec{F}\cdot d\vec{l} = k\:\frac{qQ}{r^{2}}\:dr$$

> [!definicion] El paso clave Los movimientos "de lado" — cambiar $\theta$ o $\phi$ manteniendo $r$ — no hacen trabajo, porque son perpendiculares a la fuerza. Solo cuenta cuánto se acerca o se aleja la carga.

Cualquier trayectoria puede pensarse como una sucesión de tramos radiales y tramos sobre superficies de $r$ constante. 

<svg viewBox="0 0 420 235" xmlns="http://www.w3.org/2000/svg" style="width:100%;max-width:470px;height:auto;display:block;margin:0.8em auto"> <g fill="none" stroke="currentColor" stroke-width="1" stroke-dasharray="3 4" opacity="0.3"> <path d="M85.2,140.2 A60,60 0 0 1 139.1,189.6"/> <path d="M88.7,100.4 A100,100 0 0 1 178.5,182.6"/> <path d="M92.2,60.6 A140,140 0 0 1 217.9,175.7"/> <path d="M95.7,20.7 A180,180 0 0 1 257.2,168.7"/> </g> <g fill="none" stroke="#B09144" stroke-width="3.2" stroke-linecap="round"> <path d="M95.5,142 L105.9,103.4"/> <path d="M137.4,118.1 L160.3,85.3"/> <path d="M194.7,119.7 L227.4,96.8"/> </g> <g fill="none" stroke="#56A5C4" stroke-width="3.2" stroke-linecap="round"> <path d="M105.9,103.4 A100,100 0 0 1 137.4,118.1"/> <path d="M160.3,85.3 A140,140 0 0 1 194.7,119.7"/> <path d="M227.4,96.8 A180,180 0 0 1 249.1,138.4"/> </g> <circle cx="80" cy="200" r="11" fill="#C1743A"/> <text x="80" y="204.5" text-anchor="middle" font-size="12" font-style="italic" fill="#FFFFFF">Q</text> <circle cx="95.5" cy="142" r="4" fill="currentColor"/> <text x="76" y="138" font-size="14" font-style="italic" fill="currentColor">A</text> <circle cx="249.1" cy="138.4" r="4" fill="currentColor"/> <text x="257" y="136" font-size="14" font-style="italic" fill="currentColor">B</text> <g stroke-width="3.2" stroke-linecap="round"> <line x1="272" y1="42" x2="294" y2="42" stroke="#B09144"/> <line x1="272" y1="66" x2="294" y2="66" stroke="#56A5C4"/> </g> <text x="302" y="46" font-size="11.5" fill="currentColor">radial: hace trabajo</text> <text x="302" y="70" font-size="11.5" fill="currentColor">arco: no hace trabajo</text> </svg>

## 2. El trabajo solo depende de los extremos

Integrando por cualquier camino de $A$ a $B$:

$$W_{A\to B} = \int_{r_A}^{r_B} k\:\frac{qQ}{r^{2}}\:dr = kqQ\left(\frac{1}{r_A} - \frac{1}{r_B}\right)$$

El resultado depende solo de $r_A$ y $r_B$, no de la forma del camino.

## 3. Trayectoria cerrada

En una trayectoria cerrada el punto final coincide con el inicial, así que $r_B = r_A$:

$$\oint \vec{F}\cdot d\vec{l} = kqQ\left(\frac{1}{r_A} - \frac{1}{r_A}\right) = 0$$

## 4. Generalización a cualquier distribución estática

Para varias cargas fuente, la fuerza total es la suma de las fuerzas individuales (superposición), y la integral de una suma es la suma de las integrales:

$$\oint \vec{F}\cdot d\vec{l} = \sum_i \oint \vec{F}_i\cdot d\vec{l} = \sum_i 0 = 0$$

Lo mismo vale para distribuciones continuas, con integrales en lugar de sumas.

Dividiendo entre $q$ se obtiene la versión en términos del campo:

> [!ley] La circulación del campo electrostático es nula ^circulacion-nula $$\oint \vec{E}\cdot d\vec{l} = 0$$ El campo electrostático es conservativo. Por eso existe una función escalar $V$ tal que la diferencia de potencial entre dos puntos no depende del camino que los une.

<span class="qed">∎</span>

