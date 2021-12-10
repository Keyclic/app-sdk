part of keyclic_sdk_api.api;

class Run {
  Run({
    this.children,
    this.error,
    this.name,
    this.result,
    this.state,
  });

  factory Run.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Run(
      children: Run.listFromJson(json['children']),
      error: json['error'],
      name: json['name'],
      result: json['result'],
      state: json['state'],
    );
  }

  List<Run> children;

  String error;

  String name;

  Map<String, dynamic> result;

  String state;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Run &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(children, other.children) &&
        error == other.error &&
        name == other.name &&
        result == other.result &&
        state == other.state;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (children is List && children.isNotEmpty) {
      hashCode ^= children
          .map((Run element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= error?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= result?.hashCode ?? 0;
    hashCode ^= state?.hashCode ?? 0;

    return hashCode;
  }

  static List<Run> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Run.fromJson(value))?.toList() ??
        <Run>[];
  }

  static Map<String, Run> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Run>((String key, dynamic value) {
          return MapEntry(key, Run.fromJson(value));
        }) ??
        <String, Run>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (children != null) 'children': children,
      if (error != null) 'error': error,
      if (name != null) 'name': name,
      if (result != null) 'result': result.toJson(),
      if (state != null) 'state': state,
    };
  }

  @override
  String toString() {
    return 'Run[children=$children, error=$error, name=$name, result=$result, state=$state, ]';
  }
}
