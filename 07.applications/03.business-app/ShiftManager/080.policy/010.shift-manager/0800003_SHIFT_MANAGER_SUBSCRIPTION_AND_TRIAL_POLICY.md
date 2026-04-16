# ============================================================
# SHIFT MANAGER SUBSCRIPTION AND TRIAL POLICY
# ============================================================

status: design-extension
type: subscription-and-trial-policy
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. POSITIONING
# ============================================================

ShiftManager is positioned not as "SaaS"
but as a:
- subscription-based application
- monthly-use application

This wording should be preferred in future design and explanation.

# ============================================================
# 2. PRICING MODEL
# ============================================================

pricing_model:
- monthly fixed price: 900 JPY
- unlimited users
- no initial fee

value_positioning:
ShiftManager should be explained as:
- easy to understand
- fixed monthly cost
- install and use quickly
- no initial setup fee
- practical shift operation application

avoid_expression:
- SaaS

preferred_expression:
- subscription-based application
- monthly-use application

# ============================================================
# 3. TRIAL POLICY
# ============================================================

trial_policy:
- initial 3-day trial is available
- trial starts from first activation/use
- trial is intended to let users experience the core value quickly

trial_goal:
Allow the user to try:
- shift creation
- draft editing
- auto generation
- publication
- viewing
- printable PDF export

# ============================================================
# 4. SUBSCRIPTION STATUS MODEL
# ============================================================

subscription_status:
- trial
- active
- grace
- inactive

meaning:
trial:
- 3-day initial trial
- near-full feature access

active:
- paid active state
- full feature access

grace:
- temporary grace period after payment issue or renewal delay
- limited temporary continuation may be allowed

inactive:
- unpaid / non-active state
- read-only mode

# ============================================================
# 5. FEATURE ACCESS POLICY
# ============================================================

allowed_when_trial:
- shift create
- shift edit
- auto generation
- publish
- republish
- share rule management
- PDF export
- ERP export
- notification viewing
- shift viewing

allowed_when_active:
- all standard application features

allowed_when_grace:
- basically same as active in short grace period
- final exact grace duration may be fixed later

allowed_when_inactive:
- self shift viewing
- already visible published shift viewing
- notification viewing
- login/access
- minimal account/status confirmation

disabled_when_inactive:
- shift create
- shift edit
- auto generation
- publish
- republish
- share rule management
- new PDF export
- ERP export
- generation rule creation
- management-side setting changes

# ============================================================
# 6. READ-ONLY MODE PRINCIPLES
# ============================================================

read_only_mode_principles:
- do not suddenly hide already visible necessary shift information
- keep viewing possible
- stop management/change operations
- preserve practical field usability
- make paid value clear without causing operational confusion

important_rule:
Inactive users should be able to read,
but should not be able to change, generate, publish, share, export, or newly print.

# ============================================================
# 7. AUTHORITY / VISIBILITY INTERACTION
# ============================================================

important_interaction_rules:
- inactive does not expand visibility
- viewing remains limited to already permitted visibility scope
- inactive managers should not retain management actions
- inactive staff may still view self and already visible published shifts
- PDF new export is disabled in inactive state

# ============================================================
# 8. SUPPORT POLICY
# ============================================================

standard_support:
- basic support is provided through in-app AI chat

not_included:
- individual configuration代行
- individual custom development
- individual operational support

meaning:
The standard monthly fee covers application usage,
not project-specific service work.

# ============================================================
# 9. FUTURE OPEN ITEMS
# ============================================================

non_blocking_open_items:
- exact grace duration
- whether ERP export is fully enabled during trial
- whether board/department PDF export is fully enabled during trial
- final subscription status source and sync method

# ============================================================
# 10. CONCLUSION
# ============================================================

ShiftManager should be positioned as:
- a subscription-based application
- monthly fixed 900 JPY
- unlimited users
- no initial fee
- 3-day initial trial
- read-only viewing mode when inactive

