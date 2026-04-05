# ============================================================
# NAME CARD MANAGER DEVELOPMENT
# ============================================================

status: draft
layer: development
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines development focus areas and engineering breakdown guidance
for NameCardManager.

# ============================================================
# 1. DEVELOPMENT PRIORITIES
# ============================================================

Priority order:

1. canonical data and sync correctness
2. local/offline reliability
3. app-internal share correctness
4. ERP publication correctness
5. relationship visibility usability
6. UI refinement

# ============================================================
# 2. RECOMMENDED WORK PACKAGES
# ============================================================

Recommended packages:
- login and session
- local storage
- sync coordinator
- name card list and detail UI
- share target management
- ERP setting and publication flow
- relationship rendering
- failure and retry visibility

# ============================================================
# 3. TEST FOCUS
# ============================================================

Test focus areas:
- online create/update/delete
- offline create/update/delete and replay
- share target add/remove
- app-internal share and revoke
- ERP publication eligibility
- ERP publication failure visibility
- BusinessOS restore to local after loss
- relationship display correctness

# ============================================================
# 4. DEVELOPMENT NOTES
# ============================================================

Development should preserve:
- simple readable UI
- explicit share actions
- visible sync state
- visible publication state
- recoverability from local loss via BusinessOS

