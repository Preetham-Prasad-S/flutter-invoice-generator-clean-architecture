sealed class InvoiceState {}

class LoadingInvoiceState extends InvoiceState {
  final bool isLoading;

  LoadingInvoiceState({required this.isLoading});
}

class IntitalInvoiceState extends InvoiceState {}

class ErrorInvoiceState extends InvoiceState {
  final String error;

  ErrorInvoiceState({required this.error});
}

class DataInvoiceState extends InvoiceState {
  final String data;

  DataInvoiceState({required this.data});
}
