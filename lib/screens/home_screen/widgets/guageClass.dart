import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class GuageClass extends StatelessWidget {
  const GuageClass({super.key});

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      axes: <RadialAxis>[
        RadialAxis(
          minimum: 0,
          maximum: 1,
          startAngle: 180,
          endAngle: 180,
          //canScaleToFit: true,
          showLabels: false,
          showTicks: false,
          axisLineStyle: const AxisLineStyle(color: Colors.transparent),
          ranges: [
            GaugeRange(
              startValue: 0,
              endValue: 0.65,
              color: const Color(0xffC7F4A5),
              startWidth: 12,
              endWidth: 12,
            ),
            // Dummy Range
            GaugeRange(
              startValue: 0.65,
              endValue: 0.68,
              color: Colors.transparent,
              startWidth: 12,
              endWidth: 12,
            ),
            GaugeRange(
              startValue: 0.68,
              endValue: 0.97,
              color: const Color(0xffFBB1C3),
              startWidth: 11,
              endWidth: 11,
            ),
            // Dummy Range
            GaugeRange(
              startValue: 0.97,
              endValue: 1,
              color: Colors.transparent,
              startWidth: 12,
              endWidth: 12,
            ),
          ],
        ),
      ],
    );
  }
}
