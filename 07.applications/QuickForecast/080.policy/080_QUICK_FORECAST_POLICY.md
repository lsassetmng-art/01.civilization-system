# ============================================================
# QUICK FORECAST POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines policy rules for QuickForecast Basic / Pro.

# ============================================================
# 1. POLICY POSITION
# ============================================================

QuickForecast policy governs:
- tier boundary
- drafting safety
- explainability
- submission gating
- approval requirements
- user-visible distinction of state

# ============================================================
# 2. BASIC POLICY
# ============================================================

Basic policy:
- no ERP data usage
- no governed enterprise submission
- no enterprise approval requirement
- local draft use is allowed
- public/general signal usage is allowed within supported forms

# ============================================================
# 3. PRO POLICY
# ============================================================

Pro policy:
- ERP-linked usage is allowed
- approval flow may be required
- governed submission is allowed
- history and audit handling is required where applicable
- enterprise permissions must be respected

# ============================================================
# 4. EXPLAINABILITY POLICY
# ============================================================

Proposal and profit outputs must remain explainable from:
- forecast assumptions
- scenario selection
- selected actions
- user edits where applicable

# ============================================================
# 5. SAFETY POLICY
# ============================================================

The system must fail closed on business-critical submission
when required policy conditions are not met.
