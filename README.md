# articles_app  
Articles Application
This repository consists of a flutter project built to fetch NY Times most viewed articles using available api.
The project contains three main parts **lib** and **test** folders in addition to the pubsec.yaml file.
 
In my code I have used the **BLoC**(Business Logic Component) arhitecture pattern for state management. I have used the [flutter_bloc](https://github.com/felangel/bloc/tree/master/packages/flutter_bloc) package. This package is a predictable state management library that helps implement the BLoC design pattern.

In addition, I have used [retrofit](https://pub.dev/packages/retrofit) type conversion package that uses the [dio](https://pub.dev/packages/dio) http client package, which helped me to connect and consume the nytime api responses.

## Running the code
Supoposing that you have already configured your flutter environment correctly. Open your opreffered CLI environment, navigate to your project directory then type the following (make sure that your have a configured AVD): 
> flutter run


## Running tests
In order to build unit tests flutter_test package used in addition to [bloc_test](https://pub.dev/packages/bloc_test) package. The test folder consists of bloc_test and test_driver folders.
#### 📁 bloc_test 
contains the test sample used to test the BloC functionality.
#### 📁 test_driver
this folder contains two files that helps in excuting Integration test using flutter_driver package.

In order to run the Integration test use the following command:
> flutter drive --target=test_driver/main.dart 
## Code coverage:
Code Coverage can be generated using the following command:
> flutter test --coverage
A folder named **coverage** will be created on the project folder.

## Code Structure
Under the lib folder, you will find the following items:
#### 📁 api
In this folder you will find the endpoint that the application uses in order to fetch the data from the api, usin retrofit generated class.
#### 📁 bloc/article
BloC architecture is implemeted for the ArticlesView, here you will find three files that consists of the different BLoC pattern (State, Event, BloC).
#### 📁 repository
In the repository folder, you will find all the models used in the application together with the retrofit generated files. In addition you will find the application repository class.
#### 📁 views
The application contains tw views, ArticlesView found at views/articles/article.dart, and the details view found at views/article_details/articel_details.dart,Beside each view you will find using widgets(article_card.dart and article_image.dart widgets).

In addition you will find the main.dart which is the entry point(main()) of the application, and the app.dart.
