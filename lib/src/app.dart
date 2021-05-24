import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:components/src/routes/routes.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: getRoutes(),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', 'US'), // English, no country code
          const Locale('es', 'ES'), // Spanish, no country code
        ]
        /*onGenerateRoute: (RouteSettings settings) {
        print('Ruta seleccionada: ${settings.name}');

        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage(),
        );
      },*/
        );
  }
}
