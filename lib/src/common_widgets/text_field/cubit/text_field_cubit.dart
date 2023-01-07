import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'text_field_state.dart';

class TextFieldCubit extends Cubit<TextFieldState> {
  TextFieldCubit() : super(const TextFieldState());

  void setIsError(bool isError) => emit(state.copyWith(isError: isError));
}
