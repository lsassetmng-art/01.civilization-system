# ============================================================
# APP DEVELOPMENT STUDIO BILLING BOUNDARY POLICY
# ============================================================

status: canonical-draft
layer: policy
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Defines billing-related feature boundary interpretation
for App Development Studio.

# ============================================================
# 1. BILLING POSITION
# ============================================================

billing_position:
App Development Studio is a paid subscription application
with an initial 10-day free trial
and no permanent free plan.

# ============================================================
# 2. BILLING BOUNDARY PRINCIPLE
# ============================================================

billing_boundary_principles:
- trial must allow meaningful evaluation
- paid continuation must remain the normal long-term mode
- pricing explanation must remain simple
- billing boundary must not be hidden or ambiguous
- governed actions must remain governed regardless of billing state

# ============================================================
# 3. TRIAL-AVAILABLE CAPABILITIES
# ============================================================

trial_available_capabilities:
- application onboarding
- design input mode selection
- design authoring
- imported design parsing
- readiness assessment
- proposal generation
- proposal comparison / diff viewing
- review / approval flow evaluation
- pricing view
- settings view
- MVP design asset understanding

trial_meaning:
Trial must allow the user to understand
the value of the application as a design/generation tool.

# ============================================================
# 4. PAID-CONTINUATION CAPABILITIES
# ============================================================

paid_continuation_capabilities:
- continued usage after trial expiration
- ongoing proposal lifecycle use
- long-term artifact management
- long-term version management
- long-term bug/progress management
- long-term governed workflow continuation
- continued shared/common integration usage
- continued subscription-based operational use

paid_meaning:
Paid plans are the normal operational mode
for sustained use of the application.

# ============================================================
# 5. BILLING-INSENSITIVE GOVERNANCE RULES
# ============================================================

billing_insensitive_governance_rules:
- review requirement must not be weakened by billing state
- approval requirement must not be weakened by billing state
- dangerous execution must remain governed
- audit meaning must remain stable
- SQL/Git escalation meaning must remain stable

# ============================================================
# 6. USER-FACING BILLING TEXT PRINCIPLE
# ============================================================

user_facing_billing_text_principle:
Pricing and trial wording must remain short,
clear, and easy to understand.

recommended_text:
初回10日間無料、その後は月額1,980円または年額16,800円

# ============================================================
# 7. CONCLUSION
# ============================================================

conclusion:
Billing boundaries in App Development Studio
must support meaningful trial evaluation
while keeping sustained use clearly subscription-based.
