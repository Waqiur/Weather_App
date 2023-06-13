import 'package:flutter/material.dart';
import 'package:weather_app/model/weather_data_current.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import '../utils/custom_colors.dart';

class ComfortLevelWidget extends StatelessWidget {
  final WeatherDataCurrent weatherDataCurrent;

  const ComfortLevelWidget({super.key, required this.weatherDataCurrent});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Comfort Level',
          style: TextStyle(fontSize: 20, color: CustomColors.textColorBlack),
        ),
        SizedBox(
          height: 20,
        ),
        SleekCircularSlider(
          min: 0,
          max: 100,
          initialValue: weatherDataCurrent.current.humidity!.toDouble(),
          appearance: CircularSliderAppearance(
            customWidths: CustomSliderWidths(
              handlerSize: 0,
              trackWidth: 12,
              progressBarWidth: 12,
            ),
            infoProperties: InfoProperties(
              bottomLabelText: "Humidity",
              bottomLabelStyle:
                  TextStyle(letterSpacing: 0.1, fontSize: 14, height: 1.5),
            ),
            animationEnabled: true,
            size: 180,
            customColors: CustomSliderColors(
              hideShadow: true,
              trackColor: CustomColors.firstGradientColor.withAlpha(100),
              progressBarColors: [
                CustomColors.firstGradientColor,
                CustomColors.secondGradientColor
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "Feels Like ",
                  style: TextStyle(
                      fontSize: 16,
                      height: 0.8,
                      color: CustomColors.textColorBlack,
                      fontWeight: FontWeight.w400),
                ),
                TextSpan(
                  text: "${weatherDataCurrent.current.feelsLike}",
                  style: TextStyle(
                      fontSize: 16,
                      height: 0.8,
                      color: CustomColors.textColorBlack,
                      fontWeight: FontWeight.w400),
                )
              ]),
            ),
            Container(
              height: 25,
              width: 1,
              margin: EdgeInsets.only(left: 40, right: 40),
              color: CustomColors.dividerLine,
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "UV Index ",
                  style: TextStyle(
                      fontSize: 16,
                      height: 0.8,
                      color: CustomColors.textColorBlack,
                      fontWeight: FontWeight.w400),
                ),
                TextSpan(
                  text: "${weatherDataCurrent.current.uvIndex}",
                  style: TextStyle(
                      fontSize: 16,
                      height: 0.8,
                      color: CustomColors.textColorBlack,
                      fontWeight: FontWeight.w400),
                )
              ]),
            ),
          ],
        )
      ],
    );
  }
}
