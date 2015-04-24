Lidiando con outliers
====

### Introducción
Los outliers son los valores extremos que tiene una variable, dependiendo del modelo o requerimiento, puede ser necesario tratarlos ya sea transformando o eliminandolos. 

### Distribución variable "Income"
<img src="http://datascienceheroes.com/img/blog/01_income_distribution.b30149c7.jpg" alt="01_income_distribution" style="width: 400px;" align="middle"/>

Ésta será la variable ejemplo, la cual representa los ingresos en $ de clientes de una empresa. Observamos como hay pocos casos con valores altos, y muchos con valores bajos.

</br>
</br>

#### Si elegimos eliminarlos...
Una pregunta común es *¿cuántos casos excluir?* podemos elegir dejar afuera el 1% de los valores mas altos, con lo cual tendríamos:

<img src="http://datascienceheroes.com/img/blog/02_income_p99.1d26e408.jpg" alt="02_income_p99.JPG" style="width: 400px;" align="middle"/>

La distribución se ve muy similar, ahora llega hasta 300.000 en vez de 500.000.

Si hacemos este proceso **iterativamente** -sacando el 1% mas grande, y a ese resultado se le vuelve a sacar el 1%, y asi sucesivamente por un total de 10 veces- estaremos analizando distintos valores del punto de corte. Sucede algo curioso con el resultado, **la silutea se mantiene siempre parecida** a:

<img src="http://datascienceheroes.com/img/blog/03_density_simple.bc9e6e03.jpg" alt="03_density_simple.JPG" style="width: 400px;" align="middle"/>


</br>
</br>

#### Animando el ejemplo
La siguente  animación muestra en acción el proceso iterativo de eliminación: como a medida que se va dejando afuera el 1% mas grande, la silueta mantiene un aspecto similar: 

<img src="http://datascienceheroes.com/img/blog/04_fractal_outliers.c48da37f.gif" alt="04_fractal_outliers.gif" alt="04_fractal_outliers.gif" style="width: 400px;" align="middle"/>

Es decir, siempre habran muchas personas con ingresos bajos/medios, y pocos con ingresos altos. Lo que naturalmente cambian, son los valores de los ejes. 

</br>

Si cambiamos el gráfico histograma por uno de **densidad**, el efecto que aparece es mas parecido a un _zoom_ hacia la parte izquierda de los datos:

<img src="http://datascienceheroes.com/img/blog/05_fractal_outliers_density.aeb6bb0f.gif" alt="05_fractal_outliers_density.gif" alt="05_fractal_outliers_density.gif" style="width: 400px;" align="middle"/>

_**Cuando se eliminan los valores mas bajos, o mas altos de una variable, lo que se consigue es hacer un acercamiento -ó "zoom"- hacia donde se encuentra la mayor cantidad de casos.**_

</br>
</br>

#### Reflexión final
En este caso en particular se podría  dejar afuera el 0.5 o 1% de los datos. Aunque no siempre es recomendable eliminar outliers, a veces pueden representar fraudes, un desperfecto en una máquina, u otro evento que merece una inspección mayor.

</br>

#### Contacto
_Hecho por Pablo C. de Data Science Heroes._

Código en R y datos disponible en [github](https://github.com/pablo14/outliers_treatment)

Temas de outliers y tratamiento de datos se ven en el **curso e-learning: [Data Science with R](http://datascienceheroes.com/learning.html)** (solicitar demo gratuita en info@datascienceheroes.com)
