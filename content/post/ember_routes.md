---
title: Ember Routes
date: 2018-09-24T20:01:26-05:00
lastmod: 2018-09-24T20:01:26-05:00
author: LuisSas
cover: /img/Ember.jpeg
categories: ["Ember"]
tags: ["Ember", "Js"]
draft: true
---

The ember routes is one of the best things we have to make an incredible application in the web.

<!--more-->

When you develop a web application one of the most important parts is the passage from one view to another, either with or without data, of course you can do with a lot of things and you have a los of resources for do that.

Ember has their specially form to pass to one route to another, let's see it with an example.

## Making an example route application
First let's create an application with the cli that Ember has

```
ember new The_route_of_ember
```

This command will create a simple application with all of things we need to do for start to work

```
.
├── README.md
├── app
├── config
├── ember-cli-build.js
├── node_modules
├── package-lock.json
├── package.json
├── public
├── testem.js
├── tests
└── vendor
```

We can start our application with ```ember serve```

We are going to see a welcome-page and our **Hello world** with Ember
![Ember](/img/Ember-welcome-page.png)

... But we are going to see the routes, the main point of this post.

In the app directory Ember has all the magic, like templates, routes, controllers, components, etc. but we will focus on routes and templates.

The next step is create a route, this is very easy with Ember beacuse you only need to run

```
ember generate route person
```

This commandis going to create 3 files in our project

* person.js
* person.hbs
* person-test.js

And this command will modify the route file, this file is going to contain all routes in our project

![Ember](/img/route-file.png)

So we can delete the {{welcome-page}} in the application.hbs file and we can put some like that

---

**application.hbs**

Hello Ember
<br>
{{outlet}}

---

**Note: the {{outlet}} will render the sub routes of our project**

After we have that we can enter to this route in the URL, but we are going to modify the template **person** for better explanation

---

**person.hbs**
```
Person route
```

---

So let's see the magic, when we enter to __localhost:4200__ we can se the application template file

![Ember](/img/Index-ember-route.png)

And when we enter to __localhost:4200/person__

![Ember](/img/Route-person.png)

This is a very basic example of routes using Ember
