import 'package:app_core_common/constants.dart';
import 'package:app_core_common/entities/feed.dart';
import 'package:app_core_common/interfaces/interface_network_client.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'feed_provider.g.dart';

@Riverpod(keepAlive: true)
Future<Feed> feed(Ref ref, {required INetworkClient client}) async {
  return client.fetch(
    Constants.rssLinkParam,
    Feed.fromJson,
  );
}
