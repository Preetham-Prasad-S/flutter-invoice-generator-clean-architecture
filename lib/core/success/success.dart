abstract class Success {
  final String message;

  Success({required this.message});
}

class ServerSuccess extends Success {
  ServerSuccess({required super.message});
}
