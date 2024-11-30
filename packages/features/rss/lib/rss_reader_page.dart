import 'package:app_repositories/entities/feed.dart';
import 'package:app_repositories/entities/feed_item.dart';
import 'package:app_repositories/interfaces/interface_network_client.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RssReaderPage extends StatelessWidget {

  const RssReaderPage({required INetworkClient networkClient, super.key}) 
    : _networkClient = networkClient;
  final INetworkClient _networkClient;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FeedList(networkClient: _networkClient),
    );
  }
}

class FeedList extends StatefulWidget {

  const FeedList({required this.networkClient, super.key});
  final INetworkClient networkClient;

  @override
  FeedListState createState() => FeedListState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<INetworkClient>(
      'networkClient',
       networkClient,
    ),);
  }
}

class FeedListState extends State<FeedList> {
  late Future<Feed> _feedFuture;

  @override
  void initState() {
    super.initState();
    _feedFuture = widget.networkClient.fetch(
      '?rss_url=https://blog.kinto-technologies.com/rss/feed.xml',
      Feed.fromJson,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Feed>(
      future: _feedFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData) {
          return const Center(child: Text('No data found'));
        } else {
          final feed = snapshot.data!;
          return ListView(
            children: feed.items.map((item) => FeedItemWidget(item: item)).toList(),
          );
        }
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
}
