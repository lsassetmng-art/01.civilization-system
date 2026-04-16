# ============================================================
# STREAMING OS YOUTUBE PUSH DETAILED ARCHITECTURE
# ============================================================

status: canonical-draft
system: streaming-os
domain: external-video-publish
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the detailed architecture for
archive and clip publication from StreamingOS
to YouTube.

This document focuses on:
- publication target meaning
- canonical asset ownership
- publish eligibility
- review gates
- push job structure
- push result structure
- retry / failure handling
- ownership and rights interpretation

# ============================================================
# 2. DESIGN POSITION
# ============================================================

StreamingOS remains the canonical owner of stream-derived assets.

YouTube is treated as an external publication destination,
not the canonical source of truth.

Therefore:
- archive and clip canonically belong to StreamingOS
- YouTube publication is a downstream publication action
- publish success does not replace StreamingOS ownership
- publish deletion or visibility change on YouTube
  does not erase canonical StreamingOS asset existence

# ============================================================
# 3. PUBLICATION TARGET TYPES
# ============================================================

External publication targets may conceptually include:
- youtube
- other future video platforms
- internal externalized distribution endpoints

In the current scope,
YouTube is the primary target.

Recommended target field:
- external_publish_target_type
  one of:
  - youtube

# ============================================================
# 4. PUBLISHABLE ASSET TYPES
# ============================================================

The following StreamingOS assets may be publishable:

- archive_asset
- clip_asset

Non-publishable or separately-governed assets may include:
- internal rehearsal recordings
- blocked moderation evidence assets
- draft-only assets
- restricted corporate internal assets

# ============================================================
# 5. CANONICAL OWNERSHIP RULE
# ============================================================

For all external publication actions:

- canonical asset owner remains StreamingOS
- primary rights interpretation remains attached to
  the stream principal / rights holder model
- external platform identifiers are references only
- publication state is an additional state layer,
  not a replacement of canonical ownership

# ============================================================
# 6. PUBLISH ELIGIBILITY RULE
# ============================================================

An asset may be pushed to YouTube only if
all required conditions are satisfied.

Base publish conditions:
- asset exists in StreamingOS
- asset status is publishable
- stream principal is valid
- primary rights holder is valid
- no suspension or block exists
- publication policy allows external release
- YouTube target setting exists
- required review gates are passed

# ============================================================
# 7. REVIEW GATE RULE
# ============================================================

External publication may require review gates.

Recommended review layers:
- rights review
- safety review
- publication policy review
- company approval review
- manual or AI-assisted metadata review

Recommended review result states:
- pending
- approved
- rejected
- blocked
- expired

An asset must not be pushed externally
while required review remains unresolved.

# ============================================================
# 8. YOUTUBE PUBLICATION SETTINGS
# ============================================================

Recommended publication setting fields:

- youtube_publish_setting_id
- asset_id
- external_publish_target_type
- youtube_title
- youtube_description
- youtube_tags
- youtube_thumbnail_asset_id
- youtube_visibility
  one of:
  - private
  - unlisted
  - public
- youtube_publish_schedule_at
- youtube_category_reference
- youtube_language_reference
- youtube_comment_policy_reference
- youtube_monetization_intent_flag

These settings are external publication settings only.
They do not redefine asset ownership.

# ============================================================
# 9. PUBLISH JOB MODEL
# ============================================================

Recommended publish job fields:

- external_publish_job_id
- asset_id
- session_id
- stream_principal_civilization_id
- primary_rights_holder_civilization_id
- external_publish_target_type
- external_publish_status
  one of:
  - draft
  - queued
  - validating
  - waiting_review
  - approved
  - pushing
  - succeeded
  - failed
  - retry_wait
  - cancelled
  - blocked

- publish_attempt_count
- last_attempt_at
- next_retry_at
- publish_requested_by_subject_id
- publish_approved_by_subject_id
- publish_block_reason
- publish_failure_reason

# ============================================================
# 10. PUSH EXECUTION RULE
# ============================================================

Push execution means:
- transform canonical publishable asset and metadata
  into YouTube publish request
- send request to YouTube integration endpoint
- receive result
- persist result in StreamingOS
- update external publication state

Push execution must be idempotent-safe
from StreamingOS-side job orchestration perspective.

# ============================================================
# 11. PUBLISH RESULT MODEL
# ============================================================

Recommended publish result fields:

- external_publish_result_id
- external_publish_job_id
- asset_id
- external_publish_target_type
- external_video_id
- external_video_url_reference
- external_channel_reference
- result_status
  one of:
  - succeeded
  - failed
  - partial
  - unknown

- pushed_at
- visibility_result
- remote_processing_state
- remote_warning_note
- remote_error_note

# ============================================================
# 12. FAILURE / RETRY RULE
# ============================================================

Failure does not destroy canonical asset state.

Failure categories may include:
- network failure
- credential failure
- policy rejection
- metadata invalid
- rights block
- platform-side unknown error
- platform-side quota or rate limitation

Retry policy should distinguish:
- retryable failure
- non-retryable failure
- policy-blocked failure

Recommended retry states:
- retry_wait
- retrying
- retry_exhausted
- permanently_failed

# ============================================================
# 13. CORPORATE STREAM INTERPRETATION
# ============================================================

For official corporate streams:

- publish principal is the company
- rights interpretation is company-first by default
- channel mapping should resolve to corporate external channel
  where policy so requires
- archive / clip publication is treated as company publication
  unless explicit override policy exists

This maintains consistency with:
- principal ownership
- rights ownership
- primary revenue ownership

# ============================================================
# 14. INDIVIDUAL / GROUP / AI(HUMAN) INTERPRETATION
# ============================================================

For non-corporate official streams:

- individual-owned streams publish under individual principal context
- group-owned streams publish under group principal context
- ai_human-owned streams publish under ai_human principal context

Default rule:
external publication inherits canonical principal ownership context
unless explicit override policy exists.

# ============================================================
# 15. VISIBILITY SYNC RULE
# ============================================================

StreamingOS should retain both:
- canonical publication intent
- latest known external visibility result

Recommended fields:
- intended_visibility
- external_reported_visibility
- visibility_sync_status

This is necessary because
external platform state may drift from internal intention.

# ============================================================
# 16. DELETE / UNPUBLISH INTERPRETATION
# ============================================================

If a YouTube video is deleted, hidden, or unpublished:

- external publication state changes
- canonical asset does not disappear
- archive / clip remains part of StreamingOS history
- governance and audit meaning must remain preserved

Therefore,
external disappearance is not canonical erasure.

# ============================================================
# 17. MONETIZATION RELATION
# ============================================================

YouTube push may later produce
external-video-linked monetization meaning.

However:
- the existence of a YouTube video
  is separate from tipping
- external video revenue is separate from live tipping
- both may still map to the same primary revenue beneficiary

For corporate official streams,
default primary beneficiary remains the company.

# ============================================================
# 18. AUDIT / GOVERNANCE NOTES
# ============================================================

StreamingOS should preserve enough records to answer:
- which asset was pushed
- under whose authority it was pushed
- which review state allowed it
- which YouTube result occurred
- whether retry was attempted
- whether publication later became blocked or hidden

# ============================================================
# 19. CANONICAL FIXED STATEMENT
# ============================================================

StreamingOS remains the canonical owner of archive
and clip assets.
YouTube is an external publication destination only.

An asset may be pushed to YouTube only after
required publish eligibility and review conditions are satisfied.

External publication jobs and results
must be explicitly recorded in StreamingOS.

Publish success, failure, deletion, or visibility change
on YouTube does not replace or erase
the canonical StreamingOS asset state.

For official corporate streams,
YouTube publication shall by default inherit
the company ownership context.

# ============================================================
# 20. CURRENT SCOPE CLOSURE
# ============================================================

This document fixes:
- YouTube push positioning
- publish eligibility meaning
- review gate meaning
- publish job meaning
- publish result meaning
- failure / retry meaning
- corporate ownership inheritance

The following remain outside this scope:
- exact API contract
- exact worker execution design
- credential storage implementation
- exact scheduler implementation
- exact UI detail
