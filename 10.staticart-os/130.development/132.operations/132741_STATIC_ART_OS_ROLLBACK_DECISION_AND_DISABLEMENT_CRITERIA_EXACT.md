# ============================================================
# STATIC ART OS ROLLBACK DECISION AND DISABLEMENT CRITERIA EXACT
# ============================================================

status: rollback-criteria
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define the exact criteria for rollback/disablement decisions after
implementation or during rollout.

rollback_or_disablement_triggers:
- Persona boundary breach detected
- direct mutation route exposed
- wrong signed snapshot rendered
- expired/restricted state shown as allowed/fresh
- critical frozen baseline contradiction introduced
- evidence insufficient to explain harmful change

preferred_safe_actions:
- disable affected Persona-linked display surface
- revert to unavailable/stale/restricted-safe rendering
- stop affected reflection path
- hold rollout and preserve evidence

forbidden_recovery_actions:
- manually invent Persona truth locally
- rewrite local rows to pretend upstream state
- silently convert restricted state into allowed/fresh

rollback_judgement:
- rollback/disablement is correct when it restores boundary-safe behavior
- rollback is not a license to violate Persona ownership rules
