import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';



class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var chosenValue;
 var zp='0';
bool load=true;

  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      return Scaffold(
          resizeToAvoidBottomInset : false,
        appBar: AppBar(
          title: const Text('Онлайн помічник', textAlign: TextAlign.center),
        ),
        body: SafeArea(
          left: true,
          top: true,
          right: true,
          bottom: true,
          child: Container(
            decoration: BoxDecoration(
              color: HexColor("#FFD947"),
            ),
            child: SingleChildScrollView(
      child:
      Column(
              children: [

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: RichText(
        text: TextSpan(
            style:  TextStyle(
            decoration: TextDecoration.none,
            color: HexColor('#005BAA'),
            fontSize: 16.sp,
            fontWeight: FontWeight.bold),

          children:  <TextSpan>[
          TextSpan( text: ' Калькулятор допомоги по безробіттю\n' ,
            style: TextStyle(
            decoration: TextDecoration.none,
                      fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: HexColor('#005BAA'),
          ),

            ),
                TextSpan( text: "Увага!\n", style: TextStyle(color: HexColor('#8B0000'), fontSize: 18),),
                TextSpan( text:" Розрахунок небхідний,якщо Ви, протягом року, що передував реєстрації в" +
                        "службі зайнятості, мали страховий стаж не менше 6 місяців;\n",style: TextStyle(color: HexColor('#8B0000'), fontSize: 16.sp),),
                TextSpan( text:  "\n" +
                        "ВСІ ДАНІ ДОВІДКОВІ!!!\n"
                        "НЕ Є ПІДСТАВОЮ ДЛЯ НАРАХУВАННЯ ДОПОМОГИ ПО БЕЗРОБІТТЮ!",style: TextStyle(color: HexColor('#FF0000'), fontSize: 16.sp),),
          ],
                  ),
          textAlign: TextAlign.center,
        ),
      ),
                Padding(
                  padding: const EdgeInsets.only(left:8.0,right: 8.0),
                  child: Text("п.1. Оберіть стаж", style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: HexColor('#8B0000'),)
                )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: HexColor('#005BAA'), width: 5),
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: HexColor("#FFFFFF"),
                    ),
                    height: 6.h,
                    width: 100.w,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Center(
                        child: DropdownButton<String>(
                            dropdownColor: HexColor("#ffffff"),
                            value: chosenValue,
                            //elevation: 5,
                            style: TextStyle(color: Colors.black),
                            items: [
                              DropdownMenuItem(
                                child: Text("до 2- років",
                                    style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: HexColor('#005BAA'),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.justify),
                                value: '0.5',
                              ),
                              DropdownMenuItem(
                                child: Text("від 2-х до 6 років",
                                    style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: HexColor('#005BAA'),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.justify),
                                value: '0.55',
                              ),
                              DropdownMenuItem(
                                child: Text("від 6 років до 10 років" ,
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: HexColor('#005BAA'),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.justify,),
                                value: '0.6',
                              ),
                              DropdownMenuItem(
                                child: Text("більше 10 років", style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: HexColor('#005BAA'),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.justify),
                                value: '0.7',
                              ),
                            ],

                            hint: Text(
                              " Оберіть стаж",
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: HexColor('#005BAA'),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.justify
                            ),
                            onChanged: (value) {
                              setState(() {
                                chosenValue = value!;
                                load=false;
                                print(chosenValue);
                              });

                              print(value);
                            }
                        ),
                      ),
                    ),

                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left:8.0,right: 8.0),
                    child: Text(" п..2 Вкажіть розмір з/п*", style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: HexColor('#8B0000'),)
                    )),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: HexColor('#005BAA'),
                            width: 5),
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: HexColor("#FFFFFF"),
                      ),
                      height: 6.h,
                      width: 100.w,
                      child:
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child:
                          buildTextField()),
                        ),
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.only(left:8.0,right: 8.0),
                    child: Center(
                      child: Text(" *(нарахована офіційна середньомісячна заробітна плата за останні 12 місяців)", style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: HexColor('#8B0000'),)
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: HexColor('#005BAA'),
                            width: 5),
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: HexColor("#FFFFFF"),
                      ),
                      height: 12.h,
                      width: 100.w,
                      child:
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:8.0,right: 8.0,bottom: 2.0),
                            child: Text('Перші 90 днів\n(в розрахунку за місяць),грн', style: TextStyle(
                            decoration: TextDecoration.none,
                            color: HexColor('#005BAA'),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: HexColor('#FFD947'),
                                  width: 5),
                              borderRadius: BorderRadius.all(Radius.circular(25)),
                              color: HexColor("#005BAA"),
                            ),
                            height: 6.h,
                            width: 100.w,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Center(
                                child: Text('${countDB().toStringAsFixed(2)} грн.',
                                    style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: HexColor('#FFD947'),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.justify ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: HexColor('#005BAA'),
                            width: 5),
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: HexColor("#FFFFFF"),
                      ),
                      height: 11.h,
                      width: 100.w,
                      child:
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:8.0,right: 8.0,bottom: 2.0),
                            child: Text('Наступні 90 днів\n(в розрахунку за місяць),грн', style: TextStyle(
                                decoration: TextDecoration.none,
                                color: HexColor('#005BAA'),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: HexColor('#FFD947'),
                                  width: 5),
                              borderRadius: BorderRadius.all(Radius.circular(25)),
                              color: HexColor("#005BAA"),
                            ),
                            height: 5.h,
                            width: 100.w,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Center(
                                child: Text('${countDB1().toStringAsFixed(2)} грн.',
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        color: HexColor('#FFD947'),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.justify ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: HexColor('#005BAA'),
                            width: 5),
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: HexColor("#FFFFFF"),
                      ),
                      height: 11.h,
                      width: 100.w,
                      child:
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:8.0,right: 8.0,bottom: 2.0),
                            child: Text('Залишок днів\n(в розрахунку за місяць),грн', style: TextStyle(
                                decoration: TextDecoration.none,
                                color: HexColor('#005BAA'),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: HexColor('#FFD947'),
                                  width: 5),
                              borderRadius: BorderRadius.all(Radius.circular(25)),
                              color: HexColor("#005BAA"),
                            ),
                            height: 5.h,
                            width: 100.w,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Center(
                                child: Text('${countDB2().toStringAsFixed(2)} грн.',
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        color: HexColor('#FFD947'),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.justify ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
      ));
    });
  }

  TextField buildTextField() {
    return TextField(
        style: TextStyle(
            decoration: TextDecoration.none,
            color: HexColor('#005BAA'),
            fontSize: 16.sp,
            fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      decoration: InputDecoration(
                   hintStyle:TextStyle(
              decoration: TextDecoration.none,
              color: HexColor('#005BAA'),
              fontSize: 16.sp,
              fontWeight: FontWeight.bold),
         // textAlign: TextAlign.justify,
          hintText: ' Вкажіть розмір з/п'),
      onChanged: (value) {
        setState(() {
          //int val = int.tryParse(value) ?? defaultValue;
          int? parsedValue2 = int.tryParse(value);
          if (parsedValue2 == null) {
            print(parsedValue2); // null
            zp = '0';
          } else{
         zp = value;
        };
        print(zp);
      },
    );
  });}

  countDB() {
    if (load) {
      return 0.00;
    } else
      return ((double.parse(chosenValue) * int.parse(zp)) < 9516 ? ((double.parse(chosenValue) * int.parse(zp)))
           : 9516);
  }
  countDB1() {
    if (load) {
      return 0.00;
    } else
      return (
          ( (double.parse(chosenValue) * int.parse(zp)) *  0.8) < 9516
          ? (
          (double.parse(chosenValue) *int.parse(zp)) * 0.8) : 9516);
  }
  countDB2() {
    if (load) {
      return 0.00;
    } else
      return (((double.parse(chosenValue) * int.parse(zp)) * 0.7) < 9516 ? ((double.parse(chosenValue) *
          int.parse(zp)) * 0.7) : 9516);
  }
}
