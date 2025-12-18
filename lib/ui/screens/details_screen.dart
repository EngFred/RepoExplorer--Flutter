import 'dart:math' as math;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_repoexplorer/ui/providers/details_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsScreen extends ConsumerWidget {
  final int repoId;

  const DetailsScreen({super.key, required this.repoId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncRepo = ref.watch(detailsProvider(repoId));
    return Scaffold(
      backgroundColor: const Color(0xFF0D1117),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0D1117),
        title: asyncRepo.when(
          data: (repo) => Text(repo.name),
          loading: () => const Text('Details'),
          error: (_, __) => const Text('Details'),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: asyncRepo.when(
        loading: () => const Center(
          child: CircularProgressIndicator(color: Color(0xFF58A6FF)),
        ),
        error: (err, _) => Center(
          child: Text(
            err.toString(),
            style: const TextStyle(color: Colors.red),
          ),
        ),
        data: (repo) => SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipOval(
                    child: CachedNetworkImage(
                      imageUrl: repo.ownerAvatarUrl,
                      width: 64,
                      height: 64,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        repo.fullName,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                      if (repo.language != null) ...[
                        const SizedBox(height: 4),
                        Text(
                          repo.language!,
                          style: const TextStyle(
                            color: Color(0xFF58A6FF),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                repo.description ?? 'No description provided.',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 24),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF161B22),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _StatItem(Icons.star, _formatNumber(repo.stars), 'Stars'),
                    _StatItem(
                      Icons.fork_right,
                      _formatNumber(repo.forks),
                      'Forks',
                    ),
                    _StatItem(
                      Icons.visibility,
                      _formatNumber(repo.watchers),
                      'Watching',
                    ),
                    _StatItem(
                      Icons.bug_report,
                      _formatNumber(repo.openIssues),
                      'Issues',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton.icon(
                  icon: const Icon(Icons.open_in_browser),
                  label: const Text('View on GitHub'),
                  onPressed: () => launchUrl(Uri.parse(repo.htmlUrl)),
                ),
              ),
              const SizedBox(height: 88),
            ],
          ),
        ),
      ),
      floatingActionButton: asyncRepo.when(
        data: (repo) => FloatingActionButton(
          onPressed: () =>
              ref.read(detailsProvider(repoId).notifier).toggleFavorite(),
          child: Icon(repo.isFavorite ? Icons.favorite : Icons.favorite_border),
        ),
        loading: () => null,
        error: (_, __) => null,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  String _formatNumber(int count) {
    if (count < 1000) return count.toString();
    int exp = (math.log(count) / math.log(1000)).floor();
    return '${(count / math.pow(1000, exp)).toStringAsFixed(1)}${'kMGTPE'[exp - 1]}';
  }
}

class _StatItem extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;

  const _StatItem(this.icon, this.value, this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: const Color(0xFF8B949E)),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 12)),
      ],
    );
  }
}
