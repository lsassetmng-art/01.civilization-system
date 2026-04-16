# ============================================================
# PROJECT FLOW UPLOADED CANONICAL REFERENCE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines how ProjectFlow should reference the uploaded canonical documents
that exist outside the local ProjectFlow folder.

uploaded_reference_domains:
- foundation canonical
- civilization system rules
- CivilizationOS canonical
- PersonaOS integrated canonical
- BusinessOS integrated canonical
- GameOS integrated canonical
- StreamingOS integrated canonical
- ERP design bible
- ERP enterprise scope
- portal-site reflection note
- ERP dumps and schema summaries

reference_usage_rules:
- uploaded canonicals are alignment references,
  not locally re-owned ProjectFlow documents
- ProjectFlow should defer to them when ownership is external
- ProjectFlow may add local app detail without replacing uploaded canonical ownership
- dumps and schema summaries are reference aids,
  not canonical replacements by themselves

reference_priority_examples:
- foundation and civilization rules guide upper boundary interpretation
- BusinessOS integrated canonical guides mediation interpretation
- ERP design bible and ERP enterprise scope guide ERP-side truth interpretation
- schema summaries guide implementation-prep understanding only
