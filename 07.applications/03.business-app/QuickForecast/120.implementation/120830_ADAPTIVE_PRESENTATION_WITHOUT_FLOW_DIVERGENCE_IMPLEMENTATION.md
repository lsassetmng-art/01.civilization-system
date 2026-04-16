# ============================================================
# ADAPTIVE PRESENTATION WITHOUT FLOW DIVERGENCE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Fixes the rule that adaptive presentation must not create device-specific flow divergence.

principles:
- one canonical business flow
- one canonical data meaning
- adaptive composition only changes visibility density
- smartphone and tablet share the same action order semantics

allowed_differences:
- pane count
- simultaneous visibility
- comparison density
- summary stickiness
- navigation compression on larger screens

forbidden_differences:
- different approval meaning
- different proposal meaning
- different money meaning
- different fallback meaning
- different save or submission semantics by device class
