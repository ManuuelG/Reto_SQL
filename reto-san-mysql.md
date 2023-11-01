# RETO SAN MYSQL

1. INSTALA EL SGBD MYSQL Y EL CLIENTE WORKBRENCH
2. CADA EJERCICIO DE CADA ITERACIÓN TIENE UN VIDEO QUE HAY QUE VER ANTES O DURANTE SE VA RESOLVIENDO.

## ITERATION 1 - MODELADO

### EJERCICIO 1 - MODELO ER

**VIDEO LESSION**: https://drive.google.com/file/d/1frRZgEE5LAZLNqUKzVSt5rTtSRRKADHk/view

**ENTREGABLE**: Imagen con modelo ER.

##### DESCRIPCIÓN DEL PROBLEMA

###### Spotify

Vamos a tratar de hacer un modelo sencillo de cómo sería la base de datos necesaria para Spotify.

- Existen dos tipos de usuarios: usuario *free* y usuario *premium*.
- De cada usuario guardamos un id único, *email*, *password*, nombre de usuario, fecha de nacimiento, sexo, país, código postal.
- Los usuarios *premium* realizan suscripciones. Los datos necesarios que habrá que guardar para cada suscripción son: fecha de inicio de la suscripción, fecha de renovación del servicio.
- Una suscripción tiene muchos pagos asociados. De cada pago se almacena un identificador, una fecha, una cantidad y una forma de pago, que puede ser mediante tarjeta de crédito o PayPal.
- De las tarjetas de crédito guardamos el número de tarjeta, mes y año de caducidad y el código de seguridad. De los usuarios que pagan con PayPal guardamos el nombre de usuario de PayPal.
- Un usuario puede crear muchas *playlists*. De cada *playlist* guardamos un título, el número de canciones que contiene, un identificador único y una fecha de creación.
- Cuando un usuario borra una *playlist* no se borra del sistema, sino que se marca como que ha sido eliminada. De este modo el usuario puede volver a recuperar sus *playlists* en caso de que las haya eliminado por error. Es necesario almacenar la fecha en la que una *playlist* ha sido marcada como eliminada.
- Podemos decir que existen dos tipos de *playlists*: activas y borradas.
- Una *playlist* que está activa puede ser compartida con otros usuarios, esto quiere decir que otros usuarios pueden añadir canciones en ella. En una lista compartida nos interesa saber qué usuario ha sido el que ha añadido cada canción y en qué fecha lo hizo.
- Una canción sólo puede pertenecer a un único álbum. Un álbum puede contener muchas canciones. Un álbum ha sido publicado por un único artista. Un artista puede haber publicado muchos álbumes.
- De cada canción guardamos un id único, un título, una duración y el número de veces que ha sido reproducida por los usuarios de Spotify.
- De cada álbum guardamos un id único, título, año de publicación y una imagen con la portada.
- De cada artista guardamos un id único, nombre y una imagen del artista.
- Un usuario puede seguir a muchos artistas.
- Un artista puede estar relacionado con otros artistas que hagan música parecida. De modo que Spotify pueda mostrarnos un listado de artistas relacionados con los artistas que nos gustan.
- También nos interesa guardar cuáles son los álbumes y las canciones favoritas de un usuario. Un usuario puede seleccionar muchos álbumes y muchas canciones como favoritas.

### EJERCICIO 2 - DDL

**VIDEO** **LESSON** : https://drive.google.com/file/d/13KFChigU8hR6MsMx6F2oWSYuhaVRGUZR/view

**ENTREGABLE**: ARCHIVO .sql con las queries SQL DDL que generan la base de datos y sus tablas para el modelo ER del ejericico 1.

###### DOC & GUIDES

https://www.mysqltutorial.org/mysql-basics/

- SECTION 9 - 10 - 11 - 12

## ITERATION 2 SQL

## ITERACIÓN 3 DRIVER
