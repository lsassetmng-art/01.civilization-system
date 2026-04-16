# ============================================================
# PROJECT FLOW IMPLEMENTATION PREP SCOPE SPLIT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the split between areas that are safe for implementation-prep
and areas that should remain blocked until further confirmation.

safe_for_implementation_prep_domains:
- local screen composition planning
- local state and event shaping
- local use case grouping
- local wireframe refinement
- customer-facing material layout refinement
- multilingual label-pack expansion within fixed scope
- read-only UI affordance refinement
- auditability capture planning at app-local scope

blocked_until_further_confirmation_domains:
- unresolved ERP-owned field reinterpretation
- unresolved BusinessOS mediation reinterpretation
- unresolved external canonical conflicts
- final DB hardening assumptions tied to unresolved ownership questions
- any direct ERP access assumption
- any local takeover of shared common component ownership

architecture_rules:
- safe prep does not mean implementation execution
- blocked areas remain blocked until ownership and boundary conflicts are resolved
- local additive refinement may continue where it does not rewrite higher ownership
