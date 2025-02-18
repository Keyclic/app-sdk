//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class QuoteJsonhalRead {
  /// Returns a new [QuoteJsonhalRead] instance.
  QuoteJsonhalRead({
    this.links,
    this.authorContactPoint,
    this.expirationDate,
    this.origin,
    this.providerAddress,
    this.providerContactPoint,
    this.resolutionDate,
    required this.amountExcludingTax,
    required this.amountIncludingTax,
    required this.issueDate,
    required this.name,
    required this.number,
    this.id,
    this.tags,
    this.createdAt,
    this.updatedAt,
    this.embedded,
  });

  /// Returns a new [QuoteJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static QuoteJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return QuoteJsonhalRead(
      links: QuoteJsonhalReadLinks.fromJson(json[r'_links']),
      authorContactPoint:
          ContactPointJsonhalRead.fromJson(json[r'authorContactPoint']),
      expirationDate: mapToDateTime(json[r'expirationDate']),
      origin: QuoteJsonhalReadOriginEnum.fromJson(json[r'origin']),
      providerAddress:
          PostalAddressJsonhalRead.fromJson(json[r'providerAddress']),
      providerContactPoint:
          ContactPointJsonhalRead.fromJson(json[r'providerContactPoint']),
      resolutionDate: mapToDateTime(json[r'resolutionDate']),
      amountExcludingTax:
          PriceJsonhalRead.fromJson(json[r'amountExcludingTax'])!,
      amountIncludingTax:
          PriceJsonhalRead.fromJson(json[r'amountIncludingTax'])!,
      issueDate: mapToDateTime(json[r'issueDate'])!,
      name: json[r'name'],
      number: json[r'number'],
      id: json[r'id'],
      tags: json[r'tags'] == null ? null : List<String>.from(json[r'tags']),
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
      embedded: QuoteJsonhalReadEmbedded.fromJson(json[r'_embedded']),
    );
  }

  QuoteJsonhalReadLinks? links;

  ContactPointJsonhalRead? authorContactPoint;

  /// The date and time the quote is not valid anymore, in ISO 8601 format.
  DateTime? expirationDate;

  QuoteJsonhalReadOriginEnum? origin;

  PostalAddressJsonhalRead? providerAddress;

  ContactPointJsonhalRead? providerContactPoint;

  /// The date and time the quote was approved or rejected, in ISO 8601 format.
  DateTime? resolutionDate;

  PriceJsonhalRead amountExcludingTax;

  PriceJsonhalRead amountIncludingTax;

  /// The date and time the quote was created outside the app, in ISO 8601 format.
  DateTime issueDate;

  /// A descriptive title or name for the quote that summarizes its purpose or scope.
  String name;

  /// A unique identifier assigned to the quote for tracking and reference purposes.
  String number;

  /// The resource identifier.
  final String? id;

  List<String>? tags;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  QuoteJsonhalReadEmbedded? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is QuoteJsonhalRead &&
        other.links == links &&
        other.authorContactPoint == authorContactPoint &&
        other.expirationDate == expirationDate &&
        other.origin == origin &&
        other.providerAddress == providerAddress &&
        other.providerContactPoint == providerContactPoint &&
        other.resolutionDate == resolutionDate &&
        other.amountExcludingTax == amountExcludingTax &&
        other.amountIncludingTax == amountIncludingTax &&
        other.issueDate == issueDate &&
        other.name == name &&
        other.number == number &&
        other.id == id &&
        DeepCollectionEquality.unordered().equals(tags, other.tags) &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.embedded == embedded;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (authorContactPoint == null ? 0 : authorContactPoint.hashCode) +
      (expirationDate == null ? 0 : expirationDate.hashCode) +
      (origin == null ? 0 : origin.hashCode) +
      (providerAddress == null ? 0 : providerAddress.hashCode) +
      (providerContactPoint == null ? 0 : providerContactPoint.hashCode) +
      (resolutionDate == null ? 0 : resolutionDate.hashCode) +
      amountExcludingTax.hashCode +
      amountIncludingTax.hashCode +
      issueDate.hashCode +
      name.hashCode +
      number.hashCode +
      (id == null ? 0 : id.hashCode) +
      (tags == null ? 0 : tags.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (embedded == null ? 0 : embedded.hashCode);

  static List<QuoteJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <QuoteJsonhalRead>[];
    }

    return json.fold(<QuoteJsonhalRead>[],
        (List<QuoteJsonhalRead> previousValue, element) {
      final QuoteJsonhalRead? object = QuoteJsonhalRead.fromJson(element);
      if (object is QuoteJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, QuoteJsonhalRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, QuoteJsonhalRead>{};
    }

    return json.entries.fold(<String, QuoteJsonhalRead>{},
        (Map<String, QuoteJsonhalRead> previousValue, element) {
      final QuoteJsonhalRead? object = QuoteJsonhalRead.fromJson(element.value);
      if (object is QuoteJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of QuoteJsonhalRead-objects as value to a dart map
  static Map<String, List<QuoteJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<QuoteJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<QuoteJsonhalRead>>(
          key, QuoteJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'QuoteJsonhalRead[links=$links, authorContactPoint=$authorContactPoint, expirationDate=$expirationDate, origin=$origin, providerAddress=$providerAddress, providerContactPoint=$providerContactPoint, resolutionDate=$resolutionDate, amountExcludingTax=$amountExcludingTax, amountIncludingTax=$amountIncludingTax, issueDate=$issueDate, name=$name, number=$number, id=$id, tags=$tags, createdAt=$createdAt, updatedAt=$updatedAt, embedded=$embedded]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
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
      if (keys == null || keys.contains(r'expirationDate'))
        r'expirationDate': expirationDate?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'origin')) r'origin': origin,
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
      r'amountExcludingTax': amountExcludingTax.toJson(keys?.fold<List<String>>(
          <String>[], (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^amountExcludingTax\.'))) {
          previousValue
              .add(element.split(RegExp(r'^amountExcludingTax\.')).last);
        }

        return previousValue;
      })),
      r'amountIncludingTax': amountIncludingTax.toJson(keys?.fold<List<String>>(
          <String>[], (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^amountIncludingTax\.'))) {
          previousValue
              .add(element.split(RegExp(r'^amountIncludingTax\.')).last);
        }

        return previousValue;
      })),
      r'issueDate': issueDate.toUtc().toIso8601String(),
      r'name': name,
      r'number': number,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'tags')) r'tags': tags,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      if (keys == null ||
          keys.any((key) => RegExp(r'^embedded\.').hasMatch(key)))
        r'_embedded': embedded?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^embedded\.'))) {
            previousValue.add(element.split(RegExp(r'^embedded\.')).last);
          }

          return previousValue;
        })),
    };
  }
}

class QuoteJsonhalReadOriginEnum {
  /// Instantiate a new enum with the provided [value].
  const QuoteJsonhalReadOriginEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const LINKED = QuoteJsonhalReadOriginEnum._(r'LINKED');
  static const PROPOSED = QuoteJsonhalReadOriginEnum._(r'PROPOSED');
  static const REQUESTED = QuoteJsonhalReadOriginEnum._(r'REQUESTED');

  /// List of all possible values in this [enum][QuoteJsonhalReadOriginEnum].
  static const values = <QuoteJsonhalReadOriginEnum>[
    LINKED,
    PROPOSED,
    REQUESTED,
  ];

  static QuoteJsonhalReadOriginEnum? fromJson(dynamic value) =>
      QuoteJsonhalReadOriginEnumTypeTransformer().decode(value);

  static List<QuoteJsonhalReadOriginEnum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return QuoteJsonhalReadOriginEnum.fromJson(value);
        })
        .whereType<QuoteJsonhalReadOriginEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [QuoteJsonhalReadOriginEnum] to String,
/// and [decode] dynamic data back to [QuoteJsonhalReadOriginEnum].
class QuoteJsonhalReadOriginEnumTypeTransformer {
  const QuoteJsonhalReadOriginEnumTypeTransformer._();

  factory QuoteJsonhalReadOriginEnumTypeTransformer() =>
      _instance ??= QuoteJsonhalReadOriginEnumTypeTransformer._();

  String encode(QuoteJsonhalReadOriginEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a QuoteJsonhalReadOriginEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  QuoteJsonhalReadOriginEnum? decode(dynamic data, {bool allowNull = true}) {
    switch (data) {
      case r'LINKED':
        return QuoteJsonhalReadOriginEnum.LINKED;
      case r'PROPOSED':
        return QuoteJsonhalReadOriginEnum.PROPOSED;
      case r'REQUESTED':
        return QuoteJsonhalReadOriginEnum.REQUESTED;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [QuoteJsonhalReadOriginEnumTypeTransformer] instance.
  static QuoteJsonhalReadOriginEnumTypeTransformer? _instance;
}
