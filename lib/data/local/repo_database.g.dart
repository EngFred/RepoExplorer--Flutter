// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo_database.dart';

// ignore_for_file: type=lint
class $RepoTableTable extends RepoTable
    with TableInfo<$RepoTableTable, RepoTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RepoTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fullNameMeta = const VerificationMeta(
    'fullName',
  );
  @override
  late final GeneratedColumn<String> fullName = GeneratedColumn<String>(
    'full_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _ownerAvatarUrlMeta = const VerificationMeta(
    'ownerAvatarUrl',
  );
  @override
  late final GeneratedColumn<String> ownerAvatarUrl = GeneratedColumn<String>(
    'owner_avatar_url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _starsMeta = const VerificationMeta('stars');
  @override
  late final GeneratedColumn<int> stars = GeneratedColumn<int>(
    'stars',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _forksMeta = const VerificationMeta('forks');
  @override
  late final GeneratedColumn<int> forks = GeneratedColumn<int>(
    'forks',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _watchersMeta = const VerificationMeta(
    'watchers',
  );
  @override
  late final GeneratedColumn<int> watchers = GeneratedColumn<int>(
    'watchers',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _openIssuesMeta = const VerificationMeta(
    'openIssues',
  );
  @override
  late final GeneratedColumn<int> openIssues = GeneratedColumn<int>(
    'open_issues',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _languageMeta = const VerificationMeta(
    'language',
  );
  @override
  late final GeneratedColumn<String> language = GeneratedColumn<String>(
    'language',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _htmlUrlMeta = const VerificationMeta(
    'htmlUrl',
  );
  @override
  late final GeneratedColumn<String> htmlUrl = GeneratedColumn<String>(
    'html_url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    fullName,
    description,
    ownerAvatarUrl,
    stars,
    forks,
    watchers,
    openIssues,
    language,
    htmlUrl,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'repo_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<RepoTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('full_name')) {
      context.handle(
        _fullNameMeta,
        fullName.isAcceptableOrUnknown(data['full_name']!, _fullNameMeta),
      );
    } else if (isInserting) {
      context.missing(_fullNameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('owner_avatar_url')) {
      context.handle(
        _ownerAvatarUrlMeta,
        ownerAvatarUrl.isAcceptableOrUnknown(
          data['owner_avatar_url']!,
          _ownerAvatarUrlMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_ownerAvatarUrlMeta);
    }
    if (data.containsKey('stars')) {
      context.handle(
        _starsMeta,
        stars.isAcceptableOrUnknown(data['stars']!, _starsMeta),
      );
    } else if (isInserting) {
      context.missing(_starsMeta);
    }
    if (data.containsKey('forks')) {
      context.handle(
        _forksMeta,
        forks.isAcceptableOrUnknown(data['forks']!, _forksMeta),
      );
    } else if (isInserting) {
      context.missing(_forksMeta);
    }
    if (data.containsKey('watchers')) {
      context.handle(
        _watchersMeta,
        watchers.isAcceptableOrUnknown(data['watchers']!, _watchersMeta),
      );
    } else if (isInserting) {
      context.missing(_watchersMeta);
    }
    if (data.containsKey('open_issues')) {
      context.handle(
        _openIssuesMeta,
        openIssues.isAcceptableOrUnknown(data['open_issues']!, _openIssuesMeta),
      );
    } else if (isInserting) {
      context.missing(_openIssuesMeta);
    }
    if (data.containsKey('language')) {
      context.handle(
        _languageMeta,
        language.isAcceptableOrUnknown(data['language']!, _languageMeta),
      );
    }
    if (data.containsKey('html_url')) {
      context.handle(
        _htmlUrlMeta,
        htmlUrl.isAcceptableOrUnknown(data['html_url']!, _htmlUrlMeta),
      );
    } else if (isInserting) {
      context.missing(_htmlUrlMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RepoTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RepoTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      fullName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}full_name'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      ownerAvatarUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}owner_avatar_url'],
      )!,
      stars: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}stars'],
      )!,
      forks: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}forks'],
      )!,
      watchers: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}watchers'],
      )!,
      openIssues: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}open_issues'],
      )!,
      language: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}language'],
      ),
      htmlUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}html_url'],
      )!,
    );
  }

  @override
  $RepoTableTable createAlias(String alias) {
    return $RepoTableTable(attachedDatabase, alias);
  }
}

class RepoTableData extends DataClass implements Insertable<RepoTableData> {
  final int id;
  final String name;
  final String fullName;
  final String? description;
  final String ownerAvatarUrl;
  final int stars;
  final int forks;
  final int watchers;
  final int openIssues;
  final String? language;
  final String htmlUrl;
  const RepoTableData({
    required this.id,
    required this.name,
    required this.fullName,
    this.description,
    required this.ownerAvatarUrl,
    required this.stars,
    required this.forks,
    required this.watchers,
    required this.openIssues,
    this.language,
    required this.htmlUrl,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['full_name'] = Variable<String>(fullName);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['owner_avatar_url'] = Variable<String>(ownerAvatarUrl);
    map['stars'] = Variable<int>(stars);
    map['forks'] = Variable<int>(forks);
    map['watchers'] = Variable<int>(watchers);
    map['open_issues'] = Variable<int>(openIssues);
    if (!nullToAbsent || language != null) {
      map['language'] = Variable<String>(language);
    }
    map['html_url'] = Variable<String>(htmlUrl);
    return map;
  }

  RepoTableCompanion toCompanion(bool nullToAbsent) {
    return RepoTableCompanion(
      id: Value(id),
      name: Value(name),
      fullName: Value(fullName),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      ownerAvatarUrl: Value(ownerAvatarUrl),
      stars: Value(stars),
      forks: Value(forks),
      watchers: Value(watchers),
      openIssues: Value(openIssues),
      language: language == null && nullToAbsent
          ? const Value.absent()
          : Value(language),
      htmlUrl: Value(htmlUrl),
    );
  }

  factory RepoTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RepoTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      fullName: serializer.fromJson<String>(json['fullName']),
      description: serializer.fromJson<String?>(json['description']),
      ownerAvatarUrl: serializer.fromJson<String>(json['ownerAvatarUrl']),
      stars: serializer.fromJson<int>(json['stars']),
      forks: serializer.fromJson<int>(json['forks']),
      watchers: serializer.fromJson<int>(json['watchers']),
      openIssues: serializer.fromJson<int>(json['openIssues']),
      language: serializer.fromJson<String?>(json['language']),
      htmlUrl: serializer.fromJson<String>(json['htmlUrl']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'fullName': serializer.toJson<String>(fullName),
      'description': serializer.toJson<String?>(description),
      'ownerAvatarUrl': serializer.toJson<String>(ownerAvatarUrl),
      'stars': serializer.toJson<int>(stars),
      'forks': serializer.toJson<int>(forks),
      'watchers': serializer.toJson<int>(watchers),
      'openIssues': serializer.toJson<int>(openIssues),
      'language': serializer.toJson<String?>(language),
      'htmlUrl': serializer.toJson<String>(htmlUrl),
    };
  }

  RepoTableData copyWith({
    int? id,
    String? name,
    String? fullName,
    Value<String?> description = const Value.absent(),
    String? ownerAvatarUrl,
    int? stars,
    int? forks,
    int? watchers,
    int? openIssues,
    Value<String?> language = const Value.absent(),
    String? htmlUrl,
  }) => RepoTableData(
    id: id ?? this.id,
    name: name ?? this.name,
    fullName: fullName ?? this.fullName,
    description: description.present ? description.value : this.description,
    ownerAvatarUrl: ownerAvatarUrl ?? this.ownerAvatarUrl,
    stars: stars ?? this.stars,
    forks: forks ?? this.forks,
    watchers: watchers ?? this.watchers,
    openIssues: openIssues ?? this.openIssues,
    language: language.present ? language.value : this.language,
    htmlUrl: htmlUrl ?? this.htmlUrl,
  );
  RepoTableData copyWithCompanion(RepoTableCompanion data) {
    return RepoTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      fullName: data.fullName.present ? data.fullName.value : this.fullName,
      description: data.description.present
          ? data.description.value
          : this.description,
      ownerAvatarUrl: data.ownerAvatarUrl.present
          ? data.ownerAvatarUrl.value
          : this.ownerAvatarUrl,
      stars: data.stars.present ? data.stars.value : this.stars,
      forks: data.forks.present ? data.forks.value : this.forks,
      watchers: data.watchers.present ? data.watchers.value : this.watchers,
      openIssues: data.openIssues.present
          ? data.openIssues.value
          : this.openIssues,
      language: data.language.present ? data.language.value : this.language,
      htmlUrl: data.htmlUrl.present ? data.htmlUrl.value : this.htmlUrl,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RepoTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('fullName: $fullName, ')
          ..write('description: $description, ')
          ..write('ownerAvatarUrl: $ownerAvatarUrl, ')
          ..write('stars: $stars, ')
          ..write('forks: $forks, ')
          ..write('watchers: $watchers, ')
          ..write('openIssues: $openIssues, ')
          ..write('language: $language, ')
          ..write('htmlUrl: $htmlUrl')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    fullName,
    description,
    ownerAvatarUrl,
    stars,
    forks,
    watchers,
    openIssues,
    language,
    htmlUrl,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RepoTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.fullName == this.fullName &&
          other.description == this.description &&
          other.ownerAvatarUrl == this.ownerAvatarUrl &&
          other.stars == this.stars &&
          other.forks == this.forks &&
          other.watchers == this.watchers &&
          other.openIssues == this.openIssues &&
          other.language == this.language &&
          other.htmlUrl == this.htmlUrl);
}

class RepoTableCompanion extends UpdateCompanion<RepoTableData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> fullName;
  final Value<String?> description;
  final Value<String> ownerAvatarUrl;
  final Value<int> stars;
  final Value<int> forks;
  final Value<int> watchers;
  final Value<int> openIssues;
  final Value<String?> language;
  final Value<String> htmlUrl;
  const RepoTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.fullName = const Value.absent(),
    this.description = const Value.absent(),
    this.ownerAvatarUrl = const Value.absent(),
    this.stars = const Value.absent(),
    this.forks = const Value.absent(),
    this.watchers = const Value.absent(),
    this.openIssues = const Value.absent(),
    this.language = const Value.absent(),
    this.htmlUrl = const Value.absent(),
  });
  RepoTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String fullName,
    this.description = const Value.absent(),
    required String ownerAvatarUrl,
    required int stars,
    required int forks,
    required int watchers,
    required int openIssues,
    this.language = const Value.absent(),
    required String htmlUrl,
  }) : name = Value(name),
       fullName = Value(fullName),
       ownerAvatarUrl = Value(ownerAvatarUrl),
       stars = Value(stars),
       forks = Value(forks),
       watchers = Value(watchers),
       openIssues = Value(openIssues),
       htmlUrl = Value(htmlUrl);
  static Insertable<RepoTableData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? fullName,
    Expression<String>? description,
    Expression<String>? ownerAvatarUrl,
    Expression<int>? stars,
    Expression<int>? forks,
    Expression<int>? watchers,
    Expression<int>? openIssues,
    Expression<String>? language,
    Expression<String>? htmlUrl,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (fullName != null) 'full_name': fullName,
      if (description != null) 'description': description,
      if (ownerAvatarUrl != null) 'owner_avatar_url': ownerAvatarUrl,
      if (stars != null) 'stars': stars,
      if (forks != null) 'forks': forks,
      if (watchers != null) 'watchers': watchers,
      if (openIssues != null) 'open_issues': openIssues,
      if (language != null) 'language': language,
      if (htmlUrl != null) 'html_url': htmlUrl,
    });
  }

  RepoTableCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String>? fullName,
    Value<String?>? description,
    Value<String>? ownerAvatarUrl,
    Value<int>? stars,
    Value<int>? forks,
    Value<int>? watchers,
    Value<int>? openIssues,
    Value<String?>? language,
    Value<String>? htmlUrl,
  }) {
    return RepoTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      fullName: fullName ?? this.fullName,
      description: description ?? this.description,
      ownerAvatarUrl: ownerAvatarUrl ?? this.ownerAvatarUrl,
      stars: stars ?? this.stars,
      forks: forks ?? this.forks,
      watchers: watchers ?? this.watchers,
      openIssues: openIssues ?? this.openIssues,
      language: language ?? this.language,
      htmlUrl: htmlUrl ?? this.htmlUrl,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (fullName.present) {
      map['full_name'] = Variable<String>(fullName.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (ownerAvatarUrl.present) {
      map['owner_avatar_url'] = Variable<String>(ownerAvatarUrl.value);
    }
    if (stars.present) {
      map['stars'] = Variable<int>(stars.value);
    }
    if (forks.present) {
      map['forks'] = Variable<int>(forks.value);
    }
    if (watchers.present) {
      map['watchers'] = Variable<int>(watchers.value);
    }
    if (openIssues.present) {
      map['open_issues'] = Variable<int>(openIssues.value);
    }
    if (language.present) {
      map['language'] = Variable<String>(language.value);
    }
    if (htmlUrl.present) {
      map['html_url'] = Variable<String>(htmlUrl.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RepoTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('fullName: $fullName, ')
          ..write('description: $description, ')
          ..write('ownerAvatarUrl: $ownerAvatarUrl, ')
          ..write('stars: $stars, ')
          ..write('forks: $forks, ')
          ..write('watchers: $watchers, ')
          ..write('openIssues: $openIssues, ')
          ..write('language: $language, ')
          ..write('htmlUrl: $htmlUrl')
          ..write(')'))
        .toString();
  }
}

abstract class _$RepoDatabase extends GeneratedDatabase {
  _$RepoDatabase(QueryExecutor e) : super(e);
  $RepoDatabaseManager get managers => $RepoDatabaseManager(this);
  late final $RepoTableTable repoTable = $RepoTableTable(this);
  late final RepoDao repoDao = RepoDao(this as RepoDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [repoTable];
}

typedef $$RepoTableTableCreateCompanionBuilder =
    RepoTableCompanion Function({
      Value<int> id,
      required String name,
      required String fullName,
      Value<String?> description,
      required String ownerAvatarUrl,
      required int stars,
      required int forks,
      required int watchers,
      required int openIssues,
      Value<String?> language,
      required String htmlUrl,
    });
typedef $$RepoTableTableUpdateCompanionBuilder =
    RepoTableCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<String> fullName,
      Value<String?> description,
      Value<String> ownerAvatarUrl,
      Value<int> stars,
      Value<int> forks,
      Value<int> watchers,
      Value<int> openIssues,
      Value<String?> language,
      Value<String> htmlUrl,
    });

class $$RepoTableTableFilterComposer
    extends Composer<_$RepoDatabase, $RepoTableTable> {
  $$RepoTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fullName => $composableBuilder(
    column: $table.fullName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get ownerAvatarUrl => $composableBuilder(
    column: $table.ownerAvatarUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get stars => $composableBuilder(
    column: $table.stars,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get forks => $composableBuilder(
    column: $table.forks,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get watchers => $composableBuilder(
    column: $table.watchers,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get openIssues => $composableBuilder(
    column: $table.openIssues,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get language => $composableBuilder(
    column: $table.language,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get htmlUrl => $composableBuilder(
    column: $table.htmlUrl,
    builder: (column) => ColumnFilters(column),
  );
}

class $$RepoTableTableOrderingComposer
    extends Composer<_$RepoDatabase, $RepoTableTable> {
  $$RepoTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fullName => $composableBuilder(
    column: $table.fullName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get ownerAvatarUrl => $composableBuilder(
    column: $table.ownerAvatarUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get stars => $composableBuilder(
    column: $table.stars,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get forks => $composableBuilder(
    column: $table.forks,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get watchers => $composableBuilder(
    column: $table.watchers,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get openIssues => $composableBuilder(
    column: $table.openIssues,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get language => $composableBuilder(
    column: $table.language,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get htmlUrl => $composableBuilder(
    column: $table.htmlUrl,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$RepoTableTableAnnotationComposer
    extends Composer<_$RepoDatabase, $RepoTableTable> {
  $$RepoTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get fullName =>
      $composableBuilder(column: $table.fullName, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get ownerAvatarUrl => $composableBuilder(
    column: $table.ownerAvatarUrl,
    builder: (column) => column,
  );

  GeneratedColumn<int> get stars =>
      $composableBuilder(column: $table.stars, builder: (column) => column);

  GeneratedColumn<int> get forks =>
      $composableBuilder(column: $table.forks, builder: (column) => column);

  GeneratedColumn<int> get watchers =>
      $composableBuilder(column: $table.watchers, builder: (column) => column);

  GeneratedColumn<int> get openIssues => $composableBuilder(
    column: $table.openIssues,
    builder: (column) => column,
  );

  GeneratedColumn<String> get language =>
      $composableBuilder(column: $table.language, builder: (column) => column);

  GeneratedColumn<String> get htmlUrl =>
      $composableBuilder(column: $table.htmlUrl, builder: (column) => column);
}

class $$RepoTableTableTableManager
    extends
        RootTableManager<
          _$RepoDatabase,
          $RepoTableTable,
          RepoTableData,
          $$RepoTableTableFilterComposer,
          $$RepoTableTableOrderingComposer,
          $$RepoTableTableAnnotationComposer,
          $$RepoTableTableCreateCompanionBuilder,
          $$RepoTableTableUpdateCompanionBuilder,
          (
            RepoTableData,
            BaseReferences<_$RepoDatabase, $RepoTableTable, RepoTableData>,
          ),
          RepoTableData,
          PrefetchHooks Function()
        > {
  $$RepoTableTableTableManager(_$RepoDatabase db, $RepoTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RepoTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RepoTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RepoTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> fullName = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<String> ownerAvatarUrl = const Value.absent(),
                Value<int> stars = const Value.absent(),
                Value<int> forks = const Value.absent(),
                Value<int> watchers = const Value.absent(),
                Value<int> openIssues = const Value.absent(),
                Value<String?> language = const Value.absent(),
                Value<String> htmlUrl = const Value.absent(),
              }) => RepoTableCompanion(
                id: id,
                name: name,
                fullName: fullName,
                description: description,
                ownerAvatarUrl: ownerAvatarUrl,
                stars: stars,
                forks: forks,
                watchers: watchers,
                openIssues: openIssues,
                language: language,
                htmlUrl: htmlUrl,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                required String fullName,
                Value<String?> description = const Value.absent(),
                required String ownerAvatarUrl,
                required int stars,
                required int forks,
                required int watchers,
                required int openIssues,
                Value<String?> language = const Value.absent(),
                required String htmlUrl,
              }) => RepoTableCompanion.insert(
                id: id,
                name: name,
                fullName: fullName,
                description: description,
                ownerAvatarUrl: ownerAvatarUrl,
                stars: stars,
                forks: forks,
                watchers: watchers,
                openIssues: openIssues,
                language: language,
                htmlUrl: htmlUrl,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$RepoTableTableProcessedTableManager =
    ProcessedTableManager<
      _$RepoDatabase,
      $RepoTableTable,
      RepoTableData,
      $$RepoTableTableFilterComposer,
      $$RepoTableTableOrderingComposer,
      $$RepoTableTableAnnotationComposer,
      $$RepoTableTableCreateCompanionBuilder,
      $$RepoTableTableUpdateCompanionBuilder,
      (
        RepoTableData,
        BaseReferences<_$RepoDatabase, $RepoTableTable, RepoTableData>,
      ),
      RepoTableData,
      PrefetchHooks Function()
    >;

class $RepoDatabaseManager {
  final _$RepoDatabase _db;
  $RepoDatabaseManager(this._db);
  $$RepoTableTableTableManager get repoTable =>
      $$RepoTableTableTableManager(_db, _db.repoTable);
}
