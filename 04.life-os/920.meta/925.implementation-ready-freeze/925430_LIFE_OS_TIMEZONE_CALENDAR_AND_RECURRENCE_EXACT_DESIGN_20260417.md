# ============================================================
# LIFE OS TIMEZONE / CALENDAR / RECURRENCE EXACT DESIGN
# ============================================================

status: canonical-draft
document_code: 925430
system: life-os
layer: 920.meta
subfolder: 925.implementation-ready-freeze
owner: Boss
prepared_by: Zero
prepared_at: 2026-04-17

purpose:
- Fix exact timezone, local-day boundary, calendar, recurrence, and window semantics for LifeOS.
- Prevent drift between reminders, daily check-ins, review windows, trend windows, and export ranges.
- Ensure recurrence and date labeling are deterministic across import, reminder, and review paths.

principles:
- store canonical timestamps with timezone-aware semantics
- calculate user-facing day windows in explicit timezone context
- recurrence expansion must be deterministic
- export/report windows must declare timezone basis
- reminder due windows and review windows must not rely on implicit device-local guesses

# ============================================================
# 1. TIMEZONE BASIS
# ============================================================

timezone_basis:
  canonical_timestamp:
    exact_meaning:
      timestamptz occurrence or recording time stored in canonical records.
  local_timezone_code:
    exact_meaning:
      explicit IANA timezone used for user-facing day/week/month calculations.
  effective_timezone_basis:
    order:
      - explicit user profile timezone
      - explicit schedule rule timezone
      - explicit import payload timezone
      - system fallback timezone
  prohibited:
    - implicit floating time with no basis for reminder/review logic

required_time_fields:
  - occurred_at
  - recorded_at
  - submitted_at
  - due_at
  - built_at
  - generated_at
  - timezone_code when local window semantics matter

# ============================================================
# 2. LOCAL DAY / WEEK / MONTH RULES
# ============================================================

local_window_rules:
  local_day:
    exact_meaning:
      00:00:00 to 23:59:59.999 in effective timezone basis.
  local_week:
    exact_meaning:
      configured week start plus 7-day local window in effective timezone basis.
  local_month:
    exact_meaning:
      calendar month in effective timezone basis.
  rolling_window:
    exact_meaning:
      relative duration window anchored on canonical now or explicit anchor timestamp.

usage_examples:
  daily_checkin:
    basis:
      local_day
  habit_streak:
    basis:
      local_day with configured qualifying rule
  weekly_review:
    basis:
      local_week
  monthly_review:
    basis:
      local_month
  export_date_range:
    basis:
      declared timezone and closed/open boundary rule

# ============================================================
# 3. RECURRENCE MODEL
# ============================================================

recurrence_model:
  recurrence_rule_fields:
    - recurrence_rule_id
    - schedule_kind
    - timezone_code
    - frequency_code
    - interval_no
    - by_day_json
    - by_month_day_json
    - effective_from
    - effective_until
    - skip_on_invalid_local_time
    - daylight_saving_policy_code

frequency_codes:
  - daily
  - weekly
  - monthly
  - custom_rrule_like

daylight_saving_policy_codes:
  - shift_forward
  - keep_local_clock_label
  - skip_occurrence
  - duplicate_occurrence_with_policy

recurrence_generation_rules:
  - recurrence expansion must materialize reminder_job due instances deterministically
  - expansion output must store due_at plus schedule_instance_date
  - same recurrence input must reproduce same due instance set for same expansion window

# ============================================================
# 4. IMPORT / EXPORT TIME RULES
# ============================================================

import_time_rules:
  - source timezone must be preserved if supplied
  - normalization must create canonical timestamp and timezone interpretation record
  - floating date imports must record inferred basis explicitly
  - import without valid basis may be rejected or quarantined

export_time_rules:
  - export manifest must include timezone basis
  - date range reports must declare inclusive/exclusive edge semantics
  - human-readable labels may differ from canonical timestamp, but manifest basis remains explicit

# ============================================================
# 5. REVIEW / REMINDER / ALERT TIME RULES
# ============================================================

review_time_rules:
  - daily_checkin belongs to one local_day in effective timezone
  - review windows must not mix timezone bases in same summary without explicit normalization
  - trend summaries must declare whether they use local calendar windows or rolling windows

reminder_time_rules:
  - reminder due_at is canonical timestamp
  - reminder visible date label is local rendering derived from timezone basis
  - quiet_hours evaluation uses local timezone basis
  - recurrence and quiet_hours must be resolved before provider send attempt

alert_time_rules:
  - alert raised_at is canonical timestamp
  - alert grouping into daily/weekly review uses review timezone basis

# ============================================================
# 6. PERSONA BOUNDARY TIME RULE
# ============================================================

persona_boundary_time_rule:
  same_pattern_as_business_to_persona:
    - LifeOS request
    - PersonaOS apply
    - LifeOS result
  allowed_persona_display_time_fields_in_lifeos:
    - request_submitted_at
    - result_received_at
    - snapshot_applied_at
  disallowed:
    - local inference of mutable persona temporal progression as canonical truth

# ============================================================
# 7. ACCEPTANCE GATE
# ============================================================

acceptance_gate:
  required_tests:
    - same daily_checkin maps to correct local_day under timezone change rule
    - recurrence expansion remains deterministic across repeated runs
    - quiet_hours respects effective timezone basis
    - export manifest captures correct timezone basis and boundaries
    - import with floating time is either normalized explicitly or rejected/quarantined
  release_blockers:
    - reminder logic depending on implicit device timezone
    - review windows using undefined local basis
    - recurrence expansion non-determinism
