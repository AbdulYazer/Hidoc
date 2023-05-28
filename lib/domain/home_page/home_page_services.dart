import 'package:hidoc/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'model/hidoc_model.dart';

abstract class HomePageServices{
  Future<Either<MainFailure, HidocModel>> fetchDetails();
}