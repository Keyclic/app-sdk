//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class SlaPolicyJsonhalReadLinks {
  /// Returns a new [SlaPolicyJsonhalReadLinks] instance.
  SlaPolicyJsonhalReadLinks({
    this.self,
    this.fromStates,
    this.toStates,
  });

  /// Returns a new [SlaPolicyJsonhalReadLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SlaPolicyJsonhalReadLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return SlaPolicyJsonhalReadLinks(
      self: GetPlaceCollection200ResponseLinksSelf.fromJson(json[r'self']),
      fromStates: GetPlaceCollection200ResponseLinksSelf.listFromJson(
          json[r'fromStates']),
      toStates: GetPlaceCollection200ResponseLinksSelf.listFromJson(
          json[r'toStates']),
    );
  }

  GetPlaceCollection200ResponseLinksSelf? self;

  List<GetPlaceCollection200ResponseLinksSelf>? fromStates;

  List<GetPlaceCollection200ResponseLinksSelf>? toStates;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SlaPolicyJsonhalReadLinks &&
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

  static List<SlaPolicyJsonhalReadLinks> listFromJson(Iterable? json) {
    if (json == null) {
      return <SlaPolicyJsonhalReadLinks>[];
    }

    return json.fold(<SlaPolicyJsonhalReadLinks>[],
        (List<SlaPolicyJsonhalReadLinks> previousValue, element) {
      final SlaPolicyJsonhalReadLinks? object =
          SlaPolicyJsonhalReadLinks.fromJson(element);
      if (object is SlaPolicyJsonhalReadLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SlaPolicyJsonhalReadLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SlaPolicyJsonhalReadLinks>{};
    }

    return json.entries.fold(<String, SlaPolicyJsonhalReadLinks>{},
        (Map<String, SlaPolicyJsonhalReadLinks> previousValue, element) {
      final SlaPolicyJsonhalReadLinks? object =
          SlaPolicyJsonhalReadLinks.fromJson(element.value);
      if (object is SlaPolicyJsonhalReadLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SlaPolicyJsonhalReadLinks-objects as value to a dart map
  static Map<String, List<SlaPolicyJsonhalReadLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SlaPolicyJsonhalReadLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SlaPolicyJsonhalReadLinks>>(
          key, SlaPolicyJsonhalReadLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'SlaPolicyJsonhalReadLinks[self=$self, fromStates=$fromStates, toStates=$toStates]';

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
