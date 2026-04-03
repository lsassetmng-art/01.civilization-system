# ============================================================
# CIVILIZATION COMPANY UI MODEL MAP
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the minimum model map for company UI,
analytics, evaluation, and listing-readiness
inside CivilizationOS.


# ============================================================
# 1. LIST / DISCOVERY MODELS
# ============================================================

## COMPANY_LIST_INDEX
core_fields:
- company_list_index_id
- company_ref
- company_type_code
- nation_code
- public_visibility_status
- category_visibility_status
- list_index_status
- created_at
- updated_at

## COMPANY_PUBLIC_PROFILE
core_fields:
- company_public_profile_id
- company_ref
- public_title
- public_summary
- icon_ref
- public_profile_status
- created_at
- updated_at


# ============================================================
# 2. ANALYTICS MODELS
# ============================================================

## COMPANY_ANALYTICS_SNAPSHOT
core_fields:
- company_analytics_snapshot_id
- company_ref
- snapshot_type
- metric_summary
- snapshot_status
- snapped_at
- created_at

snapshot_type examples:
- overview
- sales
- site
- portfolio
- growth

## COMPANY_ANALYTICS_METRIC
core_fields:
- company_analytics_metric_id
- company_analytics_snapshot_id
- metric_code
- metric_value
- metric_unit
- metric_status
- created_at

metric_code examples:
- revenue_score
- portfolio_score
- site_utilization_score
- growth_score
- reputation_score
- visibility_score


# ============================================================
# 3. EVALUATION / LISTING MODELS
# ============================================================

## COMPANY_INITIAL_EVALUATION_RECORD
core_fields:
- company_initial_evaluation_record_id
- company_ref
- evaluation_score
- evaluation_grade
- evaluation_summary
- evaluated_at
- created_at
- updated_at

## COMPANY_CURRENT_EVALUATION_RECORD
core_fields:
- company_current_evaluation_record_id
- company_ref
- evaluation_score
- evaluation_grade
- evaluation_summary
- evaluated_at
- created_at
- updated_at

## COMPANY_LISTING_READINESS_RECORD
core_fields:
- company_listing_readiness_record_id
- company_ref
- readiness_score
- readiness_status
- threshold_summary
- evaluated_at
- created_at
- updated_at

readiness_status examples:
- not_ready
- partially_ready
- ready_for_review
- approved_for_listing
- listed

## COMPANY_LISTING_APPLICATION
core_fields:
- company_listing_application_id
- company_ref
- application_status
- application_summary
- applied_at
- created_at
- updated_at

application_status examples:
- draft
- submitted
- under_review
- approved
- rejected
- withdrawn


# ============================================================
# 4. FINAL MODEL MAP RULE
# ============================================================

This model map is the minimum support set
for company list/discovery, analytics, evaluation,
and listing-readiness inside CivilizationOS.

Core summary:

- company listing/discovery is explicit
- analytics snapshots are explicit
- evaluation at creation is explicit
- current evaluation is explicit
- listing-readiness is explicit
- listing application is explicit
