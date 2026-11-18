---
estado: semilla
bloque: 1
nivel: intermedio
prerrequisitos:
  - Campo eléctrico y líneas de campo
fuente:
cssclasses:
  - nota-ley
---

# Ley de Gauss

La Ley de Gauss es una de las primeras leyes que se trabajan en el estudio del electromagnetismo previo al estudio formal de las ecuaiones de Maxwell. En ella se relaciona el flujo del campo eléctrico que atraviesa una superficie gaussiana. Entendiendo que si hay un flujo de campo eléctrico en una región del espacio, este está siendo causado por una carga eléctrica. 
## Flujo eléctrico

> [!definicion] Flujo eléctrico
> $$\Phi_E = \oint_S \vec{E}\cdot\hat{n}\,dA$$
> Mide cuánto campo atraviesa la superficie. 
> El producto escalar nos indica la dirección en la cuál el campo sale de la superficie gaussiana cuya componente siempre será normal.


> [!ley] Ley de Gauss ^ley-gauss
> $$\oint_S \vec{E}\cdot d\vec{A} = \frac{q_{\text{enc}}}{\varepsilon_0}$$
> El flujo neto a través de cualquier superficie cerrada depende únicamente de
> la carga encerrada. Las cargas exteriores contribuyen al campo en cada punto
> de la superficie, pero su flujo neto es nulo.

Forma diferencial, por el teorema de la divergencia:

$$\nabla\cdot\vec{E} = \frac{\rho}{\varepsilon_0}$$


## Aplicaciones con simetría

> [!pendiente] Casos por desarrollar
> | Simetría | Superficie gaussiana | Resultado |
> |---|---|---|
> | Esférica | esfera concéntrica | $E = \dfrac{kq}{r^2}$ |
> | Cilíndrica (hilo infinito) | cilindro coaxial | $E = \dfrac{\lambda}{2\pi\varepsilon_0 r}$ |
> | Plana (plano infinito) | cilindro perpendicular | $E = \dfrac{\sigma}{2\varepsilon_0}$ |
>
> Escribir al menos el caso esférico completo, incluyendo el interior de una
> esfera con carga volumétrica uniforme.

<span class="qed">∎</span>

> [!pregunta] Para discutir
¿Qué pasa cuando la fuente que genera el flujo de campo se encuentra por fuera de la superficie gaussiana?
