abstract class IHttpClient {
  Future get({required String url, Map<String, dynamic>? queryParameters});

  Future post({required String url, Map<String, dynamic>? body});
}
