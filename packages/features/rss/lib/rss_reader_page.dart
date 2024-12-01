import 'package:app_core_common/entities/feed_item.dart';
import 'package:app_core_common/interfaces/interface_network_client.dart';
import 'package:app_core_common/providers/feed_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RssReaderPage extends ConsumerWidget {
  const RssReaderPage({required this.client, super.key});
  final INetworkClient client;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: FeedList(client: client),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<INetworkClient>('client', client));
  }
}

class FeedList extends ConsumerWidget {
  const FeedList({required this.client, super.key});
  final INetworkClient client;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedAsyncValue = ref.watch(FeedProvider(client: client));

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

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<INetworkClient>('client', client));
  }
}

class FeedItemWidget extends StatelessWidget {
  const FeedItemWidget({required this.item, super.key});
  final FeedItem item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item.title),
      subtitle: Text(item.pubDate),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<FeedItem>('item', item));
  }
}
