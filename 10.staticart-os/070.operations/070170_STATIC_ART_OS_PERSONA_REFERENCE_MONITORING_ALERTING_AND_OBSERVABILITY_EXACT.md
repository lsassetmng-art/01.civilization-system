# ============================================================
# STATIC ART OS PERSONA REFERENCE MONITORING ALERTING AND OBSERVABILITY EXACT
# ============================================================

status: active-exact-design
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Define exact observability, alerting, and monitoring expectations for
Persona reference behavior inside StaticArtOS.

core_rule:
- monitor reference safety, freshness, projection availability, and boundary violations
- do not treat metrics/logging as authority over Persona truth
- observability is diagnostic, not canonical

# ------------------------------------------------------------
# 1. REQUIRED OBSERVABILITY SIGNALS
# ------------------------------------------------------------

required_signals:
  counters:
    - reflection_event_received_total
    - reflection_event_idempotent_ignored_total
    - projection_refresh_received_total
    - rights_verification_received_total
    - drift_detected_total
    - expired_reference_render_attempt_total
    - forbidden_local_config_validation_total

  gauges:
    - current_projection_missing_count
    - current_expired_reference_count
    - current_restricted_display_count
    - drift_open_count

  histograms_or_timings:
    - reflection_processing_latency_ms
    - projection_freshness_age_seconds
    - time_to_projection_after_snapshot_apply_seconds
    - time_to_rights_verification_after_reference_change_seconds

# ------------------------------------------------------------
# 2. STRUCTURED LOGGING
# ------------------------------------------------------------

structured_logging_fields:
- asset_id
- persona_id
- target_surface
- source_event_id
- signed_snapshot_id
- result_code
- verification_result
- projection_generated_at
- expires_at
- reflection_decision
- drift_type
- severity

logging_rule:
- logs must support traceability without becoming truth source
- logs must not expose hidden upstream Persona truth fields not present in StaticArtOS design

# ------------------------------------------------------------
# 3. ALERT CONDITIONS
# ------------------------------------------------------------

alert_conditions:
  critical:
    - direct mutation route detected
    - forbidden endpoint unexpectedly active
    - drift severity sev_1_critical_boundary detected
    - restricted/expired content rendered as allowed/fresh

  high:
    - projection/reference mismatch rate above threshold
    - projection missing for active current reference above threshold
    - repeated stale overwrite attempts detected

  medium:
    - elevated idempotent duplicate deliveries
    - elevated refresh delay
    - reconciliation backlog above threshold

# ------------------------------------------------------------
# 4. DASHBOARD VIEWS
# ------------------------------------------------------------

dashboard_views:
- current reference health by target surface
- projection freshness by target surface
- rights verification freshness
- drift count by severity and type
- replay/idempotency activity
- expiry distribution

# ------------------------------------------------------------
# 5. OBSERVABILITY JUDGEMENT
# ------------------------------------------------------------

observability_judgement:
- monitoring must reveal safety/freshness/integrity issues early
- monitoring must not replace authoritative reflection logic
