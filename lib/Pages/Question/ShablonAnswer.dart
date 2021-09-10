import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

const String content1 =
    ('      Згідно зі статтею 46 Закону України «Про зайнятість населення» підходящою для безробітного вважається робота, що відповідає освіті, професії (спеціальності), кваліфікації особи з урахуванням доступності транспортного обслуговування.\n      Заробітна плата повинна бути не нижче розміру заробітної плати такої особи за останнім місцем роботи з урахуванням середнього рівня заробітної плати, що склався у регіоні за минулий місяць.\n      Під час пропонування підходящої роботи враховується тривалість роботи за професією (спеціальністю),кваліфікація, досвід, тривалість безробіття, а також потреба ринку праці');
const content2 =
    ('Чинним законодавством не встановлено граничних термінів реєстрації громадянина в державній службі зайнятості після звільнення з роботи.');
const content3 = ("     Реєстрація відбувається відповідно до Порядку реєстрації, перереєстрації безробітних та ведення обліку осіб, які шукають роботу, затвердженого постановою Кабінету Міністрів України від 19 вересня 2018 року № 792.' " +
    "\n" +
    '     Особи, які шукають роботу, пред’являють:' +
    "\n" +
    "\n" +
    '     -	громадяни України - паспорт громадянина України або інший документ, що посвідчує особу та підтверджує громадянство України;' +
    "\n" +
    '     -	іноземці та особи без громадянства, які постійно проживають в Україні, визнані в Україні біженцями або особами, які потребують додаткового захисту, яким надано в Україні притулок чи тимчасовий захист, а також ті, що одержали дозвіл на імміграцію, - посвідку на постійне проживання або посвідчення біженця або особи, яка потребує додаткового захисту або якій надано тимчасовий захист;' +
    "\n" +
    '     -	довідку про присвоєння реєстраційного номера облікової картки платника податків (крім фізичних осіб, які через свої релігійні переконання відмовилися від прийняття реєстраційного номера облікової картки платника податків, повідомили про це відповідному контролюючому органу і мають відмітку в паспорті громадянина України);' +
    "\n" +
    '     -	трудову книжку (цивільно-правовий договір чи документ, який підтверджує припинення останнього виду зайнятості). Особа, яка втратила трудову книжку, пред’являє дублікат трудової книжки чи довідку архівної установи про прийняття та звільнення з роботи;' +
    "\n" +
    '     -	документ про освіту;' +
    "\n" +
    '     -	військово-обліковий документ для осіб, які звільнилися із строкової	військової служби.' +
    "\n" +
    "\n" +
    '     Особи, які зазначені у частині першій статті 14 Закону України «Прозайнятість населення» подають ще додаткові документи.' +
    "\n" +
    "\n" +
    '     Особа, яка шукає роботу, для реєстрації як безробітної, подає до центру зайнятості заяву про надання статусу у такі способи:' +
    "\n" +
    '     -	особисто, під час відвідування центру зайнятості;' +
    "\n" +
    '     -	через портал держаних послуг «Дія», за наявності кваліфікованого електронного підпису(КЕП) посилання => https://diia.gov.ua/services/dopomoga-po-bezrobittyu');
const content4 = ('     Розмір виплати допомоги по безробіттю залежить від страхового стажу, підстави припинення трудових відносин та розміру заробітної плати, отримуваної громадянином перед звільненням.' +
    "\n" +
    '     Умови, тривалість та розмір виплати допомоги по безробіттю визначені статтями 22 та 23 Закону України «Про загальнообов’язкове державне соціальне страхування на випадок безробіття» від 02.03.2000 № 1533-III.' +
    "\n" +
    '\n' +
    '     Допомога по безробіттю призначається центрами зайнятості з восьмого дня після реєстрації безробітного за його особистою заявою за формою, наведеною в додатку 1 до Порядку надання допомоги по безробіттю, у тому числі одноразової її виплати для організації безробітним підприємницької діяльності, затвердженого наказом Міністерства розвитку економіки, торгівлі та сільського господарства України від 06.04.2020 № 624.' +
    "\n" +
    '\n' +
    '     У період проведення заходів, спрямованих на запобігання виникненню та поширенню коронавірусної хвороби (COVID-19), а також локалізацію та ліквідацію її спалахів та епідемій, допомога по безробіттю призначається з першого дня після надання статусу безробітного.' +
    "\n" +
    "\n" +
    '     Якщо страховий стаж протягом 12 місяців, що передують місяцю реєстрації особи як безробітної, становить шість або більше місяців, допомога по безробіттю визначається у відсотках до її середньої заробітної плати (доходу, грошового забезпечення), визначеної відповідно до Порядку обчислення середньої заробітної плати (доходу, грошового забезпечення) для розрахунку виплат за загальнообов\'язковим державним соціальним страхуванням, затвердженого постановою Кабінету Міністрів України від 26 вересня 2001 року № 1266 (зі змінами), залежно від страхового стажу:' +
    "\n" +
    '\n' +
    '     до 2 років - 50 відсотків;' +
    "\n" +
    '     від 2 до 6 років - 55 відсотків;' +
    "\n" +
    '     від 6 до 10 років - 60 відсотків;' +
    "\n" +
    '     понад 10 років - 70 відсотків.' +
    "\n" +
    "\n" +
    '     Залежно від тривалості безробіття допомога по безробіттю зменшується і виплачується у відсотках до визначеного розміру:' +
    "\n" +
    '     перші 90 календарних днів - 100 відсотків;' +
    "\n" +
    '     протягом наступних 90 календарних днів - 80 відсотків;' +
    "\n" +
    '   далі - 70 відсотків.' +
    "\n" +
    "\n" +
    '   Якщо страховий стаж протягом 12 місяців, які передують місяцю реєстрації особи як безробітної, менше шести місяців або особа була звільнена з останнього місця роботи з підстав, передбачених пунктами 3, 4, 7 та 8 частини першої статті 40, статтями 41 (крім пункту 5) та 45 Кодексу законів про працю України, а також з аналогічних підстав, визначених іншими законами України, наслідком яких є притягнення особи до дисциплінарної, адміністративної, кримінальної відповідальності, допомога по безробіттю призначається в мінімальному розмірі, що встановлюється Правлінням Фонду загальнообов\'язкового державного соціального страхування України на випадок безробіття.');
const content5 =
    ("Відповідно до частини 3 статті 22 Закону України \"Про загальнообов\"язкове державне соціальне страхування на випадок безробіття\" допомога по безробіттю виплачується з 8 дня після отримання статусу безробітного. Допомога по безробіттю виплачується не рідше ніж два рази на місяць, а за згодою безробітного - один раз на місяць. Період, за який здійснюється поточне нарахування допомоги по безробіттю, обмежується датою, що передує дню останнього відвідування безробітним центру зайнятості, де він зареєстрований");

class ShablonAnswer extends StatefulWidget {
  @override
  _ShablonAnswerState createState() => _ShablonAnswerState();
}

class _ShablonAnswerState extends State<ShablonAnswer> {
  late final dynamic value;
  late String? gromada;

  @override
  void initState() {
    value = Get.arguments!;
    super.initState();
    if (int.parse(value) == 1) {
      gromada = content1;
    } else {
      if (int.parse(value) == 2) {
        gromada = content2;
      } else {
        if (int.parse(value) == 3) {
          gromada = content3;
        } else {
          if (int.parse(value) == 4) {
            gromada = content4;
          } else {
            if (int.parse(value) == 5) {
              gromada = content5;
            } else {
              gromada = "null";
            }
          }
        }
      }
    }
    //print(gromada);
    // print(value);
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      return Scaffold(
          appBar: AppBar(
            title: Text('Онлайн помічник'),
          ),
          body: Container(
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
            child: Padding(
              padding: Device.screenType.toString() == 'ScreenType.tablet'
                  ? const EdgeInsets.all(32.0)
                  : const EdgeInsets.all(8.0),
              child: Column(children: [
                SizedBox(
                  height: 2.h,
                ),
                Expanded(
                    child: Container(
                        width: 100.w,
                        child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: SingleChildScrollView(
                              child: Card(
                                margin: EdgeInsets.only(
                                    left: 5.0, right: 5.0, bottom: 5.0),
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: HexColor('#FFD947'), width: 3),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25))),
                                elevation: 20,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Linkify(
                                    onOpen: (link) async {
                                      if (await canLaunch(link.url)) {
                                        await launch(link.url);
                                      } else {
                                        throw 'Could not launch $link';
                                      }
                                    },
                                    text: '${gromada}',
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        color: HexColor('#005BAA'),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.justify,
                                    linkStyle: TextStyle(color: Colors.red),
                                  ),
                                ),
                              ),
                            ))))
              ]),
            ),
          ));
    });
  }
}
