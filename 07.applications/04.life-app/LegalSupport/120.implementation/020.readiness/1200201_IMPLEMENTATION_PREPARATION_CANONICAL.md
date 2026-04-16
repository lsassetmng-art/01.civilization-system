# ============================================================
# IMPLEMENTATION PREPARATION CANONICAL
# LegalSupport
# ============================================================

status: canonical-draft
phase: implementation-prep-only
schema_name: life

goal:
  - 実装に入る前に、何をどの順で作るか迷わない状態にする
  - 設計責務と実装責務の境界を明確にする
  - 未決事項が実装阻害にならないよう優先順位を固定する

implementation_entry_conditions:
  - constitution fixed
  - architecture fixed
  - interface fixed
  - business rules fixed
  - security rules fixed
  - pricing fixed
  - integration responsibilities fixed
  - major share/confidentiality decisions frozen
  - schema_name fixed as life

implementation_non_goals_now:
  - SQL を今ここで書かない
  - DDL を今ここで確定しない
  - API コードを書かない
  - 画面コードを書かない
  - 同期実装を書かない

ready_for_handoff:
  - screen structure
  - model responsibilities
  - share/confidentiality behavior
  - API responsibility references
  - persistence responsibility references
  - release slices
  - test scenarios

remaining_low_priority_items:
  - tentative deadline dedicated field timing
  - share pack commonization timing
  - audio future support timing

recommended_implementation_order:
  - case basic flow
  - fact/stakeholder flow
  - document/consultation flow
  - task/deadline flow
  - sharing/export flow
  - cross-app reference flow later

handoff_warning:
  - 120010x and 0300105/0300106 docs are design references
  - they support implementation prep, but are not executable artifacts yet
