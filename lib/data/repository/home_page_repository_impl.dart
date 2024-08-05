import 'package:customer_shop/common/failure.dart';
import 'package:customer_shop/data/datasource/home_page_data_source.dart';
import 'package:customer_shop/domain/repositories/home_page_repositories.dart';
import 'package:dartz/dartz.dart';

class HomePageRepositoryImpl extends HomePageRepository {
  HomePageRepositoryImpl(this.dataSource);

  final HomePageRemoteDataSource dataSource;

  @override
  Future<Either<Failure, Map<String, dynamic>>> getHomePageData()  {
    return dataSource.getHomePage();
  }
}

//e.response?.data['message'].toString()
