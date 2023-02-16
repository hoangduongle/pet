import 'package:get/get.dart';
import 'package:pets/app/data/repository/repository.dart';
import 'package:pets/app/data/repository/repository_impl.dart';

class RepositoryBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Repository>(
      () => RepositoryImpl(),
      tag: (Repository).toString(),
      fenix: true,
    );
  }
}