---
title: Análisis de información y resultados
permalink: /docs/analisis-de-informacion-y-resultados/
---

Con estos distintos conjuntos de datos, empezamos a responder ciertas preguntas que teníamos.

### Ley de Pareto en los animes y usuarios.

La primera de estas que pudimos responder era sobre si los usuarios siguen la ley de Pareto, la cual dice que el 80% de los efectos proviene del 20% de las causas.

En nuestro caso, la ley de Pareto diría que el 20% de los usuarios hace el 80% de las calificaciones, o que el 20% de los animes tiene el 80% de las calificaciones.

Simplemente calculando en **users_df** la cantidad de reviews hechas por usuario, tuvimos el siguiente resultado.

![Reviews por usuario](../img/reviews_por_usuario.png/)

Los resultados dicen:
* El 20% de los usuarios tiene 387989 calificaciones, lo cual es un 69.53% del total.
* El 80% de los usuarios tiene 170050 calificaciones, lo cual es un 30.47% del total.

Lo cual a pesar de no ser exactamente 80-20, sí es bastante cercano, especialmente tomando en cuenta que nuestra recolección de información no podía tener más de 1000 animes por usuario.
Por tanto, podemos decir que la ley de Pareto se cumple en este caso.

Podemos probar a hacer lo mismo pero desde la perspectiva de los mismos animes.

![Reviews por anime](../img/reviews_por_anime.png/)

Los resultados dicen:
* El 20% de los animes tiene 479727 calificaciones, lo cual es un 85.97% del total.
* El 80% de los animes tiene 78312 calificaciones, lo cual es un 14.03% del total.

Lo cual a pesar de no ser exactamente 80-20, sí es bastante cercano, especialmente tomando en cuenta que nuestra recolección de información no podía tener más de 1000 animes por usuario.
Por tanto, podemos decir que la ley de Pareto se cumple en este caso.

### Animes de culto

Lo segundo que pudimos hacer fue encontrar los distintos animes de culto, encontramos estadísticamente este conjunto de animes, los cuales tienen la característica de ser antiguos pero populares.

![Animes destacados](../img/animes_destacados.png/)

Estos fueron encontrados con la información dentro de **detalles_anime**.

### Géneros más y menos correlacionados

Primero veamos los más correlacionados.

| Géneros más relacionados | Género 1      | Género 2         | Porcentaje de correlación |
|---------------------------|---------------|------------------|---------------------------|
| 1                         | BL            | Shounen-ai       | 96.9%                     |
| 2                         | GL            | Shoujo-ai        | 96.6%                     |
| 3                         | Earthquake    | Natural Disaster | 93.5%                     |
| 4                         | Running       | Track and Field  | 81.6%                     |
| 5                         | Sentai        | Tokusatsu        | 81.6%                     |
| 6                         | Kingdom Building | Management    | 78.3%                     |
| 7                         | Boarding House | Neighbors        | 76.7%                     |
| 8                         | Art           | Art School       | 76.5%                     |
| 9                         | Adult Couples | Mature Romance   | 74.9%                     |
| 10                        | Flower Shop   | Plants           | 70.7%                     |

Ahora los menos antirrelacionados.

| Géneros menos relacionados | Género 1                | Género 2                  | Porcentaje de correlación |
|-----------------------------|-------------------------|---------------------------|----------------------------|
| 1                           | Based on a Manga        | Original Work              | -32.8%                    |
| 2                           | Based on a Light Novel   | Based on a Manga           | -23.3%                    |
| 3                           | Original Work            | Shounen                   | -19.9%                    |
| 4                           | Action                  | Slice of Life              | -19.7%                    |
| 5                           | Fantasy                 | Sci Fi                    | -18.1%                    |
| 6                           | Action                  | Comedy                    | -17.5%                    |
| 7                           | Based on a Manga        | Based on a Video Game      | -17.0%                    |
| 8                           | Seinen                  | Shounen                   | -16.2%                    |
| 9                           | Action                  | Romance                   | -15.5%                    |
| 10                          | Based on a Manga        | Based on a Visual Novel    | -14.5%                    |

Estos resultados fueron obtenidos con **unified_df**.
