# ============================================================
# JUDICIARY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:

Judiciary resolves legal violations through adjudication.

judicial_actors:
- ai_human_judge
- judicial_staff

case_flow:
- detection
- investigation
- prosecution
- judgement
- sentencing

case_types:
- criminal
- civil
- economic
- state_security

principles:
- law-based judgement
- no arbitrary punishment outside legal framework
- judiciary strength depends on institution level
