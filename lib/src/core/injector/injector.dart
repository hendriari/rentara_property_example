import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:rentara_property_clone/src/core/injector/injector.config.dart';

GetIt injector = GetIt.instance;

@injectableInit
void getInjectableInit() => injector.init();
