//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

library keyclic_sdk_api_platform;

import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
// import 'package:logging/logging.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/asset_api.dart';
part 'api/asset_type_api.dart';
part 'api/auth_api.dart';
part 'api/brand_api.dart';
part 'api/business_hours_api.dart';
part 'api/category_api.dart';
part 'api/category_type_api.dart';
part 'api/connector_api.dart';
part 'api/contract_api.dart';
part 'api/contract_type_api.dart';
part 'api/document_type_api.dart';
part 'api/equipment_api.dart';
part 'api/export_api.dart';
part 'api/integration_api.dart';
part 'api/integration_link_api.dart';
part 'api/member_api.dart';
part 'api/metric_api.dart';
part 'api/place_api.dart';
part 'api/publication_api.dart';
part 'api/review_api.dart';
part 'api/service_offer_api.dart';
part 'api/sla_policy_api.dart';
part 'api/target_group_api.dart';
part 'api/ticket_api.dart';
part 'api/ticket_type_api.dart';
part 'api/workflow_state_api.dart';
part 'api/workflow_transition_api.dart';

part 'model/archiving_jsonhal_organization_preference_read.dart';
part 'model/archiving_jsonhal_organization_preference_read_links.dart';
part 'model/archiving_organization_preference_read.dart';
part 'model/asset_jsonhal_read.dart';
part 'model/asset_jsonhal_read_links.dart';
part 'model/asset_read.dart';
part 'model/asset_type_jsonhal_read.dart';
part 'model/asset_type_read.dart';
part 'model/assignment_jsonhal_read.dart';
part 'model/assignment_jsonhal_read_links.dart';
part 'model/assignment_read.dart';
part 'model/billing_jsonhal_read.dart';
part 'model/billing_read.dart';
part 'model/billing_write.dart';
part 'model/brand_jsonhal_read.dart';
part 'model/brand_read.dart';
part 'model/business_hours_jsonhal_read.dart';
part 'model/business_hours_read.dart';
part 'model/category_jsonhal_read.dart';
part 'model/category_jsonhal_read_embedded.dart';
part 'model/category_jsonhal_read_links.dart';
part 'model/category_read.dart';
part 'model/category_type_jsonhal_read.dart';
part 'model/category_type_read.dart';
part 'model/condition_jsonhal_read.dart';
part 'model/condition_read.dart';
part 'model/connection_auth_profile_read.dart';
part 'model/connection_jsonhal_auth_profile_read.dart';
part 'model/connector_jsonhal_read.dart';
part 'model/connector_read.dart';
part 'model/contact_point_jsonhal_read.dart';
part 'model/contact_point_read.dart';
part 'model/contract_create_contract_command_write.dart';
part 'model/contract_edit_contract_command_write.dart';
part 'model/contract_jsonhal_organization_preference_read.dart';
part 'model/contract_jsonhal_read.dart';
part 'model/contract_jsonhal_read_links.dart';
part 'model/contract_organization_preference_read.dart';
part 'model/contract_read.dart';
part 'model/contract_type_jsonhal_read.dart';
part 'model/contract_type_read.dart';
part 'model/document_type_jsonhal_read.dart';
part 'model/document_type_read.dart';
part 'model/duration_jsonhal_read.dart';
part 'model/duration_read.dart';
part 'model/equipment_create_equipment_command_write.dart';
part 'model/equipment_edit_equipment_command_write.dart';
part 'model/equipment_jsonhal_organization_preference_read.dart';
part 'model/equipment_jsonhal_read.dart';
part 'model/equipment_jsonhal_read_links.dart';
part 'model/equipment_organization_preference_read.dart';
part 'model/equipment_read.dart';
part 'model/export_jsonhal_read.dart';
part 'model/export_read.dart';
part 'model/feedback_jsonhal_read.dart';
part 'model/feedback_jsonhal_read_links.dart';
part 'model/feedback_read.dart';
part 'model/form_jsonhal_organization_preference_read.dart';
part 'model/form_organization_preference_read.dart';
part 'model/geo_coordinates_jsonhal_read.dart';
part 'model/geo_coordinates_read.dart';
part 'model/get_asset_collection200_response.dart';
part 'model/get_asset_collection200_response_embedded.dart';
part 'model/get_asset_type_collection200_response.dart';
part 'model/get_asset_type_collection200_response_embedded.dart';
part 'model/get_auth_token200_response.dart';
part 'model/get_auth_token_request.dart';
part 'model/get_brand_collection200_response.dart';
part 'model/get_brand_collection200_response_embedded.dart';
part 'model/get_business_hours_collection200_response.dart';
part 'model/get_business_hours_collection200_response_embedded.dart';
part 'model/get_category_collection200_response.dart';
part 'model/get_category_collection200_response_embedded.dart';
part 'model/get_category_type_collection200_response.dart';
part 'model/get_category_type_collection200_response_embedded.dart';
part 'model/get_contract_collection200_response.dart';
part 'model/get_contract_collection200_response_embedded.dart';
part 'model/get_contract_type_collection200_response.dart';
part 'model/get_contract_type_collection200_response_embedded.dart';
part 'model/get_equipment_collection200_response.dart';
part 'model/get_equipment_collection200_response_embedded.dart';
part 'model/get_export_collection200_response.dart';
part 'model/get_export_collection200_response_embedded.dart';
part 'model/get_integration_collection200_response.dart';
part 'model/get_integration_collection200_response_embedded.dart';
part 'model/get_integration_link_collection200_response.dart';
part 'model/get_integration_link_collection200_response_embedded.dart';
part 'model/get_member_collection200_response.dart';
part 'model/get_member_collection200_response_embedded.dart';
part 'model/get_place_collection200_response.dart';
part 'model/get_place_collection200_response_embedded.dart';
part 'model/get_place_collection200_response_links.dart';
part 'model/get_place_collection200_response_links_first.dart';
part 'model/get_place_collection200_response_links_self.dart';
part 'model/get_publication_collection200_response.dart';
part 'model/get_publication_collection200_response_embedded.dart';
part 'model/get_review_collection200_response.dart';
part 'model/get_review_collection200_response_embedded.dart';
part 'model/get_sla_policy_collection200_response.dart';
part 'model/get_sla_policy_collection200_response_embedded.dart';
part 'model/get_ticket_collection200_response.dart';
part 'model/get_ticket_collection200_response_embedded.dart';
part 'model/get_ticket_document_types200_response.dart';
part 'model/get_ticket_document_types200_response_embedded.dart';
part 'model/get_ticket_metrics200_response.dart';
part 'model/get_ticket_metrics200_response_embedded.dart';
part 'model/get_ticket_target_groups200_response.dart';
part 'model/get_ticket_target_groups200_response_embedded.dart';
part 'model/get_ticket_type_collection200_response.dart';
part 'model/get_ticket_type_collection200_response_embedded.dart';
part 'model/get_ticket_workflow_transitions200_response.dart';
part 'model/get_ticket_workflow_transitions200_response_embedded.dart';
part 'model/integration_integration_read.dart';
part 'model/integration_jsonhal_integration_read.dart';
part 'model/integration_jsonhal_integration_read_links.dart';
part 'model/integration_link_create_link_command_write.dart';
part 'model/integration_link_edit_link_command_write.dart';
part 'model/integration_link_jsonhal_read.dart';
part 'model/integration_link_read.dart';
part 'model/marker_jsonhal_read.dart';
part 'model/marker_read.dart';
part 'model/member_jsonhal_read.dart';
part 'model/member_jsonhal_read_embedded.dart';
part 'model/member_jsonhal_read_links.dart';
part 'model/member_read.dart';
part 'model/metric_jsonhal_read.dart';
part 'model/metric_read.dart';
part 'model/node_jsonhal_read.dart';
part 'model/node_read.dart';
part 'model/organization_jsonhal_read.dart';
part 'model/organization_jsonhal_read_links.dart';
part 'model/organization_read.dart';
part 'model/person_jsonhal_read.dart';
part 'model/person_read.dart';
part 'model/place_jsonhal_read.dart';
part 'model/place_read.dart';
part 'model/point_jsonhal_read.dart';
part 'model/point_read.dart';
part 'model/postal_address_jsonhal_read.dart';
part 'model/postal_address_read.dart';
part 'model/preferences_asset_read.dart';
part 'model/preferences_jsonhal_asset_read.dart';
part 'model/preferences_jsonhal_organization_read.dart';
part 'model/preferences_organization_read.dart';
part 'model/price_jsonhal_read.dart';
part 'model/price_read.dart';
part 'model/price_write.dart';
part 'model/profile_auth_profile_read.dart';
part 'model/profile_jsonhal_auth_profile_read.dart';
part 'model/profile_profile_input.dart';
part 'model/publication_jsonhal_read.dart';
part 'model/publication_jsonhal_read_embedded.dart';
part 'model/publication_jsonhal_read_links.dart';
part 'model/publication_read.dart';
part 'model/reference_jsonhal_organization_preference_read.dart';
part 'model/reference_organization_preference_read.dart';
part 'model/renewal_jsonhal_read.dart';
part 'model/renewal_read.dart';
part 'model/renewal_write.dart';
part 'model/review_jsonhal_organization_preference_read.dart';
part 'model/review_jsonhal_read.dart';
part 'model/review_jsonhal_read_links.dart';
part 'model/review_organization_preference_read.dart';
part 'model/review_read.dart';
part 'model/role_jsonhal_read.dart';
part 'model/role_read.dart';
part 'model/service_offer_create_offer_command_write.dart';
part 'model/service_offer_jsonhal_read.dart';
part 'model/service_offer_jsonhal_read_links.dart';
part 'model/service_offer_read.dart';
part 'model/sla_jsonhal_organization_preference_read.dart';
part 'model/sla_organization_preference_read.dart';
part 'model/sla_policy_jsonhal_read.dart';
part 'model/sla_policy_jsonhal_read_embedded.dart';
part 'model/sla_policy_jsonhal_read_links.dart';
part 'model/sla_policy_read.dart';
part 'model/target_group_jsonhal_read.dart';
part 'model/target_group_read.dart';
part 'model/ticket_create_ticket_command_write.dart';
part 'model/ticket_edit_ticket_command_write.dart';
part 'model/ticket_jsonhal_read.dart';
part 'model/ticket_jsonhal_read_embedded.dart';
part 'model/ticket_jsonhal_read_links.dart';
part 'model/ticket_priority_jsonhal_read.dart';
part 'model/ticket_priority_read.dart';
part 'model/ticket_read.dart';
part 'model/ticket_type_jsonhal_read.dart';
part 'model/ticket_type_read.dart';
part 'model/user_auth_profile_read.dart';
part 'model/user_jsonhal_auth_profile_read.dart';
part 'model/warranty_jsonhal_read.dart';
part 'model/warranty_read.dart';
part 'model/warranty_write.dart';
part 'model/workflow_state_jsonhal_read.dart';
part 'model/workflow_state_read.dart';
part 'model/workflow_transition_jsonhal_read.dart';
part 'model/workflow_transition_jsonhal_read_embedded.dart';
part 'model/workflow_transition_read.dart';

final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiPlatformClient defaultApiClient = ApiPlatformClient();
