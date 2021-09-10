import 'package:breaking_bad_project/constants/strings.dart';
import 'package:dio/dio.dart';

class CaractersWebServices {
  late Dio dio;
  CaractersWebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: Appconst.baseUrl,
      receiveDataWhenStatusError: true,
      // hadhi tab3eth request lel API W 9adech t7eb yeb9a yjareb
      connectTimeout: 20 * 1000, // 20 seconds
      receiveTimeout: 20 * 1000,
    );
    dio = Dio(options);
  }

  Future<List<dynamic>> getAllcharacters() async {
    try {
      Response response = await dio.get("characters");
      print(response.data);
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
