# ============================================================
# PROJECT FLOW EDITABILITY BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines editability versus reference-only boundaries
for ProjectFlow data fields.

editability_categories:
- locally_editable
- locally_editable_after_generation
- reference_only
- derived_read_only
- mediated_status_only
- localized_display_only

architecture_rules:
- locally_editable fields belong to ProjectFlow operational scope
- reference_only fields must not be edited as local truth
- derived_read_only fields may be recalculated,
  but not directly edited as source truth
- mediated_status_only fields reflect boundary state,
  not editable business truth
- localized_display_only fields are presentation artifacts only
