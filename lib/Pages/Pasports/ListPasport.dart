import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gromada/Controllers/PasportControlller.dart';

import 'package:gromada/Pages/Search/models/pasport.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ListPasport extends StatefulWidget {
  @override
  _ListPasportState createState() => _ListPasportState();
}

class _ListPasportState extends State<ListPasport> {

  List filteredPassport = <Passport>[];

  PasportController controller = PasportController();

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
        body:SafeArea(
        left: true,
        top: true,
        right: true,
        bottom: true,
        child: Obx(
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
                        child: filteredPassport.length != 0
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
        )));
  }

  TextField buildTextField() {
    return TextField(
      decoration: InputDecoration(
          icon: Icon(Icons.search), hintText: 'Пошук за назвою'),
      onChanged: (value) {
        setState(() {
          filteredPassport = controller.pasport
              .where((item) =>
                  (item.namerobot.toLowerCase().contains(value.toLowerCase())))
              .toList();
        });
      },
    );
  }

  ListView buildListView() {
    return ListView.builder(
      itemCount: controller.pasport.length,
      itemBuilder: (context, index) {
        //Vac vac = pasport[index];
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
                  Get.toNamed('/choicegromad/vacancy/pasport/detail',
                      arguments: controller.pasport[index]);
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
                                  "Роботодавець (назва):",
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
                                controller.pasport[index].namerobot,
                                style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp,
                                ),
                                softWrap: true,
                              )),
                        ]),
                        Divider(),
                      ],
                    ),
                  ),
                ),
              )),
        );
      },
    );
  }

  ListView buildSearchView() {
    return ListView.builder(
      itemCount: filteredPassport.length,
      itemBuilder: (BuildContext context, int index) {
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
                  Get.toNamed('/choicegromad/vacancy/pasport/detail',
                      arguments: filteredPassport[index]);
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
                                  "Роботодавець (назва):",
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
                                filteredPassport[index].namerobot,
                                style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp,
                                ),
                                softWrap: true,
                              )),
                        ]),
                        Divider(),
                      ],
                    ),
                  ),
                ),
              )),
        );
      },
    );
  }


}
