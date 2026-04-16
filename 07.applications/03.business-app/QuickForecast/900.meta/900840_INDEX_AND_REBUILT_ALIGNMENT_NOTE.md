# ============================================================
# INDEX AND REBUILT ALIGNMENT NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the final alignment check between indexes and rebuilt output.

required_alignment:
- every canonical file should be represented in the correct layer index
- rebuilt output should not lag behind layer indexes
- rebuilt output should not imply stale scope
- no deleted concept should remain only in rebuilt output
- no newly hardened boundary should exist only in one location

important_rule:
A design set is not close-ready
if indexes and rebuilt output disagree on product meaning.
