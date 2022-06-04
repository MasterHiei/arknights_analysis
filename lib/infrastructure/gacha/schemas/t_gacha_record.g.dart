// GENERATED CODE - DO NOT MODIFY BY HAND

part of 't_gacha_record.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetTGachaRecordCollection on Isar {
  IsarCollection<TGachaRecord> get tGachaRecords => getCollection();
}

const TGachaRecordSchema = CollectionSchema(
  name: 'gacha_record',
  schema:
      '{"name":"gacha_record","idName":"id","properties":[{"name":"pool","type":"String"},{"name":"ts","type":"Long"},{"name":"uid","type":"String"}],"indexes":[{"name":"ts","unique":false,"properties":[{"name":"ts","type":"Value","caseSensitive":false}]},{"name":"ts_uid","unique":true,"properties":[{"name":"ts","type":"Value","caseSensitive":false},{"name":"uid","type":"Hash","caseSensitive":true}]},{"name":"uid","unique":false,"properties":[{"name":"uid","type":"Hash","caseSensitive":true}]}],"links":[{"name":"chars","target":"gacha_char"}]}',
  idName: 'id',
  propertyIds: {'pool': 0, 'ts': 1, 'uid': 2},
  listProperties: {},
  indexIds: {'ts': 0, 'ts_uid': 1, 'uid': 2},
  indexValueTypes: {
    'ts': [
      IndexValueType.long,
    ],
    'ts_uid': [
      IndexValueType.long,
      IndexValueType.stringHash,
    ],
    'uid': [
      IndexValueType.stringHash,
    ]
  },
  linkIds: {'chars': 0},
  backlinkLinkNames: {},
  getId: _tGachaRecordGetId,
  setId: _tGachaRecordSetId,
  getLinks: _tGachaRecordGetLinks,
  attachLinks: _tGachaRecordAttachLinks,
  serializeNative: _tGachaRecordSerializeNative,
  deserializeNative: _tGachaRecordDeserializeNative,
  deserializePropNative: _tGachaRecordDeserializePropNative,
  serializeWeb: _tGachaRecordSerializeWeb,
  deserializeWeb: _tGachaRecordDeserializeWeb,
  deserializePropWeb: _tGachaRecordDeserializePropWeb,
  version: 3,
);

int? _tGachaRecordGetId(TGachaRecord object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _tGachaRecordSetId(TGachaRecord object, int id) {
  object.id = id;
}

List<IsarLinkBase> _tGachaRecordGetLinks(TGachaRecord object) {
  return [object.chars];
}

void _tGachaRecordSerializeNative(
    IsarCollection<TGachaRecord> collection,
    IsarRawObject rawObj,
    TGachaRecord object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.pool;
  final _pool = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_pool.length) as int;
  final value1 = object.ts;
  final _ts = value1;
  final value2 = object.uid;
  final _uid = IsarBinaryWriter.utf8Encoder.convert(value2);
  dynamicSize += (_uid.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _pool);
  writer.writeLong(offsets[1], _ts);
  writer.writeBytes(offsets[2], _uid);
}

TGachaRecord _tGachaRecordDeserializeNative(
    IsarCollection<TGachaRecord> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = TGachaRecord();
  object.id = id;
  object.pool = reader.readString(offsets[0]);
  object.ts = reader.readLong(offsets[1]);
  object.uid = reader.readString(offsets[2]);
  _tGachaRecordAttachLinks(collection, id, object);
  return object;
}

P _tGachaRecordDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _tGachaRecordSerializeWeb(
    IsarCollection<TGachaRecord> collection, TGachaRecord object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'pool', object.pool);
  IsarNative.jsObjectSet(jsObj, 'ts', object.ts);
  IsarNative.jsObjectSet(jsObj, 'uid', object.uid);
  return jsObj;
}

TGachaRecord _tGachaRecordDeserializeWeb(
    IsarCollection<TGachaRecord> collection, dynamic jsObj) {
  final object = TGachaRecord();
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  object.pool = IsarNative.jsObjectGet(jsObj, 'pool') ?? '';
  object.ts = IsarNative.jsObjectGet(jsObj, 'ts') ?? double.negativeInfinity;
  object.uid = IsarNative.jsObjectGet(jsObj, 'uid') ?? '';
  _tGachaRecordAttachLinks(
      collection, IsarNative.jsObjectGet(jsObj, 'id'), object);
  return object;
}

P _tGachaRecordDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'pool':
      return (IsarNative.jsObjectGet(jsObj, 'pool') ?? '') as P;
    case 'ts':
      return (IsarNative.jsObjectGet(jsObj, 'ts') ?? double.negativeInfinity)
          as P;
    case 'uid':
      return (IsarNative.jsObjectGet(jsObj, 'uid') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _tGachaRecordAttachLinks(IsarCollection col, int id, TGachaRecord object) {
  object.chars.attach(col, col.isar.tGachaChars, 'chars', id);
}

extension TGachaRecordByIndex on IsarCollection<TGachaRecord> {
  Future<TGachaRecord?> getByTsUid(int ts, String uid) {
    return getByIndex('ts_uid', [ts, uid]);
  }

  TGachaRecord? getByTsUidSync(int ts, String uid) {
    return getByIndexSync('ts_uid', [ts, uid]);
  }

  Future<bool> deleteByTsUid(int ts, String uid) {
    return deleteByIndex('ts_uid', [ts, uid]);
  }

  bool deleteByTsUidSync(int ts, String uid) {
    return deleteByIndexSync('ts_uid', [ts, uid]);
  }

  Future<List<TGachaRecord?>> getAllByTsUid(
      List<int> tsValues, List<String> uidValues) {
    final len = tsValues.length;
    assert(
        uidValues.length == len, 'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([tsValues[i], uidValues[i]]);
    }

    return getAllByIndex('ts_uid', values);
  }

  List<TGachaRecord?> getAllByTsUidSync(
      List<int> tsValues, List<String> uidValues) {
    final len = tsValues.length;
    assert(
        uidValues.length == len, 'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([tsValues[i], uidValues[i]]);
    }

    return getAllByIndexSync('ts_uid', values);
  }

  Future<int> deleteAllByTsUid(List<int> tsValues, List<String> uidValues) {
    final len = tsValues.length;
    assert(
        uidValues.length == len, 'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([tsValues[i], uidValues[i]]);
    }

    return deleteAllByIndex('ts_uid', values);
  }

  int deleteAllByTsUidSync(List<int> tsValues, List<String> uidValues) {
    final len = tsValues.length;
    assert(
        uidValues.length == len, 'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([tsValues[i], uidValues[i]]);
    }

    return deleteAllByIndexSync('ts_uid', values);
  }
}

extension TGachaRecordQueryWhereSort
    on QueryBuilder<TGachaRecord, TGachaRecord, QWhere> {
  QueryBuilder<TGachaRecord, TGachaRecord, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterWhere> anyTs() {
    return addWhereClauseInternal(const IndexWhereClause.any(indexName: 'ts'));
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterWhere> anyTsUid() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'ts_uid'));
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterWhere> anyUid() {
    return addWhereClauseInternal(const IndexWhereClause.any(indexName: 'uid'));
  }
}

extension TGachaRecordQueryWhere
    on QueryBuilder<TGachaRecord, TGachaRecord, QWhereClause> {
  QueryBuilder<TGachaRecord, TGachaRecord, QAfterWhereClause> idEqualTo(
      int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterWhereClause> idNotEqualTo(
      int id) {
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

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterWhereClause> idGreaterThan(
      int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterWhereClause> idBetween(
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

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterWhereClause> tsEqualTo(
      int ts) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'ts',
      value: [ts],
    ));
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterWhereClause> tsNotEqualTo(
      int ts) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'ts',
        upper: [ts],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'ts',
        lower: [ts],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'ts',
        lower: [ts],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'ts',
        upper: [ts],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterWhereClause> tsGreaterThan(
    int ts, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.greaterThan(
      indexName: 'ts',
      lower: [ts],
      includeLower: include,
    ));
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterWhereClause> tsLessThan(
    int ts, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.lessThan(
      indexName: 'ts',
      upper: [ts],
      includeUpper: include,
    ));
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterWhereClause> tsBetween(
    int lowerTs,
    int upperTs, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'ts',
      lower: [lowerTs],
      includeLower: includeLower,
      upper: [upperTs],
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterWhereClause> tsUidEqualTo(
      int ts, String uid) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'ts_uid',
      value: [ts, uid],
    ));
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterWhereClause> tsUidNotEqualTo(
      int ts, String uid) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'ts_uid',
        upper: [ts, uid],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'ts_uid',
        lower: [ts, uid],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'ts_uid',
        lower: [ts, uid],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'ts_uid',
        upper: [ts, uid],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterWhereClause> uidEqualTo(
      String uid) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'uid',
      value: [uid],
    ));
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterWhereClause> uidNotEqualTo(
      String uid) {
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

extension TGachaRecordQueryFilter
    on QueryBuilder<TGachaRecord, TGachaRecord, QFilterCondition> {
  QueryBuilder<TGachaRecord, TGachaRecord, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterFilterCondition> idEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterFilterCondition> idBetween(
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

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterFilterCondition> poolEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'pool',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterFilterCondition>
      poolGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'pool',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterFilterCondition> poolLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'pool',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterFilterCondition> poolBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'pool',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterFilterCondition>
      poolStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'pool',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterFilterCondition> poolEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'pool',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterFilterCondition> poolContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'pool',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterFilterCondition> poolMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'pool',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterFilterCondition> tsEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'ts',
      value: value,
    ));
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterFilterCondition> tsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'ts',
      value: value,
    ));
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterFilterCondition> tsLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'ts',
      value: value,
    ));
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterFilterCondition> tsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'ts',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterFilterCondition> uidEqualTo(
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

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterFilterCondition>
      uidGreaterThan(
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

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterFilterCondition> uidLessThan(
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

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterFilterCondition> uidBetween(
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

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterFilterCondition> uidStartsWith(
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

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterFilterCondition> uidEndsWith(
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

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterFilterCondition> uidContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'uid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterFilterCondition> uidMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'uid',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension TGachaRecordQueryLinks
    on QueryBuilder<TGachaRecord, TGachaRecord, QFilterCondition> {
  QueryBuilder<TGachaRecord, TGachaRecord, QAfterFilterCondition> chars(
      FilterQuery<TGachaChar> q) {
    return linkInternal(
      isar.tGachaChars,
      q,
      'chars',
    );
  }
}

extension TGachaRecordQueryWhereSortBy
    on QueryBuilder<TGachaRecord, TGachaRecord, QSortBy> {
  QueryBuilder<TGachaRecord, TGachaRecord, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterSortBy> sortByPool() {
    return addSortByInternal('pool', Sort.asc);
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterSortBy> sortByPoolDesc() {
    return addSortByInternal('pool', Sort.desc);
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterSortBy> sortByTs() {
    return addSortByInternal('ts', Sort.asc);
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterSortBy> sortByTsDesc() {
    return addSortByInternal('ts', Sort.desc);
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterSortBy> sortByUid() {
    return addSortByInternal('uid', Sort.asc);
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterSortBy> sortByUidDesc() {
    return addSortByInternal('uid', Sort.desc);
  }
}

extension TGachaRecordQueryWhereSortThenBy
    on QueryBuilder<TGachaRecord, TGachaRecord, QSortThenBy> {
  QueryBuilder<TGachaRecord, TGachaRecord, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterSortBy> thenByPool() {
    return addSortByInternal('pool', Sort.asc);
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterSortBy> thenByPoolDesc() {
    return addSortByInternal('pool', Sort.desc);
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterSortBy> thenByTs() {
    return addSortByInternal('ts', Sort.asc);
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterSortBy> thenByTsDesc() {
    return addSortByInternal('ts', Sort.desc);
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterSortBy> thenByUid() {
    return addSortByInternal('uid', Sort.asc);
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QAfterSortBy> thenByUidDesc() {
    return addSortByInternal('uid', Sort.desc);
  }
}

extension TGachaRecordQueryWhereDistinct
    on QueryBuilder<TGachaRecord, TGachaRecord, QDistinct> {
  QueryBuilder<TGachaRecord, TGachaRecord, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QDistinct> distinctByPool(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('pool', caseSensitive: caseSensitive);
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QDistinct> distinctByTs() {
    return addDistinctByInternal('ts');
  }

  QueryBuilder<TGachaRecord, TGachaRecord, QDistinct> distinctByUid(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('uid', caseSensitive: caseSensitive);
  }
}

extension TGachaRecordQueryProperty
    on QueryBuilder<TGachaRecord, TGachaRecord, QQueryProperty> {
  QueryBuilder<TGachaRecord, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<TGachaRecord, String, QQueryOperations> poolProperty() {
    return addPropertyNameInternal('pool');
  }

  QueryBuilder<TGachaRecord, int, QQueryOperations> tsProperty() {
    return addPropertyNameInternal('ts');
  }

  QueryBuilder<TGachaRecord, String, QQueryOperations> uidProperty() {
    return addPropertyNameInternal('uid');
  }
}
