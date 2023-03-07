import 'package:flutter/material.dart';
import 'package:nguyenminhdung/injector.dart';
import 'package:nguyenminhdung/src/data/model/location/order.dart';
import 'package:nguyenminhdung/src/logic/data_provider.dart';

class AddOrderPage extends StatefulWidget {
  const AddOrderPage({Key? key}) : super(key: key);

  @override
  State<AddOrderPage> createState() => _AddOrderPageState();
}

class _AddOrderPageState extends State<AddOrderPage> {
  late DataProvider dataProvider;

  @override
  void initState() {
    super.initState();
    dataProvider = injector<DataProvider>();
  }

  Order order = Order(
    id: 1,
    isChocolate: false,
    isScream: false,
    price: 0,
    quantity: 1,
    status: 1,
    isCancel: false,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Order"),
        actions: [
          IconButton(
            onPressed: () {
              dataProvider.addOrder(Order(
                id: 1,
                isChocolate: order.isChocolate,
                isScream: order.isScream,
                price: (order.quantity * order.price +
                    (order.isScream ? 0.5 : 0) +
                    (order.isChocolate ? 1 : 0)),
                quantity: order.quantity,
                status: 1,
                isCancel: false,
              ));
              Navigator.pop(context);
            },
            icon: const Icon(Icons.save),
          ),
        ],
      ),
      body: Column(
        children: [
          const Text('Choose toping'),
          Row(
            children: [
              Checkbox(
                value: order.isChocolate,
                onChanged: (value) {
                  setState(() {
                    order.isChocolate = !order.isChocolate;
                  });
                },
              ),
              const Text('Chocolate'),
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: order.isScream,
                onChanged: (value) {
                  setState(() {
                    order.isScream = !order.isScream;
                  });
                },
              ),
              const Text('Scream'),
            ],
          ),
          const Text('Choose quantity'),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    if (order.quantity > 1) order.quantity = order.quantity - 1;
                  });
                },
                icon: const Icon(Icons.remove),
              ),
              Text(order.quantity.toString()),
              IconButton(
                onPressed: () {
                  setState(() {
                    order.quantity = order.quantity + 1;
                  });
                },
                icon: const Icon(Icons.add),
              ),
            ],
          ),
          // DropdownButton(items: , onChanged: onChanged)
          const Text('Order Sumary'),
          Text('isScream: ${order.isScream}'),
          Text('isChocolate: ${order.isChocolate}'),
          Text('quantity: $order.quantity'),
          Text(
              'Total: ${order.quantity * order.price + (order.isScream ? 0.5 : 0) + (order.isChocolate ? 1 : 0)}'),
        ],
      ),
    );
  }
}
