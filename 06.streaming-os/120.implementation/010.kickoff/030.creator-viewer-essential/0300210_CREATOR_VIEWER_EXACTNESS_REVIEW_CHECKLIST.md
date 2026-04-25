# ============================================================
# CREATOR VIEWER EXACTNESS REVIEW CHECKLIST
# ============================================================

status: canonical-checklist
layer: implementation
domain: creator-viewer-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

scope:
- creator platform
- viewer discovery
- viewer continuity

review_targets:
- 0300120_CREATOR_PLATFORM_EXACT_PAYLOAD.md
- 0300130_VIEWER_DISCOVERY_EXACT_PAYLOAD.md
- 0300140_VIEWER_CONTINUITY_EXACT_PAYLOAD.md
- 0300150_CREATOR_PLATFORM_TABLE_COLUMN_EXACTNESS.md
- 0300160_VIEWER_DISCOVERY_CONTINUITY_TABLE_COLUMN_EXACTNESS.md
- 0300170_CREATOR_VIEWER_AUTH_RLS_EXACTNESS.md
- 0300180_SCREEN_TO_ENDPOINT_MAPPING.md

checklist:
- creator-side control-plane state is not mixed with viewer-side state
- viewer continuity remains distinct from viewer discovery
- creator analytics remains projection output, not raw event output
- watch history and search history remain self-private by default
- playlist identity remains distinct from watch queue identity
- follow state remains viewer continuity object, not creator-side object
- creator screens do not call viewer continuity mutation endpoints
- viewer screens do not call creator studio endpoints
- support-path access remains explicit and auditable
