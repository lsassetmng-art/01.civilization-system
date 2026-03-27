# ============================================================
# CIVILIZATION NATION BUILDER MODEL MAP
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the minimum model map for nation builder
inside CivilizationOS.


# ============================================================
# 1. NATION DRAFT MODELS
# ============================================================

## NATION_DRAFT
core_fields:
- nation_draft_id
- draft_code
- draft_name
- nation_type
- draft_status
- created_by
- created_at
- updated_at

draft_status examples:
- draft
- validating
- validation_failed
- validated
- approval_pending
- approved
- published
- activated
- rejected
- archived

## NATION_DRAFT_IDENTITY
core_fields:
- nation_draft_identity_id
- nation_draft_id
- formal_name
- short_name
- nation_code_candidate
- capital_candidate
- continent_code
- created_at
- updated_at


# ============================================================
# 2. NATION DRAFT STRUCTURE MODELS
# ============================================================

## NATION_DRAFT_TERRITORY_PROFILE
core_fields:
- nation_draft_territory_profile_id
- nation_draft_id
- territory_summary
- region_scope_summary
- district_scope_summary
- capital_region_ref
- created_at
- updated_at

## NATION_DRAFT_POPULATION_PROFILE
core_fields:
- nation_draft_population_profile_id
- nation_draft_id
- population_baseline
- urbanization_rank
- density_rank
- labor_profile_summary
- created_at
- updated_at

## NATION_DRAFT_CURRENCY_PROFILE
core_fields:
- nation_draft_currency_profile_id
- nation_draft_id
- currency_code_candidate
- currency_name
- monetary_summary
- created_at
- updated_at


# ============================================================
# 3. NATION RULE BUNDLE MODELS
# ============================================================

## NATION_DRAFT_RULE_BUNDLE
core_fields:
- nation_draft_rule_bundle_id
- nation_draft_id
- property_regime_profile_ref
- tax_regime_profile_ref
- company_regime_profile_ref
- banking_regime_profile_ref
- securities_regime_profile_ref
- welfare_regime_profile_ref
- education_regime_profile_ref
- military_regime_profile_ref
- bundle_status
- created_at
- updated_at

## NATION_DRAFT_RULE_CHECK
core_fields:
- nation_draft_rule_check_id
- nation_draft_id
- check_type
- check_status
- check_summary
- checked_at
- created_at

check_type examples:
- identity_check
- territory_check
- currency_check
- regime_completeness_check
- contradiction_check
- activation_check


# ============================================================
# 4. APPROVAL / PUBLICATION MODELS
# ============================================================

## NATION_DRAFT_APPROVAL
core_fields:
- nation_draft_approval_id
- nation_draft_id
- approval_type
- approval_status
- approver_ref
- approval_note
- approved_at
- created_at
- updated_at

## NATION_PUBLICATION_RECORD
core_fields:
- nation_publication_record_id
- nation_draft_id
- published_nation_ref
- publication_status
- published_at
- created_at
- updated_at


# ============================================================
# 5. FINAL MODEL MAP RULE
# ============================================================

This model map is the minimum support set
for nation builder inside CivilizationOS.

Core summary:

- nation draft is explicit
- nation structure is explicit
- rule bundle is explicit
- validation and contradiction checks are explicit
- approval and publication are explicit
