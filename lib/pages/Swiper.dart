import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  SwiperPage({Key? key}) : super(key: key);

  @override
  State<SwiperPage> createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  List<Map> imageList = [
    {
      "url":
          "https://search.pstatic.net/common/?src=http%3A%2F%2Fcafefiles.naver.net%2FMjAxNzA0MTlfMTMz%2FMDAxNDkyNTg1MzE4ODAx.1V3mfO8F3aAxRyHNZecYGbtGqVlGSES4fABYFiHWvyYg.VCb6oCfohPCYNN7qI-HRs0lYn-apy8QWag0OgsGD9sYg.JPEG.5027851%2F%25C7%25F6%25C5%25C2%25C7%25F6%25B9%25E9%25C0%25CF_%252822%2529.JPG&type=sc960_832"
    },
    {
      "url":
          "https://search.pstatic.net/common/?src=http%3A%2F%2Fcafefiles.naver.net%2FMjAxNzA0MTlfMjg0%2FMDAxNDkyNTg1MzE4NTM1.SFX9GnvXW3JrLcn2idmYd_5imjTcVFR13nDePdR7zi0g.rjzE0IUNFO66vRQaTeOCjmmm7ycjWJ-WdGu32l6NrBcg.JPEG.5027851%2F%25C7%25F6%25C5%25C2%25C7%25F6%25B9%25E9%25C0%25CF_%252837%2529.JPG&type=sc960_832"
    },
    {
      "url":
          "https://search.pstatic.net/common/?src=http%3A%2F%2Fcafefiles.naver.net%2FMjAxNzA0MTlfMTkz%2FMDAxNDkyNTg1MzE4OTQ3.qE9_XTaklLOH4R5Ack86Vq6DiYmPhqjWsVLbc-O5R18g.r3Ar_cKtck1wBOwKJtBD-6nMIe2dHtVSgyKY24hS1e4g.JPEG.5027851%2F%25C7%25F6%25C5%25C2%25C7%25F6%25B9%25E9%25C0%25CF_%25287%2529.JPG&type=sc960_832"
    },
    {
      "url":
          "https://search.pstatic.net/common/?src=http%3A%2F%2Fcafefiles.naver.net%2FMjAxNzA0MTlfMTM2%2FMDAxNDkyNTg1MzE5MDU5.jDV9n3KsyItnqJx1GhWmsDDbXq2UPAAO2Xu2va9NGdcg.IObRSpf2rtvpul9gr9Q9VXw_dDw24hjFctTHeYqzzQMg.JPEG.5027851%2F%25C7%25F6%25C5%25C2%25C7%25F6%25B9%25E9%25C0%25CF_%252826%2529.JPG&type=sc960_832"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('轮播图组件演示'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: 240,
              width: double.infinity,
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return Image.network(
                      imageList[index]["url"],
                      fit: BoxFit.fill,
                    );
                  },
                  itemCount: imageList.length,
                  pagination: SwiperPagination(), //分页器没了
                  control: SwiperControl(), //左右箭头
                  loop: true,
                  autoplay: true,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '玄泰贤百日照',
                  style: TextStyle(color: Colors.black54),
                )
              ],
            )
          ],
        ));
  }
}
