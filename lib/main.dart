import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:rentara_property_clone/src/core/injector/injector.dart';
import 'package:rentara_property_clone/src/core/rentara_property_main.dart';
import 'package:rentara_property_clone/src/core/rentara_property_bloc_observers.dart';
import 'package:rentara_property_clone/src/core/services/local/session_manager.dart';

Future<void> main() async {
  final widgetBinding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: widgetBinding);

  dotenv.load(fileName: "config/api.env");

  getInjectableInit();

  await injector<SessionManager>().init();

  Bloc.observer = RentaraBlocObserver();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const RentaraPropertyMain());
}
