# ============================================================
# PROJECT FLOW REFERENCE PRIORITY BY CONCERN NOTE
# ============================================================

status: canonical
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines which external reference should be checked first
for each major concern area.

reference_priority_by_concern:

foundation_rule_interpretation:
1. 000000_FOUNDATION_CANONICAL.md
2. 9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md
3. ProjectFlow local canonical notes

businessos_mediation_interpretation:
1. BUSINESS_OS_INTEGRATED_CANONICAL.md
2. ProjectFlow BusinessOS dependency notes
3. ProjectFlow integration boundary notes

erp_truth_interpretation:
1. ERP_DESIGN_BIBLE_FULL.md
2. ERP_ENTERPRISE_SCOPE_v1.md
3. erp_schema_table_column_summary.txt
4. erp_schema_table_column_full.txt
5. ERP_SYSTEM_FULL_DUMP.txt when deeper inspection is needed

erp_audit_or_governance_interpretation:
1. ERP_DESIGN_BIBLE_FULL.md
2. ERP_AUDIT_DUMP.txt
3. ERP_GOVERNANCE_DUMP.txt
4. ERP_FOUNDATION_DUMP.txt

field_level_schema_confirmation:
1. erp_schema_table_column_summary.txt
2. erp_schema_table_column_full.txt
3. ProjectFlow data ownership / editability notes

projectflow_local_ownership_interpretation:
1. ProjectFlow local ownership notes
2. ProjectFlow common component dependency notes
3. ProjectFlow canonical priority notes

common_component_boundary_interpretation:
1. application common component canonical set when available
2. ProjectFlow common component dependency notes
3. ProjectFlow reference alignment notes

multilingual_interpretation:
1. ProjectFlow multilingual definition and policy notes
2. ProjectFlow bilingual label catalog notes
3. higher foundation rules only if conflict appears

portal_or_system_navigation_context:
1. 900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md
2. civilization-system-level canonical references
3. ProjectFlow restart / handoff notes

persona_related_interpretation_if_scope_expands:
1. PERSONA_OS_INTEGRATED_CANONICAL.md
2. persona_schema_table_column_summary.txt
3. persona_schema_table_column_full.txt

note:
Not every concern requires every reference.
This table is a first-check priority guide.
