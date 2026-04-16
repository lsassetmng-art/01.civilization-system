# ============================================================
# MBO EXPANDED FEATURE ARCHITECTURE
# PRIORITY A + B FIXED
# ============================================================

status: canonical
application: Mbo
layer: architecture
owner: Boss
prepared_by: Zero

purpose:
Fixes the expanded feature set of Mbo
including all priority A and priority B features.

scope_rule:
- priority A is mandatory
- priority B is also included in formal design scope
- priority C remains future scope

# ============================================================
# 1. FORMAL FEATURE SET
# ============================================================

formal_feature_set:

  core_execution_and_evaluation:
    - period management
    - objective creation
    - objective editing
    - objective categorization
    - quantitative target management
    - qualitative target management
    - success criteria management
    - objective priority management
    - objective weight management
    - action plan breakdown per objective
    - progress update history
    - blocker recording
    - next-action recording
    - review schedule handling
    - review result logging
    - evaluation draft
    - evaluation confirmation
    - final lock after confirmation
    - stale progress alerting
    - delayed review alerting

  rollout_quality_features:
    - manager comment templates
    - department common objective templates
    - bulk review scheduling
    - objective duplication by period
    - KPI chart visualization
    - aggregation export
    - review reminder batch sending
    - project linkage
    - task linkage
    - evidence attachment reference
    - resend control for ERP failures
    - read-only executive summary views
    - review cadence presets
    - evaluation calibration support
    - interview memo support

  platform_and_foundation:
    - multilingual support
    - multi-currency support
    - iphone support
    - android support
    - pc support
    - tablet support

  ERP_related:
    - ERP outbound preparation
    - ERP transmission history
    - ERP resend management

# ============================================================
# 2. PRODUCT MEANING
# ============================================================

product_meaning:
Mbo is formally defined as an execution-centered
goal and evaluation management application,
not only a review-sheet application.

design_position:
Mbo must support
goal definition
-> action execution
-> progress evidence
-> review continuity
-> evaluation confirmation
-> ERP transfer readiness

# ============================================================
# 3. APP-SPECIFIC RESPONSIBILITIES
# ============================================================

app_specific_responsibilities:
- objective domain meaning
- objective period handling
- action plan semantics for Mbo
- review cadence semantics for Mbo
- evaluation confirmation semantics
- ERP outbound business meaning for Mbo
- executive objective summary meaning

# ============================================================
# 4. COMMONIZABLE RESPONSIBILITIES
# ============================================================

commonizable_responsibilities:
- template selection surfaces
- reminder batch sending surfaces
- export job handling
- evidence reference picker
- task linkage picker
- project linkage picker
- KPI chart rendering surface
- executive summary read-only viewer shell

