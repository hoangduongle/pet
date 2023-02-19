// ignore_for_file: unused_element, unused_local_variable, unnecessary_brace_in_string_interps, await_only_futures
import 'package:pets/app/core/base/base_repository.dart';
import 'package:pets/app/core/model/animalType.dart';
import 'package:pets/app/core/model/category.dart';
import 'package:pets/app/core/model/order.dart';
import 'package:pets/app/core/model/owner.dart';
import 'package:pets/app/core/model/service.dart';
import 'package:pets/app/core/model/user.dart';
import 'package:pets/app/core/network/dio_provider.dart';
import 'package:pets/app/data/repository/repository.dart';

class RepositoryImpl extends BaseRepository implements Repository {
  @override
  Future<List<User>> getListUser() {
    var endpoint = "${DioProvider.baseUrl}/Users";
    var result = <User>[];
    var dioCall = dioTokenClient.get(endpoint);
    try {
      return callApi(dioCall).then((response) {
        var result = <User>[];
        for (var element in (response.data as List<dynamic>)) {
          result.add(User.fromJson(element));
        }
        return result;
      });
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<int> login(String phoneNumber, String password) {
    var endpoint = "${DioProvider.baseUrl}/Users/login";
    var data = {
      'phone': phoneNumber,
      'password': password,
    };
    var dioCall = dioTokenClient.post(endpoint, queryParameters: data);
    try {
      return callApi(dioCall).then((response) => response.statusCode!);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<int> register(User user) {
    var endpoint = "${DioProvider.baseUrl}/Users";
    var data = user.toJson();
    var dioCall = dioTokenClient.post(endpoint, data: data);
    try {
      return callApi(dioCall).then((response) {
        return response.statusCode ?? 0;
      });
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<AnimalType>> getAnimalType() {
    var endpoint = "${DioProvider.baseUrl}/AnimalTypes";
    var dioCall = dioTokenClient.get(endpoint);
    var result = <AnimalType>[];
    try {
      return callApi(dioCall).then((response) {
        var result = <AnimalType>[];
        for (var element in (response.data as List<dynamic>)) {
          result.add(AnimalType.fromJson(element));
        }
        return result;
      });
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Owner>> getPetOwner() {
    var endpoint = "${DioProvider.baseUrl}/Owners";
    var dioCall = dioTokenClient.get(endpoint);
    var result = <Owner>[];
    try {
      return callApi(dioCall).then((response) {
        var result = <Owner>[];
        for (var element in (response.data as List<dynamic>)) {
          result.add(Owner.fromJson(element));
        }
        return result;
      });
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Caterogies>> getCaterogy(bool isCareService) {
    var endpoint =
        "${DioProvider.baseUrl}/Categories/GetCategoryByType/$isCareService";
    var result = <Caterogies>[];
    var dioCall = dioTokenClient.get(endpoint);
    try {
      return callApi(dioCall).then((response) {
        var result = <Caterogies>[];
        for (var element in (response.data as List<dynamic>)) {
          result.add(Caterogies.fromJson(element));
        }
        return result;
      });
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Owner>> getListPet(int cateId) {
    var endpoint = "${DioProvider.baseUrl}/Owners/OwnerByCate/$cateId";
    var result = <Owner>[];
    var dioCall = dioTokenClient.get(endpoint);
    try {
      return callApi(dioCall).then((response) {
        var result = <Owner>[];
        for (var element in (response.data as List<dynamic>)) {
          result.add(Owner.fromJson(element));
        }
        return result;
      });
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Service>> getListService() {
    var endpoint = "${DioProvider.baseUrl}/Services";
    var result = <Service>[];
    var dioCall = dioTokenClient.get(endpoint);
    try {
      return callApi(dioCall).then((response) {
        var result = <Service>[];
        for (var element in (response.data as List<dynamic>)) {
          result.add(Service.fromJson(element));
        }
        return result;
      });
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Service>> getListServicebyCateId(int cateId) {
    var endpoint = "${DioProvider.baseUrl}/Services/GetServiceByCate/$cateId";
    var result = <Service>[];
    var dioCall = dioTokenClient.get(endpoint);
    try {
      return callApi(dioCall).then((response) {
        var result = <Service>[];
        for (var element in (response.data as List<dynamic>)) {
          result.add(Service.fromJson(element));
        }
        return result;
      });
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<int> insertOrder(Order order) {
    var endpoint = "${DioProvider.baseUrl}/Orders";
    var data = order.toJson();
    var result = -1;
    var dioCall = dioTokenClient.post(endpoint, data: data);
    try {
      return callApi(dioCall).then((response) {
        return result = response.statusCode!;
      });
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Service>> getListServiceSpecialIsCare() {
    var endpoint = "${DioProvider.baseUrl}/Services/GetSpecialServiceIsCare";
    var result = <Service>[];
    var dioCall = dioTokenClient.get(endpoint);
    try {
      return callApi(dioCall).then((response) {
        var result = <Service>[];
        for (var element in (response.data as List<dynamic>)) {
          result.add(Service.fromJson(element));
        }
        return result;
      });
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Service>> getListServiceSpecialNotCare() {
    var endpoint = "${DioProvider.baseUrl}/Services/GetSpecialServiceNotCare";
    var result = <Service>[];
    var dioCall = dioTokenClient.get(endpoint);
    try {
      return callApi(dioCall).then((response) {
        var result = <Service>[];
        for (var element in (response.data as List<dynamic>)) {
          result.add(Service.fromJson(element));
        }
        return result;
      });
    } catch (e) {
      rethrow;
    }
  }
}
