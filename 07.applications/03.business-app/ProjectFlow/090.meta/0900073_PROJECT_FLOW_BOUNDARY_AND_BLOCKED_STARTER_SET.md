# ============================================================
# PROJECT FLOW BOUNDARY AND BLOCKED STARTER SET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides starter examples for boundary-sensitive
and blocked work packages.

boundary_sensitive_examples:

PF-WP-B001:
- package_name: BusinessOS Gateway Planning
- scope_type: boundary_sensitive
- concern_area: BusinessOS mediation
- prerequisite_documents:
  - 0200027_PROJECT_FLOW_BUSINESSOS_DEPENDENCY_ARCHITECTURE.md
  - BUSINESS_OS_INTEGRATED_CANONICAL.md
  - 0600013_PROJECT_FLOW_REFERENCE_PRIORITY_BY_CONCERN_NOTE.md
- blocked_if_conflict_exists: yes

PF-WP-B002:
- package_name: ERP Field Mapping Finalization
- scope_type: boundary_sensitive
- concern_area: ERP-owned field interpretation
- prerequisite_documents:
  - 0200028_PROJECT_FLOW_ERP_DEPENDENCY_ARCHITECTURE.md
  - ERP_DESIGN_BIBLE_FULL.md
  - ERP_ENTERPRISE_SCOPE_v1.md
  - erp_schema_table_column_summary.txt
- blocked_if_conflict_exists: yes

PF-WP-B003:
- package_name: DB Hardening Finalization
- scope_type: boundary_sensitive
- concern_area: ownership-dependent DB hardening
- prerequisite_documents:
  - 1200013_PROJECT_FLOW_DB_DDL_PREPARED.md
  - 0300021_PROJECT_FLOW_DATA_OWNERSHIP_MATRIX_NOTE.md
  - 0300022_PROJECT_FLOW_EDITABILITY_MATRIX_NOTE.md
- blocked_if_conflict_exists: yes

blocked_examples:

PF-WP-X001:
- package_name: Direct ERP Client Assumption
- scope_type: blocked
- blocked_reason: violates mediated boundary rule
- allowed_interim_work:
  - none beyond explicit conflict logging
- forbidden_work:
  - direct ERP call planning
  - direct ERP client implementation assumptions
- reopen_condition:
  - not expected under current canonical rules

PF-WP-X002:
- package_name: Shared Common Component Reownership
- scope_type: blocked
- blocked_reason: violates external common component ownership
- allowed_interim_work:
  - candidate listing in separate chat
- forbidden_work:
  - local re-canonicalization inside ProjectFlow
- reopen_condition:
  - separate common component promotion path completed
