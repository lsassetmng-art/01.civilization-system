# ============================================================
# NAMECARD SEARCH IMPLEMENTATION GUIDE
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Provides implementation rules for exact Phase A search behavior.

implementation_rules:
- normalize searchable strings deterministically
- apply visibility filter before final result emission
- support only fixed Phase A modes
- keep multi-token AND behavior consistent across API/UI
- keep unsupported fuzzy dimensions out of UI and API claims
- rebuild normalized company search support when normalization changes

