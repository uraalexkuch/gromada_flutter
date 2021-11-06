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

  /// `Кількість рад, що об\'єдналися`
  String get labour2 {
    return Intl.message(
      'Кількість рад, що об\\\'єдналися',
      name: 'labour2',
      desc: '',
      args: [],
    );
  }

  /// `Площа  громади`
  String get labour3 {
    return Intl.message(
      'Площа  громади',
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

  /// `Міське населення`
  String get labour5 {
    return Intl.message(
      'Міське населення',
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

  /// `Отримали роботу`
  String get labour14 {
    return Intl.message(
      'Отримали роботу',
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

  /// `Волноваський районний центр зайнятості`
  String get center_name {
    return Intl.message(
      'Волноваський районний центр зайнятості',
      name: 'center_name',
      desc: '',
      args: [],
    );
  }

  /// `85700, м. Волноваха,  вул. Обручева, 17 \n тел. "гарячої лінії": \n (095)186-59-25,\n (06244)4-19-38, \n e-mail: volnovah.trud@donocz.gov.ua`
  String get center_place {
    return Intl.message(
      '85700, м. Волноваха,  вул. Обручева, 17 \n тел. "гарячої лінії": \n (095)186-59-25,\n (06244)4-19-38, \n e-mail: volnovah.trud@donocz.gov.ua',
      name: 'center_place',
      desc: '',
      args: [],
    );
  }

  /// `Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П'ятниця: 8.00 - 15.45\n без перерви\n`
  String get center_time_work {
    return Intl.message(
      'Режим роботи:\n Понеділок - Четвер:\n 8.00-17.00\n без перерви\n П\'ятниця: 8.00 - 15.45\n без перерви\n',
      name: 'center_time_work',
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

  /// `     Якщо Ви бажаєте отримати гідну роботу та досягти успіху – скористайтеся можливістю пройти професійне навчання шляхом:' +\n                          '\n' +\n                          '\n' +\n                          "•\tпрофесійної підготовки" +\n                          '\n' +\n                          "•\tперепідготовки" +\n                          '\n' +\n                          "•\tпідвищення кваліфікації`
  String get profnavch {
    return Intl.message(
      '     Якщо Ви бажаєте отримати гідну роботу та досягти успіху – скористайтеся можливістю пройти професійне навчання шляхом:\' +\n                          \'\\n\' +\n                          \'\\n\' +\n                          "•\tпрофесійної підготовки" +\n                          \'\\n\' +\n                          "•\tперепідготовки" +\n                          \'\\n\' +\n                          "•\tпідвищення кваліфікації',
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

  /// ` Розрахунок необхідний, якщо Ви протягом року,  що передував реєстрації в  " +\n                                          "службі зайнятості,  мали страховий стаж не менше 6 місяців\n`
  String get calc2 {
    return Intl.message(
      ' Розрахунок необхідний, якщо Ви протягом року,  що передував реєстрації в  " +\n                                          "службі зайнятості,  мали страховий стаж не менше 6 місяців\n',
      name: 'calc2',
      desc: '',
      args: [],
    );
  }

  /// `\n" +\n                                          "ВСІ ДАНІ ДОВІДКОВІ\n"\n                                              " ТА НЕ Є ПІДСТАВОЮ ДЛЯ НАРАХУВАННЯ ДОПОМОГИ ПО БЕЗРОБІТТЮ!`
  String get calc3 {
    return Intl.message(
      '\n" +\n                                          "ВСІ ДАНІ ДОВІДКОВІ\n"\n                                              " ТА НЕ Є ПІДСТАВОЮ ДЛЯ НАРАХУВАННЯ ДОПОМОГИ ПО БЕЗРОБІТТЮ!',
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
