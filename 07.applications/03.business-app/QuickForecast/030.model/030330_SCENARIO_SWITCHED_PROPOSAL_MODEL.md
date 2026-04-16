# ============================================================
# SCENARIO SWITCHED PROPOSAL MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines proposal generation by selected scenario.

fields:
- scenario_switch_mode
- scenario_id
- proposal_variant_id
- proposal_variant_type
- proposal_variant_label
- variant_summary
- selected_flag
- generated_at
- updated_at

variant_examples:
- conservative
- standard
- aggressive

rule:
Proposal content and profit image must be switchable
by scenario without breaking source traceability.
