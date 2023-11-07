//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationLinksFeedback {
  /// Returns a new [OperationLinksFeedback] instance.
  OperationLinksFeedback({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OperationLinksFeedback] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationLinksFeedback? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OperationLinksFeedback(
      href: json[r'href'],
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : OperationLinksFeedbackIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the feedback associated to the given operation.
  String? href;

  OperationLinksFeedbackIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksFeedback &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<OperationLinksFeedback> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <OperationLinksFeedback>[];
    }

    return json.fold(<OperationLinksFeedback>[],
        (List<OperationLinksFeedback> previousValue, element) {
      final OperationLinksFeedback? object =
          OperationLinksFeedback.fromJson(element);
      if (object is OperationLinksFeedback) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OperationLinksFeedback> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationLinksFeedback>{};
    }

    return json.entries.fold(<String, OperationLinksFeedback>{},
        (Map<String, OperationLinksFeedback> previousValue, element) {
      final OperationLinksFeedback? object =
          OperationLinksFeedback.fromJson(element.value);
      if (object is OperationLinksFeedback) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OperationLinksFeedback-objects as value to a dart map
  static Map<String, List<OperationLinksFeedback>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OperationLinksFeedback>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OperationLinksFeedback>>(
          key, OperationLinksFeedback.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OperationLinksFeedback[href=$href, iriTemplate=$iriTemplate]';

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
