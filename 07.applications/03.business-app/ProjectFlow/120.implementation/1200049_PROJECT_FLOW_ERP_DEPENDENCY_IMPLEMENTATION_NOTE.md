# ============================================================
# PROJECT FLOW ERP DEPENDENCY IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep implications of ERP dependency boundaries.

implementation_rules:
- do not create direct ERP client code inside ProjectFlow
- treat ERP-owned values as reference or synchronized values
- keep ERP-facing concerns behind BusinessOS-facing gateway interfaces
- distinguish ERP truth fields from locally editable fields in state mapping
- preserve local UX even when ERP-mediated paths are unavailable where allowed
