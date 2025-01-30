//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class QuoteJsonhalReadLinks {
  /// Returns a new [QuoteJsonhalReadLinks] instance.
  QuoteJsonhalReadLinks({
    this.self,
    this.member,
    this.provider,
    this.task,
    this.place,
    this.equipments,
  });

  /// Returns a new [QuoteJsonhalReadLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static QuoteJsonhalReadLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return QuoteJsonhalReadLinks(
      self: GetPlaceCollection200ResponseLinksSelf.fromJson(json[r'self']),
      member: GetPlaceCollection200ResponseLinksFirst.fromJson(json[r'member']),
      provider:
          GetPlaceCollection200ResponseLinksFirst.fromJson(json[r'provider']),
      task: GetPlaceCollection200ResponseLinksFirst.fromJson(json[r'task']),
      place: GetPlaceCollection200ResponseLinksSelf.fromJson(json[r'place']),
      equipments: GetPlaceCollection200ResponseLinksSelf.listFromJson(
          json[r'equipments']),
    );
  }

  GetPlaceCollection200ResponseLinksSelf? self;

  GetPlaceCollection200ResponseLinksFirst? member;

  GetPlaceCollection200ResponseLinksFirst? provider;

  GetPlaceCollection200ResponseLinksFirst? task;

  GetPlaceCollection200ResponseLinksSelf? place;

  List<GetPlaceCollection200ResponseLinksSelf>? equipments;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is QuoteJsonhalReadLinks &&
        other.self == self &&
        other.member == member &&
        other.provider == provider &&
        other.task == task &&
        other.place == place &&
        DeepCollectionEquality.unordered().equals(equipments, other.equipments);
  }

  @override
  int get hashCode =>
      (self == null ? 0 : self.hashCode) +
      (member == null ? 0 : member.hashCode) +
      (provider == null ? 0 : provider.hashCode) +
      (task == null ? 0 : task.hashCode) +
      (place == null ? 0 : place.hashCode) +
      (equipments == null ? 0 : equipments.hashCode);

  static List<QuoteJsonhalReadLinks> listFromJson(Iterable? json) {
    if (json == null) {
      return <QuoteJsonhalReadLinks>[];
    }

    return json.fold(<QuoteJsonhalReadLinks>[],
        (List<QuoteJsonhalReadLinks> previousValue, element) {
      final QuoteJsonhalReadLinks? object =
          QuoteJsonhalReadLinks.fromJson(element);
      if (object is QuoteJsonhalReadLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, QuoteJsonhalReadLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, QuoteJsonhalReadLinks>{};
    }

    return json.entries.fold(<String, QuoteJsonhalReadLinks>{},
        (Map<String, QuoteJsonhalReadLinks> previousValue, element) {
      final QuoteJsonhalReadLinks? object =
          QuoteJsonhalReadLinks.fromJson(element.value);
      if (object is QuoteJsonhalReadLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of QuoteJsonhalReadLinks-objects as value to a dart map
  static Map<String, List<QuoteJsonhalReadLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<QuoteJsonhalReadLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<QuoteJsonhalReadLinks>>(
          key, QuoteJsonhalReadLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'QuoteJsonhalReadLinks[self=$self, member=$member, provider=$provider, task=$task, place=$place, equipments=$equipments]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^self\.').hasMatch(key)))
        r'self': self?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^self\.'))) {
            previousValue.add(element.split(RegExp(r'^self\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^member\.').hasMatch(key)))
        r'member': member?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^member\.'))) {
            previousValue.add(element.split(RegExp(r'^member\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^provider\.').hasMatch(key)))
        r'provider': provider?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^provider\.'))) {
            previousValue.add(element.split(RegExp(r'^provider\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^task\.').hasMatch(key)))
        r'task': task?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^task\.'))) {
            previousValue.add(element.split(RegExp(r'^task\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^place\.').hasMatch(key)))
        r'place': place?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^place\.'))) {
            previousValue.add(element.split(RegExp(r'^place\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'equipments'))
        r'equipments': equipments,
    };
  }
}
