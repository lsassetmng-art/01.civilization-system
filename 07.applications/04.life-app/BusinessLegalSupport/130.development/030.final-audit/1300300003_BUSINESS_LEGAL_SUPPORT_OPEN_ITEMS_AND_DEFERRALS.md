# ============================================================
# BUSINESS LEGAL SUPPORT OPEN ITEMS AND DEFERRALS
# ============================================================

status: canonical-final-audit
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 130.development
subfolder: 030.final-audit
owner: Boss
prepared_by: Zero

open_items:
  none_in_design_scope:
    - このチャットで扱うべき設計上の必須未処理は残していない

deferred_to_implementation_phase:
  - exact CREATE TABLE SQL
  - exact CREATE INDEX SQL
  - exact RLS SQL
  - trigger implementation
  - actual API implementation code
  - actual UI implementation code
  - actual file upload implementation
  - actual notification job runtime
  - actual BusinessOS handoff execution

deferred_but_intentional:
  - deferred items are not design defects
  - they are implementation-phase responsibilities
  - current chat policy keeps implementation out of scope

guardrail:
  - 新しい product scope をこの段階で追加しない
  - SQL phase に入るまで app scope を固定する
