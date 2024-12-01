import 'package:app_core_common/entities/feed.dart';
import 'package:app_core_common/entities/feed_item.dart';
import 'package:app_core_common/entities/network_mode.dart';
import 'package:app_core_common/interfaces/interface_network_client.dart';
import 'package:app_repositories/services/network_client.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'rss_reader_page.g.dart';

// Define a provider for the network client
final networkClientProvider = Provider<INetworkClient>((ref) {
  return const NetworkClient(HttpNetworkMode(baseUrl: 'https://api.rss2json.com/v1/api.json'));
});

// Define a provider for fetching the feed using @riverpod annotation
@riverpod
Future<Feed> feed(Ref ref) async {
  final networkClient = ref.watch(networkClientProvider);
  return networkClient.fetch(
    '?rss_url=https://blog.kinto-technologies.com/rss/feed.xml',
    Feed.fromJson,
  );
}

class RssReaderPage extends ConsumerWidget {
  const RssReaderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Center(
      child: FeedList(),
    );
  }
}

class FeedList extends ConsumerWidget {
  const FeedList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedAsyncValue = ref.watch(feedProvider);

    return feedAsyncValue.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
      data: (feed) {
        return ListView(
          children:
              feed.items.map((item) => FeedItemWidget(item: item)).toList(),
        );
      },
    );
  }
}

class FeedItemWidget extends StatelessWidget {
  const FeedItemWidget({required this.item, super.key});
  final FeedItem item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item.title),
      subtitle: Text(item.description),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<FeedItem>('item', item));
  }
}
