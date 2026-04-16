# ============================================================
# SHIFT MANAGER SUPPORTED DEVICE POLICY
# ============================================================

status: design-extension
type: supported-device-policy
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the supported device policy
for ShiftManager.

# ============================================================
# 2. SUPPORTED DEVICE TYPES
# ============================================================

supported_devices:
- iphone
- android
- pc
- tablet

# ============================================================
# 3. CORE RULE
# ============================================================

core_rule:
ShiftManager should support the same core feature set across:
- iPhone
- Android
- PC
- tablet

Differences should be limited to:
- layout optimization
- usability optimization
- screen density optimization

# ============================================================
# 4. AUTHORIZATION RULE
# ============================================================

authorization_rule:
Feature availability must depend on:
- subscription state
- role
- visibility scope

Feature availability must not fundamentally depend on:
- device type

# ============================================================
# 5. BUSINESS POSITIONING RELATION
# ============================================================

business_positioning_relation:
This policy supports:
- site-based fixed pricing
- multi-operator usage
- PC and mobile operational flexibility
- tablet-friendly operation in field/store environments

# ============================================================
# 6. CONCLUSION
# ============================================================

ShiftManager should explicitly support:
- iPhone
- Android
- PC
- tablet

with the same core business feature set.

