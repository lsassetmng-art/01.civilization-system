# ============================================================
# ESTIMATECREATOR PRICING GOVERNANCE IMPLEMENTATION GUIDE
# ============================================================

status: canonical
layer: implementation
system: applications
application: EstimateCreator
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: pricing-governance-implementation-guide

purpose:
Provides the first implementation-oriented guide for the newly
clarified differentiator in EstimateCreator.

implementation_priority:
- Phase A should begin from estimate cockpit and approval visibility,
  not from generic document editing expansion.
- Commercial control should become visible before deeper automation.

recommended_phase_a_entry:
- fix row families for commercial timeline, revision review, and cockpit outputs
- freeze cockpit and revision-review DTOs
- separate raw estimate editing from commercial readiness aggregation
- create slice order:
  - estimate cockpit query
  - revision approval review query
  - approval request action
  - conversion readiness review

hard_rules:
- keep draft content separate from commercial rollup state
- keep revision and approval review separate from raw history
- do not collapse pricing exception exposure into only revision text
- do not bury conversion blockers inside generic document notes

implementation_readiness_signal:
- once DDL, DTO, stub boundaries, and slice order are frozen,
  EstimateCreator can follow the same bundled Phase A pattern used in
  NameCardManager, PocketSecretary, and ProjectFlow.
