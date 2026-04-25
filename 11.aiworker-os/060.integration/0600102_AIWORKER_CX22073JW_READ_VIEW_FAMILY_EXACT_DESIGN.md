# ============================================================
# AIWORKER CX22073JW READ VIEW FAMILY EXACT DESIGN
# ============================================================

status: exact-integration
system: AiworkerOS
layer: 060.integration
owner: Boss
prepared_by: Zero

purpose:
Freeze the AI-worker-only read families exposed through cx22073jw.

view_family_catalog:
- VF200_AIWORKER_PROFILE_SAFE
- VF201_AIWORKER_ROLE_AND_DOMAIN_SAFE
- VF202_AIWORKER_STYLE_PROFILE_SAFE
- VF210_COMPANY_AI_TENDENCY_SAFE
- VF211_COMPANY_AI_OPERATIONAL_PREFERENCE_SAFE
- VF220_USER_AI_TENDENCY_SAFE
- VF221_USER_AI_RESPONSE_PREFERENCE_SAFE
- VF230_WORKER_GROWTH_SUMMARY
- VF231_WORKER_CAPABILITY_SNAPSHOT_SAFE
- VF232_WORKER_PROFICIENCY_SUMMARY
- VF240_WORKER_ASSIGNMENT_SAFE
- VF241_WORKER_AVAILABILITY_SAFE
- VF242_WORKER_QUEUE_AND_LOAD_SAFE
- VF250_WORKER_COMPANY_AFFINITY_SAFE
- VF251_WORKER_USER_AFFINITY_SAFE
- VF252_WORKER_ASSIGNMENT_FIT_SAFE
- VF260_WORKER_AUDIT_SUMMARY
- VF261_WORKER_PRIVILEGED_CONTEXT
- VF262_WORKER_RESTRICTED_HANDLING_CONTEXT

global_rules:
- AI-worker-only
- not for general apps
- masked and summarized only
- role-specific filtering allowed
- privileged families require additional gate
- no raw secret or unrestricted internals exposed
