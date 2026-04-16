# ============================================================
# STREAMWATCH API EXACT CONTRACT
# ============================================================

status: implementation-freeze
layer: implementation
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document fixes the minimum app-facing API surface required for StreamWatch implementation.

## 2. Required API Set

- /streamwatch/profile/list
- /streamwatch/profile/select
- /streamwatch/home-feed/read
- /streamwatch/category-tree/read
- /streamwatch/search
- /streamwatch/series/detail/read
- /streamwatch/library/read
- /streamwatch/follow/upsert
- /streamwatch/saved-list/mutate
- /streamwatch/watch-queue/mutate
- /streamwatch/progress/upsert
- /streamwatch/comment/submit
- /streamwatch/report/submit
- /streamwatch/tv-handoff/start
- /streamwatch/tv-handoff/claim
- /streamwatch/notifications/read
- /streamwatch/entitlement/read
- /streamwatch/purchase/quote
- /streamwatch/purchase/execute
- /streamwatch/rental/execute
- /streamwatch/membership/join/execute

## 3. Contract Principles

- all contracts are additive
- profile context must be explicit when continuity matters
- entitlement-read must be authoritative for CTA resolution
- commerce execution may delegate into shared commerce logic
- progress truth must stay distinct from history truth

## 4. Critical Exactness Notes

### profile/select
Must establish active viewer_profile and effective restriction context.

### library/read
Must return library previews and sections for the active profile.

### progress/upsert
Must preserve device mode and route context when present.

### entitlement/read
Must return both entitlement state and resolved playback-oriented CTA state.
