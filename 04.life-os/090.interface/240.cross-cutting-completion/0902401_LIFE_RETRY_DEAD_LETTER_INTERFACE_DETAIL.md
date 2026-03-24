# ============================================================
# LIFE RETRY DEAD LETTER INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for shared retry and dead-letter governance in LifeOS.

required_fields:
- profile_code
- failure_ref
- retry_summary or dead_letter_summary
- terminal_cutoff_summary
- correlation_id

compatibility_rule:
Life retry-dead-letter interfaces must expose explicit recoverability semantics.
