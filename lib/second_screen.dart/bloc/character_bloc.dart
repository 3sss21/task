import 'package:bloc/bloc.dart';
import 'package:light_code_examples/helper/catchException.dart';
import 'package:light_code_examples/models/character_model.dart';
import 'package:light_code_examples/second_screen.dart/bloc/character_repository.dart';
import 'package:meta/meta.dart';

part 'character_event.dart';
part 'character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  CharacterBloc() : super(CharacterInitial()) {
    on<CharacterEvent>((event, emit) async {
      if (event is GetCharacterEvent) {
        emit(CharacterLoadingState());

        try {
          List<CharacterModel> characterModelList1 =
              await CharacterRepository().getCharacter();

          emit(CharacterSuccesState(model: characterModelList1));
        } catch (e) {
          emit(CharacterErrorState(error: CatchException.convertException(e)));
        }
      }
    });
  }
}
