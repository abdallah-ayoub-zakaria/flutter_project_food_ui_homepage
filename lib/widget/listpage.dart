import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List page = [
    'جميع الاصناف',
    'العريكه',
    'المعصوب',
    'المطبق',
    'الحلى',
    'المشوبات'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: page.length,
          itemBuilder: (context, i) {
            return GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(offset: Offset(0, 2), color: Colors.green)
                        ]),
                    child: Text(
                      page[i],
                      style: TextStyle(
                          color: Colors.brown[800],
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            );
          }),
    );
  }
}
