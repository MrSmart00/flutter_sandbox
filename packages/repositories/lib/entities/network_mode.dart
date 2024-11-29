sealed class NetworkMode {
  const NetworkMode();
}

class HttpNetworkMode extends NetworkMode {
  const HttpNetworkMode({required this.baseUrl});

  final String baseUrl;
}

class LocalNetworkMode extends NetworkMode {
  const LocalNetworkMode();
}
