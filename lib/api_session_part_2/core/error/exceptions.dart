import 'package:equatable/equatable.dart';
import 'error_model.dart';

class ServerException extends Equatable implements Exception {
  final ErrorMessageModel? messageModel;

  const ServerException([this.messageModel]);

  @override
  List<Object?> get props => [messageModel];

  @override
  String toString() {
    return '$messageModel';
  }
}

class FetchDataException extends ServerException {
  const FetchDataException(super.messageModel);
}

class BadRequestException extends ServerException {
  const BadRequestException(super.messageModel);
}

class UnauthorizedException extends ServerException {
  const UnauthorizedException(super.messageModel);
}

class NotFoundException extends ServerException {
  const NotFoundException(super.messageModel);
}

class ConflictException extends ServerException {
  const ConflictException(super.messageModel);
}

class InternalServerErrorException extends ServerException {
  const InternalServerErrorException(super.messageModel);
}

class NoInternetConnectionException extends ServerException {
  const NoInternetConnectionException(super.messageModel);
}

class CacheException implements Exception {}
