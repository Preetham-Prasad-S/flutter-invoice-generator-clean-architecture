import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  Failure({required this.message});

  @override
  List<Object?> get props => [message];
}

class ServerFailure implements Failure {
  final String message;

  ServerFailure({required this.message});

  @override
  bool? get stringify => false;

  @override
  String toString() {
    return "ServerFailure : $message";
  }

  @override
  List<Object?> get props => [message];
}
