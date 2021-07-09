import 'package:dio/dio.dart';
import 'package:zetian/models/service/create/create_new_service_request.dart';
import 'package:zetian/models/service/read/get_service_response.dart';
import 'package:zetian/models/service/update/update_service_request.dart';
import 'package:zetian/utils/operation.dart';

class ServiceData {
  Future<Operation> createService(
      Dio dio, CreateServiceRequest request, String baseUrl) async {
    try {
      Response response = await dio.post("https://zeitan.herokuapp.com/service",
          data: request.toJson());
      print(response.data);
    } on DioError catch (e) {
      print(e.message);
    }

    return Operation(500, "Problems");
  }

  Future<Operation> updateService(
      Dio dio, String id, UpdateServiceRequest request, String baseUrl) async {
    try {
      Response response = await dio.patch(
          "https://zeitan.herokuapp.com/services/$id",
          data: request.toJson());
      print(response.data);
    } on DioError catch (e) {
      print(e.message);
    }

    return Operation(500, "Problems");
  }

  Future<Operation> getAllServices(Dio dio, String baseUrl) async {
    try {
      Response response =
          await dio.get("https://zeitan.herokuapp.com/services");
      GetServiceResponse data = GetServiceResponse.fromJson(response.data);
      return Operation(response.statusCode, data);
    } on DioError catch (e) {
      print(e.message);
    }

    return Operation(500, "Problems");
  }

  Future<Operation> deleteService(Dio dio, String id, String baseUrl) async {
    try {
      Response response =
          await dio.delete("https://zeitan.herokuapp.com/services/$id");
      print(response.data);
    } on DioError catch (e) {
      print(e.message);
    }

    return Operation(500, "Problems");
  }
}

ServiceData serviceData = ServiceData();
