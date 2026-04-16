# ============================================================
# EXPENSE AFTER STOP GUIDE
# ============================================================

status: canonical
layer: meta
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Explains how to handle ExpenseSettlement after the current design round
has reached its stop line.

after_stop_default_mode:
- preserve the current design shape
- avoid broad reopening
- continue only with narrow and explicit purposes
- keep implementation behind an explicit gate

recommended_after_stop_paths:
- parameter tuning
- localized label completion
- masking/tolerance matrix refinement
- settlement confirmation source refinement
- safe consolidation review
- explicit implementation-readiness review only if separately opened

do_not_do_by_default:
- restart from scattered detail docs
- reopen product positioning
- merge separated meanings for convenience
- assume design stop line means implementation go

guide_sentence:
After the stop line, ExpenseSettlement should move in narrow continuation mode by default.

