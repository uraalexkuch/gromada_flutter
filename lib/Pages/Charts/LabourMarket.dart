import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gromada/Controllers/ChartController.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class LabourMarket extends StatefulWidget {
  @override
  _LabourMarketState createState() => _LabourMarketState();
}

class _LabourMarketState extends State<LabourMarket> {
  ChartController controller = ChartController();
  dynamic value ;

  @override
  void initState() {
    controller.onInit();

       super.initState();
  }



  List<Color> colorList = [
    Colors.blue,
    Colors.yellow,
  ];
  List<Color> colorList1 = [
    Colors.blue,
    Colors.yellow,
    Colors.white,
  ];
  @override
  Widget build(BuildContext context) {
    value = Get.arguments!;

    return Scaffold(resizeToAvoidBottomInset : false,
      appBar: AppBar(
        title: Text('Онлайн помічник'),
      ),
      body: Obx(
      () =>!controller.isLoading.value
          ? Column(children: [
              Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                        color: HexColor("#005BAA"),
                      ),
                      width: 100.w,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    'Загальна інформація по громаді',
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        color: HexColor('#FFD947'),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#005BAA"),
                                      ),
                                      height: 7.5.h,
                                      width: 30.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          'Кількість рад, що об\'єдналися',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#FFD947'),
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#005BAA"),
                                      ),
                                      height: 7.5.h,
                                      width: 30.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          'Площа територіальної громади',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#FFD947'),
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#005BAA"),
                                      ),
                                      height: 7.5.h,
                                      width: 30.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          'Чисельність населення громади',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#FFD947'),
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#FFFFFF"),
                                      ),
                                      height: 8.h,
                                      width: 30.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          '${controller.gromada[1]}',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#005BAA'),
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#FFFFFF"),
                                      ),
                                      height: 8.h,
                                      width: 30.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          '${controller.gromada[2]}',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#005BAA'),
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#FFFFFF"),
                                      ),
                                      height: 8.h,
                                      width: 30.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          '${controller.gromada[3]}',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#005BAA'),
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#005BAA"),
                                      ),
                                      height: 6.h,
                                      width: 30.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          'Міське населення',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#FFD947'),
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#005BAA"),
                                      ),
                                      height: 6.h,
                                      width: 30.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          'Сільське населення',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#FFD947'),
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#005BAA"),
                                      ),
                                      height: 6.h,
                                      width: 30.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          'Центр громади',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#FFD947'),
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#FFFFFF"),
                                      ),
                                      height: 8.h,
                                      width: 30.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          '${controller.gromada[4]}',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#005BAA'),
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#FFFFFF"),
                                      ),
                                      height: 8.h,
                                      width: 30.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          '${controller.gromada[5]}',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#005BAA'),
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#FFFFFF"),
                                      ),
                                      height: 8.h,
                                      width: 30.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          '${controller.gromada[6]}',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#005BAA'),
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    'Інформація щодо надання послуг зареєстрованим безробітним по громаді',
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        color: HexColor('#FFD947'),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#005BAA"),
                                      ),
                                      height: 7.5.h,
                                      width: 30.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          'Мали статус безробітного на 01 січня, осіб',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#FFD947'),
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#005BAA"),
                                      ),
                                      height: 7.5.h,
                                      width: 30.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          'Отримали статус протягом звітного періоду, осіб',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#FFD947'),
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#005BAA"),
                                      ),
                                      height: 7.5.h,
                                      width: 30.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          'Усього мали статус протягом періоду, осіб',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#FFD947'),
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#FFFFFF"),
                                      ),
                                      height: 8.h,
                                      width: 30.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          '${controller.bezrab[0].bezrabstart}',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#005BAA'),
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#FFFFFF"),
                                      ),
                                      height: 8.h,
                                      width: 30.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          '${controller.bezrab[0].bezrabvisit}',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#005BAA'),
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#FFFFFF"),
                                      ),
                                      height: 8.h,
                                      width: 30.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          '${controller.bezrab[0].labourmarket}',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#005BAA'),
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#005BAA"),
                                      ),
                                      height: 8.h,
                                      width: 30.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          'Мають статус безробітного на кінець періоду, осіб',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#FFD947'),
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#005BAA"),
                                      ),
                                      height: 8.h,
                                      width: 30.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          'Отримували допомогу по безробіттю',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#FFD947'),
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#005BAA"),
                                      ),
                                      height: 8.h,
                                      width: 30.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          'Частка безробітних, які отримували допомогу від загальної чисельності, %',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#FFD947'),
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#FFFFFF"),
                                      ),
                                      height: 8.h,
                                      width: 30.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          '${controller.bezrab[0].bezrabend}',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#005BAA'),
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#FFFFFF"),
                                      ),
                                      height: 8.h,
                                      width: 30.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          '${controller.bezrab[0].bezrabmoney}',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#005BAA'),
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#FFFFFF"),
                                      ),
                                      height: 8.h,
                                      width: 30.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          '${controller.prozentmoney()}%',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#005BAA'),
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: PieChart(
                                  dataMap: controller.data,
                                  colorList: colorList,
                                  chartRadius:
                                  MediaQuery.of(context).size.width / 2.2 >
                                      300
                                      ? 300
                                      : MediaQuery.of(context).size.width /
                                      2.2,
                                  legendOptions: LegendOptions(
                                    legendPosition: LegendPosition.right,
                                    legendTextStyle: TextStyle(
                                      color: HexColor('#FFD947'),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#005BAA"),
                                      ),
                                      height: 8.h,
                                      width: 42.w,

                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          'Охоплено заходами сприяння зайнятості, осіб',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#FFD947'),
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 20.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#005BAA"),
                                      ),
                                      height: 8.h,
                                      width: 42.w,

                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          'З них, працевлаштовано, осіб',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#FFD947'),
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#FFFFFF"),
                                      ),
                                      height: 8.h,
                                      width: 42.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          '${controller.allactivy()}',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#005BAA'),
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Container(margin: const EdgeInsets.only(left: 20.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#FFFFFF"),
                                      ),
                                      height: 8.h,
                                      width: 42.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          '${controller.bezrab[0].allpraz}',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#005BAA'),
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Row(
                                  children: [

                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#005BAA"),
                                      ),
                                      height: 8.h,
                                      width: 42.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          'Брали участь громадських/тимчасових роботах,осіб',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#FFD947'),
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Container(margin: const EdgeInsets.only(left: 20.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#005BAA"),
                                      ),
                                      height: 8.h,
                                      width: 42.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          'Проходили навчання, осіб',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#FFD947'),
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Row(
                                  children: [

                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#FFFFFF"),
                                      ),
                                      height: 8.h,
                                      width: 42.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          '${controller.bezrab[0].gromadwork}',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#005BAA'),
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Container(margin: const EdgeInsets.only(left: 20.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: HexColor("#FFFFFF"),
                                      ),
                                      height: 8.h,
                                      width: 42.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          '${controller.bezrab[0].bezrabnavch}',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: HexColor('#005BAA'),
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: PieChart(
                                  dataMap:controller.data1,
                                  colorList: colorList1,
                                  chartRadius:
                                  MediaQuery.of(context).size.width / 2.2 >
                                      300
                                      ? 300
                                      : MediaQuery.of(context).size.width /
                                      2.2,
                                  legendOptions: LegendOptions(
                                    legendPosition: LegendPosition.top,
                                    legendTextStyle: TextStyle(
                                      fontSize: 14.sp,
                                      color: HexColor('#FFD947'),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )))
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
}
