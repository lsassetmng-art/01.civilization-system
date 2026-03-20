# ============================================================
# UI LAYER ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
UI layer presents structured controls, dashboards, forms, and status views.

responsibilities:
- display domain state
- present explicit choices
- show consequences and warnings
- capture user confirmation where required

ui_principles:
- clarity before density
- explicit confirmation for high-impact actions
- no hidden critical actions
- role-appropriate information display

ui_patterns:
- dashboard
- form submission
- review and confirm
- timeline/history view
- notice panel
- decision modal

rules:
- UI state is temporary and non-authoritative
- UI cannot directly commit authoritative mutation
- critical actions require visible confirmation and traceability

final_rule:
UI must remain a transparent interaction layer,
never an implicit logic layer.
