# ============================================================
# VERIFICATION RUNTIME
# ============================================================

status: canonical-draft
layer: runtime
application: App Development Studio

purpose:
Defines post-execution verification behavior.

verification_targets:
- file existence
- diff consistency
- rule compliance
- package completeness
- SQL post-check
- Git state consistency
- build result if build executed

runtime_steps:
1. select verification checklist
2. execute relevant checks
3. classify outcome
4. persist verification result
5. trigger rollback candidate notice if needed
