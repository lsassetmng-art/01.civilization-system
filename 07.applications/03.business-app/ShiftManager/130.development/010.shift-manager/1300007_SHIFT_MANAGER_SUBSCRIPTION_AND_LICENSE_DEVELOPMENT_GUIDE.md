# ============================================================
# SHIFT MANAGER SUBSCRIPTION AND LICENSE DEVELOPMENT GUIDE
# ============================================================

status: development-extension
type: subscription-and-license-development-guide
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This guide fixes development rules
for subscription, trial, read-only mode,
and site-based licensing.

# ============================================================
# 2. BUSINESS MODEL RULE
# ============================================================

business_model_rule:
- site-based pricing
- 900 JPY per site / month
- unlimited users within site
- no initial fee
- initial 3-day trial
- one site license covers both PC and smartphone

# ============================================================
# 3. SUBSCRIPTION STATES
# ============================================================

subscription_states:
- trial
- active
- grace
- inactive

# ============================================================
# 4. DEVELOPMENT RULES
# ============================================================

development_rules:
- resolve subscription state before mutation logic
- resolve feature gate before mutation logic
- inactive must block create/edit/generate/publish/share/export
- inactive must still allow permitted viewing
- same core feature model on PC and smartphone
- do not implement device-specific business permissions

# ============================================================
# 5. TIMER RULE
# ============================================================

timer_rule:
- scheduled auto-generation allowed in trial/active/grace
- inactive must skip scheduled execution
- scheduled generation remains draft-only

# ============================================================
# 6. TEST CHECKPOINTS
# ============================================================

test_checkpoints:
- active/trial/grace allow configured mutation set
- inactive blocks mutation set
- inactive preserves allowed viewing
- PC and smartphone expose same core business capability
- feature gate outputs are stable and explainable

# ============================================================
# 7. CONCLUSION
# ============================================================

Subscription and license development
must remain site-based, read-only-safe,
and device-neutral in business capability.

