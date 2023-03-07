import 'package:hive_flutter/hive_flutter.dart';
import 'package:nguyenminhdung/src/logic/data_provider.dart';

part 'order.g.dart';

@HiveType(typeId: 1)
class Order {
  @HiveField(0)
  int status;

  @HiveField(1)
  int id;

  @HiveField(3)
  bool isScream;

  @HiveField(4)
  bool isChocolate;

  @HiveField(5)
  double price;

  @HiveField(6)
  int quantity;

  @HiveField(7)
  bool isCancel;

  Order({
    required this.status,
    required this.id,
    required this.isScream,
    required this.isChocolate,
    required this.price,
    required this.quantity,
    required this.isCancel,
  });
}
