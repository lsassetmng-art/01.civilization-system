# ============================================================
# PROJECT FLOW COMMON COMPONENT DEPENDENCY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines which areas of ProjectFlow should depend on common components
and which areas should remain application-local.

common_component_dependency_domains:
- dashboard summary cards
- overdue and delay visibility
- severity and risk emphasis
- sync status and retry visibility
- spreadsheet export request shell
- customer explanation material shell
- read-only entitlement guard
- multilingual label and export header layer
- device parity action/layout shell

application_local_domains:
- ProjectFlow project lifecycle wording
- ProjectFlow task and milestone operational semantics
- ProjectFlow customer-facing material composition rules
- ProjectFlow template and WBS proposal behavior
- ProjectFlow project-specific scheduling assumptions
- ProjectFlow customer-explanation-specific source selection

architecture_rules:
- common components should be consumed where canonicalized elsewhere
- ProjectFlow should not locally re-canonicalize shared common components
- app-local behavior should remain app-local unless promoted later
- local UX composition may combine common shells with app-specific data
