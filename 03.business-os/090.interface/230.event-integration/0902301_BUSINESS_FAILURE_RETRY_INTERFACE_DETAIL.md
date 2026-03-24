# ============================================================
# BUSINESS FAILURE RETRY INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for sync failure, retry, and dead-letter handling.

required_fields:
- failure_ref or dead_letter_ref
- profile_code where applicable
- failure_summary
- terminal_cutoff_summary where applicable
- correlation_id

compatibility_rule:
Business failure-retry interfaces must remain retry-aware and terminal-aware.
