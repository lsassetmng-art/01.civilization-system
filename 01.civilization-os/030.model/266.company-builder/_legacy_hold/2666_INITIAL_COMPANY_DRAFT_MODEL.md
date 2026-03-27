# ============================================================
# INITIAL COMPANY DRAFT MODEL
# ============================================================

status: canonical
layer: model
scope: company-builder
component: initial-company-draft

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the official model
for Initial Company Draft.

Initial Company Draft is the editable instance-level
draft structure used by Company Builder
before a company is established.

It is not the established company runtime object.

It is the authoritative draft structure for:

- template-based draft creation
- manual company creation
- validation
- approval if needed
- establishment preparation
- early listing-readiness initialization


# ============================================================
# 2. DESIGN PRINCIPLES
# ============================================================

Initial Company Draft must follow these principles.

- company instance data must be explicit
- nation binding must be explicit
- site planning must be first-class
- unresolved data may exist during draft stage
- unresolved mandatory state must fail validation
- source origin should remain traceable where practical
- establishment state must not be assumed before validation


# ============================================================
# 3. TOP LEVEL STRUCTURE
# ============================================================

Initial Company Draft should contain
the following top-level bundles.

- draft_identity
- template_binding
- company_core_bundle
- nation_binding_bundle
- product_scope_bundle
- site_plan_bundle
- property_tenant_bundle
- symbolic_profile_bundle
- public_profile_bundle
- management_baseline_bundle
- asset_operation_bundle
- evaluation_seed_bundle
- listing_readiness_bundle
- validation_bundle
- approval_bundle
- establish_bundle
- audit_bundle


# ============================================================
# 4. DRAFT IDENTITY
# ============================================================

draft_identity contains builder-level identity.

Fields:
- company_draft_id
- draft_code
- draft_status
- builder_stage
- created_by
- created_at
- updated_at

Recommended draft_status values:
- draft
- validation_pending
- validation_passed
- approval_pending
- approved
- establish_pending
- established
- blocked
- rejected
- archived

Recommended builder_stage values:
- company_draft
- validation
- approval_if_needed
- establish
- operate
- listing_readiness
- listing_application


# ============================================================
# 5. TEMPLATE BINDING
# ============================================================

template_binding stores preset linkage if used.

Fields:
- company_template_code
- company_type
- template_application_mode
- template_locked_fields
- template_notes

Recommended template_application_mode:
- full_template_apply
- partial_template_apply
- blank_start

This bundle exists even if blank_start is used.


# ============================================================
# 6. COMPANY CORE BUNDLE
# ============================================================

company_core_bundle defines company identity.

Fields:
- source_mode
- company_name
- company_short_name
- company_type
- company_category
- founder_user_id
- company_summary
- company_mission
- legal_structure_profile
- is_system_limited
- is_user_creatable
- is_listing_eligible_base
- company_notes

company_type is mandatory before validation pass.
company_name is mandatory before validation pass.


# ============================================================
# 7. NATION BINDING BUNDLE
# ============================================================

nation_binding_bundle defines nation linkage.

Fields:
- source_mode
- home_nation_id
- home_nation_draft_ref
- applicable_company_regime
- applicable_property_regime
- applicable_tax_regime
- applicable_listing_style
- applicable_zone_ruleset
- nation_binding_notes

At least one nation reference path
must exist before establishment.


# ============================================================
# 8. PRODUCT SCOPE BUNDLE
# ============================================================

product_scope_bundle defines company output scope.

Fields:
- source_mode
- scope_profile_code
- allowed_sellable_product_types
- disallowed_product_types
- creatable_product_types
- distribution_capabilities
- publishing_capabilities
- event_operation_capabilities
- rights_handling_capabilities
- scope_notes

This bundle is mandatory before validation pass.


# ============================================================
# 9. SITE PLAN BUNDLE
# ============================================================

site_plan_bundle defines intended sites.

Fields:
- source_mode
- headquarters_plan
- branch_plans
- additional_site_plans
- site_opening_strategy
- site_plan_notes

headquarters_plan is mandatory before establishment.

A site plan object may include:
- site_type
- site_name
- zone_map_ref
- zone_cell_ref
- public_visibility
- site_role_summary
- opening_priority
- opening_notes


# ============================================================
# 10. PROPERTY / TENANT BUNDLE
# ============================================================

property_tenant_bundle defines occupancy posture.

Fields:
- source_mode
- property_binding_strategy
- tenant_binding_strategy
- planned_occupancy_relations
- real_estate_intermediary_ref
- property_tenant_notes

planned_occupancy_relations may include:
- site_ref
- occupancy_mode
- property_ref
- tenant_unit_ref
- mediation_path

If real-estate operation is enabled,
intermediary path must be explicit.


# ============================================================
# 11. SYMBOLIC PROFILE BUNDLE
# ============================================================

symbolic_profile_bundle defines non-public symbolic identity.

Fields:
- source_mode
- icon_asset_ref
- emblem_asset_ref
- brand_colors
- symbolic_notes


# ============================================================
# 12. PUBLIC PROFILE BUNDLE
# ============================================================

public_profile_bundle defines company-facing discovery profile.

Fields:
- source_mode
- public_tagline
- public_description
- featured_categories
- public_visibility_state
- public_profile_notes


# ============================================================
# 13. MANAGEMENT BASELINE BUNDLE
# ============================================================

management_baseline_bundle defines management posture.

Fields:
- source_mode
- finance_tracking_enabled
- site_management_enabled
- product_management_enabled
- analytics_enabled
- evaluation_tracking_enabled
- listing_readiness_tracking_enabled
- asset_operation_tracking_enabled
- management_notes

This bundle is mandatory before validation pass.


# ============================================================
# 14. ASSET OPERATION BUNDLE
# ============================================================

asset_operation_bundle defines asset posture.

Fields:
- source_mode
- asset_operation_enabled
- equity_investment_enabled
- real_estate_investment_enabled
- asset_operation_policy
- securities_firm_ref
- real_estate_intermediary_ref
- risk_posture
- income_source_mix
- asset_operation_notes

Official rule:
- direct equity execution must not be enabled
- securities_firm is required for equity operation
- real-estate intermediary path is required for property operation


# ============================================================
# 15. EVALUATION SEED BUNDLE
# ============================================================

evaluation_seed_bundle defines initial evaluation setup.

Fields:
- source_mode
- evaluation_profile_code
- initial_evaluation_seed
- current_evaluation_seed
- evaluation_notes

This bundle is mandatory before establishment.

Recommended dimensions:
- legitimacy_score
- activity_score
- product_quality_score
- compliance_score
- visibility_score
- growth_score
- reputation_score
- site_operation_score


# ============================================================
# 16. LISTING READINESS BUNDLE
# ============================================================

listing_readiness_bundle defines pre-listing posture.

Fields:
- source_mode
- base_listing_eligibility
- blocked_listing_reason
- listing_readiness_state
- target_market_candidates
- readiness_snapshot
- missing_requirements
- readiness_notes

This bundle may be initialized even for non-listable entities,
with not_applicable posture where appropriate.


# ============================================================
# 17. VALIDATION BUNDLE
# ============================================================

validation_bundle stores validation state.

Fields:
- last_validation_run_at
- validation_state
- blocking_error_count
- warning_count
- info_count
- validation_results
- passed_gate_stage

Recommended validation_state:
- not_run
- passed
- failed
- passed_with_warnings


# ============================================================
# 18. APPROVAL BUNDLE
# ============================================================

approval_bundle stores approval-if-needed state.

Fields:
- approval_state
- approval_requested_at
- approved_at
- rejected_at
- approved_by
- reviewer_notes
- approval_conditions

Recommended approval_state:
- not_requested
- pending
- approved
- rejected


# ============================================================
# 19. ESTABLISH BUNDLE
# ============================================================

establish_bundle stores establishment state.

Fields:
- establish_state
- establish_requested_at
- established_at
- blocked_at
- establish_notes

Recommended establish_state:
- not_requested
- pending
- established
- blocked


# ============================================================
# 20. AUDIT BUNDLE
# ============================================================

audit_bundle stores traceability data.

Fields:
- source_trace_summary
- template_derivation_log
- manual_override_log
- reviewer_action_log
- establish_action_log


# ============================================================
# 21. REQUIREDNESS SUMMARY
# ============================================================

## 21-1. Always structurally present
The following bundles should always exist as objects,
even if partially incomplete.

- draft_identity
- template_binding
- company_core_bundle
- nation_binding_bundle
- product_scope_bundle
- site_plan_bundle
- property_tenant_bundle
- symbolic_profile_bundle
- public_profile_bundle
- management_baseline_bundle
- asset_operation_bundle
- evaluation_seed_bundle
- listing_readiness_bundle
- validation_bundle
- approval_bundle
- establish_bundle
- audit_bundle

## 21-2. Mandatory before validation pass
- company_core_bundle.company_name
- company_core_bundle.company_type
- nation_binding_bundle
- product_scope_bundle
- site_plan_bundle
- management_baseline_bundle

## 21-3. Mandatory before establishment
- headquarters_plan
- zone-compatible site plan
- evaluation_seed_bundle.initial_evaluation_seed
- evaluation_seed_bundle.current_evaluation_seed

## 21-4. Conditionally mandatory
- asset_operation_bundle.securities_firm_ref
- asset_operation_bundle.real_estate_intermediary_ref
- listing_readiness_bundle when listing tracking is enabled


# ============================================================
# 22. OFFICIAL SKELETON
# ============================================================

draft_identity:
  company_draft_id:
  draft_code:
  draft_status:
  builder_stage:
  created_by:
  created_at:
  updated_at:

template_binding:
  company_template_code:
  company_type:
  template_application_mode:
  template_locked_fields:
  template_notes:

company_core_bundle:
  source_mode:
  company_name:
  company_short_name:
  company_type:
  company_category:
  founder_user_id:
  company_summary:
  company_mission:
  legal_structure_profile:
  is_system_limited:
  is_user_creatable:
  is_listing_eligible_base:
  company_notes:

nation_binding_bundle:
  source_mode:
  home_nation_id:
  home_nation_draft_ref:
  applicable_company_regime:
  applicable_property_regime:
  applicable_tax_regime:
  applicable_listing_style:
  applicable_zone_ruleset:
  nation_binding_notes:

product_scope_bundle:
  source_mode:
  scope_profile_code:
  allowed_sellable_product_types:
  disallowed_product_types:
  creatable_product_types:
  distribution_capabilities:
  publishing_capabilities:
  event_operation_capabilities:
  rights_handling_capabilities:
  scope_notes:

site_plan_bundle:
  source_mode:
  headquarters_plan:
  branch_plans:
  additional_site_plans:
  site_opening_strategy:
  site_plan_notes:

property_tenant_bundle:
  source_mode:
  property_binding_strategy:
  tenant_binding_strategy:
  planned_occupancy_relations:
  real_estate_intermediary_ref:
  property_tenant_notes:

symbolic_profile_bundle:
  source_mode:
  icon_asset_ref:
  emblem_asset_ref:
  brand_colors:
  symbolic_notes:

public_profile_bundle:
  source_mode:
  public_tagline:
  public_description:
  featured_categories:
  public_visibility_state:
  public_profile_notes:

management_baseline_bundle:
  source_mode:
  finance_tracking_enabled:
  site_management_enabled:
  product_management_enabled:
  analytics_enabled:
  evaluation_tracking_enabled:
  listing_readiness_tracking_enabled:
  asset_operation_tracking_enabled:
  management_notes:

asset_operation_bundle:
  source_mode:
  asset_operation_enabled:
  equity_investment_enabled:
  real_estate_investment_enabled:
  asset_operation_policy:
  securities_firm_ref:
  real_estate_intermediary_ref:
  risk_posture:
  income_source_mix:
  asset_operation_notes:

evaluation_seed_bundle:
  source_mode:
  evaluation_profile_code:
  initial_evaluation_seed:
  current_evaluation_seed:
  evaluation_notes:

listing_readiness_bundle:
  source_mode:
  base_listing_eligibility:
  blocked_listing_reason:
  listing_readiness_state:
  target_market_candidates:
  readiness_snapshot:
  missing_requirements:
  readiness_notes:

validation_bundle:
  last_validation_run_at:
  validation_state:
  blocking_error_count:
  warning_count:
  info_count:
  validation_results:
  passed_gate_stage:

approval_bundle:
  approval_state:
  approval_requested_at:
  approved_at:
  rejected_at:
  approved_by:
  reviewer_notes:
  approval_conditions:

establish_bundle:
  establish_state:
  establish_requested_at:
  established_at:
  blocked_at:
  establish_notes:

audit_bundle:
  source_trace_summary:
  template_derivation_log:
  manual_override_log:
  reviewer_action_log:
  establish_action_log:


# ============================================================
# 23. FINAL RULE
# ============================================================

Initial Company Draft is the official editable instance model
for Company Builder.

A company must not be established
unless required state is explicit,
validation-safe,
nation-compatible,
site-compatible,
and intermediary-safe.
