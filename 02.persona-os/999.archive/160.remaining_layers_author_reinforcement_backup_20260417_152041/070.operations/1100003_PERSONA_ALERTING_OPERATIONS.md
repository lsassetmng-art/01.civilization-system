# PERSONA ALERTING OPERATIONS

status: implementation-ready-followup

alert_conditions:
- apply failure spike
- validation reject anomaly
- retry saturation
- dead-letter threshold breach
- release gate failure spike
- integrity verification failure
- audit write failure

operator_rule:
Alerts require runbook linkage and severity classification.
