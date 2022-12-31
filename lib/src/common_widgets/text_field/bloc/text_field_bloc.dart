import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'text_field_event.dart';
part 'text_field_state.dart';

class TextFieldBloc extends Bloc<TextFieldEvent, TextFieldState> {
  TextFieldBloc() : super(const TextFieldState()) {
    on<SetIsError>(_mapSetIsErrorEventToState);
  }

  void _mapSetIsErrorEventToState(
      SetIsError event, Emitter<TextFieldState> emit) async {
    emit(state.copyWith(isError: event.value));
  }
}
