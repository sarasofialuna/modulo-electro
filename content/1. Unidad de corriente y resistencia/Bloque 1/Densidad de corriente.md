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

## Flujo eléctrico

> [!definicion] Flujo eléctrico
> $$\Phi_E = \int_S \vec{E}\cdot d\vec{A}$$
> Mide cuánto campo atraviesa la superficie. El producto escalar hace que solo
> cuente la componente normal.

> [!ley] Ley de Gauss ^ley-gauss
> $$\oint_S \vec{E}\cdot d\vec{A} = \frac{q_{\text{enc}}}{\varepsilon_0}$$
> El flujo neto a través de cualquier superficie cerrada depende únicamente de
> la carga encerrada. Las cargas exteriores contribuyen al campo en cada punto
> de la superficie, pero su flujo neto es nulo.

Forma diferencial, por el teorema de la divergencia:

$$\nabla\cdot\vec{E} = \frac{\rho}{\varepsilon_0}$$

> [!pendiente] Por decidir
> ¿Se incluye la forma diferencial en este módulo, o se deja anunciada como
> puente hacia Electromagnetismo II? Depende del nivel de cálculo vectorial
> que traigan los estudiantes.

## Aplicaciones con simetría

> [!pendiente] Casos por desarrollar
> | Simetría | Superficie gaussiana | Resultado |
> |---|---|---|
> | Esférica | esfera concéntrica | $E = kq/r^2$ |
> | Cilíndrica (hilo infinito) | cilindro coaxial | $E = \lambda/(2\pi\varepsilon_0 r)$ |
> | Plana (plano infinito) | cilindro perpendicular | $E = \sigma/(2\varepsilon_0)$ |
>
> Escribir al menos el caso esférico completo, incluyendo el interior de una
> esfera con carga volumétrica uniforme.

## Conductores en equilibrio electrostático

> [!ley] Propiedades ^conductor-equilibrio
> - El campo en el interior es nulo
> - Toda la carga en exceso reside en la superficie
> - El campo en la superficie es perpendicular a ella, con
>   $E = \sigma/\varepsilon_0$
> - Una cavidad vacía dentro del conductor tiene campo nulo

Esta última propiedad es la jaula de Faraday, y se retoma en
[[Potencial eléctrico y diferencia de potencial]].

> [!obstaculo] Concepciones alternativas
> - "La ley de Gauss solo vale cuando hay simetría." Vale siempre; la simetría
>   solo la vuelve *útil* para despejar $\vec{E}$
> - Se confunde flujo nulo con campo nulo
> - Se cree que las cargas exteriores no afectan el campo sobre la superficie
>   gaussiana

> [!demostracion] 
> %% Si se quiere: deducir Gauss desde Coulomb + superposición para el caso
> puntual, y argumentar la generalización. %%

<span class="qed">∎</span>

> [!pregunta] Para discutir
> %% Ej.: si el flujo neto es cero, ¿puede haber carga dentro? %%
