import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_repoexplorer/domain/entity/repo.dart';
import 'package:flutter_repoexplorer/ui/theme/app_theme.dart';
import 'package:intl/intl.dart';

class RepoItem extends StatelessWidget {
  final Repo repo;
  final void Function(Repo) onItemClick;
  final void Function(Repo) onFavoriteClick;

  const RepoItem({
    super.key,
    required this.repo,
    required this.onItemClick,
    required this.onFavoriteClick,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: githubDarkTheme.cardColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 0,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: InkWell(
        onTap: () => onItemClick(repo),
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipOval(
                    child: CachedNetworkImage(
                      imageUrl: repo.ownerAvatarUrl,
                      width: 24,
                      height: 24,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    repo.ownerAvatarUrl.split('/').lastOrNull ?? 'Owner',
                    style: githubDarkTheme.textTheme.labelMedium,
                  ),
                  const Spacer(),
                  IconButton(
                    icon: Icon(
                      repo.isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: repo.isFavorite
                          ? const Color(0xFFDA3633)
                          : Colors.grey,
                    ),
                    iconSize: 24,
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    onPressed: () => onFavoriteClick(repo),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(repo.name, style: githubDarkTheme.textTheme.titleMedium),
              if (repo.description != null && repo.description!.isNotEmpty) ...[
                const SizedBox(height: 4),
                Text(
                  repo.description!,
                  style: githubDarkTheme.textTheme.bodyMedium,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
              const SizedBox(height: 16),
              Row(
                children: [
                  if (repo.language != null) ...[
                    Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: getLanguageColor(repo.language!),
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      repo.language!,
                      style: githubDarkTheme.textTheme.bodySmall,
                    ),
                    const SizedBox(width: 16),
                  ],
                  const Icon(Icons.star, color: Color(0xFFE3B341), size: 14),
                  const SizedBox(width: 4),
                  Text(
                    formatNumber(repo.stars),
                    style: githubDarkTheme.textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String formatNumber(int count) {
  if (count < 1000) return count.toString();
  final exp = (count / 1000).floor();
  final suffix = ['k', 'M', 'G', 'T', 'P', 'E'];
  return NumberFormat('#.#').format(count / (1000 ^ exp)) + suffix[exp - 1];
}

Color getLanguageColor(String language) {
  switch (language.toLowerCase()) {
    case 'kotlin':
      return const Color(0xFFA97BFF);
    case 'java':
      return const Color(0xFFB07219);
    case 'python':
      return const Color(0xFF3572A5);
    case 'javascript':
      return const Color(0xFFF1E05A);
    case 'typescript':
      return const Color(0xFF2B7489);
    case 'c++':
      return const Color(0xFFF34B7D);
    case 'swift':
      return const Color(0xFFF05138);
    default:
      return const Color(0xFF8B949E);
  }
}
