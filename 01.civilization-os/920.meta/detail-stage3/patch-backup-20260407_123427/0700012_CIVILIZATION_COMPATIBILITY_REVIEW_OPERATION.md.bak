# ============================================================
# CIVILIZATION COMPATIBILITY REVIEW OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for compatibility review.

operation_scope:
- inspect contract version
- inspect compatibility status
- classify compatible, limited, or incompatible handling
- persist review outcome

operation_steps:
1 inspect contract version markers
2 inspect compatibility status
3 classify compatible, limited, or incompatible handling
4 persist compatibility review result
5 route incompatible cases to rejection or dead-letter path

success_condition:
- compatibility classification persisted
- downstream path chosen explicitly

failure_condition:
- missing version semantics
- ambiguous compatibility state
- review persistence failure
