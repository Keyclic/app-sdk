//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Rule {
  /// Returns a new [Rule] instance.
  Rule({
    this.links,
    this.description,
    this.id,
    this.name,
    this.type,
  });

  /// Returns a new [Rule] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Rule? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return Rule(
      links: RuleLinks.fromJson(json[r'_links']),
      description: json[r'description'],
      id: json[r'id'],
      name: json[r'name'],
      type: json[r'type'],
    );
  }

  RuleLinks? links;

  String? description;

  final String? id;

  String? name;

  String? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Rule &&
        other.links == links &&
        other.description == description &&
        other.id == id &&
        other.name == name &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<Rule> listFromJson(Iterable? json) {
    if (json == null) {
      return <Rule>[];
    }

    return json.fold(<Rule>[], (List<Rule> previousValue, element) {
      final Rule? object = Rule.fromJson(element);
      if (object is Rule) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Rule> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Rule>{};
    }

    return json.entries.fold(<String, Rule>{},
        (Map<String, Rule> previousValue, element) {
      final Rule? object = Rule.fromJson(element.value);
      if (object is Rule) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Rule-objects as value to a dart map
  static Map<String, List<Rule>> mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Rule>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Rule>>(key, Rule.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Rule[links=$links, description=$description, id=$id, name=$name, type=$type]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'name')) r'name': name,
      if (keys == null || keys.contains(r'type')) r'type': type,
    };
  }
}
