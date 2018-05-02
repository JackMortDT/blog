+++
title = "Pruebas unitarias con Spock"
date = 2018-05-01T20:01:09-05:00
draft = false

# Tags and categories
# For example, use `tags = []` for no tags, or the form `tags = ["A Tag", "Another Tag"]` for one or more tags.
tags = ["Groovy", "Spock", "Test"]
categories = []

# Featured image
# Place your image in the `static/img/` folder and reference its filename below, e.g. `image = "example.jpg"`.
# Use `caption` to display an image caption.
#   Markdown linking is allowed, e.g. `caption = "[Image credit](http://example.org)"`.
# Set `preview` to `false` to disable the thumbnail in listings.
[header]
image = ""
caption = ""
preview = true

+++

Spock es un framework de testing para Java y Groovy, hace que los test se escriban de una manera muy facil y clara de leer y saber que van a probar.

Gracias a que sus pruebas que se dividen en bloques estas se ven descriptivas y ayuda que se puedan entender y añadir propias de manera muy sencilla.

 Gracias a que se ocupa Groovy para las pruebas esto hace que el manejo de estructuras de datos, como listas o mapas se puedan escribir con muy poco código.

### Bloques

Gracias al manejo de bloques en spock y que cada uno puede describirse por separado, los test son muy descriptivos en cuanto a que se requiere en cada parte y cuando se ejecuta que

```java
class MathSpec extends Specification{
  def "Sum of two numbers"(){
    given:"the first number"
      Integer number1 = 10
    and:"the second number"
      Integer number2 = 20
    when:"The two numbers add up"
      Integer result = number1 + number2
    then:"The expected result"
      result == 30
  }
}
```

Al ejecutar las pruebas se nos muestra cuantos tests fueron, cuantos pasaron y cuantos fallaron 

```java
JUnit 4 Runner, Tests: 1, Failures: 0, Time: 750
```

### Data Driven Testing

 El framework de spock permite probar un mismo método o estructura varias veces gracias al bloque ***where:***

 ```java
class MathSpec extends Specification{
  def "Max of this two numbers"(){
  	given:"3 numbers"
  	expect:"the max of this two numbers"
  	  [a, b].max() == c
  	where:
  	a | b | c
  	1 | 2 | 2
  	3 | 5 | 5
  	8 | 1 | 8
  	1 | 9 | 1
  }
}
 ```

Gracias a su assert ***==*** se nos muestra que caso es el que fallo y por que...

```java
JUnit 4 Runner, Tests: 1, Failures: 1, Time: 826
Test Failure: Max of two numbers(MathSpec)
Condition not satisfied:

[a, b].max() == c
 |  |  |     |  |
 1  9  9     |  1
             false

        at MathSpec.Max of two numbers(MathSpec.groovy:7)

``` 