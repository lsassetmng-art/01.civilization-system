# ============================================================
# NAMECARD ERROR CODE POLICY
# ============================================================

status: draft
layer: policy
system: applications
application: NameCardManager
policy: error_code
owner: Boss
prepared_by: Zero

purpose:
Defines policy constraints for error code usage.

# ============================================================
# 1. CORE POLICY
# ============================================================

- canonical error codes must be stable
- materially different failure meanings must use distinct codes
- protected-access failure must not be represented as generic success
- approval-required must not be represented as publish-failed
- publish-failed must not be represented as rejected unless actually rejected

# ============================================================
# 2. FAIL-CLOSED POLICY
# ============================================================

Where authorization, protection, or publication boundary cannot
be safely confirmed, fail-closed behavior is required and should
use the appropriate protective error code.

# ============================================================
# 3. UI POLICY
# ============================================================

UI may translate canonical codes into human-readable messages,
but must preserve their underlying meaning.

