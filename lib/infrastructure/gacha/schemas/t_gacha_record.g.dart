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
      '{"name":"gacha_record","idName":"id","properties":[{"name":"pool","type":"String"},{"name":"ts","type":"Long"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {'pool': 0, 'ts': 1},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
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
  return [];
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
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _pool);
  writer.writeLong(offsets[1], _ts);
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
  return jsObj;
}

TGachaRecord _tGachaRecordDeserializeWeb(
    IsarCollection<TGachaRecord> collection, dynamic jsObj) {
  final object = TGachaRecord();
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  object.pool = IsarNative.jsObjectGet(jsObj, 'pool') ?? '';
  object.ts = IsarNative.jsObjectGet(jsObj, 'ts') ?? double.negativeInfinity;
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
    default:
      throw 'Illegal propertyName';
  }
}

void _tGachaRecordAttachLinks(
    IsarCollection col, int id, TGachaRecord object) {}

extension TGachaRecordQueryWhereSort
    on QueryBuilder<TGachaRecord, TGachaRecord, QWhere> {
  QueryBuilder<TGachaRecord, TGachaRecord, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
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
}

extension TGachaRecordQueryLinks
    on QueryBuilder<TGachaRecord, TGachaRecord, QFilterCondition> {}

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
}
