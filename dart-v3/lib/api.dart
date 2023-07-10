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
part 'api/brand_api.dart';
part 'api/contract_api.dart';
part 'api/contract_type_api.dart';
part 'api/equipment_api.dart';
part 'api/integration_api.dart';
part 'api/integration_link_api.dart';
part 'api/ticket_api.dart';
part 'api/ticket_type_api.dart';
part 'api/workflow_state_api.dart';

part 'model/asset_jsonhal_read.dart';
part 'model/asset_jsonhal_read_links.dart';
part 'model/asset_read.dart';
part 'model/asset_type_jsonhal_read.dart';
part 'model/asset_type_jsonhal_read_links.dart';
part 'model/asset_type_read.dart';
part 'model/billing_data.dart';
part 'model/billing_jsonhal_read.dart';
part 'model/billing_read.dart';
part 'model/brand_jsonhal_read.dart';
part 'model/brand_read.dart';
part 'model/contract_create_contract_command_data.dart';
part 'model/contract_create_contract_command_data_billing.dart';
part 'model/contract_create_contract_command_data_renewal.dart';
part 'model/contract_edit_contract_command_data.dart';
part 'model/contract_jsonhal_read.dart';
part 'model/contract_jsonhal_read_links.dart';
part 'model/contract_read.dart';
part 'model/contract_type_jsonhal_read.dart';
part 'model/contract_type_read.dart';
part 'model/equipment_create_equipment_command_data.dart';
part 'model/equipment_create_equipment_command_data_warranty.dart';
part 'model/equipment_edit_equipment_command_data.dart';
part 'model/equipment_jsonhal_read.dart';
part 'model/equipment_jsonhal_read_links.dart';
part 'model/equipment_read.dart';
part 'model/get_asset_types200_response.dart';
part 'model/get_asset_types200_response_embedded.dart';
part 'model/get_asset_types200_response_links.dart';
part 'model/get_asset_types200_response_links_first.dart';
part 'model/get_asset_types200_response_links_self.dart';
part 'model/get_assets200_response.dart';
part 'model/get_assets200_response_embedded.dart';
part 'model/get_brands200_response.dart';
part 'model/get_brands200_response_embedded.dart';
part 'model/get_contract_types200_response.dart';
part 'model/get_contract_types200_response_embedded.dart';
part 'model/get_contracts200_response.dart';
part 'model/get_contracts200_response_embedded.dart';
part 'model/get_equipments200_response.dart';
part 'model/get_equipments200_response_embedded.dart';
part 'model/get_integration_links200_response.dart';
part 'model/get_integration_links200_response_embedded.dart';
part 'model/get_integrations200_response.dart';
part 'model/get_integrations200_response_embedded.dart';
part 'model/get_ticket_types200_response.dart';
part 'model/get_ticket_types200_response_embedded.dart';
part 'model/get_tickets200_response.dart';
part 'model/get_tickets200_response_embedded.dart';
part 'model/integration_integration_read.dart';
part 'model/integration_jsonhal_integration_read.dart';
part 'model/integration_link_create_link_command_data.dart';
part 'model/integration_link_edit_link_command_data.dart';
part 'model/integration_link_jsonhal_read.dart';
part 'model/integration_link_read.dart';
part 'model/price_data.dart';
part 'model/price_jsonhal_read.dart';
part 'model/price_read.dart';
part 'model/renewal_data.dart';
part 'model/renewal_jsonhal_read.dart';
part 'model/renewal_read.dart';
part 'model/ticket_jsonhal_read.dart';
part 'model/ticket_read.dart';
part 'model/ticket_type_jsonhal_read.dart';
part 'model/ticket_type_read.dart';
part 'model/warranty_data.dart';
part 'model/warranty_jsonhal_read.dart';
part 'model/warranty_read.dart';
part 'model/workflow_state_jsonhal_read.dart';
part 'model/workflow_state_read.dart';

final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiPlatformClient defaultApiClient = ApiPlatformClient();