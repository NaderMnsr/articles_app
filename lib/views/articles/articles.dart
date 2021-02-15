import 'package:articles_app/repository/models/article.dart';
import 'package:articles_app/views/articles/article_card.dart';
import 'package:flutter/material.dart';

class ArticlesView extends StatelessWidget {
  final List<Article> items;

  const ArticlesView({Key key, this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (items == null)
        ? Container() //CircularProgressIndicator()
        : Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height - 80,
                child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (builder, index) => ArticleCard(
                        key: Key('Articel_card_$index'),
                        article: items.elementAt(index))),
              )
            ],
          );
  }
}
