import 'package:articles_app/repository/repository.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

Future<void> main() async {
  var firstArticletitle;
  var firstArticleByLine;
  FlutterDriver driver;

  var repoArticles = ArticlesRepository().getArticles(7);
  repoArticles.then(
    (value) {
      firstArticletitle = value.first.title;
      firstArticleByLine = value.first.byline;
    },
  );

  group('Article App UI testing', () {
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });
    //dartVmServiceUrl: "ws://127.0.0.1:8079/ws");    });

    tearDownAll(() async {
      if (driver != null) {
        driver.screenshot();
      }
    });
    // test('verify the text on home screen', () async {
    //   SerializableFinder message = find.text(firstArticletitle);
    //   await driver.waitFor(message);
    //   expect(await driver.getText(message), firstArticletitle);
    // });

    test('Navigate to Article Details View', () async {
      final articleCard = find.byValueKey('Article_card_0');
      driver.tap(articleCard);
    });

    // test('Check Article Title in Details View', () async {
    //   SerializableFinder articleDetailByLine = find.text(firstArticleByLine);
    //   await driver.waitFor(articleDetailByLine);

    //   expect(await driver.getText(articleDetailByLine), firstArticleByLine);
    // });

    test('Check Url Floating Button', () async {
      final articleDetailsLink = find.byValueKey('Article_Details_Link');
      driver.tap(articleDetailsLink);
    });
  });
}
