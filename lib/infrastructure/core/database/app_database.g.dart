// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// DriftDatabaseGenerator
// **************************************************************************

// ignore_for_file: type=lint
class User extends DataClass implements Insertable<User> {
  final String uid;
  final String nickName;
  final String token;
  const User({required this.uid, required this.nickName, required this.token});
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
  late final GeneratedColumn<String> uid = GeneratedColumn<String>(
      'uid', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _nickNameMeta = const VerificationMeta('nickName');
  @override
  late final GeneratedColumn<String> nickName = GeneratedColumn<String>(
      'nick_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _tokenMeta = const VerificationMeta('token');
  @override
  late final GeneratedColumn<String> token = GeneratedColumn<String>(
      'token', aliasedName, false,
      type: DriftSqlType.string,
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
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      uid: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}uid'])!,
      nickName: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}nick_name'])!,
      token: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}token'])!,
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

class GachaPool extends DataClass implements Insertable<GachaPool> {
  final String gachaPoolId;
  final int gachaIndex;
  final int openTime;
  final int endTime;
  final String gachaPoolName;
  final String gachaRuleType;
  const GachaPool(
      {required this.gachaPoolId,
      required this.gachaIndex,
      required this.openTime,
      required this.endTime,
      required this.gachaPoolName,
      required this.gachaRuleType});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['gacha_pool_id'] = Variable<String>(gachaPoolId);
    map['gacha_index'] = Variable<int>(gachaIndex);
    map['open_time'] = Variable<int>(openTime);
    map['end_time'] = Variable<int>(endTime);
    map['gacha_pool_name'] = Variable<String>(gachaPoolName);
    map['gacha_rule_type'] = Variable<String>(gachaRuleType);
    return map;
  }

  GachaPoolsCompanion toCompanion(bool nullToAbsent) {
    return GachaPoolsCompanion(
      gachaPoolId: Value(gachaPoolId),
      gachaIndex: Value(gachaIndex),
      openTime: Value(openTime),
      endTime: Value(endTime),
      gachaPoolName: Value(gachaPoolName),
      gachaRuleType: Value(gachaRuleType),
    );
  }

  factory GachaPool.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GachaPool(
      gachaPoolId: serializer.fromJson<String>(json['gachaPoolId']),
      gachaIndex: serializer.fromJson<int>(json['gachaIndex']),
      openTime: serializer.fromJson<int>(json['openTime']),
      endTime: serializer.fromJson<int>(json['endTime']),
      gachaPoolName: serializer.fromJson<String>(json['gachaPoolName']),
      gachaRuleType: serializer.fromJson<String>(json['gachaRuleType']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'gachaPoolId': serializer.toJson<String>(gachaPoolId),
      'gachaIndex': serializer.toJson<int>(gachaIndex),
      'openTime': serializer.toJson<int>(openTime),
      'endTime': serializer.toJson<int>(endTime),
      'gachaPoolName': serializer.toJson<String>(gachaPoolName),
      'gachaRuleType': serializer.toJson<String>(gachaRuleType),
    };
  }

  GachaPool copyWith(
          {String? gachaPoolId,
          int? gachaIndex,
          int? openTime,
          int? endTime,
          String? gachaPoolName,
          String? gachaRuleType}) =>
      GachaPool(
        gachaPoolId: gachaPoolId ?? this.gachaPoolId,
        gachaIndex: gachaIndex ?? this.gachaIndex,
        openTime: openTime ?? this.openTime,
        endTime: endTime ?? this.endTime,
        gachaPoolName: gachaPoolName ?? this.gachaPoolName,
        gachaRuleType: gachaRuleType ?? this.gachaRuleType,
      );
  @override
  String toString() {
    return (StringBuffer('GachaPool(')
          ..write('gachaPoolId: $gachaPoolId, ')
          ..write('gachaIndex: $gachaIndex, ')
          ..write('openTime: $openTime, ')
          ..write('endTime: $endTime, ')
          ..write('gachaPoolName: $gachaPoolName, ')
          ..write('gachaRuleType: $gachaRuleType')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      gachaPoolId, gachaIndex, openTime, endTime, gachaPoolName, gachaRuleType);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GachaPool &&
          other.gachaPoolId == this.gachaPoolId &&
          other.gachaIndex == this.gachaIndex &&
          other.openTime == this.openTime &&
          other.endTime == this.endTime &&
          other.gachaPoolName == this.gachaPoolName &&
          other.gachaRuleType == this.gachaRuleType);
}

class GachaPoolsCompanion extends UpdateCompanion<GachaPool> {
  final Value<String> gachaPoolId;
  final Value<int> gachaIndex;
  final Value<int> openTime;
  final Value<int> endTime;
  final Value<String> gachaPoolName;
  final Value<String> gachaRuleType;
  const GachaPoolsCompanion({
    this.gachaPoolId = const Value.absent(),
    this.gachaIndex = const Value.absent(),
    this.openTime = const Value.absent(),
    this.endTime = const Value.absent(),
    this.gachaPoolName = const Value.absent(),
    this.gachaRuleType = const Value.absent(),
  });
  GachaPoolsCompanion.insert({
    required String gachaPoolId,
    required int gachaIndex,
    required int openTime,
    required int endTime,
    required String gachaPoolName,
    required String gachaRuleType,
  })  : gachaPoolId = Value(gachaPoolId),
        gachaIndex = Value(gachaIndex),
        openTime = Value(openTime),
        endTime = Value(endTime),
        gachaPoolName = Value(gachaPoolName),
        gachaRuleType = Value(gachaRuleType);
  static Insertable<GachaPool> custom({
    Expression<String>? gachaPoolId,
    Expression<int>? gachaIndex,
    Expression<int>? openTime,
    Expression<int>? endTime,
    Expression<String>? gachaPoolName,
    Expression<String>? gachaRuleType,
  }) {
    return RawValuesInsertable({
      if (gachaPoolId != null) 'gacha_pool_id': gachaPoolId,
      if (gachaIndex != null) 'gacha_index': gachaIndex,
      if (openTime != null) 'open_time': openTime,
      if (endTime != null) 'end_time': endTime,
      if (gachaPoolName != null) 'gacha_pool_name': gachaPoolName,
      if (gachaRuleType != null) 'gacha_rule_type': gachaRuleType,
    });
  }

  GachaPoolsCompanion copyWith(
      {Value<String>? gachaPoolId,
      Value<int>? gachaIndex,
      Value<int>? openTime,
      Value<int>? endTime,
      Value<String>? gachaPoolName,
      Value<String>? gachaRuleType}) {
    return GachaPoolsCompanion(
      gachaPoolId: gachaPoolId ?? this.gachaPoolId,
      gachaIndex: gachaIndex ?? this.gachaIndex,
      openTime: openTime ?? this.openTime,
      endTime: endTime ?? this.endTime,
      gachaPoolName: gachaPoolName ?? this.gachaPoolName,
      gachaRuleType: gachaRuleType ?? this.gachaRuleType,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (gachaPoolId.present) {
      map['gacha_pool_id'] = Variable<String>(gachaPoolId.value);
    }
    if (gachaIndex.present) {
      map['gacha_index'] = Variable<int>(gachaIndex.value);
    }
    if (openTime.present) {
      map['open_time'] = Variable<int>(openTime.value);
    }
    if (endTime.present) {
      map['end_time'] = Variable<int>(endTime.value);
    }
    if (gachaPoolName.present) {
      map['gacha_pool_name'] = Variable<String>(gachaPoolName.value);
    }
    if (gachaRuleType.present) {
      map['gacha_rule_type'] = Variable<String>(gachaRuleType.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GachaPoolsCompanion(')
          ..write('gachaPoolId: $gachaPoolId, ')
          ..write('gachaIndex: $gachaIndex, ')
          ..write('openTime: $openTime, ')
          ..write('endTime: $endTime, ')
          ..write('gachaPoolName: $gachaPoolName, ')
          ..write('gachaRuleType: $gachaRuleType')
          ..write(')'))
        .toString();
  }
}

class $GachaPoolsTable extends GachaPools
    with TableInfo<$GachaPoolsTable, GachaPool> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GachaPoolsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _gachaPoolIdMeta =
      const VerificationMeta('gachaPoolId');
  @override
  late final GeneratedColumn<String> gachaPoolId = GeneratedColumn<String>(
      'gacha_pool_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _gachaIndexMeta = const VerificationMeta('gachaIndex');
  @override
  late final GeneratedColumn<int> gachaIndex = GeneratedColumn<int>(
      'gacha_index', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _openTimeMeta = const VerificationMeta('openTime');
  @override
  late final GeneratedColumn<int> openTime = GeneratedColumn<int>(
      'open_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _endTimeMeta = const VerificationMeta('endTime');
  @override
  late final GeneratedColumn<int> endTime = GeneratedColumn<int>(
      'end_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _gachaPoolNameMeta =
      const VerificationMeta('gachaPoolName');
  @override
  late final GeneratedColumn<String> gachaPoolName = GeneratedColumn<String>(
      'gacha_pool_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _gachaRuleTypeMeta =
      const VerificationMeta('gachaRuleType');
  @override
  late final GeneratedColumn<String> gachaRuleType = GeneratedColumn<String>(
      'gacha_rule_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        gachaPoolId,
        gachaIndex,
        openTime,
        endTime,
        gachaPoolName,
        gachaRuleType
      ];
  @override
  String get aliasedName => _alias ?? 'gacha_pools';
  @override
  String get actualTableName => 'gacha_pools';
  @override
  VerificationContext validateIntegrity(Insertable<GachaPool> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('gacha_pool_id')) {
      context.handle(
          _gachaPoolIdMeta,
          gachaPoolId.isAcceptableOrUnknown(
              data['gacha_pool_id']!, _gachaPoolIdMeta));
    } else if (isInserting) {
      context.missing(_gachaPoolIdMeta);
    }
    if (data.containsKey('gacha_index')) {
      context.handle(
          _gachaIndexMeta,
          gachaIndex.isAcceptableOrUnknown(
              data['gacha_index']!, _gachaIndexMeta));
    } else if (isInserting) {
      context.missing(_gachaIndexMeta);
    }
    if (data.containsKey('open_time')) {
      context.handle(_openTimeMeta,
          openTime.isAcceptableOrUnknown(data['open_time']!, _openTimeMeta));
    } else if (isInserting) {
      context.missing(_openTimeMeta);
    }
    if (data.containsKey('end_time')) {
      context.handle(_endTimeMeta,
          endTime.isAcceptableOrUnknown(data['end_time']!, _endTimeMeta));
    } else if (isInserting) {
      context.missing(_endTimeMeta);
    }
    if (data.containsKey('gacha_pool_name')) {
      context.handle(
          _gachaPoolNameMeta,
          gachaPoolName.isAcceptableOrUnknown(
              data['gacha_pool_name']!, _gachaPoolNameMeta));
    } else if (isInserting) {
      context.missing(_gachaPoolNameMeta);
    }
    if (data.containsKey('gacha_rule_type')) {
      context.handle(
          _gachaRuleTypeMeta,
          gachaRuleType.isAcceptableOrUnknown(
              data['gacha_rule_type']!, _gachaRuleTypeMeta));
    } else if (isInserting) {
      context.missing(_gachaRuleTypeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {gachaPoolId};
  @override
  GachaPool map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GachaPool(
      gachaPoolId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}gacha_pool_id'])!,
      gachaIndex: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}gacha_index'])!,
      openTime: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}open_time'])!,
      endTime: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}end_time'])!,
      gachaPoolName: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}gacha_pool_name'])!,
      gachaRuleType: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}gacha_rule_type'])!,
    );
  }

  @override
  $GachaPoolsTable createAlias(String alias) {
    return $GachaPoolsTable(attachedDatabase, alias);
  }
}

class GachaRecord extends DataClass implements Insertable<GachaRecord> {
  final int ts;
  final String pool;
  final List<dynamic> chars;
  final String uid;
  const GachaRecord(
      {required this.ts,
      required this.pool,
      required this.chars,
      required this.uid});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['ts'] = Variable<int>(ts);
    map['pool'] = Variable<String>(pool);
    {
      final converter = $GachaRecordsTable.$converter0;
      map['chars'] = Variable<String>(converter.toSql(chars));
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
    Expression<String>? chars,
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
      map['chars'] = Variable<String>(converter.toSql(chars.value));
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
  late final GeneratedColumn<int> ts = GeneratedColumn<int>(
      'ts', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _poolMeta = const VerificationMeta('pool');
  @override
  late final GeneratedColumn<String> pool = GeneratedColumn<String>(
      'pool', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _charsMeta = const VerificationMeta('chars');
  @override
  late final GeneratedColumnWithTypeConverter<List<dynamic>, String> chars =
      GeneratedColumn<String>('chars', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<dynamic>>($GachaRecordsTable.$converter0);
  final VerificationMeta _uidMeta = const VerificationMeta('uid');
  @override
  late final GeneratedColumn<String> uid = GeneratedColumn<String>(
      'uid', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
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
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GachaRecord(
      ts: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}ts'])!,
      pool: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}pool'])!,
      chars: $GachaRecordsTable.$converter0.fromSql(attachedDatabase
          .options.types
          .read(DriftSqlType.string, data['${effectivePrefix}chars'])!),
      uid: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}uid'])!,
    );
  }

  @override
  $GachaRecordsTable createAlias(String alias) {
    return $GachaRecordsTable(attachedDatabase, alias);
  }

  static TypeConverter<List<dynamic>, String> $converter0 =
      const ListConverter();
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $UsersTable users = $UsersTable(this);
  late final $GachaPoolsTable gachaPools = $GachaPoolsTable(this);
  late final $GachaRecordsTable gachaRecords = $GachaRecordsTable(this);
  late final UsersDao usersDao = UsersDao(this as AppDatabase);
  late final GachaPoolsDao gachaPoolsDao = GachaPoolsDao(this as AppDatabase);
  late final GachaRecordsDao gachaRecordsDao =
      GachaRecordsDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, dynamic>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [users, gachaPools, gachaRecords];
}
