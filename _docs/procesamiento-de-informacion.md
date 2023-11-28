---
title: Procesamiento de información
permalink: /docs/procesamiento-de-informacion/
---

Una vez recolectada esa información, pasamos a la parte de procesamiento, lo primero que hicimos fue convertirla generalmente a formatos más amigables.

### users_df

Las listas de calificaciones por usuario se convirtieron a la forma de una matriz, llamada `users_df`, con el siguiente formato:

|           | Anime_1 | Anime_2 | ... |
|-----------|---------|---------|-----|
| **User_1**| 1       | 10      | ... |
| **User_2**| 6       | NaN     | ... |
| ...       | ...     | ...     | ... |

Donde cada columna representa un anime y cada fila un usuario, y cada valor es la calificación que el usuario le dio, donde NaN significa que el usuario no lo calificó, y en nuestro caso, también significa que no lo vio completo.

### detalles_anime

Los detalles de los distintos animes se convirtieron a una tabla llamada `detalles_anime`, no es apropiado nombrar a esta una matriz, pues no es estrictamente numérica. Para cada anime, contiene:

| Columna           | Descripción                                                |
|-------------------|------------------------------------------------------------|
| id                | El id del anime                                           |
| title             | El nombre del anime                                       |
| main_picture      | La url hacia su imagen                                    |
| alternative_titles| Nombres alternativos                                      |
| start_date, end_date| Fecha de inicio y de fin de la emisión respectivamente    |
| ...               | (Otras columnas)                                          |

### unified_df

La información de Anime-Planet también se procesó; utilizamos una base de datos externa, la cual enlaza id's de MyAnimeList con las URL de Anime-Planet para poder tener las id's en esta tabla; debido a esta unión entre ambos sitios, esta matriz recibe el nombre de `unified_df`, sus columnas son:

| Columna   | Descripción                                     |
|-----------|-------------------------------------------------|
| Anime     | El nombre del anime                             |
| URL       | La URL hacia ese anime en Anime-Planet          |
| Tags      | Todas los tags que tiene el anime               |
| Alts      | Nombres alternativos para el anime.             |
| id        | La id que lo relaciona con MyAnimeList          |

`unified_df` en cierto punto del proyecto es transformada en una matriz, provocando que sus columnas sean todos los tags de Anime-Planet y sus filas sean todos los animes con los que estamos trabajando en el proyecto. Esta tiene el siguiente formato:

|        | Tag_1 | Tag_2 | ... |
|--------|-------|-------|-----|
| **Anime_1**| 1     | 0     | ... |
| **Anime_2**| 0     | 1     | ... |
| ...    | ...   | ...   | ... |

Donde cada columna representa un género/tag y cada fila un anime con su id de MyAnimeList. Por cada dato tiene un 0 indicando que el anime no tiene ese tag o un 1 indicando que sí lo tiene.

### cluster_df

Como las matrices `users_df` y `unified_df` ahora comparten id's de anime, podemos hacer una multiplicación matricial entre ambas respecto a este dato. Esta nueva matriz, que representa los gustos de anime, se llama `cluster_df`, y es la que será usada para nuestra meta de agrupar usuarios.:

|        | Tag_1 | Tag_2 | ... |
|--------|-------|-------|-----|
| **User_1**| 613   | 7     | ... |
| **User_2**| 18    | 0     | ... |
| ...    | ...   | ...   | ... |

Donde cada columna representa un género/tag y cada fila un usuario. Por cada dato tiene la suma de calificaciones de animes que tenían ese tag. Por ejemplo, el `User_1` ve mucho anime, y da altas calificaciones, y por tanto su puntaje en la `tag_1` es de 613. En cambio, la `tag_2` es menos popular, y como `User_2` no ha calificado mucho anime, su puntaje es de 0. Como queremos agrupar los usuarios por gustos, no queremos que ver mucho anime cambie tu gusto, por tanto, normalizamos esta matriz tal que cada usuario sume 1 en sus gustos, esto se hace dividiendo por la suma de sus gustos; queda entonces algo así:

|        | Tag_1 | Tag_2 | ... |
|--------|-------|-------|-----|
| **User_1**| 0.6   | 0.007 | ... |
| **User_2**| 0.4   | 0     | ... |
| ...    | ...   | ...   | ... |

Donde cada columna representa un género/tag y cada fila un usuario. Por cada dato tiene la suma de calificaciones de animes que tenían ese tag, normalizado para que la suma sea 1.
