import 'package:dio/dio.dart';
import 'package:homework/models/user.dart';
import 'package:retrofit/retrofit.dart';
part 'rest_client.g.dart';

@RestApi(baseUrl: 'https://randomuser.me/api')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;
  @GET("/")
  Future<User> getMe();
}
