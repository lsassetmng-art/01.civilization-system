# ============================================================
# PROJECT FLOW WBS PROPOSAL EXACT RULES NOTE
# ============================================================

status: canonical-exact
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Fixes exact proposal-generation rules
for template-based WBS scheduling.

principles:
- generated schedule is proposal-only until confirmed
- proposal is deterministic for the same inputs
- business-day treatment is explicit
- dependency order must be respected
- manual adjustment remains possible before confirmation

# ============================================================
# 1. INPUTS
# ============================================================

required_inputs:
- project_type
- project_template_id
- project_start_date

optional_inputs:
- business_day_rule_key
- urgency_factor
- scale_factor

initial_policy:
- urgency_factor is optional and may default to 1.0
- scale_factor is optional and may default to 1.0
- if omitted, template default assumptions apply

# ============================================================
# 2. BASE CALCULATION
# ============================================================

base_rules:
- each template task has relative_start_offset_days
- each template task has planned_duration_days
- start_date_candidate = project_start_date + relative_start_offset_days
- end_date_candidate = start_date_candidate + planned_duration_days - 1

duration_rules:
- planned_duration_days must be >= 1
- zero-duration task is not allowed in initial rule set
- milestone_flag tasks may still use duration 1 for visibility

# ============================================================
# 3. DEPENDENCY ADJUSTMENT
# ============================================================

dependency_rules:
- if dependency_template_task_id exists,
  dependent task start_date_candidate must be >= dependency end date + 1 day
- if both relative offset and dependency imply different starts,
  later valid start wins
- dependency adjustment cascades downstream in evaluation order

evaluation_order:
1. sequence_no ascending
2. dependency correction pass
3. business-day correction pass
4. downstream recalculation if corrected start moves

# ============================================================
# 4. BUSINESS-DAY RULES
# ============================================================

business_day_rule_candidates:
- calendar_day
- weekday_only
- custom_business_calendar later

initial_exact_rule:
- initial supported rules are:
  - calendar_day
  - weekday_only

calendar_day:
- no day exclusion

weekday_only:
- Saturday and Sunday are skipped for start/end placement
- simple initial rule does not include national holiday table yet

important_rule:
National holiday sophistication is deferred.
Initial exact scope stops at weekday_only.

# ============================================================
# 5. SCALE AND URGENCY
# ============================================================

scale_factor_rule:
- when provided,
  planned_duration_days_adjusted = ceil(planned_duration_days * scale_factor)

urgency_factor_rule:
- when provided,
  planned_duration_days_adjusted = max(1, ceil(planned_duration_days_adjusted / urgency_factor))

default_rule:
- if both omitted, base template duration is used unchanged

# ============================================================
# 6. MANUAL ADJUSTMENT
# ============================================================

manual_adjustment_rules:
- user may change proposed dates before confirmation
- manual change may trigger downstream recalculation if dependency preservation mode is on
- initial exact policy:
  - dependency preservation mode is on by default
  - user may later disable chained recalculation only if a future policy adds it

# ============================================================
# 7. CONFIRMATION
# ============================================================

confirmation_rules:
- proposal state must be proposed or adjusted before confirmation
- confirmed proposal writes operational schedule baseline
- discarded proposal never overwrites operational schedule

# ============================================================
# 8. OUTPUTS
# ============================================================

proposal_outputs:
- proposed task dates
- proposed milestone dates
- projected completion date
- dependency-aware order
- proposal_payload_json
