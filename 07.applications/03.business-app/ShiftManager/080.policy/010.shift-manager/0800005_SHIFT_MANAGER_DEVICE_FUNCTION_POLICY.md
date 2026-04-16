# ============================================================
# SHIFT MANAGER DEVICE FUNCTION POLICY
# ============================================================

status: design-extension
type: device-function-policy
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the device function policy for ShiftManager,
especially the relation between:
- PC usage
- smartphone usage
- feature availability
- UI optimization

# ============================================================
# 2. CORE POSITION
# ============================================================

core_position:
- PC and smartphone should support the same core feature set
- ShiftManager should not assume fundamental feature differences by device type
- differences should be limited mainly to UI optimization and usability adjustment

# ============================================================
# 3. IMPORTANT RULE
# ============================================================

important_rule:
Authorization and feature availability must be decided by:
- subscription state
- role
- visibility scope

They must not be fundamentally decided by:
- device type

# ============================================================
# 4. SAME FEATURE PRINCIPLE
# ============================================================

same_feature_principle:
The same business features should exist on:
- company PC
- company smartphone

covered_feature_examples:
- shift viewing
- shift create
- shift edit
- auto generation
- publish / republish
- share management
- PDF export
- ERP export visibility
- notification viewing

meaning:
A user should not be told that a feature exists only because they are on PC
or only because they are on smartphone,
except for temporary implementation-phase limitations.

# ============================================================
# 5. ALLOWED UI DIFFERENCES
# ============================================================

allowed_ui_differences:
- layout optimization
- navigation optimization
- table density adjustment
- button placement adjustment
- preview arrangement adjustment
- editing ergonomics adjustment

examples:
smartphone_optimized:
- today shift first
- week view emphasis
- compact confirmation flow
- simpler edit interaction
- notification-first access

pc_optimized:
- denser list/table view
- wider edit surface
- easier multi-row overview
- broader preview surface
- easier detailed management navigation

important_note:
These are usability differences,
not business capability differences.

# ============================================================
# 6. DISCOURAGED DIFFERENCES
# ============================================================

discouraged_differences:
- PC can publish but smartphone cannot
- smartphone can view but PC cannot
- PC can manage share but smartphone cannot
- smartphone can export PDF but PC cannot
- different business permission sets by device type

meaning:
Such differences increase operational confusion
and weaken pricing/license clarity.

# ============================================================
# 7. RELATION TO LICENSE MODEL
# ============================================================

relation_to_license_model:
- one site-based license covers both company PC and company smartphone
- device dual-usage is expected
- multiple operators may work across PC and smartphone under the same site license

reason:
This matches:
- site-based pricing
- unlimited users within site
- easy operational rollout

# ============================================================
# 8. RELATION TO SUBSCRIPTION / READ-ONLY
# ============================================================

subscription_relation:
If subscription state is inactive,
both PC and smartphone should enter the same read-only policy.

inactive_means_on_all_devices:
- self shift viewing allowed
- already visible published shift viewing allowed
- notification viewing allowed
- create/edit/generate/publish/share/export blocked

important_rule:
Read-only policy must be consistent across device types.

# ============================================================
# 9. IMPLEMENTATION RECOMMENDATION
# ============================================================

implementation_recommendation:
- keep the same backend capability model for PC and smartphone
- keep the same feature gate logic for PC and smartphone
- vary only UI composition and presentation density
- avoid device-specific business branching unless absolutely necessary

# ============================================================
# 10. CONCLUSION
# ============================================================

ShiftManager should assume:
- same core features on PC and smartphone
- different UI optimization only
- authorization based on subscription/role/visibility
- no fundamental business feature split by device type

