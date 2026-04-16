# ============================================================
# STREAMING OS NOTIFICATION AND EVENT ACCESS CONTROL EXACT MAPPING
# ============================================================

status: canonical-draft
system: streaming-os
domain: access-control-exact-mapping
owner: Boss
prepared_by: Zero

# ============================================================
# 1. SCOPE
# ============================================================

This mapping covers:
- notification records
- notification delivery states
- platform event records
- review alerts
- escalation alerts

# ============================================================
# 2. READ RULES
# ============================================================

notification_read:
- allowed:
  - recipient_subject_id
  - platform operator with explicit support authority
- denied:
  - non-recipient viewers
  - unrelated creators/operators

delivery_state_read:
- allowed:
  - platform operator
  - recipient only for simplified user-facing delivery outcome if surfaced
- denied:
  - arbitrary public viewers

platform_event_read:
- allowed:
  - authorized recipient scope
  - platform operator
  - runtime worker for downstream delivery handling
- denied:
  - unauthorized cross-scope reads

review_alert_read:
- allowed:
  - assigned reviewer / moderator
  - platform operator with review authority
- denied:
  - public viewers
  - unrelated creators

escalation_alert_read:
- allowed:
  - assigned reviewer / moderator
  - platform operator with escalation authority
- denied:
  - public viewers
  - unrelated creators

# ============================================================
# 3. WRITE RULES
# ============================================================

notification_record_create:
- allowed:
  - system runtime worker
  - authorized platform service
- denied:
  - end users directly

notification_read_flag_update:
- allowed:
  - recipient_subject_id
  - platform operator for explicit support correction only
- denied:
  - arbitrary viewers

platform_event_create:
- allowed:
  - authorized platform service
  - system runtime worker
- denied:
  - end users directly

review_alert_update:
- allowed:
  - assigned reviewer / moderator
  - platform operator with review authority
  - system runtime worker for lifecycle propagation
- denied:
  - end users directly

escalation_alert_update:
- allowed:
  - assigned reviewer / moderator
  - platform operator with escalation authority
  - system runtime worker for lifecycle propagation
- denied:
  - end users directly

# ============================================================
# 4. CANONICAL FIXED STATEMENT
# ============================================================

Notification and event access control
shall be recipient-scoped for user-facing visibility
and authority-scoped for operator-facing alert handling.

