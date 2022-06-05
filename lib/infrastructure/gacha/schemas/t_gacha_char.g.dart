// GENERATED CODE - DO NOT MODIFY BY HAND

part of 't_gacha_char.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetTGachaCharCollection on Isar {
  IsarCollection<TGachaChar> get tGachaChars => getCollection();
}

const TGachaCharSchema = CollectionSchema(
  name: 'gacha_char',
  schema:
      '{"name":"gacha_char","idName":"id","properties":[{"name":"isNew","type":"Bool"},{"name":"name","type":"String"},{"name":"rarity","type":"Long"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {'isNew': 0, 'name': 1, 'rarity': 2},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _tGachaCharGetId,
  setId: _tGachaCharSetId,
  getLinks: _tGachaCharGetLinks,
  attachLinks: _tGachaCharAttachLinks,
  serializeNative: _tGachaCharSerializeNative,
  deserializeNative: _tGachaCharDeserializeNative,
  deserializePropNative: _tGachaCharDeserializePropNative,
  serializeWeb: _tGachaCharSerializeWeb,
  deserializeWeb: _tGachaCharDeserializeWeb,
  deserializePropWeb: _tGachaCharDeserializePropWeb,
  version: 3,
);

int? _tGachaCharGetId(TGachaChar object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _tGachaCharSetId(TGachaChar object, int id) {
  object.id = id;
}

List<IsarLinkBase> _tGachaCharGetLinks(TGachaChar object) {
  return [];
}

const _tGachaCharRarityTypeConverter = RarityTypeConverter();

void _tGachaCharSerializeNative(
    IsarCollection<TGachaChar> collection,
    IsarRawObject rawObj,
    TGachaChar object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.isNew;
  final _isNew = value0;
  final value1 = object.name;
  final _name = IsarBinaryWriter.utf8Encoder.convert(value1);
  dynamicSize += (_name.length) as int;
  final value2 = _tGachaCharRarityTypeConverter.toIsar(object.rarity);
  final _rarity = value2;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBool(offsets[0], _isNew);
  writer.writeBytes(offsets[1], _name);
  writer.writeLong(offsets[2], _rarity);
}

TGachaChar _tGachaCharDeserializeNative(IsarCollection<TGachaChar> collection,
    int id, IsarBinaryReader reader, List<int> offsets) {
  final object = TGachaChar();
  object.id = id;
  object.isNew = reader.readBool(offsets[0]);
  object.name = reader.readString(offsets[1]);
  object.rarity =
      _tGachaCharRarityTypeConverter.fromIsar(reader.readLong(offsets[2]));
  return object;
}

P _tGachaCharDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (_tGachaCharRarityTypeConverter.fromIsar(reader.readLong(offset)))
          as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _tGachaCharSerializeWeb(
    IsarCollection<TGachaChar> collection, TGachaChar object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'isNew', object.isNew);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  IsarNative.jsObjectSet(
      jsObj, 'rarity', _tGachaCharRarityTypeConverter.toIsar(object.rarity));
  return jsObj;
}

TGachaChar _tGachaCharDeserializeWeb(
    IsarCollection<TGachaChar> collection, dynamic jsObj) {
  final object = TGachaChar();
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  object.isNew = IsarNative.jsObjectGet(jsObj, 'isNew') ?? false;
  object.name = IsarNative.jsObjectGet(jsObj, 'name') ?? '';
  object.rarity = _tGachaCharRarityTypeConverter.fromIsar(
      IsarNative.jsObjectGet(jsObj, 'rarity') ?? double.negativeInfinity);
  return object;
}

P _tGachaCharDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'isNew':
      return (IsarNative.jsObjectGet(jsObj, 'isNew') ?? false) as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
    case 'rarity':
      return (_tGachaCharRarityTypeConverter.fromIsar(
          IsarNative.jsObjectGet(jsObj, 'rarity') ??
              double.negativeInfinity)) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _tGachaCharAttachLinks(IsarCollection col, int id, TGachaChar object) {}

extension TGachaCharQueryWhereSort
    on QueryBuilder<TGachaChar, TGachaChar, QWhere> {
  QueryBuilder<TGachaChar, TGachaChar, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension TGachaCharQueryWhere
    on QueryBuilder<TGachaChar, TGachaChar, QWhereClause> {
  QueryBuilder<TGachaChar, TGachaChar, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<TGachaChar, TGachaChar, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<TGachaChar, TGachaChar, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<TGachaChar, TGachaChar, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<TGachaChar, TGachaChar, QAfterWhereClause> idBetween(
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

extension TGachaCharQueryFilter
    on QueryBuilder<TGachaChar, TGachaChar, QFilterCondition> {
  QueryBuilder<TGachaChar, TGachaChar, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<TGachaChar, TGachaChar, QAfterFilterCondition> idEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<TGachaChar, TGachaChar, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<TGachaChar, TGachaChar, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<TGachaChar, TGachaChar, QAfterFilterCondition> idBetween(
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

  QueryBuilder<TGachaChar, TGachaChar, QAfterFilterCondition> isNewEqualTo(
      bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'isNew',
      value: value,
    ));
  }

  QueryBuilder<TGachaChar, TGachaChar, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TGachaChar, TGachaChar, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TGachaChar, TGachaChar, QAfterFilterCondition> nameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TGachaChar, TGachaChar, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'name',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TGachaChar, TGachaChar, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TGachaChar, TGachaChar, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TGachaChar, TGachaChar, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TGachaChar, TGachaChar, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TGachaChar, TGachaChar, QAfterFilterCondition> rarityEqualTo(
      Rarity value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'rarity',
      value: _tGachaCharRarityTypeConverter.toIsar(value),
    ));
  }

  QueryBuilder<TGachaChar, TGachaChar, QAfterFilterCondition> rarityGreaterThan(
    Rarity value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'rarity',
      value: _tGachaCharRarityTypeConverter.toIsar(value),
    ));
  }

  QueryBuilder<TGachaChar, TGachaChar, QAfterFilterCondition> rarityLessThan(
    Rarity value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'rarity',
      value: _tGachaCharRarityTypeConverter.toIsar(value),
    ));
  }

  QueryBuilder<TGachaChar, TGachaChar, QAfterFilterCondition> rarityBetween(
    Rarity lower,
    Rarity upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'rarity',
      lower: _tGachaCharRarityTypeConverter.toIsar(lower),
      includeLower: includeLower,
      upper: _tGachaCharRarityTypeConverter.toIsar(upper),
      includeUpper: includeUpper,
    ));
  }
}

extension TGachaCharQueryLinks
    on QueryBuilder<TGachaChar, TGachaChar, QFilterCondition> {}

extension TGachaCharQueryWhereSortBy
    on QueryBuilder<TGachaChar, TGachaChar, QSortBy> {
  QueryBuilder<TGachaChar, TGachaChar, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<TGachaChar, TGachaChar, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<TGachaChar, TGachaChar, QAfterSortBy> sortByIsNew() {
    return addSortByInternal('isNew', Sort.asc);
  }

  QueryBuilder<TGachaChar, TGachaChar, QAfterSortBy> sortByIsNewDesc() {
    return addSortByInternal('isNew', Sort.desc);
  }

  QueryBuilder<TGachaChar, TGachaChar, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<TGachaChar, TGachaChar, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<TGachaChar, TGachaChar, QAfterSortBy> sortByRarity() {
    return addSortByInternal('rarity', Sort.asc);
  }

  QueryBuilder<TGachaChar, TGachaChar, QAfterSortBy> sortByRarityDesc() {
    return addSortByInternal('rarity', Sort.desc);
  }
}

extension TGachaCharQueryWhereSortThenBy
    on QueryBuilder<TGachaChar, TGachaChar, QSortThenBy> {
  QueryBuilder<TGachaChar, TGachaChar, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<TGachaChar, TGachaChar, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<TGachaChar, TGachaChar, QAfterSortBy> thenByIsNew() {
    return addSortByInternal('isNew', Sort.asc);
  }

  QueryBuilder<TGachaChar, TGachaChar, QAfterSortBy> thenByIsNewDesc() {
    return addSortByInternal('isNew', Sort.desc);
  }

  QueryBuilder<TGachaChar, TGachaChar, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<TGachaChar, TGachaChar, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<TGachaChar, TGachaChar, QAfterSortBy> thenByRarity() {
    return addSortByInternal('rarity', Sort.asc);
  }

  QueryBuilder<TGachaChar, TGachaChar, QAfterSortBy> thenByRarityDesc() {
    return addSortByInternal('rarity', Sort.desc);
  }
}

extension TGachaCharQueryWhereDistinct
    on QueryBuilder<TGachaChar, TGachaChar, QDistinct> {
  QueryBuilder<TGachaChar, TGachaChar, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<TGachaChar, TGachaChar, QDistinct> distinctByIsNew() {
    return addDistinctByInternal('isNew');
  }

  QueryBuilder<TGachaChar, TGachaChar, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }

  QueryBuilder<TGachaChar, TGachaChar, QDistinct> distinctByRarity() {
    return addDistinctByInternal('rarity');
  }
}

extension TGachaCharQueryProperty
    on QueryBuilder<TGachaChar, TGachaChar, QQueryProperty> {
  QueryBuilder<TGachaChar, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<TGachaChar, bool, QQueryOperations> isNewProperty() {
    return addPropertyNameInternal('isNew');
  }

  QueryBuilder<TGachaChar, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }

  QueryBuilder<TGachaChar, Rarity, QQueryOperations> rarityProperty() {
    return addPropertyNameInternal('rarity');
  }
}
