import 'package:customer_shop/common/failure.dart';
import 'package:customer_shop/domain/repositories/home_page_repositories.dart';
import 'package:dartz/dartz.dart';

class HomePageUseCase {
  HomePageUseCase(this._homePageRepository);
  final HomePageRepository _homePageRepository;

  Future<Either<Failure, Map<String,dynamic>>> execute() async {
    return  _homePageRepository.getHomePageData();
  }
}