# ============================================================
# ASSET PUBLISH SATO COMMENT INTAKE SHEET
# ============================================================

status: canonical-intake-sheet
layer: implementation
domain: asset-publish
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Input sheet for recording actual Sato(DB reviewer) comments for K2 asset-publish.

usage_rule:
- copy reviewer comments exactly in meaning
- do not compress a blocking comment into a vague summary
- one major comment group should become one intake entry

entry_template:
- intake_id
- source_document
- source_section
- reviewer_comment_raw
- comment_type
  - blocking
  - non_blocking
  - clarification
  - preference
- suspected_impact_area
  - base_table
  - index
  - projection_policy
  - cross_cutting
- needs_delta_ledger_entry
- zero_initial_read
- next_action

initial_state:
- no reviewer comments recorded yet
