# ============================================================
# PROJECT FLOW COMMON COMPONENT EXTRACTION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Explains what should be extracted later as shared common components.

recommended_extraction_order:
1. read_only_entitlement_guard
2. sync_status_and_retry_visibility
3. spreadsheet_export_request
4. report_draft_editor
5. overdue_and_delay_visibility
6. dashboard_summary_card_set

why_this_order:
- entitlement guard has wide reuse
- sync visibility already aligns with shared integration needs
- export/report are cross-application business features
- overdue/delay and summary cards are broad operational primitives

implementation_rule:
Extracted common components should be shared components,
not copied per application.

non_extraction_examples:
- project-specific field names
- project-specific lifecycle wording
- project-specific report template semantics
