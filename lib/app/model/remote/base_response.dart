class BaseResponseAPI {
  String statusMessage;
  int statusCode;
  dynamic response;

  BaseResponseAPI({this.statusCode = 0, this.statusMessage, this.response});

  BaseResponseAPI.fromJson(Map<String, dynamic> json) {
    statusMessage = json['statusMessage'].toString();
    statusCode = json['statusCode'] as int;
    response = json['response'];
  }

  @override
  String toString() {
    return '{ statusCode: $statusCode, statusMessage: $statusMessage, response: ${response.toString()} }';
  }
}
