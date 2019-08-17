part of keyclic_sdk_api.api;

class DelegationLinksSelfIriTemplateMapping {
  DelegationLinksSelfIriTemplateMapping({
    this.delegation,
  });

  DelegationLinksSelfIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    delegation = json['delegation'];
  }

  String delegation;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is DelegationLinksSelfIriTemplateMapping &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<DelegationLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<DelegationLinksSelfIriTemplateMapping>()
        : json
            .map((value) =>
                DelegationLinksSelfIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, DelegationLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DelegationLinksSelfIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegationLinksSelfIriTemplateMapping.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'delegation': delegation,
    };
  }

  @override
  String toString() {
    return 'DelegationLinksSelfIriTemplateMapping[delegation=$delegation, ]';
  }
}