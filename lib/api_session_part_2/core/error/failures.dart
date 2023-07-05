import 'package:equatable/equatable.dart';

import 'error_model.dart';

abstract class Failure extends Equatable {
  final ErrorMessageModel? errorMessageModel;

  const Failure({this.errorMessageModel});
  @override
  List<Object> get props => [errorMessageModel!];
}

// General failures
class ServerFailure extends Failure {
  const ServerFailure({ErrorMessageModel? errorMessageModel}) : super(errorMessageModel: errorMessageModel);
}

class CacheFailure extends Failure {
  const CacheFailure({ErrorMessageModel? errorMessageModel}) : super(errorMessageModel: errorMessageModel);
}
