# ============================================================
# PERSONA OPERATIONS SUPPORT ARCHITECTURE OVERVIEW
# ============================================================

status: canonical
layer: architecture
domain: operations-support
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the structural overview of PersonaOS operations-support domain.

summary:
Operations-support defines audit,
observability,
incident review support,
rollback review support,
and operator-facing diagnostic boundaries.

support_groups:
audit record
delivery support state
incident review support
rollback review support
operator-visible diagnostics

boundary:
Operations-support does not redefine domain truth.
Audit records are not the same as domain truth records.
Outbox/delivery state is not the same as integration contract authority.
Rollback support does not by itself grant rollback authority.
