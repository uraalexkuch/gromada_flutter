import 'package:awesome_select/awesome_select.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gromada/Controllers/choice_controller.dart';
import 'package:gromada/generated/l10n.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Choice extends StatelessWidget {
  @override
  ChoiceController controller = ChoiceController();

  get _searchTextEditingController => null;

  get titleStyle => null;

  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      return SafeArea(
          child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title:
              Text(S.of(context).app_barr_title, textAlign: TextAlign.center),
        ),
        body: SafeArea(
          child: Container(
            width: 100.w,
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
                  height: 20.h,
                ),
                Text(
                  S.of(context).choice_gromad,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: "Helvetica",
                    fontSize: 20.sp,
                    color: HexColor('#FFFFFF'),
                  ),
                  softWrap: true,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                    width: 95.w,
                    child: SingleChildScrollView(
                      child: SmartSelect.single(
                          title: (S.of(context).choice_gromad),
                          //choiceActiveStyle: ,
                          // showCheckmark:true,
                          // choiceStyle:( titleStyle) ,
                          //  choiceType: ,
                          selectedValue: controller.selected.value,
                          choiceItems: controller.listType,
                          onChange: (selectedValue) {
                            controller
                                .setSelected(selectedValue.value.toString());
                            print('info ${selectedValue.value}');
                          },
                          modalType: S2ModalType.popupDialog,
                          tileBuilder: (context, state) {
                            return Container(
                                width: 90.w,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: HexColor('#FFD947'), width: 3),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(14)),
                                  color: HexColor("#FFFFFF"),
                                ),
                                child: ListTileTheme(
                                    textColor: Colors.black87,
                                    tileColor: HexColor('#005BAA'),
                                    selectedTileColor: HexColor('#005BAA'),
                                    selectedColor: HexColor('#005BAA'),
                                    style: ListTileStyle.drawer,
                                    child: S2Tile.fromState(
                                      state,
                                      isTwoLine: true,
                                      hideValue: true,
                                      enabled: true,
                                      selected: true,
                                      leading: CircleAvatar(
                                          radius:
                                              Device.screenType.toString() ==
                                                      'ScreenType.tablet'
                                                  ? 45
                                                  : 35,
                                          backgroundColor: Colors.amber,
                                          child: CircleAvatar(
                                              radius: Device.screenType
                                                          .toString() ==
                                                      'ScreenType.tablet'
                                                  ? 42
                                                  : 32,
                                              backgroundColor: Colors.white,
                                              foregroundColor: Colors.amber,
                                              child: Image.asset(
                                                controller.sourse.toString(),
                                              )

                                              //NetworkImage(
                                              //  'https://source.unsplash.com/xsGxhtAsfSA/100x100',
                                              //),
                                              )),
                                    )));
                          }),
                    )),
                /*Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: HexColor('#FFD947'), width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      color: HexColor("#FFFFFF"),
                    ),
                    height: 6.h,
                    width: 90.w,
                    /*child: Obx(() => DropdownButtonHideUnderline(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, right: 8.0, top: 3, bottom: 0),
                            child: DropdownButton<String>(
                              dropdownColor: HexColor("#ffffff"),

                              isExpanded: true,
                              elevation: 16,
                              autofocus: true,
                              isDense: true,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14)),
                              alignment: AlignmentDirectional.centerStart,
                              //value: chosenValue,
                              //elevation: 5,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: HexColor('#005BAA'),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold),
                              value: controller.selected.value,
                              items: controller.listType.map((map) {
                                return DropdownMenuItem(
                                  // enabled: true,
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 16.0),
                                    width: 100.w,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Text(map['name'].toString()),
                                          Divider()
                                        ],
                                      ),
                                    ),
                                  ),
                                  value: map['value'],
                                );
                              }).toList(),

                              hint: Padding(
                                padding: const EdgeInsets.only(
                                    left: 50.0, bottom: 0.0),
                                child: Text(
                                  S.of(context).choice_gromad,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              onChanged: (newValue) {
                                controller.setSelected(newValue);
                              },
                            ),
                          ),
                        )),*/
                  ),
                ),*/

                SizedBox(
                  height: 10.h,
                ),

                /*SizedBox(
                    height: 25.h,
                  ),*/
                // Container(height: 5.h, child: Center(child: CallButton())),
              ]),
            ),
          ),
        ),
      ));
    });
  }
}
