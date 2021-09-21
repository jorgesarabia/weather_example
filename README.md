# weather_example  :blue_heart: 

This is a [Flutter](https://flutter.dev/) sample application of how to use the [AccuWeather](https://www.accuweather.com/) API. 


## How to install this project
After cloning the project, rename the weather_info_example.dart file as `weather_info.dart` and add your AccuWeather api_key there. Then run:

```
cd <path_to_this_project>
flutter pub get
flutter run
```

# How to use it
The application requires that you store a city locally. When you first enter the app, you will be directed to a section where you can search for a city. Once you select a city, (either as your default city or not), the home screen is displayed with the details of the current weather conditions of that city.


### What if I don't select a default city
If you select a list of cities but did not select any as your default city, the application takes the first city in the list to display the weather detail on the home page.

### 12 hours in cache
Once the weather conditions of a city are obtained, it is saved into the database and can be automatically refreshed after 12 hours. If you want to refresh the data before that period, you can do it by pressing the sync icon.


# Technical aspects
In this project, the DDD architecture was implemented and the BLoC pattern was used for state management. 

### Packages
Package | What it solves
------------ | -------------
[sqflite](https://pub.dev/packages/sqflite) | This is a plugin to use SQLite in Flutter. I implement this to store the selected cities and their weather conditions.
[flutter_bloc](https://pub.dev/packages/flutter_bloc) | A collection of Widgets that make it easy to integrate blocs and cubits into Flutter
[freezed](https://pub.dev/packages/freezed) | A code generator for unions/pattern-matching/copy. It helps to reduce boilerplate
[get_it](https://pub.dev/packages/get_it) | A simple service locator. It helps to reduce boilerplate and it is used also to manage the DI
[injectable](https://pub.dev/packages/injectable) | A code generator that can be used in conjunction with get_it
[path](https://pub.dev/packages/path) | A path manipulation library for Dart. 
[http](https://pub.dev/packages/http) | This package contains a set of high-level functions and classes that make it easy to consume HTTP resources. 
[dartz](https://pub.dev/packages/dartz) | Functional programming in Dart. The `Either` and `Option` classes are very useful when you use them with server calls
[intl](https://pub.dev/packages/intl) | I used this package to take advantages of it date and number formatting and parsing.

### Technical debts
This was a weekend project so there are some features that I was unable to add and it has some technical debts. I name some of them below

 ...  | Name | Detail
------ | ------ | ------ 
:x: | Testing | No tests were done. It is advisable to do it!
:x: | Theme | I did not add a `ThemeData` to the application
:x: | Cities | I did not add the feature to delete a city or to change the default city selected one of your local list
:x: | Geolocation | It will be grat to have that feature. In the past I use the [location](https://pub.dev/packages/location) package

# Screenshots

I have taken as inspiration the design of [Jayesh Borda](https://www.uplabs.com/posts/weather-app-ui-concept-b899e319-7180-4747-ad0f-63b7920f9f98)

<img src="https://user-images.githubusercontent.com/6399992/134124065-61e38e0e-5ad4-48e4-ba9e-bc411d085987.png" width="250"> <img src="https://user-images.githubusercontent.com/6399992/134124513-af2031a5-7569-466c-98f4-ad695355b420.png" width="250"> <img src="https://user-images.githubusercontent.com/6399992/134124516-701756ba-a4d1-43b3-9e15-cc71f70c3408.png" width="250"> <img src="https://user-images.githubusercontent.com/6399992/134124748-9cfdeb51-2e12-4202-b884-3e6e79e4b562.png" width="250"> <img src="https://user-images.githubusercontent.com/6399992/134124740-1129fd59-e670-426e-88b4-0d24b7bc4582.png" width="250"> <img src="https://user-images.githubusercontent.com/6399992/134124755-bb6cdf2f-e083-42ba-8248-958f33cda06c.png" width="250"> <img src="https://user-images.githubusercontent.com/6399992/134124762-a395ffc8-8001-4b2f-9b65-26232d33010c.png" width="250">


