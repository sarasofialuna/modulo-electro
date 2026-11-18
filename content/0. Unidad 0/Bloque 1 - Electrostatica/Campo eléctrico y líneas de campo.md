---
tipo: teoria
estado: semilla
bloque: 1
nivel: introductorio
prerrequisitos:
  - Naturaleza de la carga eléctrica
fuente:
---

# Campo eléctrico y líneas de campo

## Del campo como artificio al campo como entidad

> [!definicion] Campo eléctrico ^def-campo
> $$\vec{E} = \lim_{q_0 \to 0}\frac{\vec{F}}{q_0}$$
> El límite es esencial: la carga de prueba debe ser lo bastante pequeña como
> para no perturbar la distribución que se quiere medir. Unidades: $\mathrm{N/C}$,
> equivalentes a $\mathrm{V/m}$.

Para una carga puntual:

$$\vec{E} = k\,\frac{q}{r^{2}}\,\hat{r}$$

Y por [[Naturaleza de la carga eléctrica#^superposicion|superposición]], para un
conjunto discreto:

$$\vec{E} = k\sum_{i}\frac{q_i}{r_i^{2}}\,\hat{r}_i$$

## Distribuciones continuas

$$\vec{E} = k\int \frac{dq}{r^{2}}\,\hat{r}$$

según la geometría, con $dq = \lambda\,dl$, $dq = \sigma\,dA$ o
$dq = \rho\,dV$.

> [!pendiente] Casos por desarrollar
> - Anillo cargado sobre su eje
> - Disco cargado, y el límite al plano infinito
> - Hilo recto finito, y el límite al hilo infinito
>
> Conviene desarrollar al menos uno completo y dejar los otros como ejercicio,
> porque el paso difícil es siempre el mismo: elegir $dq$ y argumentar qué
> componentes se cancelan por simetría.

## El dipolo eléctrico

$$\vec{p} = q\,\vec{d}, \qquad \vec{\tau} = \vec{p}\times\vec{E},
\qquad U = -\vec{p}\cdot\vec{E}$$

> [!pendiente] Por escribir
> Campo del dipolo sobre el eje y sobre la mediatriz; el decaimiento como
> $1/r^3$ y por qué.

## Líneas de campo

> [!ley] Reglas de construcción ^reglas-lineas
> - Nacen en cargas positivas y mueren en negativas
> - La tangente en cada punto da la dirección de $\vec{E}$
> - La densidad de líneas es proporcional a la magnitud de $\vec{E}$
> - Nunca se cruzan

> [!obstaculo] Concepciones alternativas
> - Las líneas de campo se leen como trayectorias de partículas. No lo son:
>   una carga liberada en reposo sí sigue la línea, pero una con velocidad
>   inicial no
> - El campo se piensa como algo que existe solo donde hay una carga de prueba
> - Se confunde la densidad de líneas dibujadas con un número real de líneas

> [!experimento] 
> %% Simulación PhET de campo eléctrico, o el laboratorio virtual que decidas
> ubicar aquí. %%

> [!historia] 
> %% Faraday y las líneas de fuerza. La resistencia de la tradición
> newtoniana a la acción por contigüidad. %%
