# ============================================================
# PROJECT FLOW LANGUAGE PACK SCOPE NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the intended scope of language-pack style assets.

language_pack_groups:
- ui_common_pack
- domain_label_pack
- customer_material_pack
- export_header_pack
- entitlement_pack
- summary_pack
- error_message_pack

ui_common_pack_examples:
- save
- cancel
- export
- review
- confirm
- back

domain_label_pack_examples:
- project_name
- project_status
- task_title
- planned_end_date
- delay_days

customer_material_pack_examples:
- material header labels
- section headings
- explanation helper phrases

export_header_pack_examples:
- spreadsheet column labels
- grouped section labels
- exported material labels

implementation_rules:
- packs should be versionable
- packs should be extensible for future languages
- packs should not store business truth
