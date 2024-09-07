import '../models/responseMap.dart';
import '../models/response_list.dart';
import 'dio_helper.dart';

class Repository {
  static final DioHelper _dioHelper = DioHelper();

  Future<ResponseMap> responseInMap() async {
    Map<String, dynamic> response = await _dioHelper.get(
      url: 'https://reqres.in/api/users?page=2',
    );
    return ResponseMap.fromJson(response);
  }

  Future<List<ResponseList>> responseInList() async {
    List<dynamic> response = await _dioHelper.get(
      url: 'https://jsonplaceholder.typicode.com/posts',
    );
    return List<ResponseList>.from(response.map((e)=>ResponseList.fromJson(e)));
  }
}
