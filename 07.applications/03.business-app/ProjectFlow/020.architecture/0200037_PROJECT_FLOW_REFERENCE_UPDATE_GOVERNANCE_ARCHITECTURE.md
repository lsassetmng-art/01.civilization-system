# ============================================================
# PROJECT FLOW REFERENCE UPDATE GOVERNANCE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines governance for updating or replacing external reference documents
used by ProjectFlow.

governance_targets:
- uploaded canonical references
- uploaded schema summaries
- uploaded dumps
- ProjectFlow local reference indexes

governance_rules:
- ProjectFlow local reference notes must track reference filename changes explicitly
- replacement of an external reference does not automatically change local ownership rules
- higher-canonical ownership remains external even when filenames are updated
- schema summaries and dumps may be refreshed,
  but their role as reference aids remains unchanged
- ProjectFlow should record new reference filenames rather than silently overwriting interpretation assumptions
