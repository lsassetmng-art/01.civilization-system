# ============================================================
# STATIC ART OS PERSONA REFERENCE DEVELOPER HANDOFF CHECKLIST
# ============================================================

status: handoff-checklist
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Give a compact checklist for a developer or implementation owner
before touching Persona reference scope.

developer_handoff_checklist:
- I know Persona reference implementation is optional
- I know signed snapshot basis is mandatory
- I know direct Persona mutation is forbidden
- I know Persona core duplicate tables are forbidden
- I know local_view_config is presentation-only
- I know projection/cache is rebuildable and non-canonical
- I know the frozen baseline must not be semantically changed casually
- I know which workstream/slice I am implementing
- I know which files are touch areas and which are no-touch
- I know which evidence artifacts must be updated
- I know the rollback/disablement preference is safe unavailable/stale/restricted state
- I know release judgement needs evidence, not assumption

handoff_rule:
- if any item above is not clearly yes, stop and review the exact design baseline first
