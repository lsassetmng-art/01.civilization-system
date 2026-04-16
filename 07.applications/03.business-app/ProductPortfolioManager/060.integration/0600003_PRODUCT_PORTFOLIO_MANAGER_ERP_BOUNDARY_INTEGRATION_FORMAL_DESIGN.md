# ============================================================
# PRODUCT PORTFOLIO MANAGER ERP BOUNDARY INTEGRATION FORMAL DESIGN
# ============================================================

status: canonical
layer: integration
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the formal integration meaning of ERP references
used by ProductPortfolioManager.

integration_principles:
- ERP integration is reference-first
- fetched ERP values remain source-attributed
- ProductPortfolioManager stores derived or copied reference context only for judgment support
- downstream ERP-affecting integration must remain explicit and controlled
- integration timestamps matter

# ============================================================
# 1. ERP REFERENCE OBJECTS
# ============================================================

erp_reference_objects:
- product identity
- product code
- product display name basis
- category context
- brand context
- lifecycle-related context where available
- sales aggregates
- cost aggregates
- gross profit basis
- inventory indicators

# ============================================================
# 2. REQUIRED ERP REFERENCE METADATA
# ============================================================

required_reference_metadata:
- source_system_code
- source_generated_at where available
- fetched_at
- company/workspace interpretation context where needed
- transaction currency context where needed

# ============================================================
# 3. SNAPSHOT JUSTIFICATION
# ============================================================

snapshot_justification:
product_metric_snapshot exists so that:
- review interpretation remains reproducible
- score explanation remains attributable
- later history reading can understand the basis used at judgment time

snapshot_rule:
Snapshot storage does not transfer truth ownership away from ERP.

# ============================================================
# 4. FUTURE DOWNSTREAM HANDOFF RULE
# ============================================================

future_downstream_handoff_rule:
If ProductPortfolioManager later emits ERP-affecting requests,
those requests must be:
- explicit
- typed
- reviewable
- policy-bounded
- traceable
- separate from application-owned judgment records

# ============================================================
# 5. INTEGRATION FAILURE RULES
# ============================================================

integration_failure_rules:
- failure to fetch ERP facts must not fabricate values
- stale reference context should be distinguishable where operationally relevant
- partial reference availability should not be mistaken for full authoritative completeness

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ERP integration in ProductPortfolioManager
must remain reference-oriented,
timestamp-aware,
source-attributed,
and governance-safe.
