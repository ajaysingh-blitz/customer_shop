

import 'dart:io';
import 'package:customer_shop/common/exception.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../common/api.dart';
import '../../common/failure.dart';

abstract class HomePageRemoteDataSource {
  Future<Either<Failure, Map<String,dynamic>>> getHomePage();
}

class HomePageDataSourceImpl
    implements HomePageRemoteDataSource {
  final Dio dio = Dio();

  @override
  Future<Either<Failure, Map<String,dynamic>>> getHomePage() async {
    try {
      final response = await dio.get(API.homePage,);
      return Right(response.data);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(ConnectionFailure('No internet connection'),);
    } on DioException catch (e) {
      return const Left(ServerFailure('Error occurred Please try again'),);
    }
  }
}
