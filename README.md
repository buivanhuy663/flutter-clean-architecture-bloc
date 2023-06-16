# FLUTTER CLEAN ARCHITECTURE BLOC BOILERPLATE


## Table of Contents

1. [Environment](#environment)
2. [Architecture of boilerplate](#architecture-of-boilerplate)
3. [Folder structure](#folder-structure)
4. [Create new page (template)](#reate-new-page)

## <a name="environment">#</a> ⛩ Environment

| Programming language | version |
| -------------------- | ------- |
| Dart                 | 3.0.5   |

| Framework | version                 |
| --------- | ------------------------|
| Flutter   | 3.10.5 (stable release) |


## <a name="architecture-of-boilerplate">#</a> 🙌 Architecture of boilerplate

#### Boilerplate using Clean Architecture

- Advantages of using this architecture
  - Easier to modify
  - Easier to test
  - Easier to detect bugs & errors
- There are three main categories in a clean architecture structure;
  - Data ⇨ Local and / or Remote(API) data sources
  - Domain ⇨ business logic(use cases) and business objects(entities) to modify or shape the data source
  - Presentation ⇨ How modified data source is shown to user

<br/>

## <a name="folder-structure">#</a> 🚪 Folder Structure

Here is the core folder structure which flutter provides.

```
flutter-app/
|- android
|- build
|- ios
|- lib
```

Here is the folder structure we have been using in this project

```
lib/
  |- data
  |- domain
  |- injection
  |- presentation
  |- utilities
  |- main.dart
```

Now, lets dive into the lib folder which has the main code for the application.

```
1- data - Local and / or Remote(API) data sources.
2- domain - Business logic(use cases) and business objects(entities) to modify or shape the data source.
3- injection - Initialize the GetIt object and the dependency injection module.
4- presentation - How modified data source is shown to user.
5- utilities - Folders manage constants, helpers, extensions,...
6- main.dart - File to run app
```


## <a name="reate-new-page">#</a> 🚪 Create new page (template)

A newly created page will include the following files and directory structure

``` dart
📁<$NAME> // folder name of page
|  📁 bloc
|      🎯 <$NAME>_module.dart 
|      🎯 <$NAME>_presenter.dart 
|      🎯 <$NAME>_state.dart 
|  📁 components //Contains the child ui elements of the page
|      🎯 child_1.dart 
|      🎯 child_2.dart 
|      🎯 ...
|  🎯 <$NAME>_page.dart
```
