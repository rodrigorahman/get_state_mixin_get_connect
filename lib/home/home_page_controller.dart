import 'package:get/get.dart';
import 'package:get_state_mixin_get_connect/models/giphy_model.dart';
import 'package:get_state_mixin_get_connect/repository/giphy_repository.dart';

class HomePageController extends GetxController with StateMixin<List<GiphyModel>> {
  final GiphyRepository _repository;

  HomePageController(this._repository);

  @override
  void onInit() {
    super.onInit();
    _repository.findAll().then((resp) {
      change(resp, status: RxStatus.success());
    }, onError: (err) {
      print(err);
      change(
        null,
        status: RxStatus.error('Erro ao Buscar Gifs'),
      );
    });
  }
}
