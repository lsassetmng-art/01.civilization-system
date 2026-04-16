# ============================================================
# PROJECT FLOW FIXED AND OPEN SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a compact summary of what is fixed
and what remains intentionally open.

# ============================================================
# 1. FIXED ITEMS
# ============================================================

fixed_items:

identity_and_positioning:
- ProjectFlow is a field operation front
- ProjectFlow is not the ERP source of truth
- ERP integration is mediated by shared BusinessOS
- ERP direct call from ProjectFlow is forbidden

commercial_model:
- provision style is pre-installed application
- subscription style is monthly-use application
- monthly price is 900 JPY
- initial trial period is 7 days
- unpaid state is read-only

device_rule:
- smartphone and pc provide the same functional capability
- device differences are limited to layout and density

core_domains:
- project management
- task management
- milestone management
- issue and risk management
- time entry
- sync status and retry
- export and report

additive_domains:
- form intake
- light automation
- timeline
- gantt
- live dashboard
- memo and meeting note
- comment history
- project template
- WBS scheduling proposal

customer_materials:
- customer-facing schedule
- progress report
- issue list
- risk list
- decision note
- follow-up action list

governance_and_output_rules:
- blocked actions remain visible but guarded
- external-use review is mandatory
- generated report is draft until reviewed
- generated schedule is proposal until confirmed

# ============================================================
# 2. OPEN ITEMS
# ============================================================

open_items:

implementation_detail:
- final Android module names
- DI framework choice
- local cache and offline strategy
- background job scheduling style

data_and_db:
- final schema name confirmation
- final enum hardening style
- RLS detail
- trigger execution order review with DB owner

feature_detail:
- business-day rule sophistication level
- whether automation execution log becomes its own model
- whether memo full-text search is initial scope
- whether customer-limited sharing is future phase

ux_detail:
- comment edit window policy
- final export packaging UX
- final wording preset strategy for customer materials

# ============================================================
# 3. IMPORTANT DISTINCTIONS
# ============================================================

important_distinctions:
- proposal != confirmed schedule
- draft report != externally reviewed report
- dashboard/timeline/gantt != source of truth
- form input != separate truth domain
- automation != hidden workflow engine
