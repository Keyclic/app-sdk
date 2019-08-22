part of keyclic_sdk_api.api;

class PublicationLinksOrganization {
  PublicationLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  PublicationLinksOrganization.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        PublicationLinksOrganizationIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the organization associated to the given publication. */
  String href;

  PublicationLinksOrganizationIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationLinksOrganization &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ href.hashCode ^ iriTemplate.hashCode;

  static List<PublicationLinksOrganization> listFromJson(List<dynamic> json) {
    return json == null
        ? <PublicationLinksOrganization>[]
        : json
            .map((value) => PublicationLinksOrganization.fromJson(value))
            .toList();
  }

  static Map<String, PublicationLinksOrganization> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PublicationLinksOrganization>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PublicationLinksOrganization.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'PublicationLinksOrganization[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
