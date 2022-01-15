import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gromada/Controllers/all_vac_controller.dart';
import 'package:gromada/Pages/Load/loading.dart';
import 'package:gromada/generated/l10n.dart';
import 'package:gromada/local_datastore/hive_service.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../models/vac.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  List filteredVac = <Vac>[];
  final HiveService hiveService = HiveService();
  AllVacController controller = AllVacController();

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
        body: Obx(
          () => !controller.isLoading.value
              ? Column(children: [
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: buildTextField()),
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                          color: HexColor("#005BAA"),
                        ),
                        width: 100.w,
                        child: filteredVac.length != 0
                            ? buildSearchView()
                            : buildListView()),
                  )
                ])
              : Loading(),
        ));
  }

  TextField buildTextField() {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(14.0))),
          prefixIcon: Icon(Icons.search),
          hintText: S.of(context).search),
      onChanged: (value) {
        setState(() {
          filteredVac = controller.vacancy0
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
      itemCount: controller.vacancy0.length,
      itemBuilder: (context, index) {
        //Vac vac = vacancy[index];
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
                    Get.toNamed('/choicegromad/vacancy/detail',
                        arguments: controller.vacancy0[index]);
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
                                    S.of(context).vacancy_posad,
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
                                  controller.vacancy0[index].posadavac,
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
                                    S.of(context).vacancy_salary,
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
                                  controller.vacancy0[index].salaryvac,
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
      itemCount: filteredVac.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
            margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0),
            shape: RoundedRectangleBorder(
                side: BorderSide(color: HexColor('#FFD947'), width: 3),
                borderRadius: BorderRadius.all(Radius.circular(14))),
            elevation: 20,
            child: GestureDetector(
              onTap: () {
                Get.toNamed('/choicegromad/vacancy/detail',
                    arguments: filteredVac[index]);
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
                                S.of(context).vacancy_posad,
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
                              filteredVac[index].posadavac,
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
                                S.of(context).vacancy_salary,
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
                              filteredVac[index].salaryvac,
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
