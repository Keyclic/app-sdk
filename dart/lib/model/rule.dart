//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class Rule {
  /// Returns a new [Rule] instance.
  Rule({
    this.embedded,
    this.links,
    this.id,
    this.type,
  });

  /// Returns a new [Rule] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory Rule.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Rule(
      embedded: RuleEmbedded.fromJson(json[r'_embedded']),
      links: RuleLinks.fromJson(json[r'_links']),
      id: json[r'id'],
      type: json[r'type'],
    );
  }

  RuleEmbedded embedded;

  RuleLinks links;

  String id;

  String type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Rule &&
        other.embedded == embedded &&
        other.links == links &&
        other.id == id &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (embedded == null ? 0 : embedded.hashCode) +
      (links == null ? 0 : links.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<Rule> listFromJson(List<dynamic> json) {
    return <Rule>[
      if (json is List)
        for (dynamic value in json) Rule.fromJson(value),
    ];
  }

  static Map<String, Rule> mapFromJson(Map<String, dynamic> json) {
    return <String, Rule>{
      if (json is Map)
        for (final entry in json.entries) entry.key: Rule.fromJson(entry.value),
    };
  }

  // maps a json object with a list of Rule-objects as value to a dart map
  static Map<String, List<Rule>> mapListFromJson(Map<String, dynamic> json) {
    return <String, List<Rule>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Rule.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'Rule[embedded=$embedded, links=$links, id=$id, type=$type]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
      if (links != null) r'_links': links,
      if (id != null) r'id': id,
      if (type != null) r'type': type,
    };
  }
}
