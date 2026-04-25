# ============================================================
# STREAM STUDIO PHASE 1 INDEX FK CONSTRAINT EXACT DESIGN
# ============================================================

status: sql-pre-ddl
layer: implementation-db-exact
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines exact index, FK, unique constraint, and check direction for Phase 1.

# ============================================================
# 1. FOREIGN KEY DIRECTION
# ============================================================

direct_foreign_keys:
- creator_project_member.creator_project_id -> creator_project.creator_project_id
- creator_upload_job.creator_project_id -> creator_project.creator_project_id
- creator_video_draft.creator_project_id -> creator_project.creator_project_id
- creator_edit_marker.creator_video_draft_id -> creator_video_draft.creator_video_draft_id
- creator_subtitle_track.creator_video_draft_id -> creator_video_draft.creator_video_draft_id

fk_delete_direction:
- project child records should not silently orphan
- hard-delete cascade is not preferred for business-critical records
- archival / status transition is preferred over destructive cascade
- implementation may use restrict or equivalent safe behavior

# ============================================================
# 2. UNIQUE CONSTRAINT DIRECTION
# ============================================================

recommended_uniques:
- creator_project.project_code unique within chosen root scope
- creator_runtime_job idempotent tuple uniqueness when job_type + target_ref + idempotency_key applies
- creator_edit_marker optional uniqueness when client_marker_key is introduced physically later

non_phase1_uniques_not_required_yet:
- listing / membership / split partial uniqueness

# ============================================================
# 3. CHECK CONSTRAINT DIRECTION
# ============================================================

recommended_checks:

  creator_project:
    - version >= 1

  creator_upload_job:
    - file_size_bytes > 0

  creator_video_draft:
    - draft_version >= 1
    - version >= 1

  creator_edit_marker:
    - start_ms >= 0
    - end_ms > start_ms

  creator_runtime_job:
    - attempt_count >= 0
    - max_attempts >= 1

  creator_dead_letter_entry:
    - final_attempt_count >= 0

notes:
- enum value enforcement may be application-first and DB-constraint-second
- numeric checks should be present where safe and stable

# ============================================================
# 4. INDEX FAMILY DIRECTION
# ============================================================

project_indexes:
- creator_project(owner_creator_ref, project_status, updated_at desc)
- creator_project_member(creator_project_id)
- creator_project_member(member_ref, updated_at desc)

upload_indexes:
- creator_upload_job(creator_project_id, ingest_status, updated_at desc)
- creator_upload_job(resumable_session_ref)

draft_indexes:
- creator_video_draft(creator_project_id, draft_status, updated_at desc)
- creator_video_draft(asset_ref)
- creator_edit_marker(creator_video_draft_id)
- creator_subtitle_track(creator_video_draft_id)
- creator_subtitle_track(language_code)

publish_indexes:
- creator_publish_setting(publish_ref)
- creator_publish_setting(readiness_status)
- creator_publish_request(publish_ref, request_status, created_at desc)
- creator_publish_request(execute_after)

runtime_indexes:
- creator_runtime_job(job_type, state, next_retry_at)
- creator_runtime_job(target_ref)
- creator_dead_letter_entry(job_type, created_at desc)
- creator_dead_letter_entry(target_ref)

audit_indexes:
- creator_audit_event(target_ref, created_at desc)
- creator_audit_event(actor_ref, created_at desc)
- creator_audit_event(action_code, created_at desc)

# ============================================================
# 5. OPTIMISTIC LOCK TARGETS
# ============================================================

optimistic_lock_targets:
- creator_project.version
- creator_video_draft.version

optional_later_extension:
- publish setting version not required in phase 1 if single-writer pattern is assumed
- may be added later if concurrent mutation risk rises

# ============================================================
# 6. SOFT-REF VS FK DIRECTION
# ============================================================

soft_refs_kept_as_text:
- asset_ref
- publish_ref
- request_id
- actor_ref
- member_ref
- owner_creator_ref
- scope_ref
- target_ref

reason:
These often point to cross-domain or heterogeneous targets.

# ============================================================
# 7. FIXED INDEX / FK STATEMENT
# ============================================================

fixed_statement:
Phase 1 FK direction, index families, and core constraint directions
are frozen here before physical SQL writing.
