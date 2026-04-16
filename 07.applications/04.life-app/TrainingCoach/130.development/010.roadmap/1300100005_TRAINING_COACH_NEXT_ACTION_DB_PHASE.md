# ============================================================
# TRAINING COACH NEXT ACTION DB PHASE
# ============================================================

status: canonical-draft
phase: implementation-readiness
system: TrainingCoach
layer: 130.development
owner: Boss
prepared_by: Zero

current_position:
  - schema = life fixed
  - implementation-ready at design phase reached
  - physical table mapping prepared

next_recommended_actions:
  - exact column nullability finalization
  - audit persistence detailed design
  - correction event persistence design
  - SQL DDL draft for life schema
  - API payload to DB column mapping exact table

decision_hint:
  - 次に最も自然なのは life schema 用の DDL下書き
  - まだ設計優先を続けるなら nullability と correction event を先に固める
