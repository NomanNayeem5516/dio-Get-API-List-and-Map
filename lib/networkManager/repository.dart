

import 'dio_helper.dart';

class Repository {
  static final DioHelper _dioHelper = DioHelper();

  Future<dynamic>postApi(Object reqModel)async{
    var response =await _dioHelper.post(url: 'https://requres.in/api/register',requestBody: reqModel);
    return response;
  }


  Future<dynamic>getApi(Object reqModel)async{
    var response =await _dioHelper.get(url: 'https://requres.in/api/register',);
    return response;
  }
}