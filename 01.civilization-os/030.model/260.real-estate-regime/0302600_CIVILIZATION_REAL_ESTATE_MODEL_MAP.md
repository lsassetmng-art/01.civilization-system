# ============================================================
# CIVILIZATION REAL ESTATE MODEL MAP
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official model map for CivilizationOS
real-estate rights, registry, and transaction domains.

This model map follows:

- common property object layer
- rights layer
- nation-specific regime layer
- common registry layer
- transaction layer
- company linkage layer

This model map is intended to support:
- democratic ownership systems
- socialist state-lease systems
- military-controlled systems
- imperial grant systems
- hybrid nation-specific systems


# ============================================================
# 1. COMMON PROPERTY OBJECT LAYER
# ============================================================

## 1.1 LAND_PARCEL
purpose:
Canonical land-level property object.

core_fields:
- land_parcel_id
- nation_code
- region_code
- district_code
- property_address_id
- cadastral_boundary_id
- zoning_profile_id
- parcel_status
- parcel_area
- parcel_use_class
- created_at
- updated_at

## 1.2 BUILDING
purpose:
Canonical constructed property object on land parcel(s).

core_fields:
- building_id
- land_parcel_id or parcel_set_ref
- building_type
- building_status
- building_use_class
- construction_state
- occupancy_capacity
- created_at
- updated_at

## 1.3 BUILDING_UNIT
purpose:
Subdivided usable property object inside a building.

core_fields:
- building_unit_id
- building_id
- unit_code
- unit_type
- unit_status
- unit_area
- occupancy_profile_id
- created_at
- updated_at

## 1.4 PROPERTY_ADDRESS
purpose:
Formal location/address object for real-estate records.

core_fields:
- property_address_id
- nation_code
- region_code
- district_code
- formal_address_text
- location_coordinates
- address_status
- created_at
- updated_at

## 1.5 CADASTRAL_BOUNDARY
purpose:
Surveyed cadastral/boundary identity for a parcel.

core_fields:
- cadastral_boundary_id
- land_parcel_id
- survey_version
- boundary_geometry_ref
- boundary_status
- created_at
- updated_at

## 1.6 ZONING_PROFILE
purpose:
Allowed usage profile for parcel/building regulation.

core_fields:
- zoning_profile_id
- nation_code
- zoning_code
- zoning_status
- permitted_use_summary
- restricted_use_summary
- created_at
- updated_at

## 1.7 PROPERTY_USE_CLASS
purpose:
Normalized property class for rights/policy evaluation.

examples:
- residential
- commercial
- industrial
- agricultural
- civic
- military
- strategic_restricted

core_fields:
- property_use_class_id
- use_class_code
- use_class_status
- summary
- created_at
- updated_at


# ============================================================
# 2. RIGHTS LAYER
# ============================================================

## 2.1 PROPERTY_RIGHT
purpose:
Canonical right relation between holder and property object.

core_fields:
- property_right_id
- nation_code
- property_object_type
- property_object_ref
- right_type
- holder_type
- holder_ref
- right_status
- origin_rule_ref
- transferability_rule_ref
- inheritance_rule_ref
- revocation_rule_ref
- issued_at
- expires_at
- created_at
- updated_at

## 2.2 PROPERTY_RIGHT_HOLDER
purpose:
Normalized holder projection for right ownership/use.

core_fields:
- property_right_holder_id
- holder_type
- holder_ref
- holder_status
- display_summary
- created_at
- updated_at

holder_type examples:
- individual
- company
- nation
- state_organ
- noble_house
- military_authority
- public_trust
- cooperative_body

## 2.3 PROPERTY_RIGHT_TYPE
purpose:
Normalized right-type catalog.

examples:
- ownership_right
- co_ownership_right
- lease_right
- tenancy_right
- occupancy_right
- state_allocation_right
- development_right
- commercial_use_right
- agricultural_use_right
- military_use_right
- imperial_grant_right
- easement_right
- lien_right
- mortgage_right

core_fields:
- property_right_type_id
- right_type_code
- right_type_status
- summary
- created_at
- updated_at

## 2.4 PROPERTY_RIGHT_CHAIN_RECORD
purpose:
Chain-of-title / chain-of-right continuity record.

core_fields:
- property_right_chain_record_id
- property_object_type
- property_object_ref
- previous_property_right_id
- current_property_right_id
- chain_event_type
- chain_event_at
- created_at

## 2.5 PROPERTY_ENCUMBRANCE_RECORD
purpose:
Formal burden/encumbrance visibility on property.

core_fields:
- property_encumbrance_record_id
- property_object_type
- property_object_ref
- encumbrance_type
- priority_order
- holder_type
- holder_ref
- encumbrance_status
- effective_from
- effective_to
- created_at
- updated_at

## 2.6 OCCUPANCY_RECORD
purpose:
Track effective occupancy/use separate from title.

core_fields:
- occupancy_record_id
- property_object_type
- property_object_ref
- occupant_type
- occupant_ref
- occupancy_type
- occupancy_status
- effective_from
- effective_to
- created_at
- updated_at


# ============================================================
# 3. NATION-SPECIFIC REGIME LAYER
# ============================================================

## 3.1 NATION_PROPERTY_REGIME
purpose:
Top-level property regime profile for one nation.

core_fields:
- nation_property_regime_id
- nation_code
- regime_type
- regime_status
- default_land_right_model
- default_building_right_model
- foreign_holding_policy_ref
- company_holding_policy_ref
- inheritance_policy_ref
- expropriation_policy_ref
- created_at
- updated_at

## 3.2 NATION_PROPERTY_RIGHT_TYPE_RULE
purpose:
DB-controlled rule for which right types are allowed.

core_fields:
- nation_property_right_type_rule_id
- nation_code
- property_use_class_code
- right_type_code
- rule_status
- allowance_mode
- approval_required
- transferability_mode
- inheritance_mode
- created_at
- updated_at

## 3.3 NATION_PROPERTY_HOLDER_ELIGIBILITY_RULE
purpose:
DB-controlled rule for who may hold what.

core_fields:
- nation_property_holder_eligibility_rule_id
- nation_code
- property_use_class_code
- right_type_code
- holder_type
- eligibility_status
- approval_required
- summary
- created_at
- updated_at

## 3.4 NATION_PROPERTY_TRANSFER_RULE
purpose:
DB-controlled rule for transfer conditions.

core_fields:
- nation_property_transfer_rule_id
- nation_code
- property_use_class_code
- right_type_code
- transfer_mode
- approval_required
- transfer_scope_summary
- created_at
- updated_at

## 3.5 NATION_PROPERTY_EXPROPRIATION_RULE
purpose:
DB-controlled rule for seizure/expropriation.

core_fields:
- nation_property_expropriation_rule_id
- nation_code
- property_use_class_code
- right_type_code
- expropriation_mode
- compensation_mode
- authority_scope_summary
- created_at
- updated_at

## 3.6 NATION_PROPERTY_FOREIGN_HOLDER_RULE
purpose:
DB-controlled foreign/external holder policy.

core_fields:
- nation_property_foreign_holder_rule_id
- nation_code
- property_use_class_code
- holder_origin_type
- right_type_code
- rule_status
- approval_required
- summary
- created_at
- updated_at

## 3.7 NATION_PROPERTY_OVERRIDE_RULE
purpose:
DB-controlled state/military/sovereign override behavior.

core_fields:
- nation_property_override_rule_id
- nation_code
- property_use_class_code
- override_actor_type
- override_mode
- summary
- created_at
- updated_at


# ============================================================
# 4. REGISTRY LAYER
# ============================================================

## 4.1 REAL_ESTATE_REGISTRY_BOOK
purpose:
Canonical registry container for real-estate records.

core_fields:
- real_estate_registry_book_id
- nation_code
- registry_scope
- registry_status
- created_at
- updated_at

## 4.2 REAL_ESTATE_REGISTRY_ENTRY
purpose:
Canonical registry entry for one right over one property object.

core_fields:
- real_estate_registry_entry_id
- real_estate_registry_book_id
- property_object_type
- property_object_ref
- property_right_id
- right_type_code
- holder_type
- holder_ref
- entry_status
- effective_from
- effective_to
- created_at
- updated_at

## 4.3 REAL_ESTATE_REGISTRY_UPDATE_REQUEST
purpose:
Formal request to register or update a right record.

core_fields:
- real_estate_registry_update_request_id
- nation_code
- property_object_ref
- requested_action_type
- source_transaction_ref
- request_status
- created_at
- updated_at


# ============================================================
# 5. TRANSACTION LAYER
# ============================================================

## 5.1 PROPERTY_LISTING
purpose:
Listing for sale/lease/grant/allocation-facing transactions.

core_fields:
- property_listing_id
- nation_code
- property_object_type
- property_object_ref
- offered_right_type
- seller_holder_type
- seller_holder_ref
- listing_status
- listing_price_or_terms
- eligibility_rule_ref
- created_at
- updated_at

## 5.2 PROPERTY_OFFER
purpose:
Offer made against a property listing.

core_fields:
- property_offer_id
- property_listing_id
- buyer_holder_type
- buyer_holder_ref
- offered_terms
- offer_status
- created_at
- updated_at

## 5.3 PROPERTY_CONTRACT
purpose:
Canonical contract for property sale/lease/grant/transfer.

core_fields:
- property_contract_id
- property_listing_id
- seller_holder_ref
- buyer_holder_ref
- contract_type
- settlement_terms
- approval_requirements
- contract_status
- signed_at
- created_at
- updated_at

## 5.4 PROPERTY_CLOSING_RECORD
purpose:
Closing/settlement completion and registry synchronization record.

core_fields:
- property_closing_record_id
- property_contract_id
- settlement_status
- registry_update_status
- transfer_completion_status
- closed_at
- created_at
- updated_at

## 5.5 PROPERTY_DISPUTE
purpose:
Dispute / fraud hold / contested right process.

core_fields:
- property_dispute_id
- nation_code
- property_object_ref
- disputed_property_right_id
- dispute_type
- dispute_status
- freeze_effect
- created_at
- updated_at


# ============================================================
# 6. COMPANY LINKAGE LAYER
# ============================================================

## 6.1 COMPANY_REGISTERED_PREMISES
purpose:
Registered office relation between company and property.

core_fields:
- company_registered_premises_id
- company_ref
- property_object_type
- property_object_ref
- linked_property_right_id
- premises_status
- effective_from
- effective_to
- created_at
- updated_at

## 6.2 COMPANY_OPERATING_PREMISES
purpose:
Operational premises relation between company and property.

core_fields:
- company_operating_premises_id
- company_ref
- property_object_type
- property_object_ref
- linked_property_right_id
- operating_premises_status
- effective_from
- effective_to
- created_at
- updated_at


# ============================================================
# 7. SUPPORTING POLICY / EVALUATION MODELS
# ============================================================

## 7.1 PROPERTY_TRANSACTION_ELIGIBILITY_EVALUATION
purpose:
Persisted or computed evaluation result for a pending transaction.

core_fields:
- property_transaction_eligibility_evaluation_id
- nation_code
- source_transaction_ref
- evaluation_status
- blocking_reason_summary
- evaluated_at

## 7.2 PROPERTY_REGISTRY_VALIDATION_RECORD
purpose:
Persisted or computed validation result for registry actions.

core_fields:
- property_registry_validation_record_id
- registry_update_request_ref
- validation_status
- blocking_reason_summary
- validated_at


# ============================================================
# 8. FINAL MODEL MAP RULE
# ============================================================

This model map is the official minimum model set
for CivilizationOS real-estate rights and transactions.

Core summary:

- property objects are common
- rights are distinct from objects
- nation-specific legal behavior is DB-controlled
- registry structure is common
- transaction flow is explicit
- company premises can connect cleanly to GameOS-selling companies
