enum HttpStatus {
  ok(200, 'OK'),
  created(201, 'Created'),
  badRequest(400, 'Bad Request'),
  unauthorized(401, 'Unauthorized'),
  forbidden(403, 'Forbidden'),
  notFound(404, 'Not Found'),
  internalServerError(500, 'Internal Server Error'),
  serviceUnavailable(503, 'Service Unavailable');

  final int code;
  final String meaning;

  const HttpStatus(this.code, this.meaning);

  @override
  String toString() => '$code $meaning';
}
void main() {
  HttpStatus status = HttpStatus.notFound;

  print(status.code);        
  print(status.meaning);     
  print(status);            

  
  for (var s in HttpStatus.values) {
    print(s);
  }
}