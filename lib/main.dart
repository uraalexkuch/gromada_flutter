import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:gromada/Controllers/all_vac_controller.dart';
import 'package:gromada/Controllers/char_controller.dart';
import 'package:gromada/Controllers/choice_controller.dart';
import 'package:gromada/Controllers/pasport_controlller.dart';
import 'package:gromada/Pages/AboutUS.dart';
import 'package:gromada/Pages/Callcenter/call_center.dart';
import 'package:gromada/Pages/Charts/labour_market.dart';
import 'package:gromada/Pages/Choice.dart';
import 'package:gromada/Pages/ChoiceQuestion/PageQuestion.dart';
import 'package:gromada/Pages/ChoiceQuestion/WebView.dart';
import 'package:gromada/Pages/ChoiceSearch/ChoiceSearch.dart';
import 'package:gromada/Pages/Navch/navch_answre.dart';
import 'package:gromada/Pages/Navch/select_question_navch.dart';
import 'package:gromada/Pages/Pasports/ListPasport.dart';
import 'package:gromada/Pages/Pasports/PasportDetail.dart';
import 'package:gromada/Pages/Profnavch/profnavch_answre.dart';
import 'package:gromada/Pages/Proforiention/proforient_answre.dart';
import 'package:gromada/Pages/Proforiention/select_question_prof.dart';
import 'package:gromada/Pages/Question/Calculator.dart';
import 'package:gromada/Pages/Question/SelectQuestion.dart';
import 'package:gromada/Pages/Question/ShablonAnswer.dart';
import 'package:gromada/Pages/Search/models/charts.dart';
import 'package:gromada/Pages/Search/pages/index.dart';
import 'package:gromada/Pages/Vacancy/VacDetail.dart';
import 'package:gromada/Pages/Work/StartWork.dart';
import 'package:gromada/Pages/choice_rayon.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'Controllers/choice_search_controller.dart';
import 'Pages/Search/models/vac.dart';
import 'Pages/StartPage.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(VacAdapter());
  Hive.registerAdapter(ChartsAdapter());
  await Hive.openBox("vacancy");
  await Hive.openBox("stat");
  await Hive.openBox("vachash");
  await Hive.openBox("stathash");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return GetMaterialApp(
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        builder: (context, widget) => ResponsiveWrapper.builder(
            BouncingScrollWrapper.builder(context, widget!),
            maxWidth: 1200,
            minWidth: 450,
            defaultScale: true,
            breakpoints: [
              ResponsiveBreakpoint.resize(450, name: MOBILE),
              ResponsiveBreakpoint.autoScale(800, name: TABLET),
              ResponsiveBreakpoint.autoScale(1000, name: TABLET),
              ResponsiveBreakpoint.resize(1200, name: DESKTOP),
              ResponsiveBreakpoint.autoScale(2460, name: "4K"),
            ]),
        supportedLocales: S.delegate.supportedLocales,
        home: StartPage(),
        initialRoute: '/',
        // передаём маршруты в приложение
        getPages: [
          GetPage(name: '/Home', page: () => StartPage()),
          GetPage(name: '/Home/about', page: () => AboutUS()),
          GetPage(
            name: '/Home/choicerayon',
            page: () => ChoiceRayon(),
            binding: BindingsBuilder(() {
              Get.lazyPut<ChoiceController>(() => ChoiceController());
            }),
          ),
          GetPage(
            name: '/Home/choice',
            page: () => Choice(),
            binding: BindingsBuilder(() {
              Get.lazyPut<ChoiceController>(() => ChoiceController());
            }),
          ),
          GetPage(name: '/choicegromad', page: () => PageQuestion()),
          GetPage(name: '/choicegromad/question', page: () => SelectQuestion()),
          GetPage(
              name: '/choicegromad/questionprof',
              page: () => SelectQuestionProf()),
          GetPage(
              name: '/choicegromad/questionnavch',
              page: () => SelectQuestionNavch()),
          GetPage(name: '/choicegromad/vacancy', page: () => StartWork()),
          GetPage(
              name: '/choicegromad/vacancy/detail', page: () => VacDetail()),
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
              Get.lazyPut<ChoiceSearchController>(
                  () => ChoiceSearchController());
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
          GetPage(name: '/choicegromad/prof', page: () => ProforienAnswer()),
          GetPage(name: '/choicegromad/navch', page: () => NavchAnswer()),
          GetPage(
              name: '/choicegromad/profnavch', page: () => ProfNavchAnswer()),
          GetPage(name: '/choicegromad/calculator', page: () => Calculator()),
          GetPage(name: '/choicegromad/callcenter', page: () => CallCenter()),
          GetPage(
              name: '/choicegromad/vacancy/pasport/detail',
              page: () => PassportDetail()),
        ],
      );
    });
  }
}
