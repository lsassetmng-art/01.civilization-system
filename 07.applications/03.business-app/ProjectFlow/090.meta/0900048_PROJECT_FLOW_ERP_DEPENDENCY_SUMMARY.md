# ============================================================
# PROJECT FLOW ERP DEPENDENCY SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

summary:
- ProjectFlow depends on ERP for formal ERP-owned truth only
- ProjectFlow does not depend on ERP for most local operational UX
- ERP access is always mediated through BusinessOS
- local customer-facing outputs remain ProjectFlow-owned composition
