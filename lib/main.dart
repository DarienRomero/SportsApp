import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sports_app/core/platform_validation.dart';
import 'package:sports_app/core/themes.dart';
import 'package:sports_app/features/activities/presentation/bloc/activities_bloc.dart';
import 'package:sports_app/features/common/presentation/pages/router_page.dart';
import 'package:sports_app/injection_container.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

 class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

Future<void> main() async {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    await initializeServiceLocator();
    HttpOverrides.global = MyHttpOverrides();
    final platformInfo = PlatformInfo();
    platformInfo.detect();
    await SentryFlutter.init(
      (options) {
        options.dsn = 'https://60c7ab8ba4f24a8aa4106e15ebbcaf35@o1297318.ingest.sentry.io/4505564165767168';
        // Set tracesSampleRate to 1.0 to capture 100% of transactions for performance monitoring.
        // We recommend adjusting this value in production.
        options.tracesSampleRate = 1.0;
      },
    );

    runApp(const MyApp());
  }, (exception, stackTrace) async {
    await Sentry.captureException(exception, stackTrace: stackTrace);
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => serviceLocator.get<ActivitiesBloc>()),
      ],
      child: MaterialApp(
        title: 'DeportesApp',
        debugShowCheckedModeBanner: false,
        theme: Themes.lightMode,
        home: RouterPage()
      ),
    );
  }
}