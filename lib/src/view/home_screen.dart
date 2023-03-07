import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nguyenminhdung/injector.dart';
import 'package:nguyenminhdung/src/data/model/location/order.dart';
import 'package:nguyenminhdung/src/logic/data_provider.dart';
import 'package:nguyenminhdung/src/view/add_order_screen.dart';
import 'package:nguyenminhdung/src/widget/data_record.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late DataProvider dataProvider;

  @override
  void initState() {
    dataProvider = injector<DataProvider>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddOrderPage(),
              ));
        },
        child: const Icon(Icons.add),
      ),
      body: ValueListenableBuilder(
          valueListenable: dataProvider.status,
          builder: (context, Status status, child) {
            if (status == Status.loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (status == Status.error) {
              return const Center(
                child: Icon(Icons.error),
              );
            } else {
              return ValueListenableBuilder(
                valueListenable: Hive.box<Order>('data').listenable(),
                builder: (context, Box<Order> box, child) {
                  if (box.values.isEmpty) {
                    return const Center(child: Text("Nothing here"));
                  } else {
                    return ListView.separated(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      itemCount: box.values.length,
                      itemBuilder: (context, index) {
                        final Order data = box.getAt(index)!;
                        return DataRecord(
                          data: data,
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 12,
                        );
                      },
                    );
                  }
                },
              );
            }
          }),
    );
  }
}
