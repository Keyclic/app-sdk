//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetTicketWorkflowTransitions200ResponseEmbedded {
  /// Returns a new [GetTicketWorkflowTransitions200ResponseEmbedded] instance.
  GetTicketWorkflowTransitions200ResponseEmbedded({
    this.item = const [],
  });

  /// Returns a new [GetTicketWorkflowTransitions200ResponseEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetTicketWorkflowTransitions200ResponseEmbedded? fromJson(
      Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetTicketWorkflowTransitions200ResponseEmbedded(
      item: WorkflowTransitionJsonhalRead.listFromJson(json[r'item']),
    );
  }

  List<WorkflowTransitionJsonhalRead> item;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetTicketWorkflowTransitions200ResponseEmbedded &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode => item.hashCode;

  static List<GetTicketWorkflowTransitions200ResponseEmbedded> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <GetTicketWorkflowTransitions200ResponseEmbedded>[];
    }

    return json.fold(<GetTicketWorkflowTransitions200ResponseEmbedded>[],
        (List<GetTicketWorkflowTransitions200ResponseEmbedded> previousValue,
            element) {
      final GetTicketWorkflowTransitions200ResponseEmbedded? object =
          GetTicketWorkflowTransitions200ResponseEmbedded.fromJson(element);
      if (object is GetTicketWorkflowTransitions200ResponseEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetTicketWorkflowTransitions200ResponseEmbedded>
      mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetTicketWorkflowTransitions200ResponseEmbedded>{};
    }

    return json.entries
        .fold(<String, GetTicketWorkflowTransitions200ResponseEmbedded>{},
            (Map<String, GetTicketWorkflowTransitions200ResponseEmbedded>
                    previousValue,
                element) {
      final GetTicketWorkflowTransitions200ResponseEmbedded? object =
          GetTicketWorkflowTransitions200ResponseEmbedded.fromJson(
              element.value);
      if (object is GetTicketWorkflowTransitions200ResponseEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetTicketWorkflowTransitions200ResponseEmbedded-objects as value to a dart map
  static Map<String, List<GetTicketWorkflowTransitions200ResponseEmbedded>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetTicketWorkflowTransitions200ResponseEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String,
              List<GetTicketWorkflowTransitions200ResponseEmbedded>>(key,
          GetTicketWorkflowTransitions200ResponseEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GetTicketWorkflowTransitions200ResponseEmbedded[item=$item]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'item': item,
    };
  }
}
