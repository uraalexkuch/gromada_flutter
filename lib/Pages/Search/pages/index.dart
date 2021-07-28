import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gromada/Controllers/AllVacController.dart';
import 'package:gromada/Pages/Vacancy/VacDetail.dart';
import 'package:gromada/Pages/services/ApiProviderVac.dart';

import '../models/vac.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  List filteredUsers = <Vac>[];

  AllVacController controller = AllVacController();

  @override
  void initState() {
    controller.onInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset : false,
        appBar: AppBar(
          title: Text('Онлайн помічник'),
        ),
        body: Obx(
          () => !controller.isLoading.value
              ? Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: buildTextField(),
                  ),
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                          color: HexColor("#005BAA"),
                        ),
                        width: 100.w,
                        child: filteredUsers.length != 0
                            ? buildSearchView()
                            : buildListView()),
                  )
                ])
              : Container(
                  decoration: BoxDecoration(
                    color: HexColor("#005BAA"),
                  ),
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 40.0.h),
                      child: Column(children: [
                        CircularProgressIndicator(
                          backgroundColor: HexColor('#FFD947'),
                        ),
                        Text(
                          "Зачекайте,завантажуємо дані",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: "Helvetica",
                            fontSize: 20.sp,
                            color: HexColor('#FFD947'),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
        ));
  }

  TextField buildTextField() {
    return TextField(
      decoration: InputDecoration(
          icon: Icon(Icons.search), hintText: 'Пошук за посадою або з/п'),
      onChanged: (value) {
        setState(() {
          filteredUsers = controller.vacancy
              .where((item) => (item.posadavac
                      .toLowerCase()
                      .contains(value.toLowerCase()) ||
                  item.salaryvac.toLowerCase().contains(value.toLowerCase())))
              .toList();
        });
      },
    );
  }

  ListView buildListView() {
    return ListView.builder(
      itemCount: controller.vacancy.length,
      itemBuilder: (context, index) {
        //Vac vac = vacancy[index];
        return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: HexColor('#FFD947'), width: 5),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                elevation: 20,
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed('/choicegromad/vacancy/detail',
                        arguments: controller.vacancy[index]);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        children: [
                          Row(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  width: 28.w,
                                  child: Text(
                                    "Посада:",
                                    style: TextStyle(
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp,
                                    ),
                                    softWrap: true,
                                  )),
                            ),
                            Container(
                                width: 52.w,
                                child: Text(
                                  controller.vacancy[index].posadavac,
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                  ),
                                  softWrap: true,
                                )),
                          ]),
                          Divider(),
                          Row(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  width: 28.w,
                                  child: Text(
                                    'Заробітна плата',
                                    style: TextStyle(
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp,
                                    ),
                                    softWrap: true,
                                  )),
                            ),
                            Container(
                                width: 47.w,
                                child: Text(
                                  controller.vacancy[index].salaryvac,
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                  ),
                                  softWrap: true,
                                )),
                            Container(
                                width: 5.w,
                                child: Icon(Icons.arrow_forward_rounded)),
                          ]),
                        ],
                      ),
                    ),
                  ),
                )));
      },
    );
  }

  ListView buildSearchView() {
    return ListView.builder(
      itemCount: filteredUsers.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
            margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0),
            shape: RoundedRectangleBorder(
                side: BorderSide(color: HexColor('#FFD947'), width: 5),
                borderRadius: BorderRadius.all(Radius.circular(25))),
            elevation: 20,
            child: GestureDetector(
              onTap: () {
                Get.toNamed('/choicegromad/vacancy/detail',
                    arguments: filteredUsers[index]);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              width: 28.w,
                              child: Text(
                                "Посада:",
                                style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp,
                                ),
                                softWrap: true,
                              )),
                        ),
                        Container(
                            width: 52.w,
                            child: Text(
                              filteredUsers[index].posadavac,
                              style: TextStyle(
                                color: Colors.indigo,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                              ),
                              softWrap: true,
                            )),
                      ]),
                      Divider(),
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              width: 28.w,
                              child: Text(
                                'Заробітна плата',
                                style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp,
                                ),
                                softWrap: true,
                              )),
                        ),
                        Container(
                            width: 47.w,
                            child: Text(
                              filteredUsers[index].salaryvac,
                              style: TextStyle(
                                color: Colors.indigo,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                              ),
                              softWrap: true,
                            )),
                        Container(
                            width: 5.w,
                            child: Icon(Icons.arrow_forward_rounded)),
                      ]),
                    ],
                  ),
                ),
              ),
            ));
      },
    );
  }


}
