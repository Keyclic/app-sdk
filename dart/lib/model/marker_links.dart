//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MarkerLinks {
  /// Returns a new [MarkerLinks] instance.
  MarkerLinks({
    this.plan,
    this.self,
  });

  /// Returns a new [MarkerLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MarkerLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MarkerLinks(
      plan: json[r'plan'] is! Map
          ? null
          : MarkerLinksPlan.fromJson(json[r'plan']),
      self: json[r'self'] is! Map
          ? null
          : MarkerLinksSelf.fromJson(json[r'self']),
    );
  }

  MarkerLinksPlan? plan;

  MarkerLinksSelf? self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MarkerLinks && other.plan == plan && other.self == self;
  }

  @override
  int get hashCode =>
      (plan == null ? 0 : plan.hashCode) + (self == null ? 0 : self.hashCode);

  static List<MarkerLinks> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <MarkerLinks>[];
    }

    return json.fold(<MarkerLinks>[],
        (List<MarkerLinks> previousValue, element) {
      final MarkerLinks? object = MarkerLinks.fromJson(element);
      if (object is MarkerLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MarkerLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MarkerLinks>{};
    }

    return json.entries.fold(<String, MarkerLinks>{},
        (Map<String, MarkerLinks> previousValue, element) {
      final MarkerLinks? object = MarkerLinks.fromJson(element.value);
      if (object is MarkerLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MarkerLinks-objects as value to a dart map
  static Map<String, List<MarkerLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MarkerLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MarkerLinks>>(
          key, MarkerLinks.listFromJson(value));
    });
  }

  @override
  String toString() => 'MarkerLinks[plan=$plan, self=$self]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && plan != null) || (keys?.contains(r'plan') ?? false))
        r'plan': plan?.toJson(),
      if ((keys == null && self != null) || (keys?.contains(r'self') ?? false))
        r'self': self?.toJson(),
    };
  }
}
