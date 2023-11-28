---
title: Retroalimentación, retrospectiva, problemáticas, y posibles extensiones.
permalink: /docs/retroalimentacion/
---
## Problemas con nuestras bases de datos.

Uno de los problemas que encontramos fue el tiempo que se tarda en obtener la información de los distintos sitios, tardándose aproximadamente 100 horas con todas las requests que fueron necesarias, siendo unas 60000 como mínimo, tomando en cuenta usuarios, animes, y tags. Otro problema con los datos es la baja escalabilidad, pues si se tarda tanto en obtener los usuarios, entonces hacer un millón de usuarios sería complicado, además hay que tener en cuenta que una vez pase cierto tiempo la información será desactualizada, pues los usuarios habrán visto nuevos anime.

Otro problema, esta vez en el ámbito moral, es la invasión de privacidad que se estaría haciendo hacia los usuarios de MyAnimeList. En general, esta es una temática constante cuando uno piensa en temas como la publicidad o los algoritmos de recomendación, pues estos utilizan tu información personal para poder darte recomendaciones personalizadas, y a algunos no les parece correcto que información privada sea usada de esta manera. Sin embargo, con MyAnimeList no hay problema, pues los usuarios pueden hacer sus listas privadas, esas listas no son accesibles usando webscraping, y por tanto este problema sería poco relevante.

Por otro lado, un problema moral que sí es relevante es el uso de la información de Anime-Planet, pues este sitio tiene un sistema agresivo para evitar el uso de Web-Scraping dentro de sus páginas. Este sistema si te detecta como usuario automático, un robot, en el mejor de los casos te dice que tienes prohibido acceder a la información, y en el peor de los casos, te prohiben acceder más a la página. Debido a eso, tuvimos que pretender que somos un usuario normal y no un robot, lo cual podría entrar en problemáticas al nivel legal si fuera a mayores, incluso podríamos prohibir el acceso de todo Chile a la página, a pesar de que no se llegó a tal punto.

## Problemas con nuestro análisis.

Es posible que nuestro análisis tenga ciertos errores, uno de ellos es el uso de multiplicación matricial en la creación de **cluster_df**. No exactamente debido a que sea malo multiplicar matrices, sino porque quizás no fue necesario con lo que hicimos al final. Es verdad que pudimos encontrar las tags asociadas a cada uno de los grupos, en cambio, mostrar los animes de estos grupos llama más la atención que un montón de géneros que hay que leer.

En cambio, podríamos haber hecho PCA directamente con las ratings de usuarios y luego haber hecho agrupamiento, para tener directamente los animes más populares entre cada grupo.

Otro problema es la impredecibilidad y dificultad en el agrupamiento de usuarios, principalmente debido a que los algoritmos de agrupamiento no siempre dan el mismo resultado, y más encima, se vuelve difícil encontrar un algoritmo apropiado. Usamos KMeans con 7 dimensiones y 20 grupos, pero por ejemplo, KernelPCA, un algoritmo similar pero que es mejor para información no lineal, haya dado mejores resultados. Debido a esto, el agrupamiento es quizás la parte más débil de nuestro proyecto.

Sin embargo, a pesar de ser débil, sus resultados más importantes siguen siendo relevantes, pues de todas maneras encontramos ciertos grupos significativamente distintos, por ejemplo, hay grupos que prefieren más romance, otros más la acción, pero también hay algunos muy específicos, uno de ellos es el grupo 7, el de fans del Spokon, un género muy cercano al baloncesto, o por ejemplo, el grupo 15, fans de las Mechas, un género de anime que involucra robots gigantes que son pilotados por los protagonistas.

## Posibles extensiones.

Junto con la información de calificaciones de usuarios a animes que completaron, también tenemos información sobre lo que planean ver en el futuro. Esta información puede ser útil si se quisiera hacer un algoritmo de recomendación, pues este podría entrenarse con lo que los mismos usuarios desean ver en el futuro.

Encontrar un mejor modelo para el clustering, para lograr obtener grupos más significativos, y reducir los errores en las distintas métricas.
