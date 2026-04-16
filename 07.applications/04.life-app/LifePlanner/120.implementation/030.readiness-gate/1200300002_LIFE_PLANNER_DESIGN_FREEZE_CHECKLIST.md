# ============================================================
# LIFE PLANNER DESIGN FREEZE CHECKLIST
# ============================================================

status: draft
system: LifePlanner
layer: 120.implementation
subfolder: 030.readiness-gate
owner: Boss
prepared_by: Zero
schema: life

freeze_checklist:
  architecture:
    - [ ] integrated canonical updated
    - [ ] constitution / architecture / model terminology aligned
    - [ ] life schema fixed and referenced consistently

  model:
    - [ ] category master fixed
    - [ ] enum master fixed
    - [ ] sensitive scope master fixed
    - [ ] logical tables mapped to all major screens

  interface:
    - [ ] screen inventory fixed
    - [ ] screen transitions fixed
    - [ ] screen item exact definitions fixed
    - [ ] access-control matrix fixed

  contract:
    - [ ] payload common rules fixed
    - [ ] payload to logical table matrix fixed
    - [ ] write impact matrix fixed

  runtime_policy:
    - [ ] state machines fixed
    - [ ] validation rules fixed
    - [ ] UI blocking rules fixed

  operations:
    - [ ] review cycle policy fixed
    - [ ] notification event catalog fixed

  pricing_scope:
    - [ ] Free / Family scope matrix fixed
    - [ ] scenario compare Family-only policy fixed
    - [ ] family share Family-only policy fixed

freeze_judgement_rule:
  - 重大矛盾が1件でも残る場合は freeze しない
  - open issue が残っていても、実装影響がない軽微論点なら freeze 可能
  - upstream app exact contract 未固定は provisional freeze 対象にできる
