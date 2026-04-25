# ============================================================
# STREAMWATCH PHASE1 EXACT PAYLOAD FIXED
# ============================================================

status: implementation-freeze
layer: exact-payload
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
source_basis:
- /mnt/data/999999_STREAMWATCH_INTEGRATED_FULL.md

## 1. Scope

This file fixes the minimum viewer-facing request/response contracts
for the first actual implementation pass of StreamWatch.

Included families:
- profile
- home feed
- category tree
- series detail
- library
- follow and saved list
- progress
- tv handoff
- entitlement
- purchase/rental/membership entry

Deferred from this bundle:
- full comment moderation
- full abuse reporting workflow
- offline download
- party-watch
- DRM-specific payload expansion

## 2. Contract Principles

- profile context is explicit when continuity matters
- entitlement/read is authoritative for CTA resolution
- progress truth stays distinct from history truth
- commerce execution may delegate to shared commerce logic
- route context is preserved when tv handoff is involved

## 3. Phase1 Route Catalog

### GET /streamwatch/profile/list
- name: profile_list
- phase: phase1
- request fields: actor_civilization_id
- response fields: profiles[]

### POST /streamwatch/profile/select
- name: profile_select
- phase: phase1
- request fields: actor_civilization_id, viewer_profile_id, device_mode?
- response fields: active_profile, restriction_context

### POST /streamwatch/home-feed/read
- name: home_feed_read
- phase: phase1
- request fields: actor_civilization_id, viewer_profile_id, feed_scope, limit, offset, device_mode
- response fields: feed_scope, feed_items[]

### POST /streamwatch/category-tree/read
- name: category_tree_read
- phase: phase1
- request fields: actor_civilization_id, viewer_profile_id, root_scope, include_personal_library_branch?, depth_limit?
- response fields: root_scope, nodes[]

### POST /streamwatch/search
- name: search
- phase: phase1
- request fields: actor_civilization_id, viewer_profile_id, keyword, limit, offset, device_mode?
- response fields: items[], page

### POST /streamwatch/series/detail/read
- name: series_detail_read
- phase: phase1
- request fields: actor_civilization_id, viewer_profile_id, series_id
- response fields: series, season_groups[], next_up

### POST /streamwatch/library/read
- name: library_read
- phase: phase1
- request fields: actor_civilization_id, viewer_profile_id, section, limit, offset, device_mode?
- response fields: section, items[], summary

### POST /streamwatch/follow/upsert
- name: follow_upsert
- phase: phase1
- request fields: actor_civilization_id, viewer_profile_id, target_type, target_id, follow_flag
- response fields: result, follow_state

### POST /streamwatch/saved-list/mutate
- name: saved_list_mutate
- phase: phase1
- request fields: actor_civilization_id, viewer_profile_id, list_type, target_type, target_id, mutation
- response fields: result, list_type, mutation

### POST /streamwatch/watch-queue/mutate
- name: watch_queue_mutate
- phase: phase1
- request fields: actor_civilization_id, viewer_profile_id, target_type, target_id, mutation
- response fields: result, queue_state

### POST /streamwatch/progress/upsert
- name: progress_upsert
- phase: phase1
- request fields: actor_civilization_id, viewer_profile_id, target_type, target_id, position_seconds, duration_seconds, completion_ratio, device_mode?, route_context?
- response fields: result, continuity_state

### POST /streamwatch/comment/submit
- name: comment_submit
- phase: deferred_stub
- request fields: actor_civilization_id, viewer_profile_id, target_type, target_id, comment_body
- response fields: result, comment_id

### POST /streamwatch/report/submit
- name: report_submit
- phase: deferred_stub
- request fields: actor_civilization_id, viewer_profile_id, target_type, target_id, reason_code, detail?
- response fields: result, report_id

### POST /streamwatch/tv-handoff/start
- name: tv_handoff_start
- phase: phase1
- request fields: actor_civilization_id, viewer_profile_id, target_type, target_id, route_family, route_target_ref
- response fields: result, handoff_session

### POST /streamwatch/tv-handoff/claim
- name: tv_handoff_claim
- phase: phase1
- request fields: actor_civilization_id, viewer_profile_id, handoff_session_id, claim_device_ref
- response fields: result, claim_state

### POST /streamwatch/notifications/read
- name: notifications_read
- phase: phase1
- request fields: actor_civilization_id, viewer_profile_id, cursor?, limit?
- response fields: items[], page

### POST /streamwatch/entitlement/read
- name: entitlement_read
- phase: phase1
- request fields: actor_civilization_id, viewer_profile_id, target_type, target_id
- response fields: target_type, target_id, entitlement_state, playback_cta, archive_access_flag

### POST /streamwatch/purchase/quote
- name: purchase_quote
- phase: phase1
- request fields: actor_civilization_id, viewer_profile_id, target_type, target_id
- response fields: price_quote

### POST /streamwatch/purchase/execute
- name: purchase_execute
- phase: phase1
- request fields: actor_civilization_id, viewer_profile_id, target_type, target_id, quote_id, payment_method_ref
- response fields: result, transaction_state, entitlement_refresh_required

### POST /streamwatch/rental/execute
- name: rental_execute
- phase: phase1
- request fields: actor_civilization_id, viewer_profile_id, target_type, target_id, rental_option_id, payment_method_ref
- response fields: result, transaction_state, entitlement_refresh_required

### POST /streamwatch/membership/join/execute
- name: membership_join_execute
- phase: phase1
- request fields: actor_civilization_id, viewer_profile_id, target_type, target_id, membership_plan_id
- response fields: result, transaction_state, entitlement_refresh_required


## 4. Locked Examples

### Home Feed Read

```json
{
  "actor_civilization_id": "uuid",
  "viewer_profile_id": "uuid",
  "feed_scope": "personalized",
  "limit": 20,
  "offset": 0,
  "device_mode": "mobile"
}
```

### Entitlement Read

```json
{
  "actor_civilization_id": "uuid",
  "viewer_profile_id": "uuid",
  "target_type": "live_session",
  "target_id": "uuid"
}
```

```json
{
  "target_type": "live_session",
  "target_id": "uuid",
  "entitlement_state": "membership_entitled",
  "playback_cta": "watch_live",
  "archive_access_flag": true
}
```

### Progress Upsert

```json
{
  "actor_civilization_id": "uuid",
  "viewer_profile_id": "uuid",
  "target_type": "video_asset",
  "target_id": "uuid",
  "position_seconds": 742,
  "duration_seconds": 1800,
  "completion_ratio": 0.4122,
  "device_mode": "tv_large_screen"
}
```

### Membership Join Execute

```json
{
  "actor_civilization_id": "uuid",
  "viewer_profile_id": "uuid",
  "target_type": "channel",
  "target_id": "uuid",
  "membership_plan_id": "uuid"
}
```

## 5. Fixed Statement

The implementation order must remain:
profile -> continuity -> category -> library -> entitlement ->
commerce entry -> tv handoff.

