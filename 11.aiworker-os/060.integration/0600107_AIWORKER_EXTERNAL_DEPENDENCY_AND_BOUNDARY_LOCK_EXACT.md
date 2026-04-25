# ============================================================
# AIWORKER EXTERNAL DEPENDENCY AND BOUNDARY LOCK EXACT
# ============================================================

status: exact-integration
system: AiworkerOS
layer: 060.integration
owner: Boss
prepared_by: Zero

purpose:
Freeze the external dependency posture at implementation-ready time.

external_dependencies:
- cx22073jw implementation
- BusinessOS request/result event producer-consumer side
- database environment and migration execution environment

locked_boundary:
- AiworkerOS owns canonical worker truth
- BusinessOS owns commercial, contract, billing, dispatch-request, and ERP-side truth
- cx22073jw remains external read-surface implementation and is not implemented in this bundle
- AiworkerOS must not silently absorb cx22073jw implementation concerns

dependency_handling_rule:
- external dependency assumptions must be declared in docs
- interface contracts remain binding even when implementation is external
- missing external implementation is not treated as permission to widen AiworkerOS raw-table access

hard_rules:
- no boundary rollback at freeze stage
- no hidden coupling introduced at implementation start
