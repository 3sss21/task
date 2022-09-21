import 'package:dio/dio.dart';
import 'package:light_code_examples/helper/api_requester.dart';
import 'package:light_code_examples/helper/catchException.dart';
import 'package:light_code_examples/models/character_model.dart';

class CharacterProvider {
  Future<List<CharacterModel>> getCharacter() async {
    try {
      ApiRequester requester = ApiRequester();
      Response response = await requester.toGet('characters');

      if (response.statusCode == 200) {
        List<CharacterModel> characterModelList = response.data
            .map<CharacterModel>((el) => CharacterModel.fromJson(el))
            .toList();

        return characterModelList;

      } else {
        throw CatchException.convertException(response);
      }
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }
}
