# ============================================================
# SHIFT MANAGER SITE SUBSCRIPTION MODEL
# ============================================================

status: design-extension
type: site-subscription-model
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes how ShiftManager should model:
- licensed site/unit
- subscription status
- trial period
- feature gating basis

# ============================================================
# 2. CORE POSITION
# ============================================================

core_position:
- pricing is site-based
- one licensed site may use PC and smartphone
- unlimited users inside licensed site
- subscription state is evaluated per site/unit

# ============================================================
# 3. RECOMMENDED CORE TABLES
# ============================================================

recommended_tables:
- shift_site_license
- shift_site_subscription_status
- shift_site_feature_gate_log

# ============================================================
# 4. SHIFT_SITE_LICENSE
# ============================================================

purpose:
Represents the licensed operational site/unit.

recommended_columns:
- site_license_id uuid primary key
- company_id uuid not null
- site_id uuid not null
- site_code text not null
- site_name text not null
- active_flag boolean not null default true
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

recommended_constraints:
- unique(company_id, site_id)
- unique(company_id, site_code)

meaning:
One site license corresponds to one priced operation unit.

# ============================================================
# 5. SHIFT_SITE_SUBSCRIPTION_STATUS
# ============================================================

purpose:
Stores current and historical subscription state
for each licensed site.

recommended_columns:
- site_subscription_status_id uuid primary key
- site_license_id uuid not null
- subscription_status text not null
- trial_started_at timestamptz null
- trial_ends_at timestamptz null
- active_started_at timestamptz null
- grace_started_at timestamptz null
- grace_ends_at timestamptz null
- inactive_started_at timestamptz null
- current_period_started_at timestamptz null
- current_period_ends_at timestamptz null
- last_billing_reference text null
- status_changed_at timestamptz not null default now()
- status_changed_reason text null
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

recommended_constraints:
- subscription_status in ('trial', 'active', 'grace', 'inactive')

recommended_rule:
Only one current active status row per site should be treated as authoritative,
or current state should be materialized separately depending on implementation style.

# ============================================================
# 6. SHIFT_SITE_FEATURE_GATE_LOG
# ============================================================

purpose:
Optional trace table for why a feature was allowed/blocked.

recommended_columns:
- feature_gate_log_id uuid primary key
- site_license_id uuid not null
- person_id uuid null
- feature_code text not null
- decision text not null
- evaluated_status text not null
- evaluated_at timestamptz not null default now()
- reason_code text null
- details_json jsonb null

recommended_constraints:
- decision in ('allowed', 'blocked')
- evaluated_status in ('trial', 'active', 'grace', 'inactive')

# ============================================================
# 7. SUBSCRIPTION STATUS MEANINGS
# ============================================================

trial:
- initial 3-day trial
- near-full feature usage allowed

active:
- paid active state
- standard full feature usage allowed

grace:
- temporary state after payment issue or renewal delay
- short continuation allowed

inactive:
- unpaid / inactive state
- read-only mode

# ============================================================
# 8. FEATURE GATE MODEL
# ============================================================

feature_gate_categories:
- viewing
- schedule_write
- generation
- publish
- share_manage
- pdf_export
- erp_export
- admin_setting

recommended_feature_codes:
- view_self_shift
- view_visible_publication
- create_schedule
- edit_schedule
- run_auto_generation
- publish_schedule
- republish_schedule
- manage_share_rule
- export_pdf
- export_erp
- manage_generation_rule

# ============================================================
# 9. GATE RULES BY STATUS
# ============================================================

trial:
- viewing = allowed
- schedule_write = allowed
- generation = allowed
- publish = allowed
- share_manage = allowed
- pdf_export = allowed
- erp_export = allowed
- admin_setting = allowed within standard scope

active:
- all standard features allowed

grace:
- same as active in short grace window by default

inactive:
- viewing only
- write/generate/publish/share/export blocked

# ============================================================
# 10. READ-ONLY SCOPE
# ============================================================

inactive_allowed_scope:
- self shift viewing
- already visible published shift viewing
- notification viewing
- minimal account/subscription status viewing

inactive_blocked_scope:
- create schedule
- edit schedule
- auto generation
- publish / republish
- share rule management
- new PDF export
- ERP export
- generation rule management
- management-side setting changes

# ============================================================
# 11. RELATION TO VISIBILITY MODEL
# ============================================================

important_rule:
Subscription inactivity must not expand visibility.

meaning:
Even in read-only mode,
the user can only view what was already permitted by normal visibility rules.

# ============================================================
# 12. CONCLUSION
# ============================================================

ShiftManager should model subscription at the site level,
with status values:
- trial
- active
- grace
- inactive

Feature gates should then be evaluated from:
- site subscription state
- normal role/visibility authority
- endpoint/feature type

