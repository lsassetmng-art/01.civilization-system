# ============================================================
# GLOBAL COUNT INTERPRETATION NOTE
# ============================================================

status: canonical-review
prepared_by: Zero
owner: Boss
generated_at: 2026-04-07 18:18:47

purpose:
Defines how the global domain count audit must be interpreted.

rules:
- standard domains use:
  - 020.architecture = 9
  - 040.runtime to 130.development = 8
- 040.detail is an extended domain and must not be judged by the standard 9/8 rule
- 019.interface is already review-closed under the standard rule
- 004.mode / 005.story / 006.player / 012.integration are already review-closed under the standard rule

current_interpretation:
- all standard skeleton domains are structurally aligned
- 040.detail remains an intentional extended-count exception
- 023.company required duplicate quarantine after mixed bootstrap history

result:
- standard skeleton rollout: PASS
- exception handling required: 040.detail
- duplicate cleanup required: 023.company
