# ============================================================
# STREAMING OS IMPLEMENTATION KICKOFF PACK V1
# ============================================================

status: kickoff-pack
scope: implementation-preparation
implementation_status: not_started
prepared_by: Zero
owner: Boss

purpose:
This document records the approved implementation-start order
without starting implementation itself.

reading_order:
1. F1 executable DDL freeze
2. F2 API freeze
3. F3 auth / RLS freeze
4. F4 runtime freeze
5. F5 screen freeze
6. F6 implementation-kickoff freeze

implementation_goal:
Bring StreamingOS to safe minimum operational readiness
without breaking the frozen design baseline.

approved_kickoff_phases:

K1_foundation:
- streaming-api-contracts
- streaming-core-principal
- streaming-core-session

K2_asset_publish:
- streaming-core-asset
- streaming-core-publish

K3_creator_viewer_essential:
- streaming-creator-platform
- streaming-viewer-discovery
- streaming-viewer-continuity

K4_moderation_notification_essential:
- streaming-review-pipeline
- streaming-moderation
- streaming-notification

K5_corporate_essential:
- streaming-channel
- streaming-corporate-oversight

K6_extended:
- streaming-core-monetization
- streaming-core-reaction-ranking-ad

ddl_apply_order:
1. boot 43 tables
2. principal / session / asset / publish
3. creator / viewer
4. moderation / notification
5. corporate
6. supplementary 20 tables
7. RLS SQL
8. trigger / function
9. retry / dead-letter support structures

api_implementation_order:
1. principal / session
2. archive / clip / publish
3. creator platform
4. viewer discovery / continuity
5. moderation / appeal
6. notification / event
7. channel / corporate affiliation
8. monetization
9. ranking / ad

ui_implementation_order:
1. creator essential
2. viewer essential
3. moderation essential
4. notification essential
5. corporate essential
6. analytics / oversight deep screens
7. monetization / ranking / ad screens

mandatory_done_definition:
- DDL order is closed
- API payload exactness is closed
- actor / authority boundary is closed
- runtime presence is explicit
- screen mapping is explicit
- no hidden reopen point remains

stop_rules:
- ownership and affiliation become mixed
- moderation state becomes end-user writable
- runtime queue becomes public API
- canonical endpoint meaning collapses into transport naming
- new table family appears without change control
- screen identity fragments by device

important_note:
SQL execution is intentionally excluded here.
Persona-side SQL will be handled later in a separate step.
