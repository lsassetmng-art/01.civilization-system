# ============================================================
# PERSONA REFLECTION DECISION MODEL
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: persona-reflection-decision
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
persona_reflection_decision records how a reflection candidate was evaluated.

decision_results:
- accepted
- rejected
- deferred
- merged
- transformed
- returned-for-review

responsibilities:
- evaluation result anchor
- rationale anchor
- transformed adoption anchor
- correction anchor
- audit anchor

core_principles:
- proposal and decision are separate
- accepted does not necessarily mean canonical apply completed
- transformed adoption is a first-class path
