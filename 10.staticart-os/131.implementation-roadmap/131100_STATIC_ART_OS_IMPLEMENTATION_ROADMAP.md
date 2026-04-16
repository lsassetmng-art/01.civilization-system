# ============================================================
# STATIC ART OS IMPLEMENTATION ROADMAP
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

current_position:
  - implementation-ready design completed
  - termux-deployable document bundle completed
  - implementation-prep skeletons now added

recommended_execution_order:
  - Phase 1: schema/enums/base tables
  - Phase 2: files/metadata/rights/sales/subscription write APIs
  - Phase 3: self check/review/publish lifecycle APIs
  - Phase 4: entitlement and access session
  - Phase 5: library/reader/viewer continuity
  - Phase 6: review admin and restriction/governance
  - Phase 7: cx22073jw reference publish
  - Phase 8: acceptance execution and regression hardening

phase_exit_conditions:
  phase_1:
    - schema and enum creation fixed
    - base canonical tables created
  phase_2:
    - creator workspace write backbone works
  phase_3:
    - review and publish lifecycle works
  phase_4:
    - ownership/subscription/full-access resolution works
  phase_5:
    - continue reading/viewing works
  phase_6:
    - governance and audit work end-to-end
  phase_7:
    - cx22073jw reference areas receive correct data
  phase_8:
    - acceptance suite passes

important_rules:
  - no projection table becomes canonical
  - no phase-less fixes
  - additive change preferred
  - auditability must be preserved
