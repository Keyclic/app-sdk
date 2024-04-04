//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SectionLinks {
  /// Returns a new [SectionLinks] instance.
  SectionLinks({
    this.self,
  });

  /// Returns a new [SectionLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SectionLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return SectionLinks(
      self: SectionLinksSelf.fromJson(json[r'self']),
    );
  }

  SectionLinksSelf? self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SectionLinks && other.self == self;
  }

  @override
  int get hashCode => (self == null ? 0 : self.hashCode);

  static List<SectionLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <SectionLinks>[];
    }

    return json.fold(<SectionLinks>[],
        (List<SectionLinks> previousValue, element) {
      final SectionLinks? object = SectionLinks.fromJson(element);
      if (object is SectionLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SectionLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SectionLinks>{};
    }

    return json.entries.fold(<String, SectionLinks>{},
        (Map<String, SectionLinks> previousValue, element) {
      final SectionLinks? object = SectionLinks.fromJson(element.value);
      if (object is SectionLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SectionLinks-objects as value to a dart map
  static Map<String, List<SectionLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SectionLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SectionLinks>>(
          key, SectionLinks.listFromJson(value));
    });
  }

  @override
  String toString() => 'SectionLinks[self=$self]';

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
    };
  }
}
