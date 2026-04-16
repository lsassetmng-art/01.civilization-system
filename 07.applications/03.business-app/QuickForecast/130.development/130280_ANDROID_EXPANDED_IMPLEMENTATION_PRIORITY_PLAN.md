# ============================================================
# ANDROID EXPANDED IMPLEMENTATION PRIORITY PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Android implementation priority after feature expansion.

priority_principle:
Do not start from the widest feature set.
Start from the strongest business value chain
with the smallest stable implementation surface.

canonical_chain:
Forecast
-> Action
-> Proposal
-> Profit

implementation_rule:
Expanded features must be layered onto the canonical chain,
not implemented as detached side systems.

# ============================================================
# 1. PHASE 1
# ============================================================

phase_1_goal:
Deliver the local-first core chain.

phase_1_scope:
- Forecast Editor core
- Action Idea Board core
- Proposal Draft Builder core
- Profit Preview core
- local DB / DAO / repository base
- core ViewModels / reducers
- forecast detail core summary

phase_1_excludes:
- governed Pro workflow
- ERP handoff
- team sharing
- approval routing
- advanced recommendation
- full tracking board
