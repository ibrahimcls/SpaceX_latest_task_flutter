import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:spacex_flutter/model/spacex_task.dart';

part "apiservice.g.dart";

@RestApi(baseUrl: "https://api.spacexdata.com/v4/launches/latest")
abstract class Apiservice {
  factory Apiservice(Dio dio, {String baseUrl}) = _Apiservice;

  @GET("")
  Future<SpaceXTask> getTasks();
}
