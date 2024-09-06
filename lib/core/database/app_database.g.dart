// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _uidMeta = const VerificationMeta('uid');
  @override
  late final GeneratedColumn<String> uid = GeneratedColumn<String>(
      'uid', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nickNameMeta =
      const VerificationMeta('nickName');
  @override
  late final GeneratedColumn<String> nickName = GeneratedColumn<String>(
      'nick_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _tokenMeta = const VerificationMeta('token');
  @override
  late final GeneratedColumn<String> token = GeneratedColumn<String>(
      'token', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  @override
  List<GeneratedColumn> get $columns => [uid, nickName, token];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'users';
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
      uid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}uid'])!,
      nickName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nick_name'])!,
      token: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}token'])!,
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

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
  User copyWithCompanion(UsersCompanion data) {
    return User(
      uid: data.uid.present ? data.uid.value : this.uid,
      nickName: data.nickName.present ? data.nickName.value : this.nickName,
      token: data.token.present ? data.token.value : this.token,
    );
  }

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
  final Value<int> rowid;
  const UsersCompanion({
    this.uid = const Value.absent(),
    this.nickName = const Value.absent(),
    this.token = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UsersCompanion.insert({
    required String uid,
    required String nickName,
    required String token,
    this.rowid = const Value.absent(),
  })  : uid = Value(uid),
        nickName = Value(nickName),
        token = Value(token);
  static Insertable<User> custom({
    Expression<String>? uid,
    Expression<String>? nickName,
    Expression<String>? token,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (uid != null) 'uid': uid,
      if (nickName != null) 'nick_name': nickName,
      if (token != null) 'token': token,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UsersCompanion copyWith(
      {Value<String>? uid,
      Value<String>? nickName,
      Value<String>? token,
      Value<int>? rowid}) {
    return UsersCompanion(
      uid: uid ?? this.uid,
      nickName: nickName ?? this.nickName,
      token: token ?? this.token,
      rowid: rowid ?? this.rowid,
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
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('uid: $uid, ')
          ..write('nickName: $nickName, ')
          ..write('token: $token, ')
          ..write('rowid: $rowid')
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
  static const VerificationMeta _gachaPoolIdMeta =
      const VerificationMeta('gachaPoolId');
  @override
  late final GeneratedColumn<String> gachaPoolId = GeneratedColumn<String>(
      'gacha_pool_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _gachaIndexMeta =
      const VerificationMeta('gachaIndex');
  @override
  late final GeneratedColumn<int> gachaIndex = GeneratedColumn<int>(
      'gacha_index', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _openTimeMeta =
      const VerificationMeta('openTime');
  @override
  late final GeneratedColumn<int> openTime = GeneratedColumn<int>(
      'open_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _endTimeMeta =
      const VerificationMeta('endTime');
  @override
  late final GeneratedColumn<int> endTime = GeneratedColumn<int>(
      'end_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _gachaPoolNameMeta =
      const VerificationMeta('gachaPoolName');
  @override
  late final GeneratedColumn<String> gachaPoolName = GeneratedColumn<String>(
      'gacha_pool_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _gachaRuleTypeMeta =
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
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'gacha_pools';
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
      gachaPoolId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}gacha_pool_id'])!,
      gachaIndex: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}gacha_index'])!,
      openTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}open_time'])!,
      endTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}end_time'])!,
      gachaPoolName: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}gacha_pool_name'])!,
      gachaRuleType: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}gacha_rule_type'])!,
    );
  }

  @override
  $GachaPoolsTable createAlias(String alias) {
    return $GachaPoolsTable(attachedDatabase, alias);
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
  GachaPool copyWithCompanion(GachaPoolsCompanion data) {
    return GachaPool(
      gachaPoolId:
          data.gachaPoolId.present ? data.gachaPoolId.value : this.gachaPoolId,
      gachaIndex:
          data.gachaIndex.present ? data.gachaIndex.value : this.gachaIndex,
      openTime: data.openTime.present ? data.openTime.value : this.openTime,
      endTime: data.endTime.present ? data.endTime.value : this.endTime,
      gachaPoolName: data.gachaPoolName.present
          ? data.gachaPoolName.value
          : this.gachaPoolName,
      gachaRuleType: data.gachaRuleType.present
          ? data.gachaRuleType.value
          : this.gachaRuleType,
    );
  }

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
  final Value<int> rowid;
  const GachaPoolsCompanion({
    this.gachaPoolId = const Value.absent(),
    this.gachaIndex = const Value.absent(),
    this.openTime = const Value.absent(),
    this.endTime = const Value.absent(),
    this.gachaPoolName = const Value.absent(),
    this.gachaRuleType = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GachaPoolsCompanion.insert({
    required String gachaPoolId,
    required int gachaIndex,
    required int openTime,
    required int endTime,
    required String gachaPoolName,
    required String gachaRuleType,
    this.rowid = const Value.absent(),
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
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (gachaPoolId != null) 'gacha_pool_id': gachaPoolId,
      if (gachaIndex != null) 'gacha_index': gachaIndex,
      if (openTime != null) 'open_time': openTime,
      if (endTime != null) 'end_time': endTime,
      if (gachaPoolName != null) 'gacha_pool_name': gachaPoolName,
      if (gachaRuleType != null) 'gacha_rule_type': gachaRuleType,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GachaPoolsCompanion copyWith(
      {Value<String>? gachaPoolId,
      Value<int>? gachaIndex,
      Value<int>? openTime,
      Value<int>? endTime,
      Value<String>? gachaPoolName,
      Value<String>? gachaRuleType,
      Value<int>? rowid}) {
    return GachaPoolsCompanion(
      gachaPoolId: gachaPoolId ?? this.gachaPoolId,
      gachaIndex: gachaIndex ?? this.gachaIndex,
      openTime: openTime ?? this.openTime,
      endTime: endTime ?? this.endTime,
      gachaPoolName: gachaPoolName ?? this.gachaPoolName,
      gachaRuleType: gachaRuleType ?? this.gachaRuleType,
      rowid: rowid ?? this.rowid,
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
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
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
          ..write('gachaRuleType: $gachaRuleType, ')
          ..write('rowid: $rowid')
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
  static const VerificationMeta _tsMeta = const VerificationMeta('ts');
  @override
  late final GeneratedColumn<int> ts = GeneratedColumn<int>(
      'ts', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _poolMeta = const VerificationMeta('pool');
  @override
  late final GeneratedColumn<String> pool = GeneratedColumn<String>(
      'pool', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _charsMeta = const VerificationMeta('chars');
  @override
  late final GeneratedColumnWithTypeConverter<List<dynamic>, String> chars =
      GeneratedColumn<String>('chars', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<dynamic>>($GachaRecordsTable.$converterchars);
  static const VerificationMeta _uidMeta = const VerificationMeta('uid');
  @override
  late final GeneratedColumn<String> uid = GeneratedColumn<String>(
      'uid', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [ts, pool, chars, uid];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'gacha_records';
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
      ts: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ts'])!,
      pool: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pool'])!,
      chars: $GachaRecordsTable.$converterchars.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}chars'])!),
      uid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}uid'])!,
    );
  }

  @override
  $GachaRecordsTable createAlias(String alias) {
    return $GachaRecordsTable(attachedDatabase, alias);
  }

  static TypeConverter<List<dynamic>, String> $converterchars =
      const ListConverter();
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
      map['chars'] =
          Variable<String>($GachaRecordsTable.$converterchars.toSql(chars));
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
  GachaRecord copyWithCompanion(GachaRecordsCompanion data) {
    return GachaRecord(
      ts: data.ts.present ? data.ts.value : this.ts,
      pool: data.pool.present ? data.pool.value : this.pool,
      chars: data.chars.present ? data.chars.value : this.chars,
      uid: data.uid.present ? data.uid.value : this.uid,
    );
  }

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
  final Value<int> rowid;
  const GachaRecordsCompanion({
    this.ts = const Value.absent(),
    this.pool = const Value.absent(),
    this.chars = const Value.absent(),
    this.uid = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GachaRecordsCompanion.insert({
    required int ts,
    required String pool,
    required List<dynamic> chars,
    required String uid,
    this.rowid = const Value.absent(),
  })  : ts = Value(ts),
        pool = Value(pool),
        chars = Value(chars),
        uid = Value(uid);
  static Insertable<GachaRecord> custom({
    Expression<int>? ts,
    Expression<String>? pool,
    Expression<String>? chars,
    Expression<String>? uid,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (ts != null) 'ts': ts,
      if (pool != null) 'pool': pool,
      if (chars != null) 'chars': chars,
      if (uid != null) 'uid': uid,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GachaRecordsCompanion copyWith(
      {Value<int>? ts,
      Value<String>? pool,
      Value<List<dynamic>>? chars,
      Value<String>? uid,
      Value<int>? rowid}) {
    return GachaRecordsCompanion(
      ts: ts ?? this.ts,
      pool: pool ?? this.pool,
      chars: chars ?? this.chars,
      uid: uid ?? this.uid,
      rowid: rowid ?? this.rowid,
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
      map['chars'] = Variable<String>(
          $GachaRecordsTable.$converterchars.toSql(chars.value));
    }
    if (uid.present) {
      map['uid'] = Variable<String>(uid.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GachaRecordsCompanion(')
          ..write('ts: $ts, ')
          ..write('pool: $pool, ')
          ..write('chars: $chars, ')
          ..write('uid: $uid, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DiamondRecordsTable extends DiamondRecords
    with TableInfo<$DiamondRecordsTable, DiamondRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DiamondRecordsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _tsMeta = const VerificationMeta('ts');
  @override
  late final GeneratedColumn<int> ts = GeneratedColumn<int>(
      'ts', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _operationMeta =
      const VerificationMeta('operation');
  @override
  late final GeneratedColumn<String> operation = GeneratedColumn<String>(
      'operation', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _changesMeta =
      const VerificationMeta('changes');
  @override
  late final GeneratedColumnWithTypeConverter<List<dynamic>, String> changes =
      GeneratedColumn<String>('changes', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<dynamic>>($DiamondRecordsTable.$converterchanges);
  static const VerificationMeta _uidMeta = const VerificationMeta('uid');
  @override
  late final GeneratedColumn<String> uid = GeneratedColumn<String>(
      'uid', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [ts, operation, changes, uid];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'diamond_records';
  @override
  VerificationContext validateIntegrity(Insertable<DiamondRecord> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ts')) {
      context.handle(_tsMeta, ts.isAcceptableOrUnknown(data['ts']!, _tsMeta));
    } else if (isInserting) {
      context.missing(_tsMeta);
    }
    if (data.containsKey('operation')) {
      context.handle(_operationMeta,
          operation.isAcceptableOrUnknown(data['operation']!, _operationMeta));
    } else if (isInserting) {
      context.missing(_operationMeta);
    }
    context.handle(_changesMeta, const VerificationResult.success());
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
  DiamondRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DiamondRecord(
      ts: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ts'])!,
      operation: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}operation'])!,
      changes: $DiamondRecordsTable.$converterchanges.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}changes'])!),
      uid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}uid'])!,
    );
  }

  @override
  $DiamondRecordsTable createAlias(String alias) {
    return $DiamondRecordsTable(attachedDatabase, alias);
  }

  static TypeConverter<List<dynamic>, String> $converterchanges =
      const ListConverter();
}

class DiamondRecord extends DataClass implements Insertable<DiamondRecord> {
  final int ts;
  final String operation;
  final List<dynamic> changes;
  final String uid;
  const DiamondRecord(
      {required this.ts,
      required this.operation,
      required this.changes,
      required this.uid});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['ts'] = Variable<int>(ts);
    map['operation'] = Variable<String>(operation);
    {
      map['changes'] = Variable<String>(
          $DiamondRecordsTable.$converterchanges.toSql(changes));
    }
    map['uid'] = Variable<String>(uid);
    return map;
  }

  DiamondRecordsCompanion toCompanion(bool nullToAbsent) {
    return DiamondRecordsCompanion(
      ts: Value(ts),
      operation: Value(operation),
      changes: Value(changes),
      uid: Value(uid),
    );
  }

  factory DiamondRecord.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DiamondRecord(
      ts: serializer.fromJson<int>(json['ts']),
      operation: serializer.fromJson<String>(json['operation']),
      changes: serializer.fromJson<List<dynamic>>(json['changes']),
      uid: serializer.fromJson<String>(json['uid']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'ts': serializer.toJson<int>(ts),
      'operation': serializer.toJson<String>(operation),
      'changes': serializer.toJson<List<dynamic>>(changes),
      'uid': serializer.toJson<String>(uid),
    };
  }

  DiamondRecord copyWith(
          {int? ts, String? operation, List<dynamic>? changes, String? uid}) =>
      DiamondRecord(
        ts: ts ?? this.ts,
        operation: operation ?? this.operation,
        changes: changes ?? this.changes,
        uid: uid ?? this.uid,
      );
  DiamondRecord copyWithCompanion(DiamondRecordsCompanion data) {
    return DiamondRecord(
      ts: data.ts.present ? data.ts.value : this.ts,
      operation: data.operation.present ? data.operation.value : this.operation,
      changes: data.changes.present ? data.changes.value : this.changes,
      uid: data.uid.present ? data.uid.value : this.uid,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DiamondRecord(')
          ..write('ts: $ts, ')
          ..write('operation: $operation, ')
          ..write('changes: $changes, ')
          ..write('uid: $uid')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(ts, operation, changes, uid);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DiamondRecord &&
          other.ts == this.ts &&
          other.operation == this.operation &&
          other.changes == this.changes &&
          other.uid == this.uid);
}

class DiamondRecordsCompanion extends UpdateCompanion<DiamondRecord> {
  final Value<int> ts;
  final Value<String> operation;
  final Value<List<dynamic>> changes;
  final Value<String> uid;
  final Value<int> rowid;
  const DiamondRecordsCompanion({
    this.ts = const Value.absent(),
    this.operation = const Value.absent(),
    this.changes = const Value.absent(),
    this.uid = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DiamondRecordsCompanion.insert({
    required int ts,
    required String operation,
    required List<dynamic> changes,
    required String uid,
    this.rowid = const Value.absent(),
  })  : ts = Value(ts),
        operation = Value(operation),
        changes = Value(changes),
        uid = Value(uid);
  static Insertable<DiamondRecord> custom({
    Expression<int>? ts,
    Expression<String>? operation,
    Expression<String>? changes,
    Expression<String>? uid,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (ts != null) 'ts': ts,
      if (operation != null) 'operation': operation,
      if (changes != null) 'changes': changes,
      if (uid != null) 'uid': uid,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DiamondRecordsCompanion copyWith(
      {Value<int>? ts,
      Value<String>? operation,
      Value<List<dynamic>>? changes,
      Value<String>? uid,
      Value<int>? rowid}) {
    return DiamondRecordsCompanion(
      ts: ts ?? this.ts,
      operation: operation ?? this.operation,
      changes: changes ?? this.changes,
      uid: uid ?? this.uid,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (ts.present) {
      map['ts'] = Variable<int>(ts.value);
    }
    if (operation.present) {
      map['operation'] = Variable<String>(operation.value);
    }
    if (changes.present) {
      map['changes'] = Variable<String>(
          $DiamondRecordsTable.$converterchanges.toSql(changes.value));
    }
    if (uid.present) {
      map['uid'] = Variable<String>(uid.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DiamondRecordsCompanion(')
          ..write('ts: $ts, ')
          ..write('operation: $operation, ')
          ..write('changes: $changes, ')
          ..write('uid: $uid, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PaymentRecordsTable extends PaymentRecords
    with TableInfo<$PaymentRecordsTable, PaymentRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PaymentRecordsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _orderIdMeta =
      const VerificationMeta('orderId');
  @override
  late final GeneratedColumn<String> orderId = GeneratedColumn<String>(
      'order_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _platformMeta =
      const VerificationMeta('platform');
  @override
  late final GeneratedColumn<int> platform = GeneratedColumn<int>(
      'platform', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<int> amount = GeneratedColumn<int>(
      'amount', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _productNameMeta =
      const VerificationMeta('productName');
  @override
  late final GeneratedColumn<String> productName = GeneratedColumn<String>(
      'product_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _payTimeMeta =
      const VerificationMeta('payTime');
  @override
  late final GeneratedColumn<int> payTime = GeneratedColumn<int>(
      'pay_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _uidMeta = const VerificationMeta('uid');
  @override
  late final GeneratedColumn<String> uid = GeneratedColumn<String>(
      'uid', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [orderId, platform, amount, productName, payTime, uid];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'payment_records';
  @override
  VerificationContext validateIntegrity(Insertable<PaymentRecord> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('order_id')) {
      context.handle(_orderIdMeta,
          orderId.isAcceptableOrUnknown(data['order_id']!, _orderIdMeta));
    } else if (isInserting) {
      context.missing(_orderIdMeta);
    }
    if (data.containsKey('platform')) {
      context.handle(_platformMeta,
          platform.isAcceptableOrUnknown(data['platform']!, _platformMeta));
    } else if (isInserting) {
      context.missing(_platformMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('product_name')) {
      context.handle(
          _productNameMeta,
          productName.isAcceptableOrUnknown(
              data['product_name']!, _productNameMeta));
    } else if (isInserting) {
      context.missing(_productNameMeta);
    }
    if (data.containsKey('pay_time')) {
      context.handle(_payTimeMeta,
          payTime.isAcceptableOrUnknown(data['pay_time']!, _payTimeMeta));
    } else if (isInserting) {
      context.missing(_payTimeMeta);
    }
    if (data.containsKey('uid')) {
      context.handle(
          _uidMeta, uid.isAcceptableOrUnknown(data['uid']!, _uidMeta));
    } else if (isInserting) {
      context.missing(_uidMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {orderId, uid};
  @override
  PaymentRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PaymentRecord(
      orderId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_id'])!,
      platform: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}platform'])!,
      amount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}amount'])!,
      productName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}product_name'])!,
      payTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}pay_time'])!,
      uid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}uid'])!,
    );
  }

  @override
  $PaymentRecordsTable createAlias(String alias) {
    return $PaymentRecordsTable(attachedDatabase, alias);
  }
}

class PaymentRecord extends DataClass implements Insertable<PaymentRecord> {
  final String orderId;
  final int platform;
  final int amount;
  final String productName;
  final int payTime;
  final String uid;
  const PaymentRecord(
      {required this.orderId,
      required this.platform,
      required this.amount,
      required this.productName,
      required this.payTime,
      required this.uid});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['order_id'] = Variable<String>(orderId);
    map['platform'] = Variable<int>(platform);
    map['amount'] = Variable<int>(amount);
    map['product_name'] = Variable<String>(productName);
    map['pay_time'] = Variable<int>(payTime);
    map['uid'] = Variable<String>(uid);
    return map;
  }

  PaymentRecordsCompanion toCompanion(bool nullToAbsent) {
    return PaymentRecordsCompanion(
      orderId: Value(orderId),
      platform: Value(platform),
      amount: Value(amount),
      productName: Value(productName),
      payTime: Value(payTime),
      uid: Value(uid),
    );
  }

  factory PaymentRecord.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PaymentRecord(
      orderId: serializer.fromJson<String>(json['orderId']),
      platform: serializer.fromJson<int>(json['platform']),
      amount: serializer.fromJson<int>(json['amount']),
      productName: serializer.fromJson<String>(json['productName']),
      payTime: serializer.fromJson<int>(json['payTime']),
      uid: serializer.fromJson<String>(json['uid']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'orderId': serializer.toJson<String>(orderId),
      'platform': serializer.toJson<int>(platform),
      'amount': serializer.toJson<int>(amount),
      'productName': serializer.toJson<String>(productName),
      'payTime': serializer.toJson<int>(payTime),
      'uid': serializer.toJson<String>(uid),
    };
  }

  PaymentRecord copyWith(
          {String? orderId,
          int? platform,
          int? amount,
          String? productName,
          int? payTime,
          String? uid}) =>
      PaymentRecord(
        orderId: orderId ?? this.orderId,
        platform: platform ?? this.platform,
        amount: amount ?? this.amount,
        productName: productName ?? this.productName,
        payTime: payTime ?? this.payTime,
        uid: uid ?? this.uid,
      );
  PaymentRecord copyWithCompanion(PaymentRecordsCompanion data) {
    return PaymentRecord(
      orderId: data.orderId.present ? data.orderId.value : this.orderId,
      platform: data.platform.present ? data.platform.value : this.platform,
      amount: data.amount.present ? data.amount.value : this.amount,
      productName:
          data.productName.present ? data.productName.value : this.productName,
      payTime: data.payTime.present ? data.payTime.value : this.payTime,
      uid: data.uid.present ? data.uid.value : this.uid,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PaymentRecord(')
          ..write('orderId: $orderId, ')
          ..write('platform: $platform, ')
          ..write('amount: $amount, ')
          ..write('productName: $productName, ')
          ..write('payTime: $payTime, ')
          ..write('uid: $uid')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(orderId, platform, amount, productName, payTime, uid);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PaymentRecord &&
          other.orderId == this.orderId &&
          other.platform == this.platform &&
          other.amount == this.amount &&
          other.productName == this.productName &&
          other.payTime == this.payTime &&
          other.uid == this.uid);
}

class PaymentRecordsCompanion extends UpdateCompanion<PaymentRecord> {
  final Value<String> orderId;
  final Value<int> platform;
  final Value<int> amount;
  final Value<String> productName;
  final Value<int> payTime;
  final Value<String> uid;
  final Value<int> rowid;
  const PaymentRecordsCompanion({
    this.orderId = const Value.absent(),
    this.platform = const Value.absent(),
    this.amount = const Value.absent(),
    this.productName = const Value.absent(),
    this.payTime = const Value.absent(),
    this.uid = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PaymentRecordsCompanion.insert({
    required String orderId,
    required int platform,
    required int amount,
    required String productName,
    required int payTime,
    required String uid,
    this.rowid = const Value.absent(),
  })  : orderId = Value(orderId),
        platform = Value(platform),
        amount = Value(amount),
        productName = Value(productName),
        payTime = Value(payTime),
        uid = Value(uid);
  static Insertable<PaymentRecord> custom({
    Expression<String>? orderId,
    Expression<int>? platform,
    Expression<int>? amount,
    Expression<String>? productName,
    Expression<int>? payTime,
    Expression<String>? uid,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (orderId != null) 'order_id': orderId,
      if (platform != null) 'platform': platform,
      if (amount != null) 'amount': amount,
      if (productName != null) 'product_name': productName,
      if (payTime != null) 'pay_time': payTime,
      if (uid != null) 'uid': uid,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PaymentRecordsCompanion copyWith(
      {Value<String>? orderId,
      Value<int>? platform,
      Value<int>? amount,
      Value<String>? productName,
      Value<int>? payTime,
      Value<String>? uid,
      Value<int>? rowid}) {
    return PaymentRecordsCompanion(
      orderId: orderId ?? this.orderId,
      platform: platform ?? this.platform,
      amount: amount ?? this.amount,
      productName: productName ?? this.productName,
      payTime: payTime ?? this.payTime,
      uid: uid ?? this.uid,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (orderId.present) {
      map['order_id'] = Variable<String>(orderId.value);
    }
    if (platform.present) {
      map['platform'] = Variable<int>(platform.value);
    }
    if (amount.present) {
      map['amount'] = Variable<int>(amount.value);
    }
    if (productName.present) {
      map['product_name'] = Variable<String>(productName.value);
    }
    if (payTime.present) {
      map['pay_time'] = Variable<int>(payTime.value);
    }
    if (uid.present) {
      map['uid'] = Variable<String>(uid.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PaymentRecordsCompanion(')
          ..write('orderId: $orderId, ')
          ..write('platform: $platform, ')
          ..write('amount: $amount, ')
          ..write('productName: $productName, ')
          ..write('payTime: $payTime, ')
          ..write('uid: $uid, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $GiftExchangeLogsTable extends GiftExchangeLogs
    with TableInfo<$GiftExchangeLogsTable, GiftExchangeLog> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GiftExchangeLogsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _giftNameMeta =
      const VerificationMeta('giftName');
  @override
  late final GeneratedColumn<String> giftName = GeneratedColumn<String>(
      'gift_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _tsMeta = const VerificationMeta('ts');
  @override
  late final GeneratedColumn<int> ts = GeneratedColumn<int>(
      'ts', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _uidMeta = const VerificationMeta('uid');
  @override
  late final GeneratedColumn<String> uid = GeneratedColumn<String>(
      'uid', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [giftName, code, ts, uid];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'gift_exchange_logs';
  @override
  VerificationContext validateIntegrity(Insertable<GiftExchangeLog> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('gift_name')) {
      context.handle(_giftNameMeta,
          giftName.isAcceptableOrUnknown(data['gift_name']!, _giftNameMeta));
    } else if (isInserting) {
      context.missing(_giftNameMeta);
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('ts')) {
      context.handle(_tsMeta, ts.isAcceptableOrUnknown(data['ts']!, _tsMeta));
    } else if (isInserting) {
      context.missing(_tsMeta);
    }
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
  GiftExchangeLog map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GiftExchangeLog(
      giftName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}gift_name'])!,
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
      ts: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ts'])!,
      uid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}uid'])!,
    );
  }

  @override
  $GiftExchangeLogsTable createAlias(String alias) {
    return $GiftExchangeLogsTable(attachedDatabase, alias);
  }
}

class GiftExchangeLog extends DataClass implements Insertable<GiftExchangeLog> {
  final String giftName;
  final String code;
  final int ts;
  final String uid;
  const GiftExchangeLog(
      {required this.giftName,
      required this.code,
      required this.ts,
      required this.uid});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['gift_name'] = Variable<String>(giftName);
    map['code'] = Variable<String>(code);
    map['ts'] = Variable<int>(ts);
    map['uid'] = Variable<String>(uid);
    return map;
  }

  GiftExchangeLogsCompanion toCompanion(bool nullToAbsent) {
    return GiftExchangeLogsCompanion(
      giftName: Value(giftName),
      code: Value(code),
      ts: Value(ts),
      uid: Value(uid),
    );
  }

  factory GiftExchangeLog.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GiftExchangeLog(
      giftName: serializer.fromJson<String>(json['giftName']),
      code: serializer.fromJson<String>(json['code']),
      ts: serializer.fromJson<int>(json['ts']),
      uid: serializer.fromJson<String>(json['uid']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'giftName': serializer.toJson<String>(giftName),
      'code': serializer.toJson<String>(code),
      'ts': serializer.toJson<int>(ts),
      'uid': serializer.toJson<String>(uid),
    };
  }

  GiftExchangeLog copyWith(
          {String? giftName, String? code, int? ts, String? uid}) =>
      GiftExchangeLog(
        giftName: giftName ?? this.giftName,
        code: code ?? this.code,
        ts: ts ?? this.ts,
        uid: uid ?? this.uid,
      );
  GiftExchangeLog copyWithCompanion(GiftExchangeLogsCompanion data) {
    return GiftExchangeLog(
      giftName: data.giftName.present ? data.giftName.value : this.giftName,
      code: data.code.present ? data.code.value : this.code,
      ts: data.ts.present ? data.ts.value : this.ts,
      uid: data.uid.present ? data.uid.value : this.uid,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GiftExchangeLog(')
          ..write('giftName: $giftName, ')
          ..write('code: $code, ')
          ..write('ts: $ts, ')
          ..write('uid: $uid')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(giftName, code, ts, uid);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GiftExchangeLog &&
          other.giftName == this.giftName &&
          other.code == this.code &&
          other.ts == this.ts &&
          other.uid == this.uid);
}

class GiftExchangeLogsCompanion extends UpdateCompanion<GiftExchangeLog> {
  final Value<String> giftName;
  final Value<String> code;
  final Value<int> ts;
  final Value<String> uid;
  final Value<int> rowid;
  const GiftExchangeLogsCompanion({
    this.giftName = const Value.absent(),
    this.code = const Value.absent(),
    this.ts = const Value.absent(),
    this.uid = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GiftExchangeLogsCompanion.insert({
    required String giftName,
    required String code,
    required int ts,
    required String uid,
    this.rowid = const Value.absent(),
  })  : giftName = Value(giftName),
        code = Value(code),
        ts = Value(ts),
        uid = Value(uid);
  static Insertable<GiftExchangeLog> custom({
    Expression<String>? giftName,
    Expression<String>? code,
    Expression<int>? ts,
    Expression<String>? uid,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (giftName != null) 'gift_name': giftName,
      if (code != null) 'code': code,
      if (ts != null) 'ts': ts,
      if (uid != null) 'uid': uid,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GiftExchangeLogsCompanion copyWith(
      {Value<String>? giftName,
      Value<String>? code,
      Value<int>? ts,
      Value<String>? uid,
      Value<int>? rowid}) {
    return GiftExchangeLogsCompanion(
      giftName: giftName ?? this.giftName,
      code: code ?? this.code,
      ts: ts ?? this.ts,
      uid: uid ?? this.uid,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (giftName.present) {
      map['gift_name'] = Variable<String>(giftName.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (ts.present) {
      map['ts'] = Variable<int>(ts.value);
    }
    if (uid.present) {
      map['uid'] = Variable<String>(uid.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GiftExchangeLogsCompanion(')
          ..write('giftName: $giftName, ')
          ..write('code: $code, ')
          ..write('ts: $ts, ')
          ..write('uid: $uid, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $UsersTable users = $UsersTable(this);
  late final $GachaPoolsTable gachaPools = $GachaPoolsTable(this);
  late final $GachaRecordsTable gachaRecords = $GachaRecordsTable(this);
  late final $DiamondRecordsTable diamondRecords = $DiamondRecordsTable(this);
  late final $PaymentRecordsTable paymentRecords = $PaymentRecordsTable(this);
  late final $GiftExchangeLogsTable giftExchangeLogs =
      $GiftExchangeLogsTable(this);
  late final UsersDao usersDao = UsersDao(this as AppDatabase);
  late final GachaPoolsDao gachaPoolsDao = GachaPoolsDao(this as AppDatabase);
  late final GachaRecordsDao gachaRecordsDao =
      GachaRecordsDao(this as AppDatabase);
  late final DiamondRecordsDao diamondRecordsDao =
      DiamondRecordsDao(this as AppDatabase);
  late final PaymentRecordsDao paymentRecordsDao =
      PaymentRecordsDao(this as AppDatabase);
  late final GiftExchangeLogsDao giftExchangeLogsDao =
      GiftExchangeLogsDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        users,
        gachaPools,
        gachaRecords,
        diamondRecords,
        paymentRecords,
        giftExchangeLogs
      ];
}

typedef $$UsersTableCreateCompanionBuilder = UsersCompanion Function({
  required String uid,
  required String nickName,
  required String token,
  Value<int> rowid,
});
typedef $$UsersTableUpdateCompanionBuilder = UsersCompanion Function({
  Value<String> uid,
  Value<String> nickName,
  Value<String> token,
  Value<int> rowid,
});

class $$UsersTableFilterComposer
    extends FilterComposer<_$AppDatabase, $UsersTable> {
  $$UsersTableFilterComposer(super.$state);
  ColumnFilters<String> get uid => $state.composableBuilder(
      column: $state.table.uid,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nickName => $state.composableBuilder(
      column: $state.table.nickName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get token => $state.composableBuilder(
      column: $state.table.token,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$UsersTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $UsersTable> {
  $$UsersTableOrderingComposer(super.$state);
  ColumnOrderings<String> get uid => $state.composableBuilder(
      column: $state.table.uid,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nickName => $state.composableBuilder(
      column: $state.table.nickName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get token => $state.composableBuilder(
      column: $state.table.token,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$UsersTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UsersTable,
    User,
    $$UsersTableFilterComposer,
    $$UsersTableOrderingComposer,
    $$UsersTableCreateCompanionBuilder,
    $$UsersTableUpdateCompanionBuilder,
    (User, BaseReferences<_$AppDatabase, $UsersTable, User>),
    User,
    PrefetchHooks Function()> {
  $$UsersTableTableManager(_$AppDatabase db, $UsersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$UsersTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$UsersTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> uid = const Value.absent(),
            Value<String> nickName = const Value.absent(),
            Value<String> token = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UsersCompanion(
            uid: uid,
            nickName: nickName,
            token: token,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String uid,
            required String nickName,
            required String token,
            Value<int> rowid = const Value.absent(),
          }) =>
              UsersCompanion.insert(
            uid: uid,
            nickName: nickName,
            token: token,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$UsersTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $UsersTable,
    User,
    $$UsersTableFilterComposer,
    $$UsersTableOrderingComposer,
    $$UsersTableCreateCompanionBuilder,
    $$UsersTableUpdateCompanionBuilder,
    (User, BaseReferences<_$AppDatabase, $UsersTable, User>),
    User,
    PrefetchHooks Function()>;
typedef $$GachaPoolsTableCreateCompanionBuilder = GachaPoolsCompanion Function({
  required String gachaPoolId,
  required int gachaIndex,
  required int openTime,
  required int endTime,
  required String gachaPoolName,
  required String gachaRuleType,
  Value<int> rowid,
});
typedef $$GachaPoolsTableUpdateCompanionBuilder = GachaPoolsCompanion Function({
  Value<String> gachaPoolId,
  Value<int> gachaIndex,
  Value<int> openTime,
  Value<int> endTime,
  Value<String> gachaPoolName,
  Value<String> gachaRuleType,
  Value<int> rowid,
});

class $$GachaPoolsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $GachaPoolsTable> {
  $$GachaPoolsTableFilterComposer(super.$state);
  ColumnFilters<String> get gachaPoolId => $state.composableBuilder(
      column: $state.table.gachaPoolId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get gachaIndex => $state.composableBuilder(
      column: $state.table.gachaIndex,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get openTime => $state.composableBuilder(
      column: $state.table.openTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get endTime => $state.composableBuilder(
      column: $state.table.endTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get gachaPoolName => $state.composableBuilder(
      column: $state.table.gachaPoolName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get gachaRuleType => $state.composableBuilder(
      column: $state.table.gachaRuleType,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$GachaPoolsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $GachaPoolsTable> {
  $$GachaPoolsTableOrderingComposer(super.$state);
  ColumnOrderings<String> get gachaPoolId => $state.composableBuilder(
      column: $state.table.gachaPoolId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get gachaIndex => $state.composableBuilder(
      column: $state.table.gachaIndex,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get openTime => $state.composableBuilder(
      column: $state.table.openTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get endTime => $state.composableBuilder(
      column: $state.table.endTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get gachaPoolName => $state.composableBuilder(
      column: $state.table.gachaPoolName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get gachaRuleType => $state.composableBuilder(
      column: $state.table.gachaRuleType,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$GachaPoolsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $GachaPoolsTable,
    GachaPool,
    $$GachaPoolsTableFilterComposer,
    $$GachaPoolsTableOrderingComposer,
    $$GachaPoolsTableCreateCompanionBuilder,
    $$GachaPoolsTableUpdateCompanionBuilder,
    (GachaPool, BaseReferences<_$AppDatabase, $GachaPoolsTable, GachaPool>),
    GachaPool,
    PrefetchHooks Function()> {
  $$GachaPoolsTableTableManager(_$AppDatabase db, $GachaPoolsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$GachaPoolsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$GachaPoolsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> gachaPoolId = const Value.absent(),
            Value<int> gachaIndex = const Value.absent(),
            Value<int> openTime = const Value.absent(),
            Value<int> endTime = const Value.absent(),
            Value<String> gachaPoolName = const Value.absent(),
            Value<String> gachaRuleType = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              GachaPoolsCompanion(
            gachaPoolId: gachaPoolId,
            gachaIndex: gachaIndex,
            openTime: openTime,
            endTime: endTime,
            gachaPoolName: gachaPoolName,
            gachaRuleType: gachaRuleType,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String gachaPoolId,
            required int gachaIndex,
            required int openTime,
            required int endTime,
            required String gachaPoolName,
            required String gachaRuleType,
            Value<int> rowid = const Value.absent(),
          }) =>
              GachaPoolsCompanion.insert(
            gachaPoolId: gachaPoolId,
            gachaIndex: gachaIndex,
            openTime: openTime,
            endTime: endTime,
            gachaPoolName: gachaPoolName,
            gachaRuleType: gachaRuleType,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$GachaPoolsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $GachaPoolsTable,
    GachaPool,
    $$GachaPoolsTableFilterComposer,
    $$GachaPoolsTableOrderingComposer,
    $$GachaPoolsTableCreateCompanionBuilder,
    $$GachaPoolsTableUpdateCompanionBuilder,
    (GachaPool, BaseReferences<_$AppDatabase, $GachaPoolsTable, GachaPool>),
    GachaPool,
    PrefetchHooks Function()>;
typedef $$GachaRecordsTableCreateCompanionBuilder = GachaRecordsCompanion
    Function({
  required int ts,
  required String pool,
  required List<dynamic> chars,
  required String uid,
  Value<int> rowid,
});
typedef $$GachaRecordsTableUpdateCompanionBuilder = GachaRecordsCompanion
    Function({
  Value<int> ts,
  Value<String> pool,
  Value<List<dynamic>> chars,
  Value<String> uid,
  Value<int> rowid,
});

class $$GachaRecordsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $GachaRecordsTable> {
  $$GachaRecordsTableFilterComposer(super.$state);
  ColumnFilters<int> get ts => $state.composableBuilder(
      column: $state.table.ts,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get pool => $state.composableBuilder(
      column: $state.table.pool,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<List<dynamic>, List<dynamic>, String>
      get chars => $state.composableBuilder(
          column: $state.table.chars,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<String> get uid => $state.composableBuilder(
      column: $state.table.uid,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$GachaRecordsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $GachaRecordsTable> {
  $$GachaRecordsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get ts => $state.composableBuilder(
      column: $state.table.ts,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get pool => $state.composableBuilder(
      column: $state.table.pool,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get chars => $state.composableBuilder(
      column: $state.table.chars,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get uid => $state.composableBuilder(
      column: $state.table.uid,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$GachaRecordsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $GachaRecordsTable,
    GachaRecord,
    $$GachaRecordsTableFilterComposer,
    $$GachaRecordsTableOrderingComposer,
    $$GachaRecordsTableCreateCompanionBuilder,
    $$GachaRecordsTableUpdateCompanionBuilder,
    (
      GachaRecord,
      BaseReferences<_$AppDatabase, $GachaRecordsTable, GachaRecord>
    ),
    GachaRecord,
    PrefetchHooks Function()> {
  $$GachaRecordsTableTableManager(_$AppDatabase db, $GachaRecordsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$GachaRecordsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$GachaRecordsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> ts = const Value.absent(),
            Value<String> pool = const Value.absent(),
            Value<List<dynamic>> chars = const Value.absent(),
            Value<String> uid = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              GachaRecordsCompanion(
            ts: ts,
            pool: pool,
            chars: chars,
            uid: uid,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int ts,
            required String pool,
            required List<dynamic> chars,
            required String uid,
            Value<int> rowid = const Value.absent(),
          }) =>
              GachaRecordsCompanion.insert(
            ts: ts,
            pool: pool,
            chars: chars,
            uid: uid,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$GachaRecordsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $GachaRecordsTable,
    GachaRecord,
    $$GachaRecordsTableFilterComposer,
    $$GachaRecordsTableOrderingComposer,
    $$GachaRecordsTableCreateCompanionBuilder,
    $$GachaRecordsTableUpdateCompanionBuilder,
    (
      GachaRecord,
      BaseReferences<_$AppDatabase, $GachaRecordsTable, GachaRecord>
    ),
    GachaRecord,
    PrefetchHooks Function()>;
typedef $$DiamondRecordsTableCreateCompanionBuilder = DiamondRecordsCompanion
    Function({
  required int ts,
  required String operation,
  required List<dynamic> changes,
  required String uid,
  Value<int> rowid,
});
typedef $$DiamondRecordsTableUpdateCompanionBuilder = DiamondRecordsCompanion
    Function({
  Value<int> ts,
  Value<String> operation,
  Value<List<dynamic>> changes,
  Value<String> uid,
  Value<int> rowid,
});

class $$DiamondRecordsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $DiamondRecordsTable> {
  $$DiamondRecordsTableFilterComposer(super.$state);
  ColumnFilters<int> get ts => $state.composableBuilder(
      column: $state.table.ts,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get operation => $state.composableBuilder(
      column: $state.table.operation,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<List<dynamic>, List<dynamic>, String>
      get changes => $state.composableBuilder(
          column: $state.table.changes,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<String> get uid => $state.composableBuilder(
      column: $state.table.uid,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$DiamondRecordsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $DiamondRecordsTable> {
  $$DiamondRecordsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get ts => $state.composableBuilder(
      column: $state.table.ts,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get operation => $state.composableBuilder(
      column: $state.table.operation,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get changes => $state.composableBuilder(
      column: $state.table.changes,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get uid => $state.composableBuilder(
      column: $state.table.uid,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$DiamondRecordsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DiamondRecordsTable,
    DiamondRecord,
    $$DiamondRecordsTableFilterComposer,
    $$DiamondRecordsTableOrderingComposer,
    $$DiamondRecordsTableCreateCompanionBuilder,
    $$DiamondRecordsTableUpdateCompanionBuilder,
    (
      DiamondRecord,
      BaseReferences<_$AppDatabase, $DiamondRecordsTable, DiamondRecord>
    ),
    DiamondRecord,
    PrefetchHooks Function()> {
  $$DiamondRecordsTableTableManager(
      _$AppDatabase db, $DiamondRecordsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$DiamondRecordsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$DiamondRecordsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> ts = const Value.absent(),
            Value<String> operation = const Value.absent(),
            Value<List<dynamic>> changes = const Value.absent(),
            Value<String> uid = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DiamondRecordsCompanion(
            ts: ts,
            operation: operation,
            changes: changes,
            uid: uid,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int ts,
            required String operation,
            required List<dynamic> changes,
            required String uid,
            Value<int> rowid = const Value.absent(),
          }) =>
              DiamondRecordsCompanion.insert(
            ts: ts,
            operation: operation,
            changes: changes,
            uid: uid,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$DiamondRecordsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $DiamondRecordsTable,
    DiamondRecord,
    $$DiamondRecordsTableFilterComposer,
    $$DiamondRecordsTableOrderingComposer,
    $$DiamondRecordsTableCreateCompanionBuilder,
    $$DiamondRecordsTableUpdateCompanionBuilder,
    (
      DiamondRecord,
      BaseReferences<_$AppDatabase, $DiamondRecordsTable, DiamondRecord>
    ),
    DiamondRecord,
    PrefetchHooks Function()>;
typedef $$PaymentRecordsTableCreateCompanionBuilder = PaymentRecordsCompanion
    Function({
  required String orderId,
  required int platform,
  required int amount,
  required String productName,
  required int payTime,
  required String uid,
  Value<int> rowid,
});
typedef $$PaymentRecordsTableUpdateCompanionBuilder = PaymentRecordsCompanion
    Function({
  Value<String> orderId,
  Value<int> platform,
  Value<int> amount,
  Value<String> productName,
  Value<int> payTime,
  Value<String> uid,
  Value<int> rowid,
});

class $$PaymentRecordsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $PaymentRecordsTable> {
  $$PaymentRecordsTableFilterComposer(super.$state);
  ColumnFilters<String> get orderId => $state.composableBuilder(
      column: $state.table.orderId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get platform => $state.composableBuilder(
      column: $state.table.platform,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get amount => $state.composableBuilder(
      column: $state.table.amount,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get productName => $state.composableBuilder(
      column: $state.table.productName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get payTime => $state.composableBuilder(
      column: $state.table.payTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get uid => $state.composableBuilder(
      column: $state.table.uid,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$PaymentRecordsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $PaymentRecordsTable> {
  $$PaymentRecordsTableOrderingComposer(super.$state);
  ColumnOrderings<String> get orderId => $state.composableBuilder(
      column: $state.table.orderId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get platform => $state.composableBuilder(
      column: $state.table.platform,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get amount => $state.composableBuilder(
      column: $state.table.amount,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get productName => $state.composableBuilder(
      column: $state.table.productName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get payTime => $state.composableBuilder(
      column: $state.table.payTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get uid => $state.composableBuilder(
      column: $state.table.uid,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$PaymentRecordsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PaymentRecordsTable,
    PaymentRecord,
    $$PaymentRecordsTableFilterComposer,
    $$PaymentRecordsTableOrderingComposer,
    $$PaymentRecordsTableCreateCompanionBuilder,
    $$PaymentRecordsTableUpdateCompanionBuilder,
    (
      PaymentRecord,
      BaseReferences<_$AppDatabase, $PaymentRecordsTable, PaymentRecord>
    ),
    PaymentRecord,
    PrefetchHooks Function()> {
  $$PaymentRecordsTableTableManager(
      _$AppDatabase db, $PaymentRecordsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$PaymentRecordsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$PaymentRecordsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> orderId = const Value.absent(),
            Value<int> platform = const Value.absent(),
            Value<int> amount = const Value.absent(),
            Value<String> productName = const Value.absent(),
            Value<int> payTime = const Value.absent(),
            Value<String> uid = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PaymentRecordsCompanion(
            orderId: orderId,
            platform: platform,
            amount: amount,
            productName: productName,
            payTime: payTime,
            uid: uid,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String orderId,
            required int platform,
            required int amount,
            required String productName,
            required int payTime,
            required String uid,
            Value<int> rowid = const Value.absent(),
          }) =>
              PaymentRecordsCompanion.insert(
            orderId: orderId,
            platform: platform,
            amount: amount,
            productName: productName,
            payTime: payTime,
            uid: uid,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$PaymentRecordsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PaymentRecordsTable,
    PaymentRecord,
    $$PaymentRecordsTableFilterComposer,
    $$PaymentRecordsTableOrderingComposer,
    $$PaymentRecordsTableCreateCompanionBuilder,
    $$PaymentRecordsTableUpdateCompanionBuilder,
    (
      PaymentRecord,
      BaseReferences<_$AppDatabase, $PaymentRecordsTable, PaymentRecord>
    ),
    PaymentRecord,
    PrefetchHooks Function()>;
typedef $$GiftExchangeLogsTableCreateCompanionBuilder
    = GiftExchangeLogsCompanion Function({
  required String giftName,
  required String code,
  required int ts,
  required String uid,
  Value<int> rowid,
});
typedef $$GiftExchangeLogsTableUpdateCompanionBuilder
    = GiftExchangeLogsCompanion Function({
  Value<String> giftName,
  Value<String> code,
  Value<int> ts,
  Value<String> uid,
  Value<int> rowid,
});

class $$GiftExchangeLogsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $GiftExchangeLogsTable> {
  $$GiftExchangeLogsTableFilterComposer(super.$state);
  ColumnFilters<String> get giftName => $state.composableBuilder(
      column: $state.table.giftName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get code => $state.composableBuilder(
      column: $state.table.code,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get ts => $state.composableBuilder(
      column: $state.table.ts,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get uid => $state.composableBuilder(
      column: $state.table.uid,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$GiftExchangeLogsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $GiftExchangeLogsTable> {
  $$GiftExchangeLogsTableOrderingComposer(super.$state);
  ColumnOrderings<String> get giftName => $state.composableBuilder(
      column: $state.table.giftName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get code => $state.composableBuilder(
      column: $state.table.code,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get ts => $state.composableBuilder(
      column: $state.table.ts,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get uid => $state.composableBuilder(
      column: $state.table.uid,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$GiftExchangeLogsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $GiftExchangeLogsTable,
    GiftExchangeLog,
    $$GiftExchangeLogsTableFilterComposer,
    $$GiftExchangeLogsTableOrderingComposer,
    $$GiftExchangeLogsTableCreateCompanionBuilder,
    $$GiftExchangeLogsTableUpdateCompanionBuilder,
    (
      GiftExchangeLog,
      BaseReferences<_$AppDatabase, $GiftExchangeLogsTable, GiftExchangeLog>
    ),
    GiftExchangeLog,
    PrefetchHooks Function()> {
  $$GiftExchangeLogsTableTableManager(
      _$AppDatabase db, $GiftExchangeLogsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$GiftExchangeLogsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$GiftExchangeLogsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> giftName = const Value.absent(),
            Value<String> code = const Value.absent(),
            Value<int> ts = const Value.absent(),
            Value<String> uid = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              GiftExchangeLogsCompanion(
            giftName: giftName,
            code: code,
            ts: ts,
            uid: uid,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String giftName,
            required String code,
            required int ts,
            required String uid,
            Value<int> rowid = const Value.absent(),
          }) =>
              GiftExchangeLogsCompanion.insert(
            giftName: giftName,
            code: code,
            ts: ts,
            uid: uid,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$GiftExchangeLogsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $GiftExchangeLogsTable,
    GiftExchangeLog,
    $$GiftExchangeLogsTableFilterComposer,
    $$GiftExchangeLogsTableOrderingComposer,
    $$GiftExchangeLogsTableCreateCompanionBuilder,
    $$GiftExchangeLogsTableUpdateCompanionBuilder,
    (
      GiftExchangeLog,
      BaseReferences<_$AppDatabase, $GiftExchangeLogsTable, GiftExchangeLog>
    ),
    GiftExchangeLog,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$UsersTableTableManager get users =>
      $$UsersTableTableManager(_db, _db.users);
  $$GachaPoolsTableTableManager get gachaPools =>
      $$GachaPoolsTableTableManager(_db, _db.gachaPools);
  $$GachaRecordsTableTableManager get gachaRecords =>
      $$GachaRecordsTableTableManager(_db, _db.gachaRecords);
  $$DiamondRecordsTableTableManager get diamondRecords =>
      $$DiamondRecordsTableTableManager(_db, _db.diamondRecords);
  $$PaymentRecordsTableTableManager get paymentRecords =>
      $$PaymentRecordsTableTableManager(_db, _db.paymentRecords);
  $$GiftExchangeLogsTableTableManager get giftExchangeLogs =>
      $$GiftExchangeLogsTableTableManager(_db, _db.giftExchangeLogs);
}
