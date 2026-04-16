# ============================================================
# NAMECARD RULE BASED ENRICHMENT CONTRACT
# ============================================================

status: canonical
layer: integration
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines rule-based enrichment boundary after import.

inputs:
- imported_namecard_records
- source_traceability
- normalized_company_candidates
- duplicate_candidates

outputs:
- normalized_department_values
- normalized_title_values
- normalized_company_values
- next_action_suggestions
- review_items

