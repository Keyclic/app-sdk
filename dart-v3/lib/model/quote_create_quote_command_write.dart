//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class QuoteCreateQuoteCommandWrite {
  /// Returns a new [QuoteCreateQuoteCommandWrite] instance.
  QuoteCreateQuoteCommandWrite({
    required this.amountExcludingTax,
    required this.amountIncludingTax,
    this.equipments,
    this.expirationDate,
    this.files = const [],
    required this.issueDate,
    this.member,
    this.memberContactPoint,
    required this.name,
    required this.number,
    this.origin,
    required this.place,
    this.provider,
    this.providerAddress,
    this.providerContactPoint,
    this.resolutionDate,
    this.state,
    this.task,
  });

  /// Returns a new [QuoteCreateQuoteCommandWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static QuoteCreateQuoteCommandWrite? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return QuoteCreateQuoteCommandWrite(
      amountExcludingTax: PriceWrite.fromJson(json[r'amountExcludingTax'])!,
      amountIncludingTax: PriceWrite.fromJson(json[r'amountIncludingTax'])!,
      equipments: json[r'equipments'] == null
          ? null
          : List<String>.from(json[r'equipments']),
      expirationDate: mapToDateTime(json[r'expirationDate']),
      files: List<String>.from(json[r'files']),
      issueDate: mapToDateTime(json[r'issueDate'])!,
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
      task: json[r'task'],
    );
  }

  PriceWrite amountExcludingTax;

  PriceWrite amountIncludingTax;

  List<String>? equipments;

  DateTime? expirationDate;

  List<String> files;

  DateTime issueDate;

  String? member;

  ContactPointWrite? memberContactPoint;

  String name;

  String number;

  ///
  Map<String, Object?>? origin;

  String place;

  String? provider;

  PostalAddressWrite? providerAddress;

  ContactPointWrite? providerContactPoint;

  DateTime? resolutionDate;

  String? state;

  String? task;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is QuoteCreateQuoteCommandWrite &&
        other.amountExcludingTax == amountExcludingTax &&
        other.amountIncludingTax == amountIncludingTax &&
        DeepCollectionEquality.unordered()
            .equals(equipments, other.equipments) &&
        other.expirationDate == expirationDate &&
        DeepCollectionEquality.unordered().equals(files, other.files) &&
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
        other.task == task;
  }

  @override
  int get hashCode =>
      amountExcludingTax.hashCode +
      amountIncludingTax.hashCode +
      (equipments == null ? 0 : equipments.hashCode) +
      (expirationDate == null ? 0 : expirationDate.hashCode) +
      files.hashCode +
      issueDate.hashCode +
      (member == null ? 0 : member.hashCode) +
      (memberContactPoint == null ? 0 : memberContactPoint.hashCode) +
      name.hashCode +
      number.hashCode +
      (origin == null ? 0 : origin.hashCode) +
      place.hashCode +
      (provider == null ? 0 : provider.hashCode) +
      (providerAddress == null ? 0 : providerAddress.hashCode) +
      (providerContactPoint == null ? 0 : providerContactPoint.hashCode) +
      (resolutionDate == null ? 0 : resolutionDate.hashCode) +
      (state == null ? 0 : state.hashCode) +
      (task == null ? 0 : task.hashCode);

  static List<QuoteCreateQuoteCommandWrite> listFromJson(Iterable? json) {
    if (json == null) {
      return <QuoteCreateQuoteCommandWrite>[];
    }

    return json.fold(<QuoteCreateQuoteCommandWrite>[],
        (List<QuoteCreateQuoteCommandWrite> previousValue, element) {
      final QuoteCreateQuoteCommandWrite? object =
          QuoteCreateQuoteCommandWrite.fromJson(element);
      if (object is QuoteCreateQuoteCommandWrite) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, QuoteCreateQuoteCommandWrite> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, QuoteCreateQuoteCommandWrite>{};
    }

    return json.entries.fold(<String, QuoteCreateQuoteCommandWrite>{},
        (Map<String, QuoteCreateQuoteCommandWrite> previousValue, element) {
      final QuoteCreateQuoteCommandWrite? object =
          QuoteCreateQuoteCommandWrite.fromJson(element.value);
      if (object is QuoteCreateQuoteCommandWrite) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of QuoteCreateQuoteCommandWrite-objects as value to a dart map
  static Map<String, List<QuoteCreateQuoteCommandWrite>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<QuoteCreateQuoteCommandWrite>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<QuoteCreateQuoteCommandWrite>>(
          key, QuoteCreateQuoteCommandWrite.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'QuoteCreateQuoteCommandWrite[amountExcludingTax=$amountExcludingTax, amountIncludingTax=$amountIncludingTax, equipments=$equipments, expirationDate=$expirationDate, files=$files, issueDate=$issueDate, member=$member, memberContactPoint=$memberContactPoint, name=$name, number=$number, origin=$origin, place=$place, provider=$provider, providerAddress=$providerAddress, providerContactPoint=$providerContactPoint, resolutionDate=$resolutionDate, state=$state, task=$task]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
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
      if (keys == null || keys.contains(r'equipments'))
        r'equipments': equipments,
      if (keys == null || keys.contains(r'expirationDate'))
        r'expirationDate': expirationDate?.toUtc().toIso8601String(),
      r'files': files,
      r'issueDate': issueDate.toUtc().toIso8601String(),
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
      r'name': name,
      r'number': number,
      if (keys == null || keys.contains(r'origin')) r'origin': origin,
      r'place': place,
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
      if (keys == null || keys.contains(r'task')) r'task': task,
    };
  }
}
