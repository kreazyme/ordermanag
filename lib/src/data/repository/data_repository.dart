import 'package:hive/hive.dart';
import 'package:nguyenminhdung/src/data/model/location/order.dart';
import 'package:nguyenminhdung/src/utils/app_utils.dart';

class DataRepository {
  DataRepository();

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
