// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class User extends DataClass implements Insertable<User> {
  final String uid;
  final String nickName;
  final String token;
  User({required this.uid, required this.nickName, required this.token});
  factory User.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return User(
      uid: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}uid'])!,
      nickName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}nick_name'])!,
      token: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}token'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['uid'] = Variable<String>(uid);
    map['nick_name'] = Variable<String>(nickName);
    map['token'] = Variable<String>(token);
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      uid: Value(uid),
      nickName: Value(nickName),
      token: Value(token),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      uid: serializer.fromJson<String>(json['uid']),
      nickName: serializer.fromJson<String>(json['nickName']),
      token: serializer.fromJson<String>(json['token']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'uid': serializer.toJson<String>(uid),
      'nickName': serializer.toJson<String>(nickName),
      'token': serializer.toJson<String>(token),
    };
  }

  User copyWith({String? uid, String? nickName, String? token}) => User(
        uid: uid ?? this.uid,
        nickName: nickName ?? this.nickName,
        token: token ?? this.token,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('uid: $uid, ')
          ..write('nickName: $nickName, ')
          ..write('token: $token')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(uid, nickName, token);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.uid == this.uid &&
          other.nickName == this.nickName &&
          other.token == this.token);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<String> uid;
  final Value<String> nickName;
  final Value<String> token;
  const UsersCompanion({
    this.uid = const Value.absent(),
    this.nickName = const Value.absent(),
    this.token = const Value.absent(),
  });
  UsersCompanion.insert({
    required String uid,
    required String nickName,
    required String token,
  })  : uid = Value(uid),
        nickName = Value(nickName),
        token = Value(token);
  static Insertable<User> custom({
    Expression<String>? uid,
    Expression<String>? nickName,
    Expression<String>? token,
  }) {
    return RawValuesInsertable({
      if (uid != null) 'uid': uid,
      if (nickName != null) 'nick_name': nickName,
      if (token != null) 'token': token,
    });
  }

  UsersCompanion copyWith(
      {Value<String>? uid, Value<String>? nickName, Value<String>? token}) {
    return UsersCompanion(
      uid: uid ?? this.uid,
      nickName: nickName ?? this.nickName,
      token: token ?? this.token,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (uid.present) {
      map['uid'] = Variable<String>(uid.value);
    }
    if (nickName.present) {
      map['nick_name'] = Variable<String>(nickName.value);
    }
    if (token.present) {
      map['token'] = Variable<String>(token.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('uid: $uid, ')
          ..write('nickName: $nickName, ')
          ..write('token: $token')
          ..write(')'))
        .toString();
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _uidMeta = const VerificationMeta('uid');
  @override
  late final GeneratedColumn<String?> uid = GeneratedColumn<String?>(
      'uid', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _nickNameMeta = const VerificationMeta('nickName');
  @override
  late final GeneratedColumn<String?> nickName = GeneratedColumn<String?>(
      'nick_name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _tokenMeta = const VerificationMeta('token');
  @override
  late final GeneratedColumn<String?> token = GeneratedColumn<String?>(
      'token', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  @override
  List<GeneratedColumn> get $columns => [uid, nickName, token];
  @override
  String get aliasedName => _alias ?? 'users';
  @override
  String get actualTableName => 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('uid')) {
      context.handle(
          _uidMeta, uid.isAcceptableOrUnknown(data['uid']!, _uidMeta));
    } else if (isInserting) {
      context.missing(_uidMeta);
    }
    if (data.containsKey('nick_name')) {
      context.handle(_nickNameMeta,
          nickName.isAcceptableOrUnknown(data['nick_name']!, _nickNameMeta));
    } else if (isInserting) {
      context.missing(_nickNameMeta);
    }
    if (data.containsKey('token')) {
      context.handle(
          _tokenMeta, token.isAcceptableOrUnknown(data['token']!, _tokenMeta));
    } else if (isInserting) {
      context.missing(_tokenMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {uid};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    return User.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

class GachaRecord extends DataClass implements Insertable<GachaRecord> {
  final int ts;
  final String pool;
  final List<dynamic> chars;
  final String uid;
  GachaRecord(
      {required this.ts,
      required this.pool,
      required this.chars,
      required this.uid});
  factory GachaRecord.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return GachaRecord(
      ts: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}ts'])!,
      pool: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}pool'])!,
      chars: $GachaRecordsTable.$converter0.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}chars']))!,
      uid: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}uid'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['ts'] = Variable<int>(ts);
    map['pool'] = Variable<String>(pool);
    {
      final converter = $GachaRecordsTable.$converter0;
      map['chars'] = Variable<String>(converter.mapToSql(chars)!);
    }
    map['uid'] = Variable<String>(uid);
    return map;
  }

  GachaRecordsCompanion toCompanion(bool nullToAbsent) {
    return GachaRecordsCompanion(
      ts: Value(ts),
      pool: Value(pool),
      chars: Value(chars),
      uid: Value(uid),
    );
  }

  factory GachaRecord.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GachaRecord(
      ts: serializer.fromJson<int>(json['ts']),
      pool: serializer.fromJson<String>(json['pool']),
      chars: serializer.fromJson<List<dynamic>>(json['chars']),
      uid: serializer.fromJson<String>(json['uid']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'ts': serializer.toJson<int>(ts),
      'pool': serializer.toJson<String>(pool),
      'chars': serializer.toJson<List<dynamic>>(chars),
      'uid': serializer.toJson<String>(uid),
    };
  }

  GachaRecord copyWith(
          {int? ts, String? pool, List<dynamic>? chars, String? uid}) =>
      GachaRecord(
        ts: ts ?? this.ts,
        pool: pool ?? this.pool,
        chars: chars ?? this.chars,
        uid: uid ?? this.uid,
      );
  @override
  String toString() {
    return (StringBuffer('GachaRecord(')
          ..write('ts: $ts, ')
          ..write('pool: $pool, ')
          ..write('chars: $chars, ')
          ..write('uid: $uid')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(ts, pool, chars, uid);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GachaRecord &&
          other.ts == this.ts &&
          other.pool == this.pool &&
          other.chars == this.chars &&
          other.uid == this.uid);
}

class GachaRecordsCompanion extends UpdateCompanion<GachaRecord> {
  final Value<int> ts;
  final Value<String> pool;
  final Value<List<dynamic>> chars;
  final Value<String> uid;
  const GachaRecordsCompanion({
    this.ts = const Value.absent(),
    this.pool = const Value.absent(),
    this.chars = const Value.absent(),
    this.uid = const Value.absent(),
  });
  GachaRecordsCompanion.insert({
    required int ts,
    required String pool,
    required List<dynamic> chars,
    required String uid,
  })  : ts = Value(ts),
        pool = Value(pool),
        chars = Value(chars),
        uid = Value(uid);
  static Insertable<GachaRecord> custom({
    Expression<int>? ts,
    Expression<String>? pool,
    Expression<List<dynamic>>? chars,
    Expression<String>? uid,
  }) {
    return RawValuesInsertable({
      if (ts != null) 'ts': ts,
      if (pool != null) 'pool': pool,
      if (chars != null) 'chars': chars,
      if (uid != null) 'uid': uid,
    });
  }

  GachaRecordsCompanion copyWith(
      {Value<int>? ts,
      Value<String>? pool,
      Value<List<dynamic>>? chars,
      Value<String>? uid}) {
    return GachaRecordsCompanion(
      ts: ts ?? this.ts,
      pool: pool ?? this.pool,
      chars: chars ?? this.chars,
      uid: uid ?? this.uid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (ts.present) {
      map['ts'] = Variable<int>(ts.value);
    }
    if (pool.present) {
      map['pool'] = Variable<String>(pool.value);
    }
    if (chars.present) {
      final converter = $GachaRecordsTable.$converter0;
      map['chars'] = Variable<String>(converter.mapToSql(chars.value)!);
    }
    if (uid.present) {
      map['uid'] = Variable<String>(uid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GachaRecordsCompanion(')
          ..write('ts: $ts, ')
          ..write('pool: $pool, ')
          ..write('chars: $chars, ')
          ..write('uid: $uid')
          ..write(')'))
        .toString();
  }
}

class $GachaRecordsTable extends GachaRecords
    with TableInfo<$GachaRecordsTable, GachaRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GachaRecordsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _tsMeta = const VerificationMeta('ts');
  @override
  late final GeneratedColumn<int?> ts = GeneratedColumn<int?>(
      'ts', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _poolMeta = const VerificationMeta('pool');
  @override
  late final GeneratedColumn<String?> pool = GeneratedColumn<String?>(
      'pool', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _charsMeta = const VerificationMeta('chars');
  @override
  late final GeneratedColumnWithTypeConverter<List<dynamic>, String?> chars =
      GeneratedColumn<String?>('chars', aliasedName, false,
              type: const StringType(), requiredDuringInsert: true)
          .withConverter<List<dynamic>>($GachaRecordsTable.$converter0);
  final VerificationMeta _uidMeta = const VerificationMeta('uid');
  @override
  late final GeneratedColumn<String?> uid = GeneratedColumn<String?>(
      'uid', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [ts, pool, chars, uid];
  @override
  String get aliasedName => _alias ?? 'gacha_records';
  @override
  String get actualTableName => 'gacha_records';
  @override
  VerificationContext validateIntegrity(Insertable<GachaRecord> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ts')) {
      context.handle(_tsMeta, ts.isAcceptableOrUnknown(data['ts']!, _tsMeta));
    } else if (isInserting) {
      context.missing(_tsMeta);
    }
    if (data.containsKey('pool')) {
      context.handle(
          _poolMeta, pool.isAcceptableOrUnknown(data['pool']!, _poolMeta));
    } else if (isInserting) {
      context.missing(_poolMeta);
    }
    context.handle(_charsMeta, const VerificationResult.success());
    if (data.containsKey('uid')) {
      context.handle(
          _uidMeta, uid.isAcceptableOrUnknown(data['uid']!, _uidMeta));
    } else if (isInserting) {
      context.missing(_uidMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {ts, uid};
  @override
  GachaRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    return GachaRecord.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $GachaRecordsTable createAlias(String alias) {
    return $GachaRecordsTable(attachedDatabase, alias);
  }

  static TypeConverter<List<dynamic>, String> $converter0 =
      const ListConverter();
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $UsersTable users = $UsersTable(this);
  late final $GachaRecordsTable gachaRecords = $GachaRecordsTable(this);
  late final UsersDao usersDao = UsersDao(this as AppDatabase);
  late final GachaRecordsDao gachaRecordsDao =
      GachaRecordsDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [users, gachaRecords];
}
