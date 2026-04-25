# ============================================================
# STREAMING OS F3 AUTH ACCESS-CONTROL RLS FREEZE RESULT V1
# ============================================================

status: frozen
phase: F3
scope: auth-accesscontrol-rls
prepared_by: Zero
owner: Boss

decision:
Auth / access-control / RLS meaning is frozen.
Executable SQL policy remains open.

actor_classes:
- viewer_self
- creator_self
- channel_owner
- company_official_manager
- company_overseer
- assigned_reviewer
- moderation_operator
- platform_operator
- runtime_worker
- integration_service

authority_groups:
- read_public
- read_self
- mutate_self
- mutate_owned
- review_assigned
- moderate_assigned
- oversee_company
- operate_platform
- execute_runtime
- execute_integration

core_principles:
- runtime_worker and integration_service are non-human system principals
- affiliation is not ownership
- moderation authority is not creator ownership authority
- public read must be projection-based
- actor resolution must happen before policy evaluation

major_rls_intent:

core_tables:
- streaming_principals = public-facing subset only for public read
- streaming_sessions = visibility-bound public subset only
- archive_assets / clip_assets = public only when visibility and policy allow
- external_publish_jobs = owner + platform + runtime + integration only
- tip_events = no arbitrary viewer raw read
- reaction_events = no public raw event exposure
- ranking_results = public read allowed, runtime mutate only
- ad_data = restricted operational visibility only

creator_and_viewer_tables:
- creator_studio_drafts = creator / delegated company manager / support path
- upload_preparation_records = creator / delegated company manager / runtime
- creator_settings_states = creator-self first, support override only
- creator_analytics_snapshot_refs = creator / oversight subset / runtime
- viewer_home_feed_states = self + support path + runtime
- viewer_search_histories = self only, limited support path
- viewer_watch_histories = self only, limited support path
- subscription_follow_states = self only
- playlist_records / playlist_items = owner only except explicit shared visibility
- watch_queue_states / watch_queue_items = self only, repair by runtime only

moderation_and_notification_tables:
- review queue families = reviewer / moderation / platform / runtime only
- report_records = reporter own subset + moderation path
- appeal_records = requester own subset + moderation path
- notification_records = recipient-scoped
- notification_delivery_states = runtime / delivery path
- review_alert_records = assigned / moderation / platform
- escalation_alert_records = assigned / moderation / platform

corporate_tables:
- channel_records / profile = public-facing subset vs owner/oversight subset separated
- corporate_channel_oversight_records = oversight actors only
- affiliated_streamer_references = oversight actors + limited self subset
- affiliation never implies ownership mutation

global_deny_rules:
- no public raw event exposure
- no arbitrary viewer read of monetization raw events
- no unrelated creator read of moderation queues
- no mutate_owned from affiliation only
- no full oversight visibility from affiliation only
- no author overwrite of moderation state
- no permanent unrestricted platform_operator full read

closed_scope:
- actor classes
- authority groups
- major matrix meaning
- ownership / affiliation / oversight distinction
- table-family RLS intent
- major deny rules

open_refinement_only:
- exact policy SQL
- helper functions
- claim naming
- support path audit schema
- projection view names
