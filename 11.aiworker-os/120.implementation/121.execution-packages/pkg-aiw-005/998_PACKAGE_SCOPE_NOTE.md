# ============================================================
# PKG-AIW-005 PACKAGE SCOPE NOTE
# ============================================================

status: scope-note
package_code: PKG-AIW-005
system: AiworkerOS
owner: Boss
prepared_by: Zero

note:
This package realizes WB06 execution-side support for replay, recovery, and acceptance evidence.

core_rule:
- replay is explicit and decision-driven
- identical lineage after prior apply does not remutate canonical truth
- redelivery clones business-facing outbox intent only
- recovery actions are incident-linked
- acceptance evidence is stored explicitly

implementation_style:
- additive only
- fail-closed replay logic
- auditable logs for replay and recovery
