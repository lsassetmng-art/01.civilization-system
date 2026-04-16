# ============================================================
# NAMECARD RULE BASED ENRICHMENT MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines rule-based enrichment after import.

enrichment_targets:
- department_normalization
- title_normalization
- company_name_normalization
- duplicate_candidate_generation
- company_group_generation
- next_action_suggestion_generation

processing_policy:
- reviewable
- non-destructive
- traceable_to_source
- no silent merge by default

