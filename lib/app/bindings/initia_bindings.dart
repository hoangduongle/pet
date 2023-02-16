import 'package:get/get.dart';
import 'package:pets/app/bindings/repository_bindings.dart';


class InitiaBinding implements Bindings {
  @override
  void dependencies() {
    RepositoryBindings().dependencies();

  }
}
