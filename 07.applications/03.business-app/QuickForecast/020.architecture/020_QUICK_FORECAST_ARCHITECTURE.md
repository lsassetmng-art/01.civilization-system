# ============================================================
# QUICK FORECAST ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the application architecture of QuickForecast.

# ============================================================
# 1. ARCHITECTURAL GOAL
# ============================================================

QuickForecast is architected as a forecast-originated
business drafting workbench.

Its core chain is:

Forecast
-> Action
-> Proposal
-> Profit

# ============================================================
# 2. TOP-LEVEL COMPONENTS
# ============================================================

QuickForecast consists of the following major components:

- forecast input component
- scenario component
- signal / factor component
- action idea component
- proposal draft component
- profit preview component
- local persistence component
- sync component
- enterprise linkage component
- approval / history component
- UI orchestration component

# ============================================================
# 3. TIERED OPERATION
# ============================================================

Basic architecture:
- lightweight local-first operation
- public/general signal usage
- manual input centered
- individual drafting

Pro architecture:
- extends Basic architecture
- enterprise data usage
- shared operation
- approval support
- synchronization
- enterprise transmission

# ============================================================
# 4. LOGICAL FLOW
# ============================================================

The canonical logical sequence is:

1. collect forecast inputs
2. derive forecast scenarios
3. identify demand direction and strength
4. derive candidate actions
5. transform candidate actions into proposal/planning draft
6. estimate revenue / profit image
7. optionally synchronize, share, approve, and transmit

# ============================================================
# 5. LAYERS
# ============================================================

UI layer:
Handles fast user interaction and mobile-friendly operation.

Application orchestration layer:
Coordinates forecast, scenario, action, proposal, and profit steps.

Domain layer:
Holds forecast, action, proposal, and profit logic.

Persistence layer:
Stores local drafts, local state, and pending work.

Sync / enterprise linkage layer:
Supports Pro-only synchronized or linked business operation.

# ============================================================
# 6. ARCHITECTURAL POSITIONING
# ============================================================

QuickForecast is not architected as a passive analytics dashboard.

It is architected as an active business drafting engine.

Its output is not only forecast data,
but proposal-usable business draft material.

# ============================================================
# 7. COMPANION RELATION TO ERP
# ============================================================

QuickForecast architecture must coexist with ERP architecture.

The systems may overlap in business domain,
but differ in usage pattern and optimization target.

ERP:
- deeper
- broader
- more formal
- more authoritative

QuickForecast:
- faster
- lighter
- more mobile
- more immediate

# ============================================================
# 8. FAILURE BEHAVIOR
# ============================================================

Drafting may continue locally when external services are unavailable.

Business-critical external transmission must fail closed when:
- required context is missing
- enterprise identity is unresolved
- approval policy is unsatisfied
- payload transformation fails

# ============================================================
# 9. SUMMARY
# ============================================================

QuickForecast architecture is a mobile-first,
proposal-oriented, forecast-originated workbench architecture
with explicit Basic/Pro tier separation and ERP coexistence.
