# ============================================================
# STATIC ART OS EXECUTION CHECKLIST
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

phase_1_checklist:
  - confirm PERSONA_DATABASE_URL
  - confirm SQL reviewed by Sato
  - confirm sql runner path
  - apply schema and tables
  - verify schema objects
  - record result

phase_2_checklist:
  - bind route -> service -> repository
  - wire validators
  - wire permission guards
  - verify version_token behavior
  - verify error envelope consistency

phase_3_checklist:
  - verify self check blocker output
  - verify review request creation
  - verify review decision
  - verify publish and audit generation
  - verify restrict/delist/archive behavior

phase_4_checklist:
  - verify entitlement recompute
  - verify purchase reflection
  - verify subscription reflection
  - verify access session rules

phase_5_checklist:
  - verify library list
  - verify continue reading
  - verify continue viewing
  - verify favorite persistence
  - verify annotation persistence

phase_6_checklist:
  - verify review queue ui
  - verify review detail ui
  - verify support_readonly behavior
  - verify audit detail visibility

phase_7_checklist:
  - verify cx reference publish triggers
  - verify exhibition reference output
  - verify one-way sync only

phase_8_checklist:
  - run acceptance cases
  - run permission matrix
  - run policy/projection matrix
  - record unresolved blockers
  - mark implementation-ready or hold
