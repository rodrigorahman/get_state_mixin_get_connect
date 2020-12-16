import 'package:get/get_connect/connect.dart';
import 'package:get_state_mixin_get_connect/models/giphy_model.dart';

class GiphyRepository extends GetConnect {
  Future<List<GiphyModel>> findAll() async {
    final response = await get<List<GiphyModel>>(
      'http://api.giphy.com/v1/gifs/trending',
      query: {'api_key': 'XDuWe9CsDj1KNm19U6bXViGEq3z17ZuX'},
      decoder: (response) {
        return response['data']?.map<GiphyModel>(
          (d) => GiphyModel(
            d['id'],
            d['images']['downsized']['url'],
          ),
        )?.toList() ?? [];
      },
    );
    
    if(response.hasError){
      throw Exception(response.statusText);
    }

    return response.body;
  }
}
