# ============================================================
# PROJECT FLOW REFERENCE CONFLICT RESOLUTION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines how ProjectFlow should resolve conflicts
between local notes and external reference documents.

conflict_types:
- local_vs_higher_canonical
- businessos_vs_erp_interpretation
- schema_summary_vs_schema_full_detail
- canonical_vs_dump_detail
- old_uploaded_reference_vs_new_uploaded_reference

resolution_rules:
- higher canonical ownership wins over ProjectFlow local wording
- BusinessOS mediation interpretation wins over local direct-ERP assumptions
- ERP formal truth interpretation wins over local ERP-field reinterpretation
- schema full detail may refine schema summary,
  but does not replace higher ownership rules
- dumps may support inspection,
  but do not override canonical ownership by themselves
- newer explicit reference should be reviewed before reuse of older interpretation

required_result:
When conflict exists,
ProjectFlow should record:
- which sources conflict
- which source has priority
- whether local notes need adjustment
