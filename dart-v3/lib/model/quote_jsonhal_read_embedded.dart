//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class QuoteJsonhalReadEmbedded {
  /// Returns a new [QuoteJsonhalReadEmbedded] instance.
  QuoteJsonhalReadEmbedded({
    this.equipments,
    this.files,
    this.state,
  });

  /// Returns a new [QuoteJsonhalReadEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static QuoteJsonhalReadEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return QuoteJsonhalReadEmbedded(
      equipments: json[r'equipments'] == null
          ? null
          : List<String>.from(json[r'equipments']),
      files: json[r'files'] == null ? null : List<String>.from(json[r'files']),
      state: WorkflowStateJsonhalRead.fromJson(json[r'state']),
    );
  }

  /// A list of physical or logical items (e.g., devices, resources) associated with the quote.
  List<String>? equipments;

  /// A list of pdfs files representing the quote.
  List<String>? files;

  WorkflowStateJsonhalRead? state;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is QuoteJsonhalReadEmbedded &&
        DeepCollectionEquality.unordered()
            .equals(equipments, other.equipments) &&
        DeepCollectionEquality.unordered().equals(files, other.files) &&
        other.state == state;
  }

  @override
  int get hashCode =>
      (equipments == null ? 0 : equipments.hashCode) +
      (files == null ? 0 : files.hashCode) +
      (state == null ? 0 : state.hashCode);

  static List<QuoteJsonhalReadEmbedded> listFromJson(Iterable? json) {
    if (json == null) {
      return <QuoteJsonhalReadEmbedded>[];
    }

    return json.fold(<QuoteJsonhalReadEmbedded>[],
        (List<QuoteJsonhalReadEmbedded> previousValue, element) {
      final QuoteJsonhalReadEmbedded? object =
          QuoteJsonhalReadEmbedded.fromJson(element);
      if (object is QuoteJsonhalReadEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, QuoteJsonhalReadEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, QuoteJsonhalReadEmbedded>{};
    }

    return json.entries.fold(<String, QuoteJsonhalReadEmbedded>{},
        (Map<String, QuoteJsonhalReadEmbedded> previousValue, element) {
      final QuoteJsonhalReadEmbedded? object =
          QuoteJsonhalReadEmbedded.fromJson(element.value);
      if (object is QuoteJsonhalReadEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of QuoteJsonhalReadEmbedded-objects as value to a dart map
  static Map<String, List<QuoteJsonhalReadEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<QuoteJsonhalReadEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<QuoteJsonhalReadEmbedded>>(
          key, QuoteJsonhalReadEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'QuoteJsonhalReadEmbedded[equipments=$equipments, files=$files, state=$state]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'equipments'))
        r'equipments': equipments,
      if (keys == null || keys.contains(r'files')) r'files': files,
      if (keys == null || keys.any((key) => RegExp(r'^state\.').hasMatch(key)))
        r'state': state?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^state\.'))) {
            previousValue.add(element.split(RegExp(r'^state\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
