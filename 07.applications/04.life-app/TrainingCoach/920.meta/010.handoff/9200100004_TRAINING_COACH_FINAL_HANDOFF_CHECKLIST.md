# ============================================================
# TRAINING COACH FINAL HANDOFF CHECKLIST
# ============================================================

status: canonical-draft
phase: design-closure
system: TrainingCoach
layer: 920.meta
owner: Boss
prepared_by: Zero

purpose:
  - handoff 前に確認すべき最終チェック項目を固定する
  - 読み手に「何が決まっていて、何が未着手か」を明確に渡す

final_handoff_checklist:
  concept_and_scope:
    - [x] app identity explained
    - [x] v1 scope fixed
    - [x] out-of-scope fixed
    - [x] pricing fixed

  schema_and_data:
    - [x] schema fixed to life
    - [x] major entity groups defined
    - [x] physical table mapping prepared
    - [x] DDL draft prepared
    - [x] share SQL draft prepared
    - [x] seed policy prepared
    - [x] seed actual row catalog prepared

  payload_and_runtime:
    - [x] screen exact payload fixed
    - [x] integration payload fixed
    - [x] state transition fixed
    - [x] error/empty response fixed
    - [x] permission/audit/idempotency/correlation fixed

  ux_and_copy:
    - [x] screen responsibilities fixed
    - [x] onboarding design fixed
    - [x] help taxonomy fixed
    - [x] FAQ/help/support design fixed
    - [x] major copy drafts prepared
    - [x] localization/message key policy prepared

  future_share:
    - [x] semantic boundary fixed
    - [x] payload/permission detail prepared
    - [x] storage candidate prepared
    - [x] viewer UI design prepared

  governance:
    - [x] content governance prepared
    - [x] content review role matrix prepared
    - [x] cross-document consistency audit prepared

must_tell_next_reader:
  - implementation is not started
  - DDL files are draft only
  - share is future scope, not initial implementation
  - ja-JP is the primary copy/guide seed language
  - schema is life

optional_handoff_packages:
  - product concept package
  - db/data package
  - payload/runtime package
  - copy/help package
  - future share package
