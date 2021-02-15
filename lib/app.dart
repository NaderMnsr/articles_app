import 'package:articles_app/bloc/article/article_bloc.dart';
import 'package:articles_app/views/articles/articles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_drawer.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ny times article',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('NY Times Most Popular'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(8),
            ),
          ),
        ),
        drawer: AppDrawer(),
        body: BlocBuilder<ArticleBloc, ArticleState>(
          builder: (context, state) {
            if (state is ArticleInitial)
              context.read<ArticleBloc>().add(ArticlesRequested(period: 7));

            if (state is ArticlesLoadInProgress)
              return Center(
                child: CircularProgressIndicator(),
              );
            else if (state is ArticlesLoadSuccess)
              return ArticlesView(
                  key: Key('key_article_view'), items: state.articles);
            else if (state is ArticleLoadFailed)
              return Center(child: Text("Failed to Load Articles"));
            else
              return Container();
          },
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () => context.read<ArticleBloc>().add(ArticlesRequested()),
        //   tooltip: 'Refresh',
        //   child: Icon(Icons.refresh),
        // ),
      ),
    );
  }
}
