import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart';
import 'package:nguyenminhdung/src/data/model/location/order.dart';
import 'package:nguyenminhdung/src/data/repository/data_repository.dart';
import 'package:nguyenminhdung/src/logic/data_provider.dart';

final injector = GetIt.instance;

Future<void> initDependences() async {
  await Hive.initFlutter();
  Hive.registerAdapter(OrderAdapter());

  await Hive.openBox<Order>('data');

  injector
    ..registerLazySingleton<Client>(() => Client())
    ..registerLazySingleton<DataRepository>(() => DataRepository())
    ..registerFactory<DataProvider>(
        () => DataProvider(dataRepository: injector()));
}
