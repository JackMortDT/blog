+++
title = "Primeros pasos con Git"
date = 2018-05-03T17:11:12-05:00
draft = false

# Tags and categories
# For example, use `tags = []` for no tags, or the form `tags = ["A Tag", "Another Tag"]` for one or more tags.
tags = []
categories = []

# Featured image
# Place your image in the `static/img/` folder and reference its filename below, e.g. `image = "example.jpg"`.
# Use `caption` to display an image caption.
#   Markdown linking is allowed, e.g. `caption = "[Image credit](http://example.org)"`.
# Set `preview` to `false` to disable the thumbnail in listings.
[header]
image = "git.png"
caption = ""
preview = true

+++

## Que es Git?

Git es un sistema de control de versiones... pero que es esto?

Es un sistema el cual nos permite guardar información y tener un control de los cambios que se vayan haciendo en uno o varios archivos.

El tener el control de estos archivos permite tener un juego muy importante en la elaboración de proyectos en un equipo ya que al tener el control de la información y de los cambios que va teniendo un proyecto, se puede reciclar información que ya este escrita y permitir tener archivos mas limipios

![Git](/img/control_git.png)

### Entendiendo como trabaja Git

![Git](/img/areas_git.png)

#### Working directory

El working directory o directorio de trabajo es una copia de una versión del proyecto, es donde van ocurriendo todos los cambios o agregaciones de archivos de nuestros archivos en local.


#### Staging Area

Es el área de preparación de un archivo o un grupo de archivos de nuestro directorio, este almacena la información que vamos a ser confirmada.

#### Local repo

Es nuestro conjunto de archivos (comunmente llamada repositorio) en el cual podemos ver nuestras diferentes versiones de nuestros archivos en nuestro local y asi poder prepararlas para subirlas a un repositorio remoto.

#### Remote repo

Es un repositorio que esta por asi decirlo en la nube y que este contiene la información de un proyecto guardado en cierta plataforma

![Git](/img/git_repos.jpg)

Cuando tenemos un proyecto con dos o más personas es aqui en donde entran el juego estas plataformas ya que nos ayudan a colaborar con otras personas sin la necesidad de pasarse los archivos... o ver quien tiene la versión final del proyecto

### Trabajando con Git

Hay comandos basicos con los que podemos ir teniendo nuestro proyecto versionado para poder trabajar con el desde cualquier equipo.

Para poder tener versionado un proyecto con tener ***git*** instalado e iniciandolo en nuestro proyecto es el primer paso

```java
➜  gitExample git init
Initialized empty Git repository in /home/jack/gitExample/.git/
➜  gitExample git:(master)
```

Esto nos genera una carpeta oculta ***.git*** que va a tener lo que necesitamos para trabajar con git... aunque ahorita no nos meteremos mucho en ello.

#### Comando básicos

Al tener nuestro directorio versionado se apareceran ya ciertos cambios cuando creemos archivos, borremos archivos o modifiquemos algunos y con el comando ***git status*** podremos ver ese progreso de los archivos

```java
➜  gitExample git:(master) ✗ git status
On branch master
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

        deleted:    Hola.txt
        modified:   Readme.md

Untracked files:
  (use "git add <file>..." to include in what will be committed)

        git.txt

no changes added to commit (use "git add" and/or "git commit -a")
➜  gitExample git:(master) ✗ 
```

Como se pueden dar cuenta nos muestra estos archivos, podemos proceder a agregarlos al área de preparación con ***git add***.

Se pueden añadir a esta área uno a uno los archivos o todos en conjunto

```java
➜  gitExample git:(master) ✗ git add .
➜  gitExample git:(master) ✗ git status
On branch master
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

        modified:   Readme.md
        renamed:    Hola.txt -> git.txt

➜  gitExample git:(master) ✗ 
```

Al añadir los archivos a esta área se pueden mandar directo a la siguiente con la que seria de las partes más importantes, el "commit", siempre eh oido decir que el commit es lo mas importante y no es para menos ya que lo que hace es pasar a nuestro repo local y preparlo para el remoto.

Va a tener toda nuestra historia y vamos a poder navegar entre los diferentes Hashes que se generan al hacer el commit, regresarnos a cierta versión de un archivo o grupo de archivos.

```java
➜  gitExample git:(master) ✗ git commit -m "Agregando mensaje de hola :D"
[master 4b3e65b] Agregando mensaje de hola :D
 2 files changed, 1 insertion(+)
 rename Hola.txt => git.txt (100%)
➜  gitExample git:(master) git status
On branch master
nothing to commit, working directory clean
➜  gitExample git:(master) 
```

Para poder ver toda esta historia git proporciona de un log, con varios comandos opcionales despues, pero lo que hacen a grandes rasgos es mostrar nuestra historia.

```java
➜  gitExample git:(master) git log

commit 4b3e65b63b4e998f2b7383c2a235cb1ba5fb7fb5
Author: LuisSas <luis@makingdevs.com>
Date:   Mon May 7 21:41:32 2018 -0500

    Agregando mensaje de hola :D

commit 0f2c073c7ea42f0d368f692dfa487c595c1c75b8
Author: LuisSas <luis@makingdevs.com>
Date:   Mon May 7 21:31:58 2018 -0500

    Agregando archivos para ejemplo
(END)
```

#### Conclusión

Git es una herramienta fantastica para el desarrollo de software, se puede ver toda la historia de un desarrollo de software y el cooperar en un proyecto completo.

Considero que es una herramienta dificil de aprender en un inicio pero una vez que empiezas a manejarla es algo hermosa.