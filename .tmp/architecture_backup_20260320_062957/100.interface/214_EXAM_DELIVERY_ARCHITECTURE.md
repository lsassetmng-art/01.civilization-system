# ============================================================
# EXAM DELIVERY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Exam delivery presents questions, collects answers,
and routes submissions into the runtime exam flow.

responsibilities:
- load the correct question set
- enforce visible session boundaries
- capture answers safely
- submit explicit answer payloads

rules:
- exam delivery does not evaluate official results locally
- final official result must come from backend event flow
- practice and official modes must be clearly separated in UI
- submission confirmation must be explicit

failure_rules:
- incomplete session must not silently finalize
- invalid submission must be rejected visibly
- network failure must not fake success

integration_points:
- exam domain
- runtime event pipeline
- notification layer

final_rule:
Exam delivery may collect answers,
but may not determine authoritative exam outcomes.
