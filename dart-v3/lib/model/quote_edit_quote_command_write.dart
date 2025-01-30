//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class QuoteEditQuoteCommandWrite {
  /// Returns a new [QuoteEditQuoteCommandWrite] instance.
  QuoteEditQuoteCommandWrite({
    this.amountExcludingTax,
    this.amountIncludingTax,
    this.documents,
    this.equipments,
    this.expirationDate,
    this.issueDate,
    this.member,
    this.memberContactPoint,
    this.name,
    this.number,
    this.origin,
    this.place,
    this.provider,
    this.providerAddress,
    this.providerContactPoint,
    this.resolutionDate,
    this.state,
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
      documents: json[r'documents'] == null
          ? null
          : Map<String, Object?>.from(json[r'documents']),
      equipments: json[r'equipments'] == null
          ? null
          : Map<String, Object?>.from(json[r'equipments']),
      expirationDate: mapToDateTime(json[r'expirationDate']),
      issueDate: mapToDateTime(json[r'issueDate']),
      member: json[r'member'],
      memberContactPoint:
          ContactPointWrite.fromJson(json[r'memberContactPoint']),
      name: json[r'name'],
      number: json[r'number'],
      origin: json[r'origin'] == null
          ? null
          : Map<String, Object?>.from(json[r'origin']),
      place: json[r'place'],
      provider: json[r'provider'],
      providerAddress: PostalAddressWrite.fromJson(json[r'providerAddress']),
      providerContactPoint:
          ContactPointWrite.fromJson(json[r'providerContactPoint']),
      resolutionDate: mapToDateTime(json[r'resolutionDate']),
      state: json[r'state'],
      tags: json[r'tags'] == null ? null : List<String>.from(json[r'tags']),
      task: json[r'task'],
    );
  }

  PriceWrite? amountExcludingTax;

  PriceWrite? amountIncludingTax;

  ///
  Map<String, Object?>? documents;

  ///
  Map<String, Object?>? equipments;

  DateTime? expirationDate;

  DateTime? issueDate;

  String? member;

  ContactPointWrite? memberContactPoint;

  String? name;

  String? number;

  ///
  Map<String, Object?>? origin;

  String? place;

  String? provider;

  PostalAddressWrite? providerAddress;

  ContactPointWrite? providerContactPoint;

  DateTime? resolutionDate;

  String? state;

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
        other.documents == documents &&
        other.equipments == equipments &&
        other.expirationDate == expirationDate &&
        other.issueDate == issueDate &&
        other.member == member &&
        other.memberContactPoint == memberContactPoint &&
        other.name == name &&
        other.number == number &&
        other.origin == origin &&
        other.place == place &&
        other.provider == provider &&
        other.providerAddress == providerAddress &&
        other.providerContactPoint == providerContactPoint &&
        other.resolutionDate == resolutionDate &&
        other.state == state &&
        DeepCollectionEquality.unordered().equals(tags, other.tags) &&
        other.task == task;
  }

  @override
  int get hashCode =>
      (amountExcludingTax == null ? 0 : amountExcludingTax.hashCode) +
      (amountIncludingTax == null ? 0 : amountIncludingTax.hashCode) +
      (documents == null ? 0 : documents.hashCode) +
      (equipments == null ? 0 : equipments.hashCode) +
      (expirationDate == null ? 0 : expirationDate.hashCode) +
      (issueDate == null ? 0 : issueDate.hashCode) +
      (member == null ? 0 : member.hashCode) +
      (memberContactPoint == null ? 0 : memberContactPoint.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (number == null ? 0 : number.hashCode) +
      (origin == null ? 0 : origin.hashCode) +
      (place == null ? 0 : place.hashCode) +
      (provider == null ? 0 : provider.hashCode) +
      (providerAddress == null ? 0 : providerAddress.hashCode) +
      (providerContactPoint == null ? 0 : providerContactPoint.hashCode) +
      (resolutionDate == null ? 0 : resolutionDate.hashCode) +
      (state == null ? 0 : state.hashCode) +
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
      'QuoteEditQuoteCommandWrite[amountExcludingTax=$amountExcludingTax, amountIncludingTax=$amountIncludingTax, documents=$documents, equipments=$equipments, expirationDate=$expirationDate, issueDate=$issueDate, member=$member, memberContactPoint=$memberContactPoint, name=$name, number=$number, origin=$origin, place=$place, provider=$provider, providerAddress=$providerAddress, providerContactPoint=$providerContactPoint, resolutionDate=$resolutionDate, state=$state, tags=$tags, task=$task]';

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
      if (keys == null || keys.contains(r'documents')) r'documents': documents,
      if (keys == null || keys.contains(r'equipments'))
        r'equipments': equipments,
      if (keys == null || keys.contains(r'expirationDate'))
        r'expirationDate': expirationDate?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'issueDate'))
        r'issueDate': issueDate?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'member')) r'member': member,
      if (keys == null ||
          keys.any((key) => RegExp(r'^memberContactPoint\.').hasMatch(key)))
        r'memberContactPoint': memberContactPoint?.toJson(keys
            ?.fold<List<String>>(<String>[],
                (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^memberContactPoint\.'))) {
            previousValue
                .add(element.split(RegExp(r'^memberContactPoint\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'name')) r'name': name,
      if (keys == null || keys.contains(r'number')) r'number': number,
      if (keys == null || keys.contains(r'origin')) r'origin': origin,
      if (keys == null || keys.contains(r'place')) r'place': place,
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
      if (keys == null || keys.contains(r'state')) r'state': state,
      if (keys == null || keys.contains(r'tags')) r'tags': tags,
      if (keys == null || keys.contains(r'task')) r'task': task,
    };
  }
}
