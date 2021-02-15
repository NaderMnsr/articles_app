import 'dart:ui';

import 'package:articles_app/repository/models/article.dart';
import 'package:flutter/material.dart';

class ArticleImage extends StatelessWidget {
  const ArticleImage({
    Key key,
    @required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 80, left: 8, right: 8),
      child: Stack(children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(8.0),
              bottomLeft: Radius.circular(8.0)),
          child: Image.network(
            (article.media.length > 0)
                ? article.media[0].metadataItems[2].url
                : "",
          ),
        ),
        Positioned(
          bottom: 8,
          right: 8,
          child: Stack(
            children: [
              new Center(
                child: new ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  child: new BackdropFilter(
                    filter: new ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
                    child: new Container(
                      //width: 200.0,
                      //height: 200.0,
                      decoration: new BoxDecoration(
                          color: Colors.grey.shade200.withOpacity(0.1)),
                      child: new Center(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            article.publishedDate,
                            style: Theme.of(context).accentTextTheme.subtitle2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
