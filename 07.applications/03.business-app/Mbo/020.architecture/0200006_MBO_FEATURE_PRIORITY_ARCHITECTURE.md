# ============================================================
# MBO FEATURE PRIORITY ARCHITECTURE
# ============================================================

status: canonical
application: Mbo
layer: architecture
owner: Boss
prepared_by: Zero

purpose:
Fixes feature priority based on
rival baseline expectations and Mbo differentiation goals.

priority_definition:
MUST:
- required for market baseline or core product identity

SHOULD:
- strongly desirable for rollout quality
- important but not required for first operational release

FUTURE:
- valuable expansion after core fixation and stable operations

# ============================================================
# 1. MUST FEATURES
# ============================================================

must_features:

  baseline_competitive_features:
    - MBO template support
    - flexible evaluation sheet support
    - review workflow support
    - dashboard summary
    - progress visibility
    - review log recording
    - reminder handling
    - smartphone support
    - pc support
    - tablet support
    - iphone support
    - android support
    - multilingual support
    - multi-currency support

  core_identity_features:
    - period management
    - objective creation and editing
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
    - ERP outbound preparation
    - ERP transmission history
    - stale progress alerting
    - delayed review alerting

must_meaning:
Without these features,
Mbo fails either the market baseline
or its own execution-management identity.

# ============================================================
# 2. SHOULD FEATURES
# ============================================================

should_features:
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

should_meaning:
These features strongly improve practical operation
but do not need to block the first canonical release.

# ============================================================
# 3. FUTURE FEATURES
# ============================================================

future_features:
- AI-assisted objective drafting
- AI-assisted review summary
- AI-assisted blocker analysis
- benchmark goal suggestions
- achievement trend prediction
- org-wide goal cascade visualization
- advanced comparative analytics
- external HR system federation beyond ERP
- skills and competency linkage
- reward simulation linkage

future_meaning:
These features are expansion features
after execution, evaluation, and ERP linkage stabilize.

# ============================================================
# 4. RELEASE DIRECTION
# ============================================================

release_direction:
Release 1 should focus on:
- objective execution continuity
- review operation continuity
- evaluation lock governance
- ERP linkage readiness

avoid_in_release_1:
- over-automated AI behavior
- excessive analytics before operational stability
- overly broad HR-suite expansion

# ============================================================
# 5. DESIGN CONCLUSION
# ============================================================

design_conclusion:
Mbo release priority must first satisfy
common HR evaluation expectations,
then clearly win on execution continuity
and ERP readiness.
