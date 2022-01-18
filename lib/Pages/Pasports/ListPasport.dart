import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gromada/Controllers/pasport_controlller.dart';
import 'package:gromada/Pages/Load/loading.dart';
import 'package:gromada/Pages/Search/models/pasport.dart';
import 'package:gromada/generated/l10n.dart';
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
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(S.of(context).app_barr_title),
        ),
        body: SafeArea(
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
                          gradient: LinearGradient(
                            tileMode: TileMode.mirror,
                            begin: Alignment(0.0, -0.3),
                            end: Alignment(1.0, 0.1),
                            colors: [
                              Color(0xff100b63),
                              Color(0xff2196f3),
                            ],
                            stops: [
                              0,
                              1,
                            ],
                          ),
                        ),
                        width: 100.w,
                        child: filteredPassport.length != 0
                            ? buildSearchView()
                            : buildListView()),
                  )
                ])
              : Loading(),
        )));
  }

  TextField buildTextField() {
    return TextField(
      decoration: InputDecoration(
        icon: Icon(Icons.search),
        hintText: S.of(context).pasport_list,
      ),
      onChanged: (value) {
        setState(() {
          filteredPassport = controller.pasport0
              .where((item) =>
                  (item.namerobot.toLowerCase().contains(value.toLowerCase())))
              .toList();
        });
      },
    );
  }

  ListView buildListView() {
    return ListView.builder(
      itemCount: controller.pasport0.length,
      itemBuilder: (context, index) {
        //Vac vac = pasport[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
              margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0),
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: HexColor('#FFD947'), width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(14))),
              elevation: 20,
              child: GestureDetector(
                onTap: () {
                  Get.toNamed('/choicegromad/vacancy/pasport/detail',
                      arguments: controller.pasport0[index]);
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
                                  S.of(context).pasport_list0,
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
                                controller.pasport0[index].namerobot,
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
                  borderRadius: BorderRadius.all(Radius.circular(14))),
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
                                  S.of(context).pasport_list0,
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
