import 'dart:convert';
import 'package:app_repositories/entities/network_mode.dart';
import 'package:app_repositories/interfaces/interface_network_client.dart';
import 'package:app_repositories/services/local_json_loader.dart';
import 'package:http/http.dart' as http;

class NetworkClient implements INetworkClient {
  const NetworkClient(this.mode);

  final NetworkMode mode;

  @override
  Future<T> fetch<T>(
    String endpoint,
    T Function(Map<String, dynamic>) fromJson,
  ) async {
    final Map<String, dynamic> jsonMap;

    switch (mode) {
      case HttpNetworkMode(baseUrl: final baseUrl):
        final response = await http.get(Uri.parse('$baseUrl$endpoint'));
        jsonMap = json.decode(response.body) as Map<String, dynamic>;
      case LocalNetworkMode():
        jsonMap = await LocalJsonLoader().fetch(endpoint, (json) => json);
    }
    return fromJson(jsonMap);
  }
}
