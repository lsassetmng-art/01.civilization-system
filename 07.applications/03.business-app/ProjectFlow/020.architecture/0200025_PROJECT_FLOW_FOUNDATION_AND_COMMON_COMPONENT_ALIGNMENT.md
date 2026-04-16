# ============================================================
# PROJECT FLOW FOUNDATION AND COMMON COMPONENT ALIGNMENT
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines how ProjectFlow should align with higher-level foundation,
application common components,
and ERP scope references.

alignment_reference_domains:
- civilization foundation rules
- application common components
- ERP design bible and enterprise scope
- BusinessOS mediated integration boundary
- Persona and other OS references only when needed by ProjectFlow scope

alignment_rules:
- ProjectFlow must not redefine system-wide foundation rules locally
- ProjectFlow must not redefine application common component ownership locally
- ERP scope references must remain external source references,
  not ProjectFlow-owned truth
- shared BusinessOS remains the formal mediation layer for ERP-facing interaction
- ProjectFlow-specific additions remain additive and app-owned unless promoted later

projectflow_owned_scope_examples:
- project execution front behavior
- project/task/milestone local UX
- customer-facing explanation material composition
- template and WBS proposal usage in ProjectFlow context

non_projectflow_owned_scope_examples:
- civilization-wide constitutional rules
- common component canonical ownership
- ERP formal enterprise truth
