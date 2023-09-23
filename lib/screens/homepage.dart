import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/listpage.dart';
import 'package:page_indicator/page_indicator.dart';

import '../widget/menu_del.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pagelist = [
    'سقنتشر',
    'مالح شدر',
    'مالح فيتا',
    'ثلاثة جبن',
    'سبانخ',
    'تونة',
    'تفاح وقرفة',
    'حالي جبن',
  ];
  List PageImgae = [
    AssetImage('assets/4.jpg'),
    AssetImage('assets/6.jpg'),
    AssetImage('assets/2.jpg'),
    AssetImage('assets/3.jpg'),
    AssetImage('assets/4.jpg'),
    AssetImage('assets/5.jpg'),
    AssetImage('assets/6.jpg'),
    AssetImage('assets/7.jpg'),
  ];
  late PageController controller;
  GlobalKey<PageContainerState> key = GlobalKey();
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                color: Colors.green[300],
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person,
                  size: 26,
                  color: Colors.green[300],
                )),
          ],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'تكاليل',
                style: TextStyle(
                    color: Colors.red[300], fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/logo.jpg',
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Takalil',
                style: TextStyle(
                    color: Colors.red[300], fontWeight: FontWeight.bold),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                child: PageIndicatorContainer(
                    key: key,
                    align: IndicatorAlign.bottom,
                    length: 3,
                    indicatorSpace: 20.0,
                    padding: const EdgeInsets.all(10),
                    indicatorColor: Colors.white,
                    indicatorSelectorColor: Colors.green,
                    shape: IndicatorShape.circle(size: 12),
                    child: PageView(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 3,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/6.jpg'))),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 3,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/3.jpg'))),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 3,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/4.jpg'))),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.9,
                child: ListView(
                  children: [
                    MenuPage(),
                    SizedBox(
                      height: 10,
                    ),
                    ListPage(),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                          itemCount: pagelist.length,
                          itemBuilder: (context, i) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Container(
                                alignment: Alignment.bottomRight,
                                height: MediaQuery.of(context).size.height / 3,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: PageImgae[i])),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(12),
                                        boxShadow: [
                                          BoxShadow(
                                              offset: Offset(0, 10),
                                              blurRadius: 20)
                                        ]),
                                    child: Text(
                                      pagelist[i],
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
