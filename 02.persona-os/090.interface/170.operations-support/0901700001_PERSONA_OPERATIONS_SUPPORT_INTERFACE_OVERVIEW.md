# ============================================================
# PERSONA OPERATIONS SUPPORT INTERFACE OVERVIEW
# ============================================================

status: canonical
layer: interface
domain: operations-support
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of operations-support interfaces.

summary:
Operations-support interfaces define explicit audit output,
incident output,
delivery-state output,
rollback-review output,
and operator-visible diagnostics.

interface_groups:
audit output
incident output
delivery-state output
rollback-review output
operator diagnostics

boundary:
Operations-support interfaces expose support semantics, not truth authority.
Operations-support interfaces do not redefine integration contract authority.
Operations-support interfaces do not directly mutate domain truth.
