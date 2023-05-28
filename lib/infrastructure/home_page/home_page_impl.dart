
import 'package:hidoc/domain/core/api_end_points.dart';
import 'package:hidoc/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:hidoc/domain/home_page/home_page_services.dart';
import 'package:hidoc/domain/home_page/model/hidoc_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: HomePageServices)
class HomePageImpl implements HomePageServices{
  @override
  Future<Either<MainFailure, HidocModel>> fetchDetails() async{
    try {
      List<HidocModel> allDetailsList = [];
      final response = await Dio(BaseOptions()).post(ApiEndpoints.baseUrl);
      if(response.statusCode == 200 || response.statusCode == 201){
        final result = HidocModel.fromJson(response.data);
        print(result);
        return Right(result);
      }else{
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      print(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

}