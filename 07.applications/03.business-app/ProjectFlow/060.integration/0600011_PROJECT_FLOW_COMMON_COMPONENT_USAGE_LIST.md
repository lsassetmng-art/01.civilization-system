# ============================================================
# PROJECT FLOW COMMON COMPONENT USAGE LIST
# ============================================================

status: canonical
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides an explicit list of common-component-style usage expectations.

expected_common_component_usage:

dashboard_summary_card_set:
- expected_usage: yes
- local_addition_needed: metric definitions stay local

overdue_and_delay_visibility:
- expected_usage: yes
- local_addition_needed: delay derivation semantics stay local

severity_and_risk_emphasis:
- expected_usage: yes
- local_addition_needed: issue/risk business meaning stays local

sync_status_and_retry_visibility:
- expected_usage: yes
- local_addition_needed: ProjectFlow sync target wording stays local

spreadsheet_export_request_shell:
- expected_usage: yes
- local_addition_needed: dataset and column catalog stay local

customer_material_layout_shell:
- expected_usage: yes
- local_addition_needed: six-material composition stays local

read_only_entitlement_guard:
- expected_usage: yes
- local_addition_needed: ProjectFlow pricing and plan wording stay local

multilingual_label_pack:
- expected_usage: yes
- local_addition_needed: ProjectFlow-specific label keys stay local

device_parity_layout_shell:
- expected_usage: yes
- local_addition_needed: ProjectFlow screen composition stays local

non_common_component_examples:
- ProjectFlow WBS proposal calculator
- ProjectFlow customer-facing schedule grouping rules
- ProjectFlow progress report narrative composition rules
