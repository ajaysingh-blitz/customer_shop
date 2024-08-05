
import 'package:customer_shop/common/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomePageRepository {
  Future<Either<Failure, Map<String,dynamic>>> getHomePageData();
}