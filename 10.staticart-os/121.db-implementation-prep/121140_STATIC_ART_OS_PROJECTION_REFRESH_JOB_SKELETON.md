# ============================================================
# STATIC ART OS PROJECTION REFRESH JOB SKELETON
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

jobs:
  - recompute_user_asset_entitlement
  - refresh_user_library_projection
  - refresh_asset_exhibition_projection
  - publish_cx22073jw_reference_payload

refresh_triggers:
  - purchase reflection
  - subscription reflection
  - lifecycle change
  - rights policy change
  - age policy change
  - region policy change
  - progress save
  - favorite add/remove
  - review decision

job_boundaries:
  entitlement:
    source:
      - asset visibility
      - lifecycle
      - rights
      - age
      - region
      - ownership
      - subscription
      - sample availability
    output:
      - effective entitlement state
      - block reason
  library:
    source:
      - entitlement snapshot
      - favorite state
      - reader progress
      - viewer progress
    output:
      - shelf visibility
      - continue reading visibility
      - continue viewing visibility
  exhibition:
    source:
      - lifecycle
      - rights
      - restriction
      - projection eligibility
    output:
      - eligible/ineligible/revoked
      - reason codes
  cx22073jw:
    source:
      - projection
      - preview summary
      - rights summary
      - continuity signals
      - review risk summary
    output:
      - reference areas only

rules:
  - recompute jobs must be idempotent
  - failed refresh must not corrupt canonical tables
  - cx22073jw publish is one-way from canonical source
