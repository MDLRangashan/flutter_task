class Resource{
  final String? message;
  final Status status;
  Resource({required this.status, this.message});
}

enum Status {
  Success,
  Error,
  Cancelled
}