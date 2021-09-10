import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:timeline_tile/timeline_tile.dart';

class SuccessTimeline extends StatefulWidget {
  @override
  _SuccessTimelineState createState() => _SuccessTimelineState();
}

class _SuccessTimelineState extends State<SuccessTimeline> {
  late List<Step> steps;

  @override
  void initState() {
    steps = generateData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      return Container(
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
        child: Theme(
          data: Theme.of(context).copyWith(
            accentColor: const Color(0xFF0634EF).withOpacity(0.2),
          ),
          child: SafeArea(
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Center(
                child: Column(
                  children: <Widget>[
                    _Header(),
                    Expanded(
                      child: CustomScrollView(
                        slivers: <Widget>[_TimelineSteps(steps: steps)],
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }

  List<Step> generateData() {
    return <Step>[
      const Step(
        step: 1,
        title: 'ВИБІР ПРОФЕСІЇ',
        message: 'Оберіть необхідну професію або спеціальність з переліку',
      ),
      const Step(
        step: 2,
        title: 'ВИБІР ЦЕНТРУ ЗАЙНЯТОСТІ',
        message: 'Зверніться до найближчого центру зайнятості',
      ),
      const Step(
        step: 3,
        title: 'ПОДАННЯ ПАКЕТА ДОКУМЕНТІВ',
        message:
            'Напишіть заяву та надайте відповідний пакет документів фахівцю ЦЗ. Перелік документів за посиланням',
      ),
      const Step(
        step: 4,
        title: 'УХВАЛЕННЯ РІШЕННЯ  ЦЕНТРОМ ЗАЙНЯТОСТІ',
        message:
            'Протягом 8-ми днів центр зайнятості приймає рішення щодо отримання ваучера',
      ),
      const Step(
        step: 5,
        title: 'ОТРИМАННЯ ВАУЧЕРА',
        message:
            'Протягом  5-ти робочих днів з дня надходження позитивного рішення  зверніться в центр зайнятості ізаберіть ваучер',
      ),
      const Step(
        step: 6,
        title: 'ВИБІР ЗАКЛАДУ ОСВІТИ',
        message: 'Оберіть заклад освіти за посиланням',
      ),
      const Step(
        step: 7,
        title: 'НАВЧАННЯ',
        message:
            'Подайте до обраного закладу освіти пакет документів для вступу + ваучер та укладіть з ним договір про навчання',
      ),
    ];
  }
}

class _TimelineSteps extends StatelessWidget {
  const _TimelineSteps({Key? key, required this.steps}) : super(key: key);

  final List<Step> steps;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      (BuildContext context, int index) {
        if (index.isOdd)
          return const TimelineDivider(
            color: Colors.white,
            thickness: 5,
            begin: 0.1,
            end: 0.9,
          );

        final int itemIndex = index ~/ 2;
        final Step step = steps[itemIndex];

        final bool isLeftAlign = itemIndex.isEven;

        final child = _TimelineStepsChild(
          title: step.title,
          subtitle: step.message,
          isLeftAlign: isLeftAlign,
        );

        final isFirst = itemIndex == 0;
        final isLast = itemIndex == steps.length - 1;
        double indicatorY;
        if (isFirst) {
          indicatorY = 0.2;
        } else if (isLast) {
          indicatorY = 0.8;
        } else {
          indicatorY = 0.5;
        }

        return TimelineTile(
          alignment: TimelineAlign.manual,
          endChild: isLeftAlign ? child : null,
          startChild: isLeftAlign ? null : child,
          lineXY: isLeftAlign ? 0.1 : 0.9,
          isFirst: isFirst,
          isLast: isLast,
          indicatorStyle: IndicatorStyle(
            width: 30.sp,
            height: 30.sp,
            indicatorXY: indicatorY,
            indicator: _TimelineStepIndicator(step: '${step.step}'),
          ),
          beforeLineStyle: const LineStyle(
            color: Colors.white,
            thickness: 5,
          ),
        );
      },
      childCount: max(0, steps.length * 2 - 1),
    ));
  }
}

class _TimelineStepIndicator extends StatelessWidget {
  const _TimelineStepIndicator({Key? key, required this.step})
      : super(key: key);

  final String step;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Center(
        child: Text(
          step,
          style: TextStyle(
            fontSize: 18.sp,
            color: HexColor("#005BAA"),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class _TimelineStepsChild extends StatelessWidget {
  const _TimelineStepsChild({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.isLeftAlign,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final bool isLeftAlign;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isLeftAlign
          ? const EdgeInsets.only(right: 32, top: 8, bottom: 8, left: 10)
          : const EdgeInsets.only(left: 32, top: 8, bottom: 8, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            title,
            textAlign: isLeftAlign ? TextAlign.right : TextAlign.left,
            style: TextStyle(
              fontSize: 18.sp,
              color: HexColor("#FFFFFF"),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(subtitle,
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: HexColor('#FFD947'),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              'ЯК ОТРИМАТИ ВАУЧЕР?',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: HexColor("#005BAA"),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class Step {
  const Step({
    required this.step,
    required this.title,
    required this.message,
  });

  final int step;
  final String title;
  final String message;
}
