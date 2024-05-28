//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class SlaPolicyJsonhalSlaPolicyReadLinks {
  /// Returns a new [SlaPolicyJsonhalSlaPolicyReadLinks] instance.
  SlaPolicyJsonhalSlaPolicyReadLinks({
    this.self,
    this.fromStates,
    this.toStates,
  });

  /// Returns a new [SlaPolicyJsonhalSlaPolicyReadLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SlaPolicyJsonhalSlaPolicyReadLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return SlaPolicyJsonhalSlaPolicyReadLinks(
      self: GetPlaceCollection200ResponseLinksFirst.fromJson(json[r'self']),
      fromStates: GetPlaceCollection200ResponseLinksFirst.listFromJson(
          json[r'fromStates']),
      toStates: GetPlaceCollection200ResponseLinksFirst.listFromJson(
          json[r'toStates']),
    );
  }

  GetPlaceCollection200ResponseLinksFirst? self;

  List<GetPlaceCollection200ResponseLinksFirst>? fromStates;

  List<GetPlaceCollection200ResponseLinksFirst>? toStates;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SlaPolicyJsonhalSlaPolicyReadLinks &&
        other.self == self &&
        DeepCollectionEquality.unordered()
            .equals(fromStates, other.fromStates) &&
        DeepCollectionEquality.unordered().equals(toStates, other.toStates);
  }

  @override
  int get hashCode =>
      (self == null ? 0 : self.hashCode) +
      (fromStates == null ? 0 : fromStates.hashCode) +
      (toStates == null ? 0 : toStates.hashCode);

  static List<SlaPolicyJsonhalSlaPolicyReadLinks> listFromJson(Iterable? json) {
    if (json == null) {
      return <SlaPolicyJsonhalSlaPolicyReadLinks>[];
    }

    return json.fold(<SlaPolicyJsonhalSlaPolicyReadLinks>[],
        (List<SlaPolicyJsonhalSlaPolicyReadLinks> previousValue, element) {
      final SlaPolicyJsonhalSlaPolicyReadLinks? object =
          SlaPolicyJsonhalSlaPolicyReadLinks.fromJson(element);
      if (object is SlaPolicyJsonhalSlaPolicyReadLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SlaPolicyJsonhalSlaPolicyReadLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SlaPolicyJsonhalSlaPolicyReadLinks>{};
    }

    return json.entries.fold(<String, SlaPolicyJsonhalSlaPolicyReadLinks>{},
        (Map<String, SlaPolicyJsonhalSlaPolicyReadLinks> previousValue,
            element) {
      final SlaPolicyJsonhalSlaPolicyReadLinks? object =
          SlaPolicyJsonhalSlaPolicyReadLinks.fromJson(element.value);
      if (object is SlaPolicyJsonhalSlaPolicyReadLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SlaPolicyJsonhalSlaPolicyReadLinks-objects as value to a dart map
  static Map<String, List<SlaPolicyJsonhalSlaPolicyReadLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SlaPolicyJsonhalSlaPolicyReadLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SlaPolicyJsonhalSlaPolicyReadLinks>>(
          key, SlaPolicyJsonhalSlaPolicyReadLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'SlaPolicyJsonhalSlaPolicyReadLinks[self=$self, fromStates=$fromStates, toStates=$toStates]';

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
      if (keys == null || keys.contains(r'fromStates'))
        r'fromStates': fromStates,
      if (keys == null || keys.contains(r'toStates')) r'toStates': toStates,
    };
  }
}
