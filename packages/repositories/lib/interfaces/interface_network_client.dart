abstract class INetworkClient {
  Future<T> fetch<T>(
    String endpoint, 
    T Function(Map<String, dynamic>) fromJson,
  );
}
