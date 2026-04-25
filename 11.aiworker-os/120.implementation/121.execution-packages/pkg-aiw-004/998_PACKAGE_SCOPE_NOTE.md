# ============================================================
# PKG-AIW-004 PACKAGE SCOPE NOTE
# ============================================================

status: scope-note
package_code: PKG-AIW-004
system: AiworkerOS
owner: Boss
prepared_by: Zero

note:
This package realizes WB05 execution-side security direction.

core_rule:
- AI worker runtime actors do not receive raw-table read grants
- official intake writer is separated from controlled-function executor
- event delivery is narrower than review roles
- restricted reviewer and privileged reviewer are separated

implementation_style:
- additive only
- no blanket revoke sweep
- role creation + explicit grants + RLS policies
