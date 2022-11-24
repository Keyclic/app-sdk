//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class RuleLinks {
  /// Returns a new [RuleLinks] instance.
  RuleLinks({
    this.self,
  });

  /// Returns a new [RuleLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RuleLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RuleLinks(
      self: RuleLinksSelf.fromJson(json[r'self']),
    );
  }

  RuleLinksSelf? self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleLinks && other.self == self;
  }

  @override
  int get hashCode => (self == null ? 0 : self.hashCode);

  static List<RuleLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <RuleLinks>[];
    }

    return json.fold(<RuleLinks>[], (List<RuleLinks> previousValue, element) {
      final RuleLinks? object = RuleLinks.fromJson(element);
      if (object is RuleLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, RuleLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RuleLinks>{};
    }

    return json.entries.fold(<String, RuleLinks>{},
        (Map<String, RuleLinks> previousValue, element) {
      final RuleLinks? object = RuleLinks.fromJson(element.value);
      if (object is RuleLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of RuleLinks-objects as value to a dart map
  static Map<String, List<RuleLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<RuleLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<RuleLinks>>(
          key, RuleLinks.listFromJson(value));
    });
  }

  @override
  String toString() => 'RuleLinks[self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (self != null) r'self': self,
    };
  }
}
