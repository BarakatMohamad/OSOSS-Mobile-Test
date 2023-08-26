# ososs_test

OSOSS Test project.

## Getting Started
Since the application is simple, I decided to use state management GetX because it is faster to write the
code than the rest of the controllers,
and I used the controller because it provides greater control over the application.
 dartz to fetch the PokemonsData and the shared preferences library to store anything I want in it and
the code is divided into 5 sections
1- bindings: to be used with the GetxController
2- Controller: All GetX controllers are included in the application
3- core: contains all the codes that are used in more than one place in the application, such as images,
colors, etc.
4- data: it includes models and getData requests, and here there is only one request, which is
getPokemonsData
5- view: It contains all the screens and widgets used within the screens
Note: When fetching pokemons data, I noticed that there is a pagination,
where the request only brings 20 elements inside the figma file,
which does not exist, but I did it,
as when I go down to the last page,
it does the pagination and brings 20 other elements,
and so on until the completion of the elements stops.
