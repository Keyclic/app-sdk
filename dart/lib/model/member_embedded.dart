part of keyclic_sdk_api.api;

class MemberEmbedded {
  MemberEmbedded({
    this.availableRoles,
  });

  MemberEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    availableRoles = (json['availableRoles'] as List)
        ?.map((item) => item as String)
        ?.toList();
  }

  List<String> availableRoles;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is MemberEmbedded && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<MemberEmbedded> listFromJson(List<dynamic> json) {
    return json == null
        ? List<MemberEmbedded>()
        : json.map((value) => MemberEmbedded.fromJson(value)).toList();
  }

  static Map<String, MemberEmbedded> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MemberEmbedded>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = MemberEmbedded.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'availableRoles': availableRoles,
    };
  }

  @override
  String toString() {
    return 'MemberEmbedded[availableRoles=$availableRoles, ]';
  }
}