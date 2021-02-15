import 'package:articles_app/bloc/article/article_bloc.dart';
import 'package:articles_app/repository/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app.dart';

void main() {
  // enableFlutterDriverExtension();
  final ArticlesRepository repository = ArticlesRepository();

  runApp(BlocProvider(
    create: (context) => ArticleBloc(articlesRepository: repository),
    child: App(),
  ));
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
