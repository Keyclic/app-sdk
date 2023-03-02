//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class RuleLinks {
  /// Returns a new [RuleLinks] instance.
  RuleLinks({
    this.self,
  });

  /// Returns a new [RuleLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory RuleLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return RuleLinks(
      self: RuleLinksSelf.fromJson(json[r'self']),
    );
  }

  RuleLinksSelf self;

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

  static List<RuleLinks> listFromJson(List<dynamic> json) {
    return <RuleLinks>[
      if (json is List)
        for (dynamic value in json) RuleLinks.fromJson(value),
    ];
  }

  static Map<String, RuleLinks> mapFromJson(Map<String, dynamic> json) {
    return <String, RuleLinks>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: RuleLinks.fromJson(entry.value),
    };
  }

  // maps a json object with a list of RuleLinks-objects as value to a dart map
  static Map<String, List<RuleLinks>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<RuleLinks>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: RuleLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'RuleLinks[self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (self != null) r'self': self,
    };
  }
}
