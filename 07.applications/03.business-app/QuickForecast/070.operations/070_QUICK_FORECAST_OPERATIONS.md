# ============================================================
# QUICK FORECAST OPERATIONS
# ============================================================

status: canonical
layer: operations
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling of QuickForecast Basic / Pro.

# ============================================================
# 1. OPERATIONAL ROLE
# ============================================================

QuickForecast must remain operable in short,
interrupted, and mobile business contexts.

Operational design must support:
- fast start
- resumable work
- explicit state visibility
- low-friction draft continuation
- safe Pro-tier submission handling

# ============================================================
# 2. BASIC OPERATION
# ============================================================

Basic operation is centered on:
- personal usage
- local drafting
- lightweight forecasting
- action ideation
- proposal draft preparation
- simple profit preview

Basic operation does not require enterprise runbook handling.

# ============================================================
# 3. PRO OPERATION
# ============================================================

Pro operation adds:
- shared usage
- approval handling
- synchronization handling
- submission handling
- history / audit support
- enterprise-linked recovery procedures

# ============================================================
# 4. OPERATIONAL STATES TO MONITOR
# ============================================================

The following states must remain operationally visible:

- local draft count
- pending sync count
- sync failure count
- pending approval count
- rejected item count
- pending submission count
- submission failure count

# ============================================================
# 5. OPERATIONAL FAILURE HANDLING
# ============================================================

When external linkage fails:
- local drafts must remain preserved
- failure must be visible
- retryability must be distinguishable
- false success display is prohibited

# ============================================================
# 6. OPERATIONAL SUMMARY
# ============================================================

QuickForecast operation prioritizes continuity of business drafting
while keeping Pro-tier enterprise linkage explicit and recoverable.
