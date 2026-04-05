# ============================================================
# NAMECARD UI STATE INTERFACE
# ============================================================

status: draft
layer: interface
system: applications
application: NameCardManager
screen_scope: ui_state
owner: Boss
prepared_by: Zero

purpose:
Defines how canonical UI state codes should appear across screens.

# ============================================================
# 1. LIST SCREEN STATE USAGE
# ============================================================

The list screen may display:
- sync state badge
- app share state badge
- ERP publication state badge
- relationship indicator

Recommended examples:
- pending sync
- conflict
- shared
- published
- approval pending
- related

# ============================================================
# 2. DETAIL SCREEN STATE USAGE
# ============================================================

The detail screen may display:
- full sync state
- full app share state
- full ERP publication state
- relationship visibility state
- protected-field visibility state

# ============================================================
# 3. SETTINGS SCREEN STATE USAGE
# ============================================================

The settings screen may display:
- pending sync count
- ERP eligibility status
- current ERP publication-related state
- protected access availability where relevant

# ============================================================
# 4. PRESENTATION RULE
# ============================================================

UI state should be:
- simple
- consistent
- readable
- non-ambiguous

Approval pending must not look identical to published.
Conflict must not look identical to generic failure.

