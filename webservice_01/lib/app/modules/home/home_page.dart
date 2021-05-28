import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../shared/models/responses/weather_response.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({this.title = "Home"}) : super();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: SafeArea(
        child: FutureBuilder<WeatherResponse?>(
            future: controller.getCity(),
            builder: (store, snapshot) {
              if (snapshot.data == null) return Container();
              return _buildBody(snapshot.data!);
            }),
      ),
    );
  }

  Widget _buildBody(WeatherResponse weather) {
    print(weather.current.weatherDescriptions);
    final weatherName = weather.current.weatherDescriptions?.first;
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${weather.location.name}', style: Theme.of(context).textTheme.headline3),
          Text('$weatherName', style: Theme.of(context).textTheme.headline4),
          Text('${weather.current.temperature}º', style: Theme.of(context).textTheme.headline2),
          _getIcon(weatherName!),
        ],
      ),
    );
  }

  Widget _getIcon(String weatherName) {
    var icon = '';
    switch (weatherName) {
      case 'Sunny':
      case 'Clear':
        icon = 'weather_icon_full_sun.svg';
        break;
      case 'Partly cloudy':
        icon = 'weather_icon_partly_cloudy.svg';
        break;
      case 'Drizzle':
        icon = 'weather_icon_cloud_slight_rain.svg';
        break;
      case 'Overcast':
      case 'Patchy rain possible':
        icon = 'weather_icon_full_clouds.svg';
        break;
      default:
    }

    return SvgPicture.asset(
      'assets/images/$icon',
      width: 300,
    );
  }
}
