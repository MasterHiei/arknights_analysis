// GENERATED CODE - DO NOT MODIFY BY HAND

part of 't_user.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetTUserCollection on Isar {
  IsarCollection<TUser> get tUsers => getCollection();
}

const TUserSchema = CollectionSchema(
  name: 'user',
  schema:
      '{"name":"user","idName":"id","properties":[{"name":"nickName","type":"String"},{"name":"token","type":"String"},{"name":"uid","type":"String"}],"indexes":[{"name":"token","unique":true,"properties":[{"name":"token","type":"Hash","caseSensitive":true}]},{"name":"uid","unique":true,"properties":[{"name":"uid","type":"Hash","caseSensitive":true}]}],"links":[]}',
  idName: 'id',
  propertyIds: {'nickName': 0, 'token': 1, 'uid': 2},
  listProperties: {},
  indexIds: {'token': 0, 'uid': 1},
  indexValueTypes: {
    'token': [
      IndexValueType.stringHash,
    ],
    'uid': [
      IndexValueType.stringHash,
    ]
  },
  linkIds: {},
  backlinkLinkNames: {},
  getId: _tUserGetId,
  setId: _tUserSetId,
  getLinks: _tUserGetLinks,
  attachLinks: _tUserAttachLinks,
  serializeNative: _tUserSerializeNative,
  deserializeNative: _tUserDeserializeNative,
  deserializePropNative: _tUserDeserializePropNative,
  serializeWeb: _tUserSerializeWeb,
  deserializeWeb: _tUserDeserializeWeb,
  deserializePropWeb: _tUserDeserializePropWeb,
  version: 3,
);

int? _tUserGetId(TUser object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _tUserSetId(TUser object, int id) {
  object.id = id;
}

List<IsarLinkBase> _tUserGetLinks(TUser object) {
  return [];
}

void _tUserSerializeNative(
    IsarCollection<TUser> collection,
    IsarRawObject rawObj,
    TUser object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.nickName;
  final _nickName = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_nickName.length) as int;
  final value1 = object.token;
  final _token = IsarBinaryWriter.utf8Encoder.convert(value1);
  dynamicSize += (_token.length) as int;
  final value2 = object.uid;
  final _uid = IsarBinaryWriter.utf8Encoder.convert(value2);
  dynamicSize += (_uid.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _nickName);
  writer.writeBytes(offsets[1], _token);
  writer.writeBytes(offsets[2], _uid);
}

TUser _tUserDeserializeNative(IsarCollection<TUser> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = TUser();
  object.id = id;
  object.nickName = reader.readString(offsets[0]);
  object.token = reader.readString(offsets[1]);
  object.uid = reader.readString(offsets[2]);
  return object;
}

P _tUserDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _tUserSerializeWeb(IsarCollection<TUser> collection, TUser object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'nickName', object.nickName);
  IsarNative.jsObjectSet(jsObj, 'token', object.token);
  IsarNative.jsObjectSet(jsObj, 'uid', object.uid);
  return jsObj;
}

TUser _tUserDeserializeWeb(IsarCollection<TUser> collection, dynamic jsObj) {
  final object = TUser();
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  object.nickName = IsarNative.jsObjectGet(jsObj, 'nickName') ?? '';
  object.token = IsarNative.jsObjectGet(jsObj, 'token') ?? '';
  object.uid = IsarNative.jsObjectGet(jsObj, 'uid') ?? '';
  return object;
}

P _tUserDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'nickName':
      return (IsarNative.jsObjectGet(jsObj, 'nickName') ?? '') as P;
    case 'token':
      return (IsarNative.jsObjectGet(jsObj, 'token') ?? '') as P;
    case 'uid':
      return (IsarNative.jsObjectGet(jsObj, 'uid') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _tUserAttachLinks(IsarCollection col, int id, TUser object) {}

extension TUserByIndex on IsarCollection<TUser> {
  Future<TUser?> getByToken(String token) {
    return getByIndex('token', [token]);
  }

  TUser? getByTokenSync(String token) {
    return getByIndexSync('token', [token]);
  }

  Future<bool> deleteByToken(String token) {
    return deleteByIndex('token', [token]);
  }

  bool deleteByTokenSync(String token) {
    return deleteByIndexSync('token', [token]);
  }

  Future<List<TUser?>> getAllByToken(List<String> tokenValues) {
    final values = tokenValues.map((e) => [e]).toList();
    return getAllByIndex('token', values);
  }

  List<TUser?> getAllByTokenSync(List<String> tokenValues) {
    final values = tokenValues.map((e) => [e]).toList();
    return getAllByIndexSync('token', values);
  }

  Future<int> deleteAllByToken(List<String> tokenValues) {
    final values = tokenValues.map((e) => [e]).toList();
    return deleteAllByIndex('token', values);
  }

  int deleteAllByTokenSync(List<String> tokenValues) {
    final values = tokenValues.map((e) => [e]).toList();
    return deleteAllByIndexSync('token', values);
  }

  Future<TUser?> getByUid(String uid) {
    return getByIndex('uid', [uid]);
  }

  TUser? getByUidSync(String uid) {
    return getByIndexSync('uid', [uid]);
  }

  Future<bool> deleteByUid(String uid) {
    return deleteByIndex('uid', [uid]);
  }

  bool deleteByUidSync(String uid) {
    return deleteByIndexSync('uid', [uid]);
  }

  Future<List<TUser?>> getAllByUid(List<String> uidValues) {
    final values = uidValues.map((e) => [e]).toList();
    return getAllByIndex('uid', values);
  }

  List<TUser?> getAllByUidSync(List<String> uidValues) {
    final values = uidValues.map((e) => [e]).toList();
    return getAllByIndexSync('uid', values);
  }

  Future<int> deleteAllByUid(List<String> uidValues) {
    final values = uidValues.map((e) => [e]).toList();
    return deleteAllByIndex('uid', values);
  }

  int deleteAllByUidSync(List<String> uidValues) {
    final values = uidValues.map((e) => [e]).toList();
    return deleteAllByIndexSync('uid', values);
  }
}

extension TUserQueryWhereSort on QueryBuilder<TUser, TUser, QWhere> {
  QueryBuilder<TUser, TUser, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }

  QueryBuilder<TUser, TUser, QAfterWhere> anyToken() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'token'));
  }

  QueryBuilder<TUser, TUser, QAfterWhere> anyUid() {
    return addWhereClauseInternal(const IndexWhereClause.any(indexName: 'uid'));
  }
}

extension TUserQueryWhere on QueryBuilder<TUser, TUser, QWhereClause> {
  QueryBuilder<TUser, TUser, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<TUser, TUser, QAfterWhereClause> idNotEqualTo(int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      );
    }
  }

  QueryBuilder<TUser, TUser, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<TUser, TUser, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<TUser, TUser, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerId,
      includeLower: includeLower,
      upper: upperId,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TUser, TUser, QAfterWhereClause> tokenEqualTo(String token) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'token',
      value: [token],
    ));
  }

  QueryBuilder<TUser, TUser, QAfterWhereClause> tokenNotEqualTo(String token) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'token',
        upper: [token],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'token',
        lower: [token],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'token',
        lower: [token],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'token',
        upper: [token],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<TUser, TUser, QAfterWhereClause> uidEqualTo(String uid) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'uid',
      value: [uid],
    ));
  }

  QueryBuilder<TUser, TUser, QAfterWhereClause> uidNotEqualTo(String uid) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'uid',
        upper: [uid],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'uid',
        lower: [uid],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'uid',
        lower: [uid],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'uid',
        upper: [uid],
        includeUpper: false,
      ));
    }
  }
}

extension TUserQueryFilter on QueryBuilder<TUser, TUser, QFilterCondition> {
  QueryBuilder<TUser, TUser, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<TUser, TUser, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<TUser, TUser, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<TUser, TUser, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<TUser, TUser, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TUser, TUser, QAfterFilterCondition> nickNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'nickName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TUser, TUser, QAfterFilterCondition> nickNameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'nickName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TUser, TUser, QAfterFilterCondition> nickNameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'nickName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TUser, TUser, QAfterFilterCondition> nickNameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'nickName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TUser, TUser, QAfterFilterCondition> nickNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'nickName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TUser, TUser, QAfterFilterCondition> nickNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'nickName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TUser, TUser, QAfterFilterCondition> nickNameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'nickName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TUser, TUser, QAfterFilterCondition> nickNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'nickName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TUser, TUser, QAfterFilterCondition> tokenEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'token',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TUser, TUser, QAfterFilterCondition> tokenGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'token',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TUser, TUser, QAfterFilterCondition> tokenLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'token',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TUser, TUser, QAfterFilterCondition> tokenBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'token',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TUser, TUser, QAfterFilterCondition> tokenStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'token',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TUser, TUser, QAfterFilterCondition> tokenEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'token',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TUser, TUser, QAfterFilterCondition> tokenContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'token',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TUser, TUser, QAfterFilterCondition> tokenMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'token',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TUser, TUser, QAfterFilterCondition> uidEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'uid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TUser, TUser, QAfterFilterCondition> uidGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'uid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TUser, TUser, QAfterFilterCondition> uidLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'uid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TUser, TUser, QAfterFilterCondition> uidBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'uid',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TUser, TUser, QAfterFilterCondition> uidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'uid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TUser, TUser, QAfterFilterCondition> uidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'uid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TUser, TUser, QAfterFilterCondition> uidContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'uid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TUser, TUser, QAfterFilterCondition> uidMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'uid',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension TUserQueryLinks on QueryBuilder<TUser, TUser, QFilterCondition> {}

extension TUserQueryWhereSortBy on QueryBuilder<TUser, TUser, QSortBy> {
  QueryBuilder<TUser, TUser, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<TUser, TUser, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<TUser, TUser, QAfterSortBy> sortByNickName() {
    return addSortByInternal('nickName', Sort.asc);
  }

  QueryBuilder<TUser, TUser, QAfterSortBy> sortByNickNameDesc() {
    return addSortByInternal('nickName', Sort.desc);
  }

  QueryBuilder<TUser, TUser, QAfterSortBy> sortByToken() {
    return addSortByInternal('token', Sort.asc);
  }

  QueryBuilder<TUser, TUser, QAfterSortBy> sortByTokenDesc() {
    return addSortByInternal('token', Sort.desc);
  }

  QueryBuilder<TUser, TUser, QAfterSortBy> sortByUid() {
    return addSortByInternal('uid', Sort.asc);
  }

  QueryBuilder<TUser, TUser, QAfterSortBy> sortByUidDesc() {
    return addSortByInternal('uid', Sort.desc);
  }
}

extension TUserQueryWhereSortThenBy on QueryBuilder<TUser, TUser, QSortThenBy> {
  QueryBuilder<TUser, TUser, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<TUser, TUser, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<TUser, TUser, QAfterSortBy> thenByNickName() {
    return addSortByInternal('nickName', Sort.asc);
  }

  QueryBuilder<TUser, TUser, QAfterSortBy> thenByNickNameDesc() {
    return addSortByInternal('nickName', Sort.desc);
  }

  QueryBuilder<TUser, TUser, QAfterSortBy> thenByToken() {
    return addSortByInternal('token', Sort.asc);
  }

  QueryBuilder<TUser, TUser, QAfterSortBy> thenByTokenDesc() {
    return addSortByInternal('token', Sort.desc);
  }

  QueryBuilder<TUser, TUser, QAfterSortBy> thenByUid() {
    return addSortByInternal('uid', Sort.asc);
  }

  QueryBuilder<TUser, TUser, QAfterSortBy> thenByUidDesc() {
    return addSortByInternal('uid', Sort.desc);
  }
}

extension TUserQueryWhereDistinct on QueryBuilder<TUser, TUser, QDistinct> {
  QueryBuilder<TUser, TUser, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<TUser, TUser, QDistinct> distinctByNickName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('nickName', caseSensitive: caseSensitive);
  }

  QueryBuilder<TUser, TUser, QDistinct> distinctByToken(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('token', caseSensitive: caseSensitive);
  }

  QueryBuilder<TUser, TUser, QDistinct> distinctByUid(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('uid', caseSensitive: caseSensitive);
  }
}

extension TUserQueryProperty on QueryBuilder<TUser, TUser, QQueryProperty> {
  QueryBuilder<TUser, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<TUser, String, QQueryOperations> nickNameProperty() {
    return addPropertyNameInternal('nickName');
  }

  QueryBuilder<TUser, String, QQueryOperations> tokenProperty() {
    return addPropertyNameInternal('token');
  }

  QueryBuilder<TUser, String, QQueryOperations> uidProperty() {
    return addPropertyNameInternal('uid');
  }
}
