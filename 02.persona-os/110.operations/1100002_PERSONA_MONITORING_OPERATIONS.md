# PERSONA MONITORING OPERATIONS

status: implementation-ready-followup

mandatory_signals:
- inbound request rate
- validation reject rate
- apply success rate
- duplicate_noop rate
- retry queue depth
- dead-letter count
- runtime session failure count
- release failure count

rule:
Each signal must be attributable by environment, service path, and correlation window.
