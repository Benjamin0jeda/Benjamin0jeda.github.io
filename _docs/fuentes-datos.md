---
title: Fuente de Datos
permalink: /docs/fuentes-datos/
---

La mayoría de las fuentes de datos provienen de simples operaciones de Web-Scraping en [MyAnimeList](https://myanimelist.net/) y [Anime-Planet](https://www.anime-planet.com/). Sin embargo, también se utilizó la [API de MyAnimeList](https://myanimelist.net/apiconfig/references/api/v2), que requiere un token. Una vez que el repositorio sea público, el token ya no será accesible, por lo que si se desea replicar el proyecto, se deberá crear un token propio.

Adicionalmente, para relacionar las bases de datos de Anime-Planet con MyAnimeList, se utilizó una base de datos externa que vincula las ID de MyAnimeList con las URL de Anime-Planet. Esta base de datos se llama *Anime Offline Database*.

- [Anime Offline Database](https://github.com/manami-project/anime-offline-database)
