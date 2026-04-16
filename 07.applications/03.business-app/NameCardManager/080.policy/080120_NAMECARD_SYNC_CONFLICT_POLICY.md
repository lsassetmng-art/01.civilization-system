# ============================================================
# NAMECARD SYNC CONFLICT POLICY
# ============================================================

status: draft
layer: policy
system: applications
application: NameCardManager
policy: sync_conflict
owner: Boss
prepared_by: Zero

purpose:
Defines policy rules for sync conflict handling.

# ============================================================
# 1. CORE POLICY
# ============================================================

- BusinessOS remains the source of truth.
- Local offline work is valid but not automatically authoritative.
- Conflict must not be resolved by silent overwrite.

# ============================================================
# 2. REQUIRED POLICY RULES
# ============================================================

- conflicting replay must remain visible
- pending local changes must remain visible
- canonical BusinessOS state must remain visible
- destructive overwrite without explicit resolution is prohibited

# ============================================================
# 3. PRIORITY RULES
# ============================================================

Default priority:
1. preserve canonical BusinessOS state
2. preserve local pending operation visibility
3. require explicit decision when overwrite risk exists

# ============================================================
# 4. ERP RULES
# ============================================================

- local replay must not silently change ERP published state
- local replay must not bypass ERP approval boundary
- local replay must not downgrade published ERP-wide state by accident

# ============================================================
# 5. SHARE RULES
# ============================================================

- app-internal share conflicts may be resolvable by explicit choice
- ERP-wide publication conflicts are constrained by ERP publication policy

