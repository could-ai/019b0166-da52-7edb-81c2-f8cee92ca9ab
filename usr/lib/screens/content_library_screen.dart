import 'package:flutter/material.dart';

class ContentLibraryScreen extends StatelessWidget {
  const ContentLibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Content Library'),
          bottom: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: 'Stories'),
              Tab(text: 'Songs'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildContentList(context, 'Story'),
            _buildContentList(context, 'Song'),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          icon: const Icon(Icons.upload_file),
          label: const Text('Upload New'),
        ),
      ),
    );
  }

  Widget _buildContentList(BuildContext context, String type) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            leading: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                type == 'Story' ? Icons.auto_stories : Icons.music_note,
                color: Theme.of(context).primaryColor,
              ),
            ),
            title: Text('$type Title ${index + 1}'),
            subtitle: const Text('Duration: 3:45'),
            trailing: IconButton(
              icon: const Icon(Icons.send_rounded),
              color: Theme.of(context).colorScheme.secondary,
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Sending $type to Toy...')),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
