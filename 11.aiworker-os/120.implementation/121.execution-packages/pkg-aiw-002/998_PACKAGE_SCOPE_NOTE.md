# ============================================================
# PKG-AIW-002 PACKAGE SCOPE NOTE
# ============================================================

status: scope-note
package_code: PKG-AIW-002
system: AiworkerOS
owner: Boss
prepared_by: Zero

note:
This package realizes the controlled-function foundation for core state families,
repair/rebuild, growth event, privileged context change, and result correlation.

fail_closed_stub:
- fn_apply_worker_tendency_update

reason:
The tendency update path needs target tenant identity / payload resolution packaging
that is not included in this package. Therefore it is intentionally implemented as
a fail-closed stub rather than pretending to mutate canonical truth.

rule:
- Use this package after PKG-AIW-001
- Keep tendency payload resolution in a later package
