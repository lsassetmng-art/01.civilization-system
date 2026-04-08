# ============================================================
# QUICK FORECAST RUNTIME
# ============================================================

status: canonical
layer: runtime
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the runtime behavior of QuickForecast Basic / Pro.

# ============================================================
# 1. RUNTIME ROLE
# ============================================================

QuickForecast runtime exists to support rapid transition from:

forecast
-> action
-> proposal
-> profit

The runtime must favor:
- quick start
- interruption tolerance
- resumable drafting
- local-first continuity
- explicit submission control

# ============================================================
# 2. BASIC RUNTIME
# ============================================================

Basic runtime supports:
- local draft creation
- local forecast editing
- public/general signal use
- local scenario comparison
- local action derivation
- local proposal draft generation
- local profit preview generation

Basic does not require enterprise synchronization.

# ============================================================
# 3. PRO RUNTIME
# ============================================================

Pro runtime extends Basic with:
- ERP-related data usage
- shared work support
- approval support
- synchronization
- governed submission support
- history / audit-capable operation

# ============================================================
# 4. LOCAL-FIRST PRINCIPLE
# ============================================================

QuickForecast must remain draft-capable even when:
- network is unstable
- external systems are unavailable
- the user is in a short work window
- the user is interrupted mid-edit

Draft continuity has priority over immediate external dependency.

# ============================================================
# 5. EXPLICIT STATE HANDLING
# ============================================================

The runtime must distinguish at minimum:

- working draft
- locally saved
- pending sync
- synced
- approval pending
- approved
- rejected
- pending submission
- submitted
- submission failed

No ambiguous mixed state is allowed.

# ============================================================
# 6. FAIL-CLOSED SUBMISSION
# ============================================================

Business-critical external submission must fail closed when:
- enterprise context is missing
- tier restriction is violated
- required approval is missing
- target identity is unresolved
- payload transformation fails
- submission policy is violated

# ============================================================
# 7. EXPLAINABILITY
# ============================================================

Runtime-generated action, proposal, and profit outputs
must remain traceable to forecast assumptions and selected scenario.

# ============================================================
# 8. SUMMARY
# ============================================================

QuickForecast runtime is a local-first, interruption-tolerant,
proposal-oriented runtime with explicit Pro-tier governed linkage.
