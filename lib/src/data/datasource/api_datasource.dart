import 'package:http/http.dart';
import 'package:nguyenminhdung/src/utils/app_utils.dart';

class ApiDatasource {
  final Client http;
  ApiDatasource({
    required this.http,
  });

  Future<String> getMethod() async {
    try {
      const String url = "http://staff.vnuk.edu.vn:5000/static/data/data.json";
      final Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        AppUtils.logger("200", location: runtimeType);
        return response.body;
      } else {
        AppUtils.logger("NOT OK", location: runtimeType);
        throw Exception();
      }
    } catch (e) {
      AppUtils.logger(e, location: runtimeType);
      rethrow;
    }
  }
}
