//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationLinksOperator {
  /// Returns a new [OperationLinksOperator] instance.
  OperationLinksOperator({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OperationLinksOperator] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationLinksOperator? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return OperationLinksOperator(
      href: json[r'href'],
      iriTemplate:
          OperationLinksOperatorIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the operator associated to the given operation.
  String? href;

  OperationLinksOperatorIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksOperator &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<OperationLinksOperator> listFromJson(Iterable? json) {
    if (json == null) {
      return <OperationLinksOperator>[];
    }

    return json.fold(<OperationLinksOperator>[],
        (List<OperationLinksOperator> previousValue, element) {
      final OperationLinksOperator? object =
          OperationLinksOperator.fromJson(element);
      if (object is OperationLinksOperator) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OperationLinksOperator> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationLinksOperator>{};
    }

    return json.entries.fold(<String, OperationLinksOperator>{},
        (Map<String, OperationLinksOperator> previousValue, element) {
      final OperationLinksOperator? object =
          OperationLinksOperator.fromJson(element.value);
      if (object is OperationLinksOperator) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OperationLinksOperator-objects as value to a dart map
  static Map<String, List<OperationLinksOperator>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OperationLinksOperator>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OperationLinksOperator>>(
          key, OperationLinksOperator.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OperationLinksOperator[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'href')) r'href': href,
      if (keys == null ||
          keys.any((key) => RegExp(r'^iriTemplate\.').hasMatch(key)))
        r'iriTemplate': iriTemplate?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^iriTemplate\.'))) {
            previousValue.add(element.split(RegExp(r'^iriTemplate\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
