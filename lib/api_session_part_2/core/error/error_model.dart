import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  final String statusMessage;

  const ErrorMessageModel({
    required this.statusMessage,
  });

  factory ErrorMessageModel.fromJson(Map<String, dynamic> jsonData) {
    return ErrorMessageModel(
      statusMessage: jsonData['ErrorMessage'],
    );
  }

  @override
  List<Object?> get props => [
        statusMessage,
      ];
}
