//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Run {
  /// Returns a new [Run] instance.
  Run({
    this.children = const [],
    this.error,
    this.name,
    this.result,
    this.state,
  });

  /// Returns a new [Run] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Run? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Run(
      children: Run.listFromJson(json[r'children']),
      error: json[r'error'],
      name: json[r'name'],
      result: json[r'result'] == null
          ? null
          : Map<String, Object>.from(json[r'result']),
      state: json[r'state'],
    );
  }

  List<Run>? children;

  String? error;

  String? name;

  Map<String, Object>? result;

  String? state;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Run &&
        DeepCollectionEquality.unordered().equals(children, other.children) &&
        other.error == error &&
        other.name == name &&
        other.result == result &&
        other.state == state;
  }

  @override
  int get hashCode =>
      (children == null ? 0 : children.hashCode) +
      (error == null ? 0 : error.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (result == null ? 0 : result.hashCode) +
      (state == null ? 0 : state.hashCode);

  static List<Run> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Run>[];
    }

    return json.fold(<Run>[], (List<Run> previousValue, element) {
      final Run? object = Run.fromJson(element);
      if (object is Run) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Run> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Run>{};
    }

    return json.entries.fold(<String, Run>{},
        (Map<String, Run> previousValue, element) {
      final Run? object = Run.fromJson(element.value);
      if (object is Run) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Run-objects as value to a dart map
  static Map<String, List<Run>> mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Run>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Run>>(key, Run.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Run[children=$children, error=$error, name=$name, result=$result, state=$state]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (children != null) r'children': children,
      if (error != null) r'error': error,
      if (name != null) r'name': name,
      if (result != null) r'result': result,
      if (state != null) r'state': state,
    };
  }
}
