import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter 테스트 앱'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.blueGrey),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
        children: [
          Image.network('https://gimg2.baidu.com/image_search/src=http%3A%2F%2Finews.gtimg.com%2Fnewsapp_bt%2F0%2F13231011869%2F641.jpg&refer=http%3A%2F%2Finews.gtimg.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1658109060&t=ef87646fdbcd72b810b4e0e81d2e6725'),
          Container(
            child: Text(
              '中国建造第三艘航母为何突然提速，专家，再不快点可就真来不及',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28
              ),
            ),
            height:60,
            padding:EdgeInsets.fromLTRB(0, 10, 0, 10)
          ),
          Image.network('https://pics2.baidu.com/feed/d01373f082025aaf5e8b75bb32064462024f1a73.jpeg?token=a073ab17000601f78eb08a10012563d0'),
           Container(
            child: Text(
              '中国建造第三艘航母为何突然提速，专家，再不快点可就真来不及',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28
              ),
            ),
            height:60,
            padding:EdgeInsets.fromLTRB(0, 10, 0, 10)
          ),
          Image.network('https://pics7.baidu.com/feed/63d0f703918fa0ecb928c2134792d3e83c6ddbc9.jpeg?token=bd4161ea123011903b09c9cbddf6446a'),
           Container(
            child: Text(
              '中国建造第三艘航母为何突然提速，专家，再不快点可就真来不及',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28
              ),
            ),
            height:60,
            padding:EdgeInsets.fromLTRB(0, 10, 0, 10)
          ),
          Image.network('https://gimg2.baidu.com/image_search/src=http%3A%2F%2Ftimg01.bdimg.com%2Ftimg%3Fpacompress%26imgtype%3D1%26sec%3D1439619614%26autorotate%3D1%26di%3D2675c0c8c62fdbeb1b4c162549338d69%26quality%3D90%26size%3Db870_10000%26src%3Dhttp%3A%2F%2Fpic.rmb.bdstatic.com%2Fb773282ab1d3a34f99df3738f1e2e39f.jpeg&refer=http%3A%2F%2Ftimg01.bdimg.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1658109060&t=423c7df14d0775f78244e1b1b8b33c63'),
           Container(
            child: Text(
              '中国建造第三艘航母为何突然提速，专家，再不快点可就真来不及',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18
              ),
            ),
            height:60,
            padding:EdgeInsets.fromLTRB(0, 10, 0, 10)
          ),
        ],
    );
  }
}
