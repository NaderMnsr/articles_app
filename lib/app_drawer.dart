import 'dart:ui';

import 'package:articles_app/bloc/article/article_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArticleBloc, ArticleState>(builder: (context, state) {
      return Drawer(
          child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Theme.of(context).accentColor),
            child: new ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              child: new BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
                child: new Container(
                  //width: 200.0,
                  //height: 200.0,
                  decoration: new BoxDecoration(
                      color: Colors.blueGrey.shade200.withOpacity(0.5)),
                  child: new Center(
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Text(
                        "NY Times",
                        style: Theme.of(context).accentTextTheme.headline4,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.article),
            title: Text("Load Last day"),
            onTap: () async {
              context.read<ArticleBloc>().add(ArticlesRequested(period: 1));
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.article),
            title: Text("Load Last 7 days"),
            onTap: () async {
              context.read<ArticleBloc>().add(ArticlesRequested(period: 7));
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            onTap: () async {
              context.read<ArticleBloc>().add(ArticlesRequested(period: 30));
              Navigator.pop(context);
            },
            leading: Icon(Icons.text_fields),
            title: Text("Load Last 30 days"),
          )
        ],
      ));
    });
  }
}
