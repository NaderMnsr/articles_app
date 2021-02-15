import 'dart:ui';

import 'package:articles_app/repository/models/article.dart';
import 'package:articles_app/views/article_details/article_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticleDetails extends StatelessWidget {
  final Article article;

  const ArticleDetails({Key key, this.article}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          article.title,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(8),
          ),
        ),
      ),
      body: Column(
        children: [
          ArticleImage(article: article),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              article.title,
              style: Theme.of(context).textTheme.headline4,
              key: Key('Article_Detail_title'),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              article.abstractText,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Spacer(),
          Container(
            child: Text(article.byline),
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(8.0),
          ),
          Spacer()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        key: Key('Article_Details_Link'),
        child: Icon(Icons.link_outlined),
        onPressed: () => launch(article.url),
      ),
    );
  }
}
