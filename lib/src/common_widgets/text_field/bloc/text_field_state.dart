part of 'text_field_bloc.dart';

class TextFieldState extends Equatable {
  final bool isError;

  const TextFieldState({
    this.isError = false,
  });

  @override
  List<Object> get props => [isError];

  TextFieldState copyWith({
    bool? isError,
  }) =>
      TextFieldState(
        isError: isError ?? this.isError,
      );
}
