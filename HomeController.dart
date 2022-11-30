import 'dart:io';

class HomeController {
  static String index(HttpRequest request) {
    // some other code
    return 'hello world';
  }

  static String abc(HttpRequest request) {
    // some other code
    return 'hello abc';
  }

  static String admin(HttpRequest request) {
    // some other code
    return 'hello admin';
  }
}