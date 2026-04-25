# ============================================================
# AIWORKER OS BUSINESSOS AND CX22073JW ARCHITECTURE
# ============================================================

status: canonical
system: AiworkerOS
layer: 020.architecture
owner: Boss
prepared_by: Zero

purpose:
Define how AiworkerOS interfaces with BusinessOS and cx22073jw.

business_to_aiworker:
- BusinessOS owns contract, approval, billing, dispatch request, and ERP-side work order truth.
- BusinessOS sends controlled dispatch intent and approved work request surfaces to AiworkerOS.
- BusinessOS does not mutate worker entity truth directly.

aiworker_to_business:
- AiworkerOS returns assignment decisions, accepted worker references, execution state summaries, escalation summaries, and completion summaries.
- Returned data is business-facing and summary-safe, not raw worker internals.

aiworker_to_cx22073jw:
- AiworkerOS publishes safe read families derived from canonical worker truth.
- cx22073jw exposes only masked, summarized, role-scoped views.

ai_worker_read_rule:
AI workers read only cx22073jw safe families such as:
- VF200 worker profile safe
- VF210 company tendency safe
- VF220 user tendency safe
- VF230 growth summary
- VF240 assignment and availability safe
- VF250 affinity and fit safe
- VF260 audit and restriction context

final_rule:
BusinessOS and cx22073jw touch AiworkerOS through controlled boundary surfaces only.
