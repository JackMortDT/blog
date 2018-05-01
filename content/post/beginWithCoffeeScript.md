+++
title = "Comenzando con CoffeeScript"
date = 2018-05-01T02:42:46-05:00
draft = false

# Tags and categories
# For example, use `tags = []` for no tags, or the form `tags = ["A Tag", "Another Tag"]` for one or more tags.
tags = ["CoffeeScript"]
categories = []

# Featured image
# Place your image in the `static/img/` folder and reference its filename below, e.g. `image = "example.jpg"`.
# Use `caption` to display an image caption.
#   Markdown linking is allowed, e.g. `caption = "[Image credit](http://example.org)"`.
# Set `preview` to `false` to disable the thumbnail in listings.
[header]
image = "coffeescript-logo.png"
caption = ""
preview = true

+++

Hace poco tiempo estuve en el desarrollo de un sistema informático en el cual toda la parte del front estaba hecho con CoffeeScript, por lo cual tuve la necesidad de aprender un poco hacerca de este maravilloso lenguaje

CoffeeScript es un transpilador de código, y esto significa, que al momento de compilar, este genera código en javascript.

El código que esta hecho con CoffeeScript es un código el cual luce bastante bien, es un código que es facil de leer, facil de entender y facil de mantener.

### Instalación

CoffeeScript se instala de una manera muy sencilla, lo que tenemos que tener instalado para correrlo en nuestra computadora es lo siguiente:

* node
* npm

```javascript
npm install --general coffeescript
```

### Uso

Una vez instalado coffeescript ya podremos hacer uso de este lenguaje y de sus comandos y shell que tiene para ejecutar nuestros códigos

<script src="https://asciinema.org/a/Y6gJINJfSFpfl9OGjb4LkE4g1.js" id="asciicast-Y6gJINJfSFpfl9OGjb4LkE4g1" data-size="small"></script>

### Compilación

Como se pudo observar al tener coffee instalado ya podremos hacer varias cosas, entre las cuales de las mas importantes serian la compilación de nuestros archivos ***.coffee*** a ***.js***

#### Ejemplo de archivo en .coffee

```javascript
square = (x) -> x * x
cube = (x) -> square(x) * x
```

#### Archivo compilado a .js

```javascript
var cube, square;

  square = function(x) {
    return x * x;
  };

  cube = function(x) {
    return square(x) * x;
  };
```

### Ventajas de usar CoffeeScript

* Nos permite trabajar de una forma mas sencilla 
* Escribir menos código
* Podemos aprender javascript leyendo el código compilado
* Facil de mantener

### Desventajas de CoffeeScript

* Ya no tiene actualizaciones desde hace tiempo lo que hace que ya no sea soportado por varios frameworks