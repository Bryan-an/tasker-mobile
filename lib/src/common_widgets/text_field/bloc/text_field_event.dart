part of 'text_field_bloc.dart';

class TextFieldEvent extends Equatable {
  const TextFieldEvent();

  @override
  List<Object> get props => [];
}

class SetIsError extends TextFieldEvent {
  final bool value;

  const SetIsError(this.value);

  @override
  List<Object> get props => [value];
}
