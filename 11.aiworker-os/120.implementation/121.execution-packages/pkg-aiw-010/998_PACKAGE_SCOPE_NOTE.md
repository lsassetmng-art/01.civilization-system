# ============================================================
# PKG-AIW-010 PACKAGE SCOPE NOTE
# ============================================================

status: scope-note
package_code: PKG-AIW-010
system: AiworkerOS
owner: Boss
prepared_by: Zero

note:
This package realizes C5 restricted / privileged scenario smoke expansion.

core_rule:
- privileged scenario must exercise a real controlled-function path
- restricted scenario must verify boundary separation explicitly
- smoke data is bounded to fixed IDs
- smoke evidence must be logged

implementation_style:
- additive only
- repeatable fixed seed
- function-based smoke execution
