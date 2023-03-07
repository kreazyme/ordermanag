import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:nguyenminhdung/src/data/datasource/api_datasource.dart';
import 'package:nguyenminhdung/src/data/model/location/order.dart';
import 'package:nguyenminhdung/src/utils/app_utils.dart';

class DataRepository {
  final ApiDatasource apiDatasource;

  DataRepository({required this.apiDatasource});

  // Future<List<Location>> getDataFromApi({required bool willCached}) async {
  //   try {
  //     final box = Hive.box<Location>("data");
  //     final response = await apiDatasource.getMethod();
  //     List<Location> data = (jsonDecode(response) as Iterable)
  //         .map((e) => Location.fromJson(e))
  //         .toList();
  //     if (willCached && box.values.isNotEmpty) {
  //       AppUtils.logger("Cached", location: runtimeType);
  //       return box.values.toList();
  //     } else {
  //       AppUtils.logger("Not cached yet", location: runtimeType);
  //       box.addAll(data);
  //       return data;
  //     }
  //   } catch (e) {
  //     AppUtils.logger("error", location: runtimeType, isError: true);
  //     rethrow;
  //   }
  // }

  Future<List<Order>> getOrderfromLocal() async {
    try {
      final box = Hive.box<Order>("data");
      return box.values.toList();
    } catch (e) {
      AppUtils.logger("error", location: runtimeType, isError: true);
      rethrow;
    }
  }

  Future<Order> addOrder(Order order) async {
    try {
      final box = Hive.box<Order>("data");
      box.add(order);
      return order;
    } catch (e) {
      AppUtils.logger("error", location: runtimeType, isError: true);
      rethrow;
    }
  }
}
