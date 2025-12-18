import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:injectable/injectable.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:flutter_repoexplorer/data/local/entity/repo_table.dart';
import 'package:flutter_repoexplorer/data/local/repo_dao.dart';

part 'repo_database.g.dart';

@singleton
@DriftDatabase(tables: [RepoTable], daos: [RepoDao])
class RepoDatabase extends _$RepoDatabase {
  RepoDatabase()
    : super(
        LazyDatabase(() async {
          final dbFolder = await getApplicationDocumentsDirectory();
          final file = File(p.join(dbFolder.path, 'repo.db'));
          return NativeDatabase(file);
        }),
      );

  @override
  int get schemaVersion => 1;
}
