# ============================================================
# ANDROID GENERATION DONE CRITERIA PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines completion criteria for skeleton generation.

phase_1_done_when:
- all phase_1_targets exist
- package paths are correct
- class names match design
- files compile at skeleton level or are one patch away
- screen / ViewModel / repository / dao / entity separation is preserved

full_generation_done_when:
- all generation targets exist
- no unresolved structural omission remains
- Pro-only classes are clearly isolated
- gateway classes are separated from repositories
