//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class QuoteEditQuoteCommandWrite {
  /// Returns a new [QuoteEditQuoteCommandWrite] instance.
  QuoteEditQuoteCommandWrite({
    this.amountExcludingTax,
    this.amountIncludingTax,
    this.author,
    this.authorContactPoint,
    this.equipments,
    this.expirationDate,
    this.issueDate,
    this.name,
    this.number,
    this.origin,
    this.provider,
    this.providerAddress,
    this.providerContactPoint,
    this.resolutionDate,
    this.tags,
    this.task,
  });

  /// Returns a new [QuoteEditQuoteCommandWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static QuoteEditQuoteCommandWrite? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return QuoteEditQuoteCommandWrite(
      amountExcludingTax: PriceWrite.fromJson(json[r'amountExcludingTax']),
      amountIncludingTax: PriceWrite.fromJson(json[r'amountIncludingTax']),
      author: json[r'author'],
      authorContactPoint:
          ContactPointWrite.fromJson(json[r'authorContactPoint']),
      equipments: json[r'equipments'] == null
          ? null
          : List<String>.from(json[r'equipments']),
      expirationDate: mapToDateTime(json[r'expirationDate']),
      issueDate: mapToDateTime(json[r'issueDate']),
      name: json[r'name'],
      number: json[r'number'],
      origin: QuoteEditQuoteCommandWriteOriginEnum.fromJson(json[r'origin']),
      provider: json[r'provider'],
      providerAddress: PostalAddressWrite.fromJson(json[r'providerAddress']),
      providerContactPoint:
          ContactPointWrite.fromJson(json[r'providerContactPoint']),
      resolutionDate: mapToDateTime(json[r'resolutionDate']),
      tags: json[r'tags'] == null ? null : List<String>.from(json[r'tags']),
      task: json[r'task'],
    );
  }

  PriceWrite? amountExcludingTax;

  PriceWrite? amountIncludingTax;

  String? author;

  ContactPointWrite? authorContactPoint;

  List<String>? equipments;

  DateTime? expirationDate;

  DateTime? issueDate;

  String? name;

  String? number;

  QuoteEditQuoteCommandWriteOriginEnum? origin;

  String? provider;

  PostalAddressWrite? providerAddress;

  ContactPointWrite? providerContactPoint;

  DateTime? resolutionDate;

  List<String>? tags;

  String? task;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is QuoteEditQuoteCommandWrite &&
        other.amountExcludingTax == amountExcludingTax &&
        other.amountIncludingTax == amountIncludingTax &&
        other.author == author &&
        other.authorContactPoint == authorContactPoint &&
        DeepCollectionEquality.unordered()
            .equals(equipments, other.equipments) &&
        other.expirationDate == expirationDate &&
        other.issueDate == issueDate &&
        other.name == name &&
        other.number == number &&
        other.origin == origin &&
        other.provider == provider &&
        other.providerAddress == providerAddress &&
        other.providerContactPoint == providerContactPoint &&
        other.resolutionDate == resolutionDate &&
        DeepCollectionEquality.unordered().equals(tags, other.tags) &&
        other.task == task;
  }

  @override
  int get hashCode =>
      (amountExcludingTax == null ? 0 : amountExcludingTax.hashCode) +
      (amountIncludingTax == null ? 0 : amountIncludingTax.hashCode) +
      (author == null ? 0 : author.hashCode) +
      (authorContactPoint == null ? 0 : authorContactPoint.hashCode) +
      (equipments == null ? 0 : equipments.hashCode) +
      (expirationDate == null ? 0 : expirationDate.hashCode) +
      (issueDate == null ? 0 : issueDate.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (number == null ? 0 : number.hashCode) +
      (origin == null ? 0 : origin.hashCode) +
      (provider == null ? 0 : provider.hashCode) +
      (providerAddress == null ? 0 : providerAddress.hashCode) +
      (providerContactPoint == null ? 0 : providerContactPoint.hashCode) +
      (resolutionDate == null ? 0 : resolutionDate.hashCode) +
      (tags == null ? 0 : tags.hashCode) +
      (task == null ? 0 : task.hashCode);

  static List<QuoteEditQuoteCommandWrite> listFromJson(Iterable? json) {
    if (json == null) {
      return <QuoteEditQuoteCommandWrite>[];
    }

    return json.fold(<QuoteEditQuoteCommandWrite>[],
        (List<QuoteEditQuoteCommandWrite> previousValue, element) {
      final QuoteEditQuoteCommandWrite? object =
          QuoteEditQuoteCommandWrite.fromJson(element);
      if (object is QuoteEditQuoteCommandWrite) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, QuoteEditQuoteCommandWrite> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, QuoteEditQuoteCommandWrite>{};
    }

    return json.entries.fold(<String, QuoteEditQuoteCommandWrite>{},
        (Map<String, QuoteEditQuoteCommandWrite> previousValue, element) {
      final QuoteEditQuoteCommandWrite? object =
          QuoteEditQuoteCommandWrite.fromJson(element.value);
      if (object is QuoteEditQuoteCommandWrite) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of QuoteEditQuoteCommandWrite-objects as value to a dart map
  static Map<String, List<QuoteEditQuoteCommandWrite>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<QuoteEditQuoteCommandWrite>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<QuoteEditQuoteCommandWrite>>(
          key, QuoteEditQuoteCommandWrite.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'QuoteEditQuoteCommandWrite[amountExcludingTax=$amountExcludingTax, amountIncludingTax=$amountIncludingTax, author=$author, authorContactPoint=$authorContactPoint, equipments=$equipments, expirationDate=$expirationDate, issueDate=$issueDate, name=$name, number=$number, origin=$origin, provider=$provider, providerAddress=$providerAddress, providerContactPoint=$providerContactPoint, resolutionDate=$resolutionDate, tags=$tags, task=$task]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^amountExcludingTax\.').hasMatch(key)))
        r'amountExcludingTax': amountExcludingTax?.toJson(keys
            ?.fold<List<String>>(<String>[],
                (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^amountExcludingTax\.'))) {
            previousValue
                .add(element.split(RegExp(r'^amountExcludingTax\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^amountIncludingTax\.').hasMatch(key)))
        r'amountIncludingTax': amountIncludingTax?.toJson(keys
            ?.fold<List<String>>(<String>[],
                (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^amountIncludingTax\.'))) {
            previousValue
                .add(element.split(RegExp(r'^amountIncludingTax\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'author')) r'author': author,
      if (keys == null ||
          keys.any((key) => RegExp(r'^authorContactPoint\.').hasMatch(key)))
        r'authorContactPoint': authorContactPoint?.toJson(keys
            ?.fold<List<String>>(<String>[],
                (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^authorContactPoint\.'))) {
            previousValue
                .add(element.split(RegExp(r'^authorContactPoint\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'equipments'))
        r'equipments': equipments,
      if (keys == null || keys.contains(r'expirationDate'))
        r'expirationDate': expirationDate?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'issueDate'))
        r'issueDate': issueDate?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'name')) r'name': name,
      if (keys == null || keys.contains(r'number')) r'number': number,
      if (keys == null || keys.contains(r'origin')) r'origin': origin,
      if (keys == null || keys.contains(r'provider')) r'provider': provider,
      if (keys == null ||
          keys.any((key) => RegExp(r'^providerAddress\.').hasMatch(key)))
        r'providerAddress': providerAddress?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^providerAddress\.'))) {
            previousValue
                .add(element.split(RegExp(r'^providerAddress\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^providerContactPoint\.').hasMatch(key)))
        r'providerContactPoint': providerContactPoint?.toJson(keys
            ?.fold<List<String>>(<String>[],
                (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^providerContactPoint\.'))) {
            previousValue
                .add(element.split(RegExp(r'^providerContactPoint\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'resolutionDate'))
        r'resolutionDate': resolutionDate?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'tags')) r'tags': tags,
      if (keys == null || keys.contains(r'task')) r'task': task,
    };
  }
}

class QuoteEditQuoteCommandWriteOriginEnum {
  /// Instantiate a new enum with the provided [value].
  const QuoteEditQuoteCommandWriteOriginEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const LINKED = QuoteEditQuoteCommandWriteOriginEnum._(r'LINKED');
  static const PROPOSED = QuoteEditQuoteCommandWriteOriginEnum._(r'PROPOSED');
  static const REQUESTED = QuoteEditQuoteCommandWriteOriginEnum._(r'REQUESTED');

  /// List of all possible values in this [enum][QuoteEditQuoteCommandWriteOriginEnum].
  static const values = <QuoteEditQuoteCommandWriteOriginEnum>[
    LINKED,
    PROPOSED,
    REQUESTED,
  ];

  static QuoteEditQuoteCommandWriteOriginEnum? fromJson(dynamic value) =>
      QuoteEditQuoteCommandWriteOriginEnumTypeTransformer().decode(value);

  static List<QuoteEditQuoteCommandWriteOriginEnum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return QuoteEditQuoteCommandWriteOriginEnum.fromJson(value);
        })
        .whereType<QuoteEditQuoteCommandWriteOriginEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [QuoteEditQuoteCommandWriteOriginEnum] to String,
/// and [decode] dynamic data back to [QuoteEditQuoteCommandWriteOriginEnum].
class QuoteEditQuoteCommandWriteOriginEnumTypeTransformer {
  const QuoteEditQuoteCommandWriteOriginEnumTypeTransformer._();

  factory QuoteEditQuoteCommandWriteOriginEnumTypeTransformer() =>
      _instance ??= QuoteEditQuoteCommandWriteOriginEnumTypeTransformer._();

  String encode(QuoteEditQuoteCommandWriteOriginEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a QuoteEditQuoteCommandWriteOriginEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  QuoteEditQuoteCommandWriteOriginEnum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'LINKED':
        return QuoteEditQuoteCommandWriteOriginEnum.LINKED;
      case r'PROPOSED':
        return QuoteEditQuoteCommandWriteOriginEnum.PROPOSED;
      case r'REQUESTED':
        return QuoteEditQuoteCommandWriteOriginEnum.REQUESTED;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [QuoteEditQuoteCommandWriteOriginEnumTypeTransformer] instance.
  static QuoteEditQuoteCommandWriteOriginEnumTypeTransformer? _instance;
}
