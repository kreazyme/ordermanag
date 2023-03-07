import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nguyenminhdung/src/data/model/location/order.dart';
import 'package:nguyenminhdung/src/data/repository/data_repository.dart';

enum Status { loading, error, idle }

enum OrderStatus { processing, serverd, charged }

class DataProvider {
  late ValueNotifier<List<Order>> listData;
  ValueNotifier<Status> status = ValueNotifier<Status>(Status.idle);
  final DataRepository dataRepository;
  DataProvider({required this.dataRepository}) {
    getData();
  }

  Future<void> getData() async {
    try {
      status.value = Status.loading;
      await dataRepository.getOrderfromLocal().then((data) {
        listData = ValueNotifier<List<Order>>(data);
        status.value = Status.idle;
      });
    } catch (e) {
      status.value = Status.idle;
      rethrow;
    }
  }

  Future<void> addOrder(Order order) async {
    try {
      status.value = Status.loading;
      await dataRepository.addOrder(order).then((data) {
        listData.value.add(data);
        status.value = Status.idle;
      });
    } catch (e) {
      status.value = Status.idle;
      rethrow;
    }
  }

  // void deleteRecord(int index) {
  //   final box = Hive.box<Location>("data");
  //   box.deleteAt(index);
  // }
}
