import 'package:articles_app/repository/models/article.dart';
import 'package:articles_app/views/article_details/article_details.dart';
import 'package:flutter/material.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({
    Key key,
    @required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Theme.of(context).cardColor, width: 0),
          borderRadius: BorderRadius.all(Radius.circular(16))),
      margin: EdgeInsets.all(8),
      elevation: 8,
      child: ListTile(
        contentPadding: EdgeInsets.all(8),
        leading: ArticleThumbnail(article: article),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.arrow_forward_ios_outlined),
          ],
        ),
        title: Text(article.title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(article.byline),
            SizedBox(
                height: 24,
                child: Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(article.source),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.calendar_today_outlined,
                            size: 16,
                          ),
                          Text(article.publishedDate),
                        ],
                      ),
                    ],
                  ),
                )),
          ],
        ),
        isThreeLine: true,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ArticleDetails(
                    article: article,
                  )));
        },
      ),
    );
  }
}

class ArticleThumbnail extends StatelessWidget {
  const ArticleThumbnail({
    Key key,
    @required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    var url = (article.media.length <= 0)
        ? null
        : article.media.elementAt(0).metadataItems.elementAt(0).url;
    return Container(
        height: double.infinity,
        child: url == null
            ? CircleAvatar(
                radius: 25.0,
                backgroundColor: Colors.black,
              )
            : CircleAvatar(radius: 25.0, backgroundImage: NetworkImage(url)));
  }
}
