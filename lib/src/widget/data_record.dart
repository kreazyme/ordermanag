import 'package:flutter/material.dart';
import 'package:nguyenminhdung/src/data/model/location/order.dart';

class DataRecord extends StatelessWidget {
  const DataRecord({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Order data;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Order Sumary'),
                        Text('isScream: ${data.isScream}'),
                        Text('isChocolate: ${data.isChocolate}'),
                        Text('quantity: $data.quantity'),
                        Text(
                            'Total: ${data.quantity * data.price + (data.isScream ? 0.5 : 0) + (data.isChocolate ? 1 : 0)}'),
                      ]),
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.id.toString(),
                          style: const TextStyle(fontSize: 15),
                        ),
                        Text(
                          data.isChocolate.toString(),
                          style: const TextStyle(fontSize: 15),
                        ),
                        // Text(
                        //   data.timeStamp ?? "No information timestamp",
                        //   style: const TextStyle(fontSize: 15),
                        // ),
                      ]),
                )
              ],
            ),
            const Divider(
              height: 1,
            ),
          ],
        ),
      ),
    );
  }
}
