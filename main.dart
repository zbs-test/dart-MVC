import 'dart:io';
import 'HomeController.dart';

main() async {
  var server = await HttpServer.bind(
    InternetAddress.loopbackIPv4,
    4040,
  );
  print('Listening on http://localhost:${server.port}');

  await for (HttpRequest request in server) {
    routeHandle(request);
  }
}

void routeHandle(HttpRequest request) {
  String content = '';

  if (request.uri.path == '/abc') {
    content = HomeController.abc(request);
  } else if (request.uri.path == '/admin') {
    content = HomeController.admin(request);
  } else {
    content = HomeController.index(request);
  }

  request.response
    ..write(content)
    ..close();
}