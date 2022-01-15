// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Онлайн помічник`
  String get app_barr_title {
    return Intl.message(
      'Онлайн помічник',
      name: 'app_barr_title',
      desc: '',
      args: [],
    );
  }

  /// `Вітаємо!`
  String get welcome {
    return Intl.message(
      'Вітаємо!',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `     До  Ваших послуг онлайн помічник з питань зайнятості !`
  String get welcome_two {
    return Intl.message(
      '     До  Ваших послуг онлайн помічник з питань зайнятості !',
      name: 'welcome_two',
      desc: '',
      args: [],
    );
  }

  /// ` Розпочати`
  String get button_start {
    return Intl.message(
      ' Розпочати',
      name: 'button_start',
      desc: '',
      args: [],
    );
  }

  /// ` Оберіть відповідний район `
  String get choice_rayon {
    return Intl.message(
      ' Оберіть відповідний район ',
      name: 'choice_rayon',
      desc: '',
      args: [],
    );
  }

  /// ` Оберіть відповідну громаду`
  String get choice_gromad {
    return Intl.message(
      ' Оберіть відповідну громаду',
      name: 'choice_gromad',
      desc: '',
      args: [],
    );
  }

  /// `Зачекайте,завантажуємо дані`
  String get loading {
    return Intl.message(
      'Зачекайте,завантажуємо дані',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Пошук за посадою `
  String get search {
    return Intl.message(
      'Пошук за посадою ',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `СТАН РИНКУ ПРАЦІ ГРОМАДИ`
  String get main_choice {
    return Intl.message(
      'СТАН РИНКУ ПРАЦІ ГРОМАДИ',
      name: 'main_choice',
      desc: '',
      args: [],
    );
  }

  /// `ПОШУК РОБОТИ`
  String get main_choice1 {
    return Intl.message(
      'ПОШУК РОБОТИ',
      name: 'main_choice1',
      desc: '',
      args: [],
    );
  }

  /// `ПРОФЕСІЙНА ОРІЄНТАЦІЯ`
  String get main_choice2 {
    return Intl.message(
      'ПРОФЕСІЙНА ОРІЄНТАЦІЯ',
      name: 'main_choice2',
      desc: '',
      args: [],
    );
  }

  /// `ОТРИМАТИ НОВУ ПРОФЕСІЮ`
  String get main_choice3 {
    return Intl.message(
      'ОТРИМАТИ НОВУ ПРОФЕСІЮ',
      name: 'main_choice3',
      desc: '',
      args: [],
    );
  }

  /// `ЗАПИСАТИСЯ НА ВІДВІДУВАННЯ ЦЗ`
  String get main_choice4 {
    return Intl.message(
      'ЗАПИСАТИСЯ НА ВІДВІДУВАННЯ ЦЗ',
      name: 'main_choice4',
      desc: '',
      args: [],
    );
  }

  /// `ЕЛЕКТРОННИЙ КАБІНЕТ ШУКАЧА `
  String get main_choice5 {
    return Intl.message(
      'ЕЛЕКТРОННИЙ КАБІНЕТ ШУКАЧА ',
      name: 'main_choice5',
      desc: '',
      args: [],
    );
  }

  /// `ПОШИРЕНІ ПИТАННЯ`
  String get main_choice6 {
    return Intl.message(
      'ПОШИРЕНІ ПИТАННЯ',
      name: 'main_choice6',
      desc: '',
      args: [],
    );
  }

  /// `КОНТАКТИ ЦЕНТРУ ЗАЙНЯТОСТІ`
  String get main_choice7 {
    return Intl.message(
      'КОНТАКТИ ЦЕНТРУ ЗАЙНЯТОСТІ',
      name: 'main_choice7',
      desc: '',
      args: [],
    );
  }

  /// `ЗАГАЛЬНА ІНФОРМАЦІЯ ПО ГРОМАДІ`
  String get labour {
    return Intl.message(
      'ЗАГАЛЬНА ІНФОРМАЦІЯ ПО ГРОМАДІ',
      name: 'labour',
      desc: '',
      args: [],
    );
  }

  /// `Центр \n громади`
  String get labour1 {
    return Intl.message(
      'Центр \n громади',
      name: 'labour1',
      desc: '',
      args: [],
    );
  }

  /// `Кількість \n нас. пунктів`
  String get labour2 {
    return Intl.message(
      'Кількість \n нас. пунктів',
      name: 'labour2',
      desc: '',
      args: [],
    );
  }

  /// `Площа \n громади`
  String get labour3 {
    return Intl.message(
      'Площа \n громади',
      name: 'labour3',
      desc: '',
      args: [],
    );
  }

  /// `Чисельність населення громади`
  String get labour4 {
    return Intl.message(
      'Чисельність населення громади',
      name: 'labour4',
      desc: '',
      args: [],
    );
  }

  /// `Переглянути карту громади`
  String get labour5 {
    return Intl.message(
      'Переглянути карту громади',
      name: 'labour5',
      desc: '',
      args: [],
    );
  }

  /// `Сільське населення`
  String get labour6 {
    return Intl.message(
      'Сільське населення',
      name: 'labour6',
      desc: '',
      args: [],
    );
  }

  /// `Кількість підприємств,\n юридичні особи`
  String get labour7 {
    return Intl.message(
      'Кількість підприємств,\n юридичні особи',
      name: 'labour7',
      desc: '',
      args: [],
    );
  }

  /// `Кількість підприємців,\n фізичні особи`
  String get labour8 {
    return Intl.message(
      'Кількість підприємців,\n фізичні особи',
      name: 'labour8',
      desc: '',
      args: [],
    );
  }

  /// `Провідні галузі економіки`
  String get labour9 {
    return Intl.message(
      'Провідні галузі економіки',
      name: 'labour9',
      desc: '',
      args: [],
    );
  }

  /// `НАДАННЯ  ПОСЛУГ  СЛУЖБОЮ  ЗАЙНЯТОСТІ`
  String get labour10 {
    return Intl.message(
      'НАДАННЯ  ПОСЛУГ  СЛУЖБОЮ  ЗАЙНЯТОСТІ',
      name: 'labour10',
      desc: '',
      args: [],
    );
  }

  /// `Мали статус безробітного `
  String get labour11 {
    return Intl.message(
      'Мали статус безробітного ',
      name: 'labour11',
      desc: '',
      args: [],
    );
  }

  /// `Кількість   вакансій`
  String get labour12 {
    return Intl.message(
      'Кількість   вакансій',
      name: 'labour12',
      desc: '',
      args: [],
    );
  }

  /// `ЗА  СПРИЯННЯ  СЛУЖБИ  ЗАЙНЯТОСТІ`
  String get labour13 {
    return Intl.message(
      'ЗА  СПРИЯННЯ  СЛУЖБИ  ЗАЙНЯТОСТІ',
      name: 'labour13',
      desc: '',
      args: [],
    );
  }

  /// `Отримали \n  роботу`
  String get labour14 {
    return Intl.message(
      'Отримали \n  роботу',
      name: 'labour14',
      desc: '',
      args: [],
    );
  }

  /// `Проходили навчання`
  String get labour15 {
    return Intl.message(
      'Проходили навчання',
      name: 'labour15',
      desc: '',
      args: [],
    );
  }

  /// `Участь у гром./тим. роботах`
  String get labour16 {
    return Intl.message(
      'Участь у гром./тим. роботах',
      name: 'labour16',
      desc: '',
      args: [],
    );
  }

  /// `Донецький обласний центр зайнятості\n\nМи відкриті для спілкування у зручний для Вас спосіб !`
  String get call_center {
    return Intl.message(
      'Донецький обласний центр зайнятості\n\nМи відкриті для спілкування у зручний для Вас спосіб !',
      name: 'call_center',
      desc: '',
      args: [],
    );
  }

  /// `0 800 33 61 67\n`
  String get call_center1 {
    return Intl.message(
      '0 800 33 61 67\n',
      name: 'call_center1',
      desc: '',
      args: [],
    );
  }

  /// `Call-центр Донецького  обласного  центру  зайнятості.`
  String get call_center2 {
    return Intl.message(
      'Call-центр Донецького  обласного  центру  зайнятості.',
      name: 'call_center2',
      desc: '',
      args: [],
    );
  }

  /// `\nБЕЗКОШТОВНО! `
  String get call_center3 {
    return Intl.message(
      '\nБЕЗКОШТОВНО! ',
      name: 'call_center3',
      desc: '',
      args: [],
    );
  }

  /// `Офіційна сторінка у Facebook`
  String get call_center4 {
    return Intl.message(
      'Офіційна сторінка у Facebook',
      name: 'call_center4',
      desc: '',
      args: [],
    );
  }

  /// `Офіційний канал на YouTube`
  String get call_center5 {
    return Intl.message(
      'Офіційний канал на YouTube',
      name: 'call_center5',
      desc: '',
      args: [],
    );
  }

  /// `Telegram чат-бот`
  String get call_center6 {
    return Intl.message(
      'Telegram чат-бот',
      name: 'call_center6',
      desc: '',
      args: [],
    );
  }

  /// `Посада:`
  String get vacancy_posad {
    return Intl.message(
      'Посада:',
      name: 'vacancy_posad',
      desc: '',
      args: [],
    );
  }

  /// `Заробітна плата`
  String get vacancy_salary {
    return Intl.message(
      'Заробітна плата',
      name: 'vacancy_salary',
      desc: '',
      args: [],
    );
  }

  /// `Авдіївський міський центр зайнятості`
  String get center_name503 {
    return Intl.message(
      'Авдіївський міський центр зайнятості',
      name: 'center_name503',
      desc: '',
      args: [],
    );
  }

  /// `86060, м. Авдіївка, Покровський р-н,  вул. Комунальна, 4, \n тел.:  \n (050)-852-79-67, \n e-mail: avdeevgcz@donocz.gov.ua`
  String get center_place503 {
    return Intl.message(
      '86060, м. Авдіївка, Покровський р-н,  вул. Комунальна, 4, \n тел.:  \n (050)-852-79-67, \n e-mail: avdeevgcz@donocz.gov.ua',
      name: 'center_place503',
      desc: '',
      args: [],
    );
  }

  /// `Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П'ятниця: 8.00 - 15.45\n без перерви\n`
  String get center_time_work503 {
    return Intl.message(
      'Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П\'ятниця: 8.00 - 15.45\n без перерви\n',
      name: 'center_time_work503',
      desc: '',
      args: [],
    );
  }

  /// `https://goo.gl/maps/kvT3bUbDGSUe5UDL8`
  String get center_to_map503 {
    return Intl.message(
      'https://goo.gl/maps/kvT3bUbDGSUe5UDL8',
      name: 'center_to_map503',
      desc: '',
      args: [],
    );
  }

  /// `Бахмутський міський центр зайнятості`
  String get center_name505 {
    return Intl.message(
      'Бахмутський міський центр зайнятості',
      name: 'center_name505',
      desc: '',
      args: [],
    );
  }

  /// `84506, м. Бахмут, Бахмутський р-н,   вул. Захисників України, 13, \n тел.:  \n (06274) 8-25-01, \n e-mail: artemcz@donocz.gov.ua`
  String get center_place505 {
    return Intl.message(
      '84506, м. Бахмут, Бахмутський р-н,   вул. Захисників України, 13, \n тел.:  \n (06274) 8-25-01, \n e-mail: artemcz@donocz.gov.ua',
      name: 'center_place505',
      desc: '',
      args: [],
    );
  }

  /// `Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П'ятниця: 8.00 - 15.45\n без перерви\n`
  String get center_time_work505 {
    return Intl.message(
      'Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П\'ятниця: 8.00 - 15.45\n без перерви\n',
      name: 'center_time_work505',
      desc: '',
      args: [],
    );
  }

  /// `https://goo.gl/maps/xvZVeT9KDqgvkQRB9`
  String get center_to_map505 {
    return Intl.message(
      'https://goo.gl/maps/xvZVeT9KDqgvkQRB9',
      name: 'center_to_map505',
      desc: '',
      args: [],
    );
  }

  /// `Торецький міський центр зайнятості`
  String get center_name511 {
    return Intl.message(
      'Торецький міський центр зайнятості',
      name: 'center_name511',
      desc: '',
      args: [],
    );
  }

  /// `85200, м. Торецьк, Бахмутський р-н,   вул. Володимирська, 28, \n тел.:  \n (06243) 2-14-00, \n e-mail: dzerjcz@donocz.gov.ua`
  String get center_place511 {
    return Intl.message(
      '85200, м. Торецьк, Бахмутський р-н,   вул. Володимирська, 28, \n тел.:  \n (06243) 2-14-00, \n e-mail: dzerjcz@donocz.gov.ua',
      name: 'center_place511',
      desc: '',
      args: [],
    );
  }

  /// `Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П'ятниця: 8.00 - 15.45\n без перерви\n`
  String get center_time_work511 {
    return Intl.message(
      'Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П\'ятниця: 8.00 - 15.45\n без перерви\n',
      name: 'center_time_work511',
      desc: '',
      args: [],
    );
  }

  /// `https://goo.gl/maps/LefmLPJfSrZf75xf6`
  String get center_to_map511 {
    return Intl.message(
      'https://goo.gl/maps/LefmLPJfSrZf75xf6',
      name: 'center_to_map511',
      desc: '',
      args: [],
    );
  }

  /// `Мирноградський міський центр зайнятості`
  String get center_name513 {
    return Intl.message(
      'Мирноградський міський центр зайнятості',
      name: 'center_name513',
      desc: '',
      args: [],
    );
  }

  /// `85327, м. Мирноград, Покровський р-н,  м-н Молодіжний, 37Б, \n тел.:  \n (06239) 7-60-11, \n e-mail: mirnogradcz@donocz.gov.ua`
  String get center_place513 {
    return Intl.message(
      '85327, м. Мирноград, Покровський р-н,  м-н Молодіжний, 37Б, \n тел.:  \n (06239) 7-60-11, \n e-mail: mirnogradcz@donocz.gov.ua',
      name: 'center_place513',
      desc: '',
      args: [],
    );
  }

  /// `Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П'ятниця: 8.00 - 15.45\n без перерви\n`
  String get center_time_work513 {
    return Intl.message(
      'Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П\'ятниця: 8.00 - 15.45\n без перерви\n',
      name: 'center_time_work513',
      desc: '',
      args: [],
    );
  }

  /// `https://goo.gl/maps/8vhvk9b8xy3tJzD18`
  String get center_to_map513 {
    return Intl.message(
      'https://goo.gl/maps/8vhvk9b8xy3tJzD18',
      name: 'center_to_map513',
      desc: '',
      args: [],
    );
  }

  /// `Добропільський міський центр зайнятості`
  String get center_name515 {
    return Intl.message(
      'Добропільський міський центр зайнятості',
      name: 'center_name515',
      desc: '',
      args: [],
    );
  }

  /// `85004, м. Добропілля, Покровський р-н,  вул. Банкова ,39, \n тел.:  \n (06277) 2-88-40, \n e-mail: dobropolcz@donocz.gov.ua`
  String get center_place515 {
    return Intl.message(
      '85004, м. Добропілля, Покровський р-н,  вул. Банкова ,39, \n тел.:  \n (06277) 2-88-40, \n e-mail: dobropolcz@donocz.gov.ua',
      name: 'center_place515',
      desc: '',
      args: [],
    );
  }

  /// `Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П'ятниця: 8.00 - 15.45\n без перерви\n`
  String get center_time_work515 {
    return Intl.message(
      'Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П\'ятниця: 8.00 - 15.45\n без перерви\n',
      name: 'center_time_work515',
      desc: '',
      args: [],
    );
  }

  /// `https://goo.gl/maps/GNhyd7fXBmFh7bxK8`
  String get center_to_map515 {
    return Intl.message(
      'https://goo.gl/maps/GNhyd7fXBmFh7bxK8',
      name: 'center_to_map515',
      desc: '',
      args: [],
    );
  }

  /// `Дружківський міський центр зайнятості`
  String get center_name517 {
    return Intl.message(
      'Дружківський міський центр зайнятості',
      name: 'center_name517',
      desc: '',
      args: [],
    );
  }

  /// `85004, м. Дружківка, Краматорський р-н, вул. К. Маркса, 42, \n тел.:  \n (06267) 4-40-66, \n e-mail: drujcz@donocz.gov.ua`
  String get center_place517 {
    return Intl.message(
      '85004, м. Дружківка, Краматорський р-н, вул. К. Маркса, 42, \n тел.:  \n (06267) 4-40-66, \n e-mail: drujcz@donocz.gov.ua',
      name: 'center_place517',
      desc: '',
      args: [],
    );
  }

  /// `Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П'ятниця: 8.00 - 15.45\n без перерви\n`
  String get center_time_work517 {
    return Intl.message(
      'Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П\'ятниця: 8.00 - 15.45\n без перерви\n',
      name: 'center_time_work517',
      desc: '',
      args: [],
    );
  }

  /// `https://goo.gl/maps/bSHjwVBVrdZEahct7`
  String get center_to_map517 {
    return Intl.message(
      'https://goo.gl/maps/bSHjwVBVrdZEahct7',
      name: 'center_to_map517',
      desc: '',
      args: [],
    );
  }

  /// `Костянтинівський міський центр зайнятості`
  String get center_name523 {
    return Intl.message(
      'Костянтинівський міський центр зайнятості',
      name: 'center_name523',
      desc: '',
      args: [],
    );
  }

  /// `85110, м. Костянтинівка, Краматорський р-н, пл. Перемоги, 8, \n тел.:  \n(06272) 6-11-03, \n e-mail: konstancz@donocz.gov.ua`
  String get center_place523 {
    return Intl.message(
      '85110, м. Костянтинівка, Краматорський р-н, пл. Перемоги, 8, \n тел.:  \n(06272) 6-11-03, \n e-mail: konstancz@donocz.gov.ua',
      name: 'center_place523',
      desc: '',
      args: [],
    );
  }

  /// `Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П'ятниця: 8.00 - 15.45\n без перерви\n`
  String get center_time_work523 {
    return Intl.message(
      'Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П\'ятниця: 8.00 - 15.45\n без перерви\n',
      name: 'center_time_work523',
      desc: '',
      args: [],
    );
  }

  /// `https://goo.gl/maps/ZYEZAMzrcU9RRBncA`
  String get center_to_map523 {
    return Intl.message(
      'https://goo.gl/maps/ZYEZAMzrcU9RRBncA',
      name: 'center_to_map523',
      desc: '',
      args: [],
    );
  }

  /// `Краматорський міський центр зайнятості`
  String get center_name525 {
    return Intl.message(
      'Краматорський міський центр зайнятості',
      name: 'center_name525',
      desc: '',
      args: [],
    );
  }

  /// `84333, м. Краматорськ, Краматорський р-н, вул. Рум’янцева, 4, \n тел.:  \n(06264) 6-01-64,\n(06264) 6-76-99, \n e-mail: kramatcz@donocz.gov.ua`
  String get center_place525 {
    return Intl.message(
      '84333, м. Краматорськ, Краматорський р-н, вул. Рум’янцева, 4, \n тел.:  \n(06264) 6-01-64,\n(06264) 6-76-99, \n e-mail: kramatcz@donocz.gov.ua',
      name: 'center_place525',
      desc: '',
      args: [],
    );
  }

  /// `Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П'ятниця: 8.00 - 15.45\n без перерви\n`
  String get center_time_work525 {
    return Intl.message(
      'Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П\'ятниця: 8.00 - 15.45\n без перерви\n',
      name: 'center_time_work525',
      desc: '',
      args: [],
    );
  }

  /// `https://g.page/krammcz?share`
  String get center_to_map525 {
    return Intl.message(
      'https://g.page/krammcz?share',
      name: 'center_to_map525',
      desc: '',
      args: [],
    );
  }

  /// `Покровський міський центр зайнятості`
  String get center_name527 {
    return Intl.message(
      'Покровський міський центр зайнятості',
      name: 'center_name527',
      desc: '',
      args: [],
    );
  }

  /// `85300, м. Покровськ, Покровський р-н, вул. Поштова, 3, \n тел.:  \n(0623) 52-13-37,\n(0623) 52-19-29, \n e-mail: pokrovskcz@donocz.gov.ua`
  String get center_place527 {
    return Intl.message(
      '85300, м. Покровськ, Покровський р-н, вул. Поштова, 3, \n тел.:  \n(0623) 52-13-37,\n(0623) 52-19-29, \n e-mail: pokrovskcz@donocz.gov.ua',
      name: 'center_place527',
      desc: '',
      args: [],
    );
  }

  /// `Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П'ятниця: 8.00 - 15.45\n без перерви\n`
  String get center_time_work527 {
    return Intl.message(
      'Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П\'ятниця: 8.00 - 15.45\n без перерви\n',
      name: 'center_time_work527',
      desc: '',
      args: [],
    );
  }

  /// `https://goo.gl/maps/JjxfbZZN97Txxy8y7`
  String get center_to_map527 {
    return Intl.message(
      'https://goo.gl/maps/JjxfbZZN97Txxy8y7',
      name: 'center_to_map527',
      desc: '',
      args: [],
    );
  }

  /// `Лиманський міський центр зайнятості`
  String get center_name529 {
    return Intl.message(
      'Лиманський міський центр зайнятості',
      name: 'center_name529',
      desc: '',
      args: [],
    );
  }

  /// `84404, м. Лиман, Краматорський р-н, вул. Івана Лейко,2, \n тел.:  \n(06261) 2-70-89, \n e-mail: krlimcz@donocz.gov.ua`
  String get center_place529 {
    return Intl.message(
      '84404, м. Лиман, Краматорський р-н, вул. Івана Лейко,2, \n тел.:  \n(06261) 2-70-89, \n e-mail: krlimcz@donocz.gov.ua',
      name: 'center_place529',
      desc: '',
      args: [],
    );
  }

  /// `Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П'ятниця: 8.00 - 15.45\n без перерви\n`
  String get center_time_work529 {
    return Intl.message(
      'Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П\'ятниця: 8.00 - 15.45\n без перерви\n',
      name: 'center_time_work529',
      desc: '',
      args: [],
    );
  }

  /// `https://goo.gl/maps/mZ7xUKyFGH4QF7cCA`
  String get center_to_map529 {
    return Intl.message(
      'https://goo.gl/maps/mZ7xUKyFGH4QF7cCA',
      name: 'center_to_map529',
      desc: '',
      args: [],
    );
  }

  /// `Маріупольський  міський центр зайнятості`
  String get center_name533 {
    return Intl.message(
      'Маріупольський  міський центр зайнятості',
      name: 'center_name533',
      desc: '',
      args: [],
    );
  }

  /// `87539, м. Маріуполь, Маріупольський р-н, пр. Металургів, 84б, \n тел.:  \n(068)617-00-43,\n(067)894-55-05,\n(068)669-27-47, \n e-mail: mariupolcz@donocz.gov.ua`
  String get center_place533 {
    return Intl.message(
      '87539, м. Маріуполь, Маріупольський р-н, пр. Металургів, 84б, \n тел.:  \n(068)617-00-43,\n(067)894-55-05,\n(068)669-27-47, \n e-mail: mariupolcz@donocz.gov.ua',
      name: 'center_place533',
      desc: '',
      args: [],
    );
  }

  /// `Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П'ятниця: 8.00 - 15.45\n без перерви\n`
  String get center_time_work533 {
    return Intl.message(
      'Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П\'ятниця: 8.00 - 15.45\n без перерви\n',
      name: 'center_time_work533',
      desc: '',
      args: [],
    );
  }

  /// `https://goo.gl/maps/W5eemmusTRUHYjYYA`
  String get center_to_map533 {
    return Intl.message(
      'https://goo.gl/maps/W5eemmusTRUHYjYYA',
      name: 'center_to_map533',
      desc: '',
      args: [],
    );
  }

  /// `Селидівський міський центр зайнятості`
  String get center_name535 {
    return Intl.message(
      'Селидівський міський центр зайнятості',
      name: 'center_name535',
      desc: '',
      args: [],
    );
  }

  /// `85400, м. Селидове, Покровський р-н, вул. К.Маркса, 41а,\n тел.:  \n(068)617-00-43,\n(067)894-55-05,\n(068)669-27-47, \n e-mail:selidcz@donocz.gov.ua`
  String get center_place535 {
    return Intl.message(
      '85400, м. Селидове, Покровський р-н, вул. К.Маркса, 41а,\n тел.:  \n(068)617-00-43,\n(067)894-55-05,\n(068)669-27-47, \n e-mail:selidcz@donocz.gov.ua',
      name: 'center_place535',
      desc: '',
      args: [],
    );
  }

  /// `Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П'ятниця: 8.00 - 15.45\n без перерви\n`
  String get center_time_work535 {
    return Intl.message(
      'Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П\'ятниця: 8.00 - 15.45\n без перерви\n',
      name: 'center_time_work535',
      desc: '',
      args: [],
    );
  }

  /// `https://goo.gl/maps/3LZ8MXiPmCaSaUN49`
  String get center_to_map535 {
    return Intl.message(
      'https://goo.gl/maps/3LZ8MXiPmCaSaUN49',
      name: 'center_to_map535',
      desc: '',
      args: [],
    );
  }

  /// `Слов'янський міський центр зайнятості`
  String get center_name537 {
    return Intl.message(
      'Слов\'янський міський центр зайнятості',
      name: 'center_name537',
      desc: '',
      args: [],
    );
  }

  /// ` 84122, м. Слов’янськ,  Краматорський р-н, пл. Соборна, 3,\n тел.:  \n(06262) 2-19-00, \n e-mail: slavcz@donocz.gov.ua`
  String get center_place537 {
    return Intl.message(
      ' 84122, м. Слов’янськ,  Краматорський р-н, пл. Соборна, 3,\n тел.:  \n(06262) 2-19-00, \n e-mail: slavcz@donocz.gov.ua',
      name: 'center_place537',
      desc: '',
      args: [],
    );
  }

  /// `Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П'ятниця: 8.00 - 16.00\n без перерви\n`
  String get center_time_work537 {
    return Intl.message(
      'Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П\'ятниця: 8.00 - 16.00\n без перерви\n',
      name: 'center_time_work537',
      desc: '',
      args: [],
    );
  }

  /// `https://goo.gl/maps/1JDbH8M2Vka6LMcn7`
  String get center_to_map537 {
    return Intl.message(
      'https://goo.gl/maps/1JDbH8M2Vka6LMcn7',
      name: 'center_to_map537',
      desc: '',
      args: [],
    );
  }

  /// `Вугледарський міський центр зайнятості`
  String get center_name543 {
    return Intl.message(
      'Вугледарський міський центр зайнятості',
      name: 'center_name543',
      desc: '',
      args: [],
    );
  }

  /// `85670, м. Вугледар,  Волноваський р-н, вул. Шахтарська, 16а,\n тел.:  \n(06273) 6-44-88, \n e-mail: ugledarcz@donocz.gov.ua`
  String get center_place543 {
    return Intl.message(
      '85670, м. Вугледар,  Волноваський р-н, вул. Шахтарська, 16а,\n тел.:  \n(06273) 6-44-88, \n e-mail: ugledarcz@donocz.gov.ua',
      name: 'center_place543',
      desc: '',
      args: [],
    );
  }

  /// `Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П'ятниця: 8.00 - 15.45\n без перерви\n`
  String get center_time_work543 {
    return Intl.message(
      'Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П\'ятниця: 8.00 - 15.45\n без перерви\n',
      name: 'center_time_work543',
      desc: '',
      args: [],
    );
  }

  /// `https://goo.gl/maps/mPLifanM2Xmc3yxV7`
  String get center_to_map543 {
    return Intl.message(
      'https://goo.gl/maps/mPLifanM2Xmc3yxV7',
      name: 'center_to_map543',
      desc: '',
      args: [],
    );
  }

  /// `Олександрівський районний центр зайнятості`
  String get center_name551 {
    return Intl.message(
      'Олександрівський районний центр зайнятості',
      name: 'center_name551',
      desc: '',
      args: [],
    );
  }

  /// `84000, смт. Олександрівка,  Краматорський р-н, пл. Олександра Невського, 2,\n тел.:  \n(06269) 2-15-89 \n e-mail:alexandcz@donocz.gov.ua`
  String get center_place551 {
    return Intl.message(
      '84000, смт. Олександрівка,  Краматорський р-н, пл. Олександра Невського, 2,\n тел.:  \n(06269) 2-15-89 \n e-mail:alexandcz@donocz.gov.ua',
      name: 'center_place551',
      desc: '',
      args: [],
    );
  }

  /// `Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П'ятниця: 8.00 - 15.45\n без перерви\n`
  String get center_time_work551 {
    return Intl.message(
      'Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П\'ятниця: 8.00 - 15.45\n без перерви\n',
      name: 'center_time_work551',
      desc: '',
      args: [],
    );
  }

  /// `https://goo.gl/maps/9nUSfMJ5kieLSYEv5`
  String get center_to_map551 {
    return Intl.message(
      'https://goo.gl/maps/9nUSfMJ5kieLSYEv5',
      name: 'center_to_map551',
      desc: '',
      args: [],
    );
  }

  /// `Великоновосілківський районний центр зайнятості`
  String get center_name557 {
    return Intl.message(
      'Великоновосілківський районний центр зайнятості',
      name: 'center_name557',
      desc: '',
      args: [],
    );
  }

  /// `85500, смт. Велика Новосілка, Волноваський р-н, вул. Центральна, 103,\n тел.:  \n(06243) 2-14-00 \n e-mail: velnovcz@donocz.gov.ua`
  String get center_place557 {
    return Intl.message(
      '85500, смт. Велика Новосілка, Волноваський р-н, вул. Центральна, 103,\n тел.:  \n(06243) 2-14-00 \n e-mail: velnovcz@donocz.gov.ua',
      name: 'center_place557',
      desc: '',
      args: [],
    );
  }

  /// `Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П'ятниця: 8.00 - 15.45\n без перерви\n`
  String get center_time_work557 {
    return Intl.message(
      'Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П\'ятниця: 8.00 - 15.45\n без перерви\n',
      name: 'center_time_work557',
      desc: '',
      args: [],
    );
  }

  /// `https://goo.gl/maps/iXT2JmBcUGB8t4vm8`
  String get center_to_map557 {
    return Intl.message(
      'https://goo.gl/maps/iXT2JmBcUGB8t4vm8',
      name: 'center_to_map557',
      desc: '',
      args: [],
    );
  }

  /// `Волноваський районний центр зайнятості`
  String get center_name559 {
    return Intl.message(
      'Волноваський районний центр зайнятості',
      name: 'center_name559',
      desc: '',
      args: [],
    );
  }

  /// `85700, м. Волноваха, Волноваський р-н,  вул. Обручева, 17 \n тел.: "гарячої лінії": \n (095)186-59-25,\n (06244)4-19-38, \n e-mail: volnovah.trud@donocz.gov.ua`
  String get center_place559 {
    return Intl.message(
      '85700, м. Волноваха, Волноваський р-н,  вул. Обручева, 17 \n тел.: "гарячої лінії": \n (095)186-59-25,\n (06244)4-19-38, \n e-mail: volnovah.trud@donocz.gov.ua',
      name: 'center_place559',
      desc: '',
      args: [],
    );
  }

  /// `Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П'ятниця: 8.00 - 15.45\n без перерви\n`
  String get center_time_work559 {
    return Intl.message(
      'Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П\'ятниця: 8.00 - 15.45\n без перерви\n',
      name: 'center_time_work559',
      desc: '',
      args: [],
    );
  }

  /// `Ми на карті`
  String get center_mape {
    return Intl.message(
      'Ми на карті',
      name: 'center_mape',
      desc: '',
      args: [],
    );
  }

  /// `https://goo.gl/maps/bcnYv9VwfQqymm9r5`
  String get center_to_map559 {
    return Intl.message(
      'https://goo.gl/maps/bcnYv9VwfQqymm9r5',
      name: 'center_to_map559',
      desc: '',
      args: [],
    );
  }

  /// `Нікольський районний центр зайнятості`
  String get center_name561 {
    return Intl.message(
      'Нікольський районний центр зайнятості',
      name: 'center_name561',
      desc: '',
      args: [],
    );
  }

  /// `87000 смт. Нікольське,  Волноваський р-н, вул. Паркова, 25, \n тел.: \n(06246) 2-04-87, \n e-mail: nikolcz@donocz.gov.ua`
  String get center_place561 {
    return Intl.message(
      '87000 смт. Нікольське,  Волноваський р-н, вул. Паркова, 25, \n тел.: \n(06246) 2-04-87, \n e-mail: nikolcz@donocz.gov.ua',
      name: 'center_place561',
      desc: '',
      args: [],
    );
  }

  /// `Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П'ятниця: 8.00 - 15.45\n без перерви\n`
  String get center_time_work561 {
    return Intl.message(
      'Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П\'ятниця: 8.00 - 15.45\n без перерви\n',
      name: 'center_time_work561',
      desc: '',
      args: [],
    );
  }

  /// `https://goo.gl/maps/mx5G5j5x8s5nQMzh6`
  String get center_to_map561 {
    return Intl.message(
      'https://goo.gl/maps/mx5G5j5x8s5nQMzh6',
      name: 'center_to_map561',
      desc: '',
      args: [],
    );
  }

  /// `Мар'їнський районний центр зайнятості`
  String get center_name569 {
    return Intl.message(
      'Мар\'їнський районний центр зайнятості',
      name: 'center_name569',
      desc: '',
      args: [],
    );
  }

  /// `85600 м. Мар'їнка, Покровський р-н, вул. Сергія Прокоф'єва,6, \n тел.: \n(095) 068-01-86, \n e-mail: marincz@donocz.gov.ua`
  String get center_place569 {
    return Intl.message(
      '85600 м. Мар\'їнка, Покровський р-н, вул. Сергія Прокоф\'єва,6, \n тел.: \n(095) 068-01-86, \n e-mail: marincz@donocz.gov.ua',
      name: 'center_place569',
      desc: '',
      args: [],
    );
  }

  /// `Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П'ятниця: 8.00 - 15.45\n без перерви\n`
  String get center_time_work569 {
    return Intl.message(
      'Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П\'ятниця: 8.00 - 15.45\n без перерви\n',
      name: 'center_time_work569',
      desc: '',
      args: [],
    );
  }

  /// `https://goo.gl/maps/9QQsTm4oxRKcvjpx7`
  String get center_to_map569 {
    return Intl.message(
      'https://goo.gl/maps/9QQsTm4oxRKcvjpx7',
      name: 'center_to_map569',
      desc: '',
      args: [],
    );
  }

  /// `Мангушський районний центр зайнятості`
  String get center_name573 {
    return Intl.message(
      'Мангушський районний центр зайнятості',
      name: 'center_name573',
      desc: '',
      args: [],
    );
  }

  /// `87400, смт. Мангуш, Маріупольський р-н, вул. Титова, 49а, \n тел.: \n(06297) 2-36-42, \n e-mail: pershotravcz@donocz.gov.ua`
  String get center_place573 {
    return Intl.message(
      '87400, смт. Мангуш, Маріупольський р-н, вул. Титова, 49а, \n тел.: \n(06297) 2-36-42, \n e-mail: pershotravcz@donocz.gov.ua',
      name: 'center_place573',
      desc: '',
      args: [],
    );
  }

  /// `Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П'ятниця: 8.00 - 15.45\n без перерви\n`
  String get center_time_work573 {
    return Intl.message(
      'Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П\'ятниця: 8.00 - 15.45\n без перерви\n',
      name: 'center_time_work573',
      desc: '',
      args: [],
    );
  }

  /// `https://www.google.com/maps/dir/47.5922432,37.4996992/47.066468,37.3147631/@47.3286099,37.2201128,10z/data=!3m1!4b1!4m4!4m3!1m1!4e1!1m0`
  String get center_to_map573 {
    return Intl.message(
      'https://www.google.com/maps/dir/47.5922432,37.4996992/47.066468,37.3147631/@47.3286099,37.2201128,10z/data=!3m1!4b1!4m4!4m3!1m1!4e1!1m0',
      name: 'center_to_map573',
      desc: '',
      args: [],
    );
  }

  /// `Новогродівський міський центр зайнятості`
  String get center_name585 {
    return Intl.message(
      'Новогродівський міський центр зайнятості',
      name: 'center_name585',
      desc: '',
      args: [],
    );
  }

  /// `85483, м. Новогродівка,  Покровський р-н, вул. Молодіжна, 1, \n тел.: \n(06237) 3-44-90б \n e-mail: novogrodcz@donocz.gov.ua`
  String get center_place585 {
    return Intl.message(
      '85483, м. Новогродівка,  Покровський р-н, вул. Молодіжна, 1, \n тел.: \n(06237) 3-44-90б \n e-mail: novogrodcz@donocz.gov.ua',
      name: 'center_place585',
      desc: '',
      args: [],
    );
  }

  /// `Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П'ятниця: 8.00 - 15.45\n без перерви\n`
  String get center_time_work585 {
    return Intl.message(
      'Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П\'ятниця: 8.00 - 15.45\n без перерви\n',
      name: 'center_time_work585',
      desc: '',
      args: [],
    );
  }

  /// `https://goo.gl/maps/mwXr4cBvbsi21bUe8`
  String get center_to_map585 {
    return Intl.message(
      'https://goo.gl/maps/mwXr4cBvbsi21bUe8',
      name: 'center_to_map585',
      desc: '',
      args: [],
    );
  }

  /// `      Якщо Ви шукаєте роботу – зверніться до державної служби  зайнятості, яка стане Вашим особистим консультантом та надійним помічником у її пошуку.\n        У  центрі  зайнятості Ви можете самостійно отримати корисну та цікаву для Вас інформацію.`
  String get welcome_work {
    return Intl.message(
      '      Якщо Ви шукаєте роботу – зверніться до державної служби  зайнятості, яка стане Вашим особистим консультантом та надійним помічником у її пошуку.\n        У  центрі  зайнятості Ви можете самостійно отримати корисну та цікаву для Вас інформацію.',
      name: 'welcome_work',
      desc: '',
      args: [],
    );
  }

  /// `ПЕРЕГЛЯНУТИ ВАКАНСІЇ ПО УКРАЇНІ`
  String get work_buttton_choice_0 {
    return Intl.message(
      'ПЕРЕГЛЯНУТИ ВАКАНСІЇ ПО УКРАЇНІ',
      name: 'work_buttton_choice_0',
      desc: '',
      args: [],
    );
  }

  /// `ПЕРЕГЛЯНУТИ ВАКАНСІЇ  ПО РАЙОНУ`
  String get work_buttton_choice_1 {
    return Intl.message(
      'ПЕРЕГЛЯНУТИ ВАКАНСІЇ  ПО РАЙОНУ',
      name: 'work_buttton_choice_1',
      desc: '',
      args: [],
    );
  }

  /// `ПЕРЕГЛЯНУТИ ВАКАНСІЇ  ПО ГРОМАДІ`
  String get work_buttton_choice_2 {
    return Intl.message(
      'ПЕРЕГЛЯНУТИ ВАКАНСІЇ  ПО ГРОМАДІ',
      name: 'work_buttton_choice_2',
      desc: '',
      args: [],
    );
  }

  /// `ІНФОРМАЦІЯ ПРО РОБОТОДАВЦІВ РАЙОНУ`
  String get work_buttton_choice_3 {
    return Intl.message(
      'ІНФОРМАЦІЯ ПРО РОБОТОДАВЦІВ РАЙОНУ',
      name: 'work_buttton_choice_3',
      desc: '',
      args: [],
    );
  }

  /// `Картка вакансії`
  String get app_barr_vac_detail {
    return Intl.message(
      'Картка вакансії',
      name: 'app_barr_vac_detail',
      desc: '',
      args: [],
    );
  }

  /// `Номер вакансії:`
  String get vac_detail_number {
    return Intl.message(
      'Номер вакансії:',
      name: 'vac_detail_number',
      desc: '',
      args: [],
    );
  }

  /// `Основні вимоги до кандидата`
  String get vac_detail_vumog {
    return Intl.message(
      'Основні вимоги до кандидата',
      name: 'vac_detail_vumog',
      desc: '',
      args: [],
    );
  }

  /// `Посада:`
  String get vac_detail_posad {
    return Intl.message(
      'Посада:',
      name: 'vac_detail_posad',
      desc: '',
      args: [],
    );
  }

  /// `Освітній рівень:`
  String get vac_detail_osvit {
    return Intl.message(
      'Освітній рівень:',
      name: 'vac_detail_osvit',
      desc: '',
      args: [],
    );
  }

  /// `Спеціальність (назва):`
  String get vac_detail_spec {
    return Intl.message(
      'Спеціальність (назва):',
      name: 'vac_detail_spec',
      desc: '',
      args: [],
    );
  }

  /// `Завдання та обов'язки:`
  String get vac_detail_responsibility {
    return Intl.message(
      'Завдання та обов\'язки:',
      name: 'vac_detail_responsibility',
      desc: '',
      args: [],
    );
  }

  /// `Місце проведення робіт:`
  String get vac_detail_placework {
    return Intl.message(
      'Місце проведення робіт:',
      name: 'vac_detail_placework',
      desc: '',
      args: [],
    );
  }

  /// `Умови праці`
  String get vac_detail_conditions {
    return Intl.message(
      'Умови праці',
      name: 'vac_detail_conditions',
      desc: '',
      args: [],
    );
  }

  /// `Режими роботи:`
  String get vac_detail_operating_modes {
    return Intl.message(
      'Режими роботи:',
      name: 'vac_detail_operating_modes',
      desc: '',
      args: [],
    );
  }

  /// `Характеристики робіт:`
  String get vac_detail_characteristics {
    return Intl.message(
      'Характеристики робіт:',
      name: 'vac_detail_characteristics',
      desc: '',
      args: [],
    );
  }

  /// `Заробітна плата:`
  String get vac_detail_salary {
    return Intl.message(
      'Заробітна плата:',
      name: 'vac_detail_salary',
      desc: '',
      args: [],
    );
  }

  /// `Телефон для зв'язку:`
  String get vac_detail_tel {
    return Intl.message(
      'Телефон для зв\'язку:',
      name: 'vac_detail_tel',
      desc: '',
      args: [],
    );
  }

  /// `     Професійне навчання здійснюється у закладах професійної (професійно-технічної), фахової передвищої та вищої освіти, у тому числі у центрах професійно-технічної освіти державної служби зайнятості,  на підприємствах, в установах та організаціях незалежно від форми власності, виду діяльності та господарювання або безпосередньо у роботодавців - замовників кадрів.\n     Для організації професійного навчання  зареєстрованих безробітних та (або) їх проживання в період такого навчання центр зайнятості здійснює відбір закладів освіти.\n     За додатковою інформацією звертайтесь до найближчого центру зайнятості`
  String get navch {
    return Intl.message(
      '     Професійне навчання здійснюється у закладах професійної (професійно-технічної), фахової передвищої та вищої освіти, у тому числі у центрах професійно-технічної освіти державної служби зайнятості,  на підприємствах, в установах та організаціях незалежно від форми власності, виду діяльності та господарювання або безпосередньо у роботодавців - замовників кадрів.\n     Для організації професійного навчання  зареєстрованих безробітних та (або) їх проживання в період такого навчання центр зайнятості здійснює відбір закладів освіти.\n     За додатковою інформацією звертайтесь до найближчого центру зайнятості',
      name: 'navch',
      desc: '',
      args: [],
    );
  }

  /// `Посилання`
  String get navch0 {
    return Intl.message(
      'Посилання',
      name: 'navch0',
      desc: '',
      args: [],
    );
  }

  /// `Перелік закладів освіти`
  String get navch1 {
    return Intl.message(
      'Перелік закладів освіти',
      name: 'navch1',
      desc: '',
      args: [],
    );
  }

  /// `Перелік центрів професійно-технічної\n освіти державної служби зайнятості `
  String get navch2 {
    return Intl.message(
      'Перелік центрів професійно-технічної\n освіти державної служби зайнятості ',
      name: 'navch2',
      desc: '',
      args: [],
    );
  }

  /// `ПРОФЕСІЙНЕ НАВЧАННЯ`
  String get navch_title {
    return Intl.message(
      'ПРОФЕСІЙНЕ НАВЧАННЯ',
      name: 'navch_title',
      desc: '',
      args: [],
    );
  }

  /// `     Якщо Ви бажаєте отримати гідну роботу та досягти успіху – скористайтеся можливістю пройти професійне навчання шляхом:\n•\tпрофесійної підготовки\n•\tперепідготовки\n•\tпідвищення кваліфікації`
  String get profnavch {
    return Intl.message(
      '     Якщо Ви бажаєте отримати гідну роботу та досягти успіху – скористайтеся можливістю пройти професійне навчання шляхом:\n•\tпрофесійної підготовки\n•\tперепідготовки\n•\tпідвищення кваліфікації',
      name: 'profnavch',
      desc: '',
      args: [],
    );
  }

  /// `Картка роботодавця`
  String get pasport_title {
    return Intl.message(
      'Картка роботодавця',
      name: 'pasport_title',
      desc: '',
      args: [],
    );
  }

  /// `Номер вакансії:`
  String get pasport {
    return Intl.message(
      'Номер вакансії:',
      name: 'pasport',
      desc: '',
      args: [],
    );
  }

  /// `Основні вимоги до кандидата`
  String get pasport0 {
    return Intl.message(
      'Основні вимоги до кандидата',
      name: 'pasport0',
      desc: '',
      args: [],
    );
  }

  /// `Вид економічної діяльності`
  String get pasport1 {
    return Intl.message(
      'Вид економічної діяльності',
      name: 'pasport1',
      desc: '',
      args: [],
    );
  }

  /// `Юридична адреса ПОУ`
  String get pasport2 {
    return Intl.message(
      'Юридична адреса ПОУ',
      name: 'pasport2',
      desc: '',
      args: [],
    );
  }

  /// `Фактична адреса ПОУ`
  String get pasport3 {
    return Intl.message(
      'Фактична адреса ПОУ',
      name: 'pasport3',
      desc: '',
      args: [],
    );
  }

  /// `Основний професійний склад працівників`
  String get pasport4 {
    return Intl.message(
      'Основний професійний склад працівників',
      name: 'pasport4',
      desc: '',
      args: [],
    );
  }

  /// `Чисельність працівників`
  String get pasport5 {
    return Intl.message(
      'Чисельність працівників',
      name: 'pasport5',
      desc: '',
      args: [],
    );
  }

  /// `Умови праці`
  String get pasport6 {
    return Intl.message(
      'Умови праці',
      name: 'pasport6',
      desc: '',
      args: [],
    );
  }

  /// `Режим роботи, змінність`
  String get pasport7 {
    return Intl.message(
      'Режим роботи, змінність',
      name: 'pasport7',
      desc: '',
      args: [],
    );
  }

  /// `Ринкоутворююче`
  String get pasport8 {
    return Intl.message(
      'Ринкоутворююче',
      name: 'pasport8',
      desc: '',
      args: [],
    );
  }

  /// `Транспортна доступність`
  String get pasport9 {
    return Intl.message(
      'Транспортна доступність',
      name: 'pasport9',
      desc: '',
      args: [],
    );
  }

  /// `ПІБ керівника`
  String get pasport10 {
    return Intl.message(
      'ПІБ керівника',
      name: 'pasport10',
      desc: '',
      args: [],
    );
  }

  /// `Наявність гуртожитку, житла`
  String get pasport11 {
    return Intl.message(
      'Наявність гуртожитку, житла',
      name: 'pasport11',
      desc: '',
      args: [],
    );
  }

  /// `Телефон відділу кадрів`
  String get pasport12 {
    return Intl.message(
      'Телефон відділу кадрів',
      name: 'pasport12',
      desc: '',
      args: [],
    );
  }

  /// `Телефон рекрутера`
  String get pasport13 {
    return Intl.message(
      'Телефон рекрутера',
      name: 'pasport13',
      desc: '',
      args: [],
    );
  }

  /// `переглянути на карті`
  String get pasport14 {
    return Intl.message(
      'переглянути на карті',
      name: 'pasport14',
      desc: '',
      args: [],
    );
  }

  /// `Пошук за назвою`
  String get pasport_list {
    return Intl.message(
      'Пошук за назвою',
      name: 'pasport_list',
      desc: '',
      args: [],
    );
  }

  /// `Роботодавець (назва):`
  String get pasport_list0 {
    return Intl.message(
      'Роботодавець (назва):',
      name: 'pasport_list0',
      desc: '',
      args: [],
    );
  }

  /// `ЯКА РОБОТА ВВАЖАЄТЬСЯ ПІДХОДЯЩОЮ?`
  String get select_question {
    return Intl.message(
      'ЯКА РОБОТА ВВАЖАЄТЬСЯ ПІДХОДЯЩОЮ?',
      name: 'select_question',
      desc: '',
      args: [],
    );
  }

  /// `ЯКИЙ ТЕРМІН ЗВЕРНЕННЯ ПІСЛЯ ЗВІЛЬНЕННЯ?`
  String get select_question1 {
    return Intl.message(
      'ЯКИЙ ТЕРМІН ЗВЕРНЕННЯ ПІСЛЯ ЗВІЛЬНЕННЯ?',
      name: 'select_question1',
      desc: '',
      args: [],
    );
  }

  /// `ЯКІ ДОКУМЕНТИ НЕОБХІДНІ ДЛЯ РЕЄСТРАЦІЇ? `
  String get select_question2 {
    return Intl.message(
      'ЯКІ ДОКУМЕНТИ НЕОБХІДНІ ДЛЯ РЕЄСТРАЦІЇ? ',
      name: 'select_question2',
      desc: '',
      args: [],
    );
  }

  /// `ЯК ПРИЗНАЧАЄТЬСЯ ДОПОМОГА ПО БЕЗРОБІТТЮ?`
  String get select_question3 {
    return Intl.message(
      'ЯК ПРИЗНАЧАЄТЬСЯ ДОПОМОГА ПО БЕЗРОБІТТЮ?',
      name: 'select_question3',
      desc: '',
      args: [],
    );
  }

  /// `КАЛЬКУЛЯТОР ДОПОМОГИ ПО БЕЗРОБІТТЮ`
  String get select_question4 {
    return Intl.message(
      'КАЛЬКУЛЯТОР ДОПОМОГИ ПО БЕЗРОБІТТЮ',
      name: 'select_question4',
      desc: '',
      args: [],
    );
  }

  /// `ЗАЛИШИЛИСЯ ПИТАННЯ?`
  String get select_question5 {
    return Intl.message(
      'ЗАЛИШИЛИСЯ ПИТАННЯ?',
      name: 'select_question5',
      desc: '',
      args: [],
    );
  }

  /// `НАВЧАННЯ ЗА РАХУНОК ВАУЧЕРІВ`
  String get vaucher_title {
    return Intl.message(
      'НАВЧАННЯ ЗА РАХУНОК ВАУЧЕРІВ',
      name: 'vaucher_title',
      desc: '',
      args: [],
    );
  }

  /// `ЯК ОТРИМАТИ ВАУЧЕР?`
  String get vaucher {
    return Intl.message(
      'ЯК ОТРИМАТИ ВАУЧЕР?',
      name: 'vaucher',
      desc: '',
      args: [],
    );
  }

  /// `Оберіть необхідну професію або спеціальність з переліку`
  String get vaucher0 {
    return Intl.message(
      'Оберіть необхідну професію або спеціальність з переліку',
      name: 'vaucher0',
      desc: '',
      args: [],
    );
  }

  /// `ПЛАНУЙ МАЙБУТНЄ ЗАРАЗ`
  String get proforient {
    return Intl.message(
      'ПЛАНУЙ МАЙБУТНЄ ЗАРАЗ',
      name: 'proforient',
      desc: '',
      args: [],
    );
  }

  /// `РОЗВИТОК ПІДПРИЄМНИЦТВА - ШЛЯХ ДО УСПІХУ ГРОМАДИ`
  String get proforient1 {
    return Intl.message(
      'РОЗВИТОК ПІДПРИЄМНИЦТВА - ШЛЯХ ДО УСПІХУ ГРОМАДИ',
      name: 'proforient1',
      desc: '',
      args: [],
    );
  }

  /// `ЦИФРОВА ГРАМОТНІСТЬ`
  String get proforient2 {
    return Intl.message(
      'ЦИФРОВА ГРАМОТНІСТЬ',
      name: 'proforient2',
      desc: '',
      args: [],
    );
  }

  /// ` Калькулятор допомоги по безробіттю\n`
  String get calc {
    return Intl.message(
      ' Калькулятор допомоги по безробіттю\n',
      name: 'calc',
      desc: '',
      args: [],
    );
  }

  /// `Увага!\n`
  String get calc1 {
    return Intl.message(
      'Увага!\n',
      name: 'calc1',
      desc: '',
      args: [],
    );
  }

  /// ` Розрахунок необхідний, якщо Ви протягом року,  що передував реєстрації в \nслужбі зайнятості,  мали страховий стаж не менше 6 місяців\n`
  String get calc2 {
    return Intl.message(
      ' Розрахунок необхідний, якщо Ви протягом року,  що передував реєстрації в \nслужбі зайнятості,  мали страховий стаж не менше 6 місяців\n',
      name: 'calc2',
      desc: '',
      args: [],
    );
  }

  /// `\nВСІ ДАНІ ДОВІДКОВІ\n ТА НЕ Є ПІДСТАВОЮ ДЛЯ НАРАХУВАННЯ ДОПОМОГИ ПО БЕЗРОБІТТЮ!`
  String get calc3 {
    return Intl.message(
      '\nВСІ ДАНІ ДОВІДКОВІ\n ТА НЕ Є ПІДСТАВОЮ ДЛЯ НАРАХУВАННЯ ДОПОМОГИ ПО БЕЗРОБІТТЮ!',
      name: 'calc3',
      desc: '',
      args: [],
    );
  }

  /// `п.1. Оберіть стаж`
  String get calc4 {
    return Intl.message(
      'п.1. Оберіть стаж',
      name: 'calc4',
      desc: '',
      args: [],
    );
  }

  /// `до 2- років`
  String get calc5 {
    return Intl.message(
      'до 2- років',
      name: 'calc5',
      desc: '',
      args: [],
    );
  }

  /// `від 2-х до 6 років`
  String get calc6 {
    return Intl.message(
      'від 2-х до 6 років',
      name: 'calc6',
      desc: '',
      args: [],
    );
  }

  /// `від 6 років до 10 років`
  String get calc7 {
    return Intl.message(
      'від 6 років до 10 років',
      name: 'calc7',
      desc: '',
      args: [],
    );
  }

  /// `більше 10 років`
  String get calc8 {
    return Intl.message(
      'більше 10 років',
      name: 'calc8',
      desc: '',
      args: [],
    );
  }

  /// ` Оберіть стаж`
  String get calc9 {
    return Intl.message(
      ' Оберіть стаж',
      name: 'calc9',
      desc: '',
      args: [],
    );
  }

  /// ` п.2. Вкажіть розмір з/п*`
  String get calc10 {
    return Intl.message(
      ' п.2. Вкажіть розмір з/п*',
      name: 'calc10',
      desc: '',
      args: [],
    );
  }

  /// ` *(нарахована офіційна середньомісячна заробітна плата за останні 12 місяців)`
  String get calc11 {
    return Intl.message(
      ' *(нарахована офіційна середньомісячна заробітна плата за останні 12 місяців)',
      name: 'calc11',
      desc: '',
      args: [],
    );
  }

  /// `Перші 90 днів\n(в розрахунку за місяць),грн`
  String get calc12 {
    return Intl.message(
      'Перші 90 днів\n(в розрахунку за місяць),грн',
      name: 'calc12',
      desc: '',
      args: [],
    );
  }

  /// `Наступні 90 днів\n(в розрахунку за місяць),грн`
  String get calc13 {
    return Intl.message(
      'Наступні 90 днів\n(в розрахунку за місяць),грн',
      name: 'calc13',
      desc: '',
      args: [],
    );
  }

  /// `Залишок днів\n(в розрахунку за місяць),грн`
  String get calc14 {
    return Intl.message(
      'Залишок днів\\n(в розрахунку за місяць),грн',
      name: 'calc14',
      desc: '',
      args: [],
    );
  }

  /// `Вкажіть розмір з/п`
  String get calc15 {
    return Intl.message(
      'Вкажіть розмір з/п',
      name: 'calc15',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'ua'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
