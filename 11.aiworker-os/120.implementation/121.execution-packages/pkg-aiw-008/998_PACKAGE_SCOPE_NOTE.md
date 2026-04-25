# ============================================================
# PKG-AIW-008 PACKAGE SCOPE NOTE
# ============================================================

status: scope-note
package_code: PKG-AIW-008
system: AiworkerOS
owner: Boss
prepared_by: Zero

note:
This package realizes C2 seed-data and smoke-flow support.

core_rule:
- seed data is bounded to smoke-only fixed IDs
- smoke flow uses assignment apply as the primary canonical flow
- replay test uses registered lineage and redelivery only
- smoke reset behavior is bounded to smoke worker records only

implementation_style:
- additive only
- fixed IDs for repeatability
- explicit logs for smoke execution
