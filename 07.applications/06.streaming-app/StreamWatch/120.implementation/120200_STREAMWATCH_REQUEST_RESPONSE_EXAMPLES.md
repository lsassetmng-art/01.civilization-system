# ============================================================
# STREAMWATCH REQUEST RESPONSE EXAMPLES
# ============================================================

status: implementation-examples
layer: implementation
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Home Feed Read Example

Request

    {
      "actor_civilization_id": "uuid",
      "viewer_profile_id": "uuid",
      "feed_scope": "personalized",
      "limit": 20,
      "offset": 0,
      "device_mode": "mobile"
    }

Response

    {
      "feed_scope": "personalized",
      "feed_items": [
        {
          "target_type": "video_asset",
          "target_id": "uuid",
          "display_reason": "continue_watching"
        }
      ]
    }

## 2. Entitlement Read Example

Request

    {
      "actor_civilization_id": "uuid",
      "viewer_profile_id": "uuid",
      "target_type": "live_session",
      "target_id": "uuid"
    }

Response

    {
      "target_type": "live_session",
      "target_id": "uuid",
      "entitlement_state": "membership_entitled",
      "playback_cta": "watch_live",
      "archive_access_flag": true
    }

## 3. Progress Upsert Example

Request

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

Response

    {
      "result": "ok",
      "continuity_state": "in_progress"
    }

## 4. Membership Join Execute Example

Request

    {
      "actor_civilization_id": "uuid",
      "viewer_profile_id": "uuid",
      "target_type": "channel",
      "target_id": "uuid",
      "membership_plan_id": "uuid"
    }

Response

    {
      "result": "ok",
      "transaction_state": "confirmed",
      "entitlement_refresh_required": true
    }
