import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gromada/Controllers/choice_search_controller.dart';
import 'package:gromada/Pages/Load/loading.dart';
import 'package:gromada/Pages/Search/models/vac.dart';
import 'package:gromada/generated/l10n.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ChoiceSearch extends StatefulWidget {
  @override
  _ChoiceSearchState createState() => _ChoiceSearchState();
}

class _ChoiceSearchState extends State<ChoiceSearch> {
  ChoiceSearchController controller = ChoiceSearchController();
  List<Vac> filteredVac = <Vac>[];

  late final String value;
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
          () => controller.isLoading.value
              ? Loading()
              : Column(children: [
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
                      child: filteredVac.length != 0
                          ? buildSearchView()
                          : buildListView(),
                    ),
                  )
                ]),
        ));
  }

  TextField buildTextField() {
    return TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(25.0))),
            prefixIcon: Icon(Icons.search),
            hintText: S.of(context).search),
        onChanged: (value) => //controller.filteredVacancy(value),
            setState(() {
              //print(controller.vacancy.length);
              filteredVac = controller.vacancy
                  .where((item) => (item.posadavac
                      .toLowerCase()
                      .contains(value.toLowerCase())))
                  .toList();
              // print(filteredVac);
              // print(filteredVac.length);
            }));
  }

  ListView buildListView() {
    return ListView.builder(
      itemCount: controller.vacancy.length,
      itemBuilder: (context, index) {
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
                                  posadavac(controller.vacancy[index], index),
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
                                    S.of(context).vac_detail_salary,
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
                                  salaryvac(controller.vacancy[index], index),
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
                ))
            //buildCard(controller.vacancy[index], index),
            );
      },
    );
  }

  ListView buildSearchView() {
    return ListView.builder(
      itemCount: filteredVac.length,
      itemBuilder: (context, index) {
        //print(controller.filteredVac.length);
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
              )),
        );
      },
    );
  }

  posadavac(vac, index) => controller.vacancy[index].posadavac;

  salaryvac(vac, index) => controller.vacancy[index].salaryvac;
}
