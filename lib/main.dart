import 'package:flutter/material.dart';
import 'package:gromada/Controllers/AllVacController.dart';
import 'package:gromada/Controllers/ChartController.dart';
import 'package:gromada/Controllers/ChoiceController.dart';
import 'package:gromada/Controllers/PasportControlller.dart';
import 'package:gromada/Pages/AboutUS.dart';
import 'package:gromada/Pages/Charts/LabourMarket.dart';
import 'package:gromada/Pages/Choice.dart';

import 'package:get/get.dart';
import 'package:gromada/Pages/ChoiceQuestion/PageQuestion.dart';
import 'package:gromada/Pages/ChoiceQuestion/WebView.dart';
import 'package:gromada/Pages/ChoiceSearch/ChoiceSearch.dart';
import 'package:gromada/Pages/Pasports/ListPasport.dart';
import 'package:gromada/Pages/Pasports/PasportDetail.dart';
import 'package:gromada/Pages/Question/Calculator.dart';
import 'package:gromada/Pages/Question/SelectQuestion.dart';
import 'package:gromada/Pages/Question/ShablonAnswer.dart';
import 'package:gromada/Pages/Search/pages/index.dart';
import 'package:gromada/Pages/Vacancy/VacDetail.dart';
import 'package:gromada/Pages/Work/StartWork.dart';
import 'Controllers/ChoiceSearchController.dart';
import 'Pages/StartPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: StartPage(),
      initialRoute: '/',
      // передаём маршруты в приложение
      getPages: [
        GetPage(name: '/Home', page: () => StartPage()),
        GetPage(name: '/Home/about', page: () => AboutUS()),
        GetPage(
          name: '/Home/choice',
          page: () => Choice(),
          binding: BindingsBuilder(() {
            Get.lazyPut<ChoiceController>(() => ChoiceController());
          }),
        ),
        GetPage(name: '/choicegromad', page: () => PageQuestion()),
        GetPage(name: '/choicegromad/question', page: () => SelectQuestion()),
        GetPage(name: '/choicegromad/vacancy', page: () => StartWork()),
        GetPage(name: '/choicegromad/vacancy/detail', page: () => VacDetail()),
        GetPage(
            name: '/choicegromad/vacancy/pasport',
            page: () => ListPasport(),
            binding: BindingsBuilder(() {
              Get.lazyPut<PasportController>(() => PasportController());
            })),
        GetPage(
            name: '/choicegromad/vacancy/rayon',
            page: () => IndexPage(),
            binding: BindingsBuilder(() {
              Get.lazyPut<AllVacController>(() => AllVacController());
            })),
        GetPage(
          name: '/choicegromad/vacancy/gromada',
          page: () => ChoiceSearch(),
          binding: BindingsBuilder(() {
            Get.lazyPut<ChoiceSearchController>(() => ChoiceSearchController());
          }),
        ),
        GetPage(name: '/choicegromad/web', page: () => WebViewTrue()),
        GetPage(
          name: '/choicegromad/employment',
          page: () => LabourMarket(),
          binding: BindingsBuilder(() {
            Get.lazyPut<ChartController>(() => ChartController());
          }),
        ),
        GetPage(name: '/choicegromad/answer', page: () => ShablonAnswer()),
        GetPage(name: '/choicegromad/calculator', page: () => Calculator()),
        GetPage(
            name: '/choicegromad/vacancy/pasport/detail',
            page: () => PassportDetail()),
      ],
    );
  }
}
