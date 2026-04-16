# ============================================================
# STREAMING OS ROOT CONSISTENCY CHECKLIST
# ============================================================

status: canonical-meta
system: streaming-os
owner: Boss
prepared_by: Zero

# ============================================================
# 1. ROOT FILE TARGETS
# ============================================================

root_targets:
- 000_STREAMING_OS_OVERVIEW.md
- 000_STREAMING_OS_INDEX.md
- 00_STREAMING_OS_INTEGRATED_REBUILT.md

# ============================================================
# 2. CHECK ITEMS
# ============================================================

check_items:
- root overview still describes StreamingOS
  as both creator-side and viewer-side platform
- root overview still mentions moderation,
  review,
  notification,
  and company oversight responsibilities
- root index lists the currently active top layers correctly
- root integrated still reflects:
  - creator platform
  - viewer platform
  - moderation / restoration
  - notification / alerting
  - company / affiliation oversight
- root files do not contradict
  freeze-phase progress
- root files explicitly preserve:
  - multilingual interpretation
  - multi-currency interpretation
  - nation-aware currency display interpretation
  - iPhone support
  - Android support
  - PC support
  - tablet support

# ============================================================
# 3. FAILURE SIGNS
# ============================================================

failure_signs:
- root overview reads like old stream-only scope
- root integrated omits creator/viewer/moderation/corporate platform meaning
- root index misses major active layers
- root summary conflicts with freeze-phase meta
- multilingual / multi-currency / cross-device wording disappears from root summaries
- root wording drifts back toward smartphone-only interpretation

