# ============================================================
# PROJECT FLOW FINAL HANDOFF INTEGRATED SUMMARY
# ============================================================

status: canonical-handoff
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a final integrated summary of ProjectFlow
for future continuation,
review,
and cross-chat handoff.

# ============================================================
# 1. WHAT PROJECTFLOW IS
# ============================================================

definition:
ProjectFlow is a small-and-easy project execution front application.

positioning:
- not the ERP source of truth
- designed for daily field operation
- designed for customer-usable explanation output
- works with ERP through shared BusinessOS
- supports smartphone and PC with the same functional capability

# ============================================================
# 2. CORE VALUE
# ============================================================

core_value:
- easy daily project operation
- task and milestone visibility
- issue and risk visibility
- time entry and progress visibility
- customer explanation support
- spreadsheet export support
- human-editable report generation
- template and WBS proposal support

# ============================================================
# 3. ERP RELATION
# ============================================================

erp_relation:
- ERP direct call from ProjectFlow is forbidden
- shared BusinessOS is the formal integration boundary
- ProjectFlow owns operational execution visibility
- ERP owns formal project authority fields

source_of_truth_split:

projectflow_owns:
- task execution
- issue and risk handling
- milestone operation
- work log
- memo and comment context
- report drafts
- customer-facing explanation materials

erp_owns:
- formal project code
- customer
- contract amount
- formal budget
- accounting actual cost
- billing and sales
- formal organization references

# ============================================================
# 4. COMMERCIAL MODEL
# ============================================================

commercial_model:
- provision_style: pre-installed application
- subscription_style: monthly-use application
- monthly_price_jpy: 900
- initial_trial_period_days: 7
- unpaid_state: read_only

read_only_summary:
- viewing remains available
- mutation and generation are blocked
- blocked actions remain visible but guarded

# ============================================================
# 5. DEVICE RULE
# ============================================================

device_rule:
- smartphone and pc provide the same functional capability
- only layout and density differences are allowed
- no major feature gap by device is allowed

# ============================================================
# 6. MAJOR FUNCTION DOMAINS
# ============================================================

major_function_domains:
- project management
- task management
- milestone management
- issue and risk management
- time entry
- sync status and retry
- spreadsheet export
- progress report draft generation
- template and WBS proposal
- form intake
- memo and meeting note
- comment history
- light automation
- timeline and gantt
- live dashboard

# ============================================================
# 7. CUSTOMER-FACING STANDARD MATERIALS
# ============================================================

standard_customer_facing_materials:
- customer-facing schedule
- progress report
- issue list
- risk list
- decision note
- follow-up action list

material_rules:
- these are standard from the beginning
- they are not optional afterthought outputs
- human review remains mandatory before external use
- wording remains editable before external use

# ============================================================
# 8. TEMPLATE / WBS PROPOSAL RULE
# ============================================================

template_and_wbs_rule:
- repeated project patterns may be stored as templates
- WBS-based schedule proposals may be generated from template structure
- generated schedules are proposals only until confirmed
- confirmed schedules become operational schedule truth
- customer-facing schedules may be generated from WBS or confirmed schedule context

# ============================================================
# 9. AUTOMATION RULE
# ============================================================

automation_rule:
- ProjectFlow supports lightweight automation
- automation is notification and visibility oriented
- automation is not a heavy workflow engine
- silent business mutation is forbidden

# ============================================================
# 10. MULTILINGUAL RULE
# ============================================================

multilingual_rule:
- multilingual support is first-class
- initial languages are Japanese and English
- UI, customer-facing materials, export headers, and one-page summary are in scope
- smartphone and pc support the same language capability
- one output should keep one locale consistently
- fallback behavior is defined

# ============================================================
# 11. IMPLEMENTATION PREP STATUS
# ============================================================

implementation_prep_status:
- architecture is broadly fixed
- screen detail is broadly fixed
- wireframe direction is broadly fixed
- API boundary design is broadly fixed
- physical DB and pre-DDL notes exist
- module split and use case grouping notes exist
- migration split plan note exists
- implementation has not started

# ============================================================
# 12. OPEN ITEMS
# ============================================================

open_items:
- final Android module naming
- DI framework choice
- offline/cache strategy
- business-day rule sophistication
- memo search scope
- automation log model depth
- final DB hardening review with DB owner

# ============================================================
# 13. PHASE BOUNDARY
# ============================================================

current_phase:
design_only

not_started_yet:
- migration execution
- Android coding
- production integration
- operational rollout

# ============================================================
# 14. RECOMMENDED NEXT STEP
# ============================================================

recommended_next_step:
Use this design set as the handoff base,
then continue with either:
- final design review and wording cleanup
or
- implementation-start planning in a separate phase
