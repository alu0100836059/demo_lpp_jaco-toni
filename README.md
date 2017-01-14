# LPP enero 2016/17

Repositorio dedicado al estudio del examen de Lenguajes y Paradigmas de la Programación.

![imagen1][logo]
[logo]: https://goo.gl/PxfcPP

## Estructura del directorio
* __Complementario%Books__: Espacio dedicado a la parte más teórica así como recursos, examenes de otros años, cuestionarios, etc.
* __Pruebas_Ruby__: Espacio dedicado a pruebas para la práctica de la programación en Ruby.
* __Prácticas__: Espacio dedicado a las prácticas de la asignatura.

## Flujo de trabajo
### La primera vez:
* Clone el repositorio en su máquina:
~~~
git clone git@github.com:alu0100836059/demo_lpp_jaco-toni.git [nombre de la carpeta]
~~~
* Entre en el directorio:
~~~
cd nombre_carpeta
~~~
* Cree una rama con su nombre y cámbiese a ella para comenzar a trabajar:
~~~
git checkout -b nombre_usuario
~~~
* Realice todos los cambios que desee y añada y confirme dichos cambios en su rama
* Una vez acabada la sesión de trabajo sitúese de nuevo en la rama principal del proyecto, en este caso ___master___ y fusione ambas ramas para incorporar su trabajo:
~~~
git branch master
git merge nombre_su_rama
~~~
* Por último empuje todos los cambios realizados para mantener el remoto actualizado:
~~~
git push origin master
~~~

### Flujo habitual:
* Una vez dentro del directorio de trabajo traiga todos los posibles cambios realizados por otros usuarios:
~~~
git pull
~~~
* A continuación y __antes__ de modificar nada, cámbiese a su rama de desarrollo:
~~~
git branch nombre_rama
~~~
* Realice todos los cambios que desee y añada y confirme dichos cambios en su rama
* Una vez acabada la sesión de trabajo sitúese de nuevo en la rama principal del proyecto, en este caso ___master___ y fusione ambas ramas para incorporar su trabajo:
~~~
git branch master
git merge nombre_su_rama
~~~
* Por último empuje todos los cambios realizados para mantener el remoto actualizado:
~~~
git push origin master
~~~


___IMPORTANTE___: Realice dichos pasos en cada sesión de trabajo para mantener tanto su rama remota como la local actualizadas y evitar conflictos.



## Autores
[Toni]()

[Jacobo](https://ull-esit-sytw-1617.github.io/tareas-iniciales-noejaco2017/)
