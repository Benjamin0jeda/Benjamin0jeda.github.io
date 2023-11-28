---
title: Clustering de Usuarios
permalink: /docs/clustering-usuarios/
---

Finalmente, llegamos a la parte principal del proyecto, el clustering de usuarios.

Para esto, usamos la matriz **cluster_df**, la cual contiene los gustos de los usuarios.

Los resultados no son tan conclusivos, pero fuimos capaces de concluir que no solo las comunidades de animes tienen distintos gustos, si no que también difieren en cantidad de usuarios y su nivel de consumo de anime.

Para poder hacer esto, tuvimos que hacer una reducción de dimensionalidad junto con un algoritmo de clustering; en este caso usamos PCA y KMeans respectivamente.

![Codo PCA](../img/codo_pca.png)
















![Codo KMeans](../img/codo_kmeans.png)

Por el método del codo pudimos concluir que lo óptimo fue usar 7 componentes principales y aproximadamente 20 grupos; aunque en retrospectiva un poco menos pudo haber sido un poco más eficiente.

A pesar de usar 7 componentes principales, lo cual implicaría 7 dimensiones para poder visualizar, por la naturaleza del Principal Component Analysis, los primeros componentes son también los más significantes; por lo cual, fuimos capaces de graficar los 20 grupos en un gráfico 3D de todas formas.

Los gráficos van de esta forma:

- Pueden verse los distintos grupos unidos por líneas, que los llevan a distintos animes.
- Están categorizados numéricamente, pues algunos colores son difíciles de distinguir, sea por ejemplo el 5, 6, 7, 8, 9.
- Cada grupo tiene su propia breve descripción, separados por las siguientes 3 macro-categorias.
  - Casual: Grupo que en promedio ha visto de 0 a 10 animes.
  - Estándar: Grupo que en promedio ha visto de 10 a 50 animes.
  - Acérrimo: Grupo que en promedio ve más de 50 animes.
- Debido a que algunos grupos cubren por encima otros, cada iteración o nivel aumenta la transparencia de los grupos ya vistos.

Nótese que las imágenes tienen tal resolución que si se abren en una pestaña nueva, se podrá hacer suficiente zoom como para poder ver los nombres de los distintos animes de cada grupo.
















#### Nivel 1
![PCA Nivel 1](../img/PCA Nivel 1.png)


















#### Nivel 2
![PCA Nivel 2](../img/PCA Nivel 2.png)












#### Nivel 3
![PCA Nivel 3](../img/PCA Nivel 3.png)












#### Nivel 4
![PCA Nivel 4](../img/PCA Nivel 4.png)












También podemos ver cuánto anime ven en distintas métricas los distintos grupos, con unos boxplot.
![Boxplot Grupos](../img/boxplot_grupos.png)














Y por otra parte, podemos ver cuántos usuarios tiene cada grupo.
![Barplot Grupos](../img/barplot_grupos.png)












Finalmente, tenemos una tabla con los géneros más populares de cada grupo.

| Grupo | Géneros más populares en orden |
|-------|--------------------------------|
| 0     | Action, Shounen, Fantasy, Explicit Violence, Mature Themes, Drama, Horror, Dark Fantasy, Military, Overpowered Main Characters |
| 1     | Comedy, Romance, School Life, Drama, Shounen, Fantasy, Action, Seinen, Slice of Life, Shoujo |
| 2     | Drama, Action, Fantasy, Mature Themes, Shounen, Comedy, School Life, Romance, Supernatural, Violence |
| 3     | Drama, Romance, School Life, Comedy, Supernatural, Seinen, School Club, Coming of Age, Opposites Attract, Body Swapping |
| 4     | Action, Shounen, Comedy, Drama, Violence, School Life, Superpowers, Supernatural, Sci Fi, Swordplay |
| 5     | Action, Shounen, Violence, Fantasy, Drama, Adventure, Mature Themes, Conspiracy, Mystery, Siblings |
| 6     | Action, Shounen, Ninja, Drama, Revenge, Japanese Mythology, Orphans, Rivalries, Hand to Hand Combat, Fantasy |
| 7     | Shounen, Sports, School Club, Tournaments, School Life, Volleyball, Animeism, Basketball, Comedy, Soccer |
| 8     | Comedy, School Life, Shounen, Romance, Slice of Life, Seinen, Romantic Comedy, Based on a 4-Koma Manga, School Club, Ecchi |
| 9     | Shounen, Action, Drama, Comedy, School Life, Supernatural, Mature Themes, Violence, Fantasy, Explicit Violence |
| 10    | Psychological, Mature Themes, Sci Fi, Violence, Conspiracy, Thriller, Suicide, Drama, Action, Supernatural |
| 11    | Action, Fantasy, Shounen, Comedy, Drama, Adventure, Violence, School Life, Sci Fi, Supernatural |
| 12    | Comedy, Action, School Life, Shounen, Drama, Romance, Fantasy, Supernatural, Violence, Sci Fi |
| 13    | Action, Shounen, Supernatural, Violence, Fantasy, Superpowers, Adventure, Drama, Comedy, Martial Arts |
| 14    | Supernatural, Shounen, Psychological, Mystery, Overpowered Main Characters, Rivalries, Contemporary Fantasy, Mind Games, Urban Fantasy, Thriller |
| 15    | Action, Sci Fi, Drama, Violence, Mecha, Superpowers, Comedy, Mature Themes, Post-apocalyptic, Nudity |
| 16    | Action, Fantasy, Shounen, Explicit Violence, Dark Fantasy, Horror, Military, Outside World, Cannibalism, Isolated Society |
| 17    | Drama, Romance, School Life, Shounen, Mature Themes, Action, Supernatural, Comedy, Violence, Melancholy |
| 18    | Action, Shounen, Violence, Drama, Mature Themes, Fantasy, Sci Fi, Supernatural, Adventure, Explicit Violence |
| 19    | Fantasy, Action, Magic, Adventure, Comedy, Person in a Strange World, Shounen, Isekai, Overpowered Main Characters, Violence |
