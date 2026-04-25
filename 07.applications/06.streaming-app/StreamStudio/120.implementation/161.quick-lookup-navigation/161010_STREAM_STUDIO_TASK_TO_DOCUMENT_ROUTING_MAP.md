# ============================================================
# STREAM STUDIO TASK TO DOCUMENT ROUTING MAP
# ============================================================

status: navigation-map
layer: implementation-navigation
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Maps common tasks to the best starting documents.

task_to_document_routing:

  understand_the_whole_app:
    first_read:
      - 157.final-master-summary
    then:
      - 156.phase1-to-phase6-master-roadmap
      - 158.final-app-specific-audit

  check_whether_implementation_started:
    first_read:
      - 157020_STREAM_STUDIO_CURRENT_STATUS_AND_NOT_IMPLEMENTED_LEDGER.md
    then:
      - 159000_STREAM_STUDIO_FINAL_CLOSEOUT_MEMO.md

  start_phase1_design_review:
    first_read:
      - 154.phase1-final-handoff
    then:
      - 131 to 146 under 120.implementation

  review_phase1_sql_design:
    first_read:
      - 147 to 152 under 120.implementation
    then:
      - 153.phase1-sql

  review_post_apply_verification_flow:
    first_read:
      - 153200_PHASE1_POST_APPLY_VERIFY_BUNDLE.md
    then:
      - 153250_PHASE1_POST_APPLY_VERIFY_RUNNER.sh

  review_later_phase_sequence:
    first_read:
      - 155.phase2-to-phase6-roadmap
    then:
      - 156.phase1-to-phase6-master-roadmap

  continue_in_a_new_chat:
    first_read:
      - 160.next-chat-starter-kit
    then:
      - 157.final-master-summary
      - 159.final-closeout

  confirm_app_only_scope:
    first_read:
      - 158030_STREAM_STUDIO_APP_SPECIFIC_SCOPE_PURITY_MEMO.md
    then:
      - 159020_STREAM_STUDIO_CHAT_SCOPE_AND_EXCLUSION_MEMO.md

fixed_statement:
This routing map is the canonical task-to-document shortcut map for StreamStudio.
