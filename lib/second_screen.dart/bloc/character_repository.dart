import 'package:light_code_examples/models/character_model.dart';
import 'package:light_code_examples/second_screen.dart/bloc/character_provider.dart';

class CharacterRepository{
  
  Future<List<CharacterModel>> getCharacter(){

    CharacterProvider provider = CharacterProvider();
    return provider.getCharacter();
  }
}