Treating outliers
====

### Introduction
Outliers are the extreme values that a variable has, depending on the model or requirement, it could be necessary to treat them, either transforming or deleting.

### Variable "Income" distribution
<img src="http://datascienceheroes.com/img/blog/01_income_distribution.b30149c7.jpg" alt="01_income_distribution" style="width: 400px;" align="middle"/>

This is going to be our main variable in this example, which represents customer's income in $. We can observe how there are a few cases with very high values, while on the other hand, there are lots of cases with low/mid values.


#### If we choose to delete them...
A common question is: "How many cases do we have to leave out?", we can choose to leave out highest 1%, so we will obtain:

<img src="http://datascienceheroes.com/img/blog/02_income_p99.1d26e408.jpg" alt="02_income_p99.JPG" style="width: 400px;" align="middle"/>

Now the distribution looks very similar to last one, except now it reaches $300.000 instead of $500.000.

If we do this process **iteratively** -deleting highest 1%, and then to that result, we delete again highest 1%, and so on, repeating this process 10 times- we're analyzing different cut-off values in order to leave out extreme values. We obtain a curious result,  **silhouette remains always similar to**:


<img src="http://datascienceheroes.com/img/blog/03_density_simple.bc9e6e03.jpg" alt="03_density_simple.JPG" style="width: 400px;" align="middle"/>


</br>
</br>

#### Animating the example
The following animation shows in action this iterative deleting process:
As we leave out the highest 1%, silhouette keeps a similar aspect to:

<img src="http://datascienceheroes.com/img/blog/04_fractal_outliers.c48da37f.gif" alt="04_fractal_outliers.gif" style="width: 400px;" align="middle"/>

In other words, there are _always_ lots of people with low/mid income, and just a few number of cases with high income -because of distribution nature-.
Axis values change within each iteration.
</br>

If we change the histogram plot, by a **density** one, the result is more similar to _zoom_ on the data left side:

<img src="http://datascienceheroes.com/img/blog/05_fractal_outliers_density.aeb6bb0f.gif" alt="05_fractal_outliers_density.gif" style="width: 400px;" align="middle"/>

_**When we delete the lowest or highest values of any variable, what we are doing is a "zoom" to the area where most cases are.**_

</br>
</br>

#### Final thoughts
In this particular case, we could choose to leave out highest 0.5 or 1% of data. However it is not always recommended to delete all outliers, sometimes they represent valuable information such as fraud or a machine failure, or any other event which deserves further inspection.

</br>

#### Contact
_Made by Pablo C. from Data Science Heroes._

R code and data available on [github](https://github.com/pablo14/outliers_treatment)

Outliers issues and data treatment are topics of the **e-learning course: [Data Science with R](http://datascienceheroes.com/learning.html)** (request free demo at info@datascienceheroes.com)
