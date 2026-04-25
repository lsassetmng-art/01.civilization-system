# ============================================================
# STREAM STUDIO PHASE TO DOCUMENT ENTRYPOINT MAP
# ============================================================

status: navigation-map
layer: implementation-navigation
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Maps each phase to the best entrypoint documents.

phase_entrypoints:

  phase_1:
    first_read:
      - 154.phase1-final-handoff
    second_read:
      - 131 to 146 under 120.implementation
    sql_read:
      - 147 to 153 under 120.implementation
    verify_read:
      - 153200 post-apply verify bundle

  phase_2:
    first_read:
      - 155010_STREAM_STUDIO_PHASE2_REVIEW_APPROVAL_NOTIFICATION_ROADMAP.md
    second_read:
      - 156000 master roadmap atlas

  phase_3:
    first_read:
      - 155020_STREAM_STUDIO_PHASE3_MARKETPLACE_AND_PAID_VIDEO_ROADMAP.md
    second_read:
      - 156010 phase comparison matrix

  phase_4:
    first_read:
      - 155030_STREAM_STUDIO_PHASE4_MEMBERSHIP_ROADMAP.md
    second_read:
      - 156020 dependency heatmap and chain

  phase_5:
    first_read:
      - 155040_STREAM_STUDIO_PHASE5_COLLABORATOR_SPLIT_SETTLEMENT_ROADMAP.md
    second_read:
      - 156030 milestone and gate atlas

  phase_6:
    first_read:
      - 155050_STREAM_STUDIO_PHASE6_EXTERNAL_PUSH_AND_OPS_HARDENING_ROADMAP.md
    second_read:
      - 156040 release slice and delivery atlas

fixed_statement:
This is the canonical phase-to-entrypoint navigation map for StreamStudio.
