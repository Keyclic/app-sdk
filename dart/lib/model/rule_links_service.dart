//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class RuleLinksService {
  /// Returns a new [RuleLinksService] instance.
  RuleLinksService({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [RuleLinksService] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RuleLinksService? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RuleLinksService(
      href: json[r'href'],
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : RuleLinksServiceIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the service associated to the given rule.
  String? href;

  RuleLinksServiceIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleLinksService &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<RuleLinksService> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <RuleLinksService>[];
    }

    return json.fold(<RuleLinksService>[],
        (List<RuleLinksService> previousValue, element) {
      final RuleLinksService? object = RuleLinksService.fromJson(element);
      if (object is RuleLinksService) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, RuleLinksService> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RuleLinksService>{};
    }

    return json.entries.fold(<String, RuleLinksService>{},
        (Map<String, RuleLinksService> previousValue, element) {
      final RuleLinksService? object = RuleLinksService.fromJson(element.value);
      if (object is RuleLinksService) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of RuleLinksService-objects as value to a dart map
  static Map<String, List<RuleLinksService>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<RuleLinksService>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<RuleLinksService>>(
          key, RuleLinksService.listFromJson(value));
    });
  }

  @override
  String toString() => 'RuleLinksService[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && href != null) || (keys?.contains(r'href') ?? false))
        r'href': href,
      if ((keys == null && iriTemplate != null) ||
          (keys?.contains(r'iriTemplate') ?? false))
        r'iriTemplate': iriTemplate?.toJson(),
    };
  }
}
