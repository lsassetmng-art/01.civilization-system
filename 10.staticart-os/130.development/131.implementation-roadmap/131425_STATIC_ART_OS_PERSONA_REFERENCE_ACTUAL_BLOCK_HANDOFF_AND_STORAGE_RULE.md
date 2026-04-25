# ============================================================
# STATIC ART OS PERSONA REFERENCE ACTUAL BLOCK HANDOFF AND STORAGE RULE
# ============================================================

status: active-exact-handoff-rule
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define how authored actual blocks should be handed off and stored.

storage_rule:
- store authored blocks in a stable, reviewable area
- keep authored block separate from execution evidence
- keep authored block linked to:
  - package_id
  - review outcome
  - execution evidence path when later executed

handoff_rule:
- handoff packet for one authored block should include:
  - authored block file
  - package context
  - prerequisite gate status
  - intended execution order
  - evidence expectation
  - rollback/safe stop note

storage_do_not:
- do not overwrite older authored variants silently
- do not mix draft blocks with executed evidence logs
- do not store authored blocks in a way that hides review lineage

recommended_storage_lineage:
- template
- authored block draft
- reviewed block
- executed evidence
- acceptance/release judgement if later applicable

handoff_judgement:
- block handoff is complete only when the next operator can execute or review without reconstructing intent from chat history
