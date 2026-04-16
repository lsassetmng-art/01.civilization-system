# ============================================================
# LIFE PLANNER POLICY AND DATA ACCEPTANCE CRITERIA
# ============================================================

status: draft
system: LifePlanner
layer: 120.implementation
subfolder: 040.acceptance-criteria
owner: Boss
prepared_by: Zero
schema: life

policy_acceptance:
  - all persistence assumptions point to life schema
  - derived values are not treated as primary stored truth
  - sensitive categories are hidden unless allowed by share scope and allow flag
  - pricing restrictions are reflected in UI blocking rules
  - archived plan is not treated as normal editable active plan

data_acceptance:
  - amount fields use amount_minor + currency_code conceptually
  - payload enum values align with enum master
  - logical table names align with glossary freeze
  - screen item binding aligns with logical model ownership

non_functional_acceptance:
  - multilingual support is assumed for UI labels
  - multicurrency display rules avoid misleading mixed sums
  - device differences change layout density only, not core capability
