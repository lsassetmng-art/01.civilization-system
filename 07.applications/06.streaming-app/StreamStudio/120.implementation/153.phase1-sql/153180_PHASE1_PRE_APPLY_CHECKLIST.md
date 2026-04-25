# ============================================================
# STREAM STUDIO PHASE 1 PRE-APPLY CHECKLIST
# ============================================================

status: sql-pre-apply
layer: implementation-sql-checklist
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the final checklist immediately before real SQL apply.

required_checks:
- PERSONA_DATABASE_URL exported
- target is Persona-side DB
- STREAM_STUDIO_SCHEMA reviewed
- 佐藤（DB担当） review completed
- migration unit order accepted
- no marketplace / membership / split sql mixed into phase 1 apply
- audit table included
- runtime table included
- dead-letter table decision accepted
- apply runner renders schema correctly into $HOME/.tmp
- ON_ERROR_STOP enabled
- rollback approach discussed for dev environment

apply_order:
- 153100
- 153110
- 153120
- 153130
- 153140
- 153150
- 153160

fixed_statement:
No real apply should start until all checks above are satisfied.
