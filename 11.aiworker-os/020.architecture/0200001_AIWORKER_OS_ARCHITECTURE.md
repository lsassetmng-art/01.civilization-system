# ============================================================
# AIWORKER OS ARCHITECTURE
# ============================================================

status: canonical
system: AiworkerOS
layer: 020.architecture
owner: Boss
prepared_by: Zero

purpose:
Define the base architecture of AiworkerOS.

core_architecture:
1. Business-side systems create commercial and dispatch intent.
2. AiworkerOS receives controlled worker-side requests.
3. AiworkerOS resolves worker identity, eligibility, state, fit, and guard.
4. AiworkerOS writes canonical worker-side truth into aiworker schema.
5. cx22073jw publishes AI-worker-only safe view families for runtime reading.
6. Result summaries and controlled outcomes flow back to BusinessOS and other permitted consumers.

major_planes:
- canonical worker truth plane: aiworker
- commercial and approval plane: business
- AI-worker read plane: cx22073jw
- command and controlled write plane: intake rows and controlled functions

design_principles:
- entity truth and commercial truth are separated
- read lane and write lane are separated
- raw tables and safe runtime surfaces are separated
- rank, role, style, and gate are separated
- all worker types are modeled as domain and role variants of Ai(robot)

final_rule:
AiworkerOS is the canonical worker core,
BusinessOS is the commercial envelope,
and cx22073jw is the AI-worker read mask.
