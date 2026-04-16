# ============================================================
# PROJECT FLOW MULTI DEVICE PARITY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines parity architecture across smartphone and PC.

architecture_rule:
Smartphone and PC must expose the same functional capability set.

allowed_differences:
- layout density
- panel arrangement
- navigation placement
- button sizing
- list/table presentation
- split view availability
- keyboard and pointer optimization
- touch optimization

forbidden_differences:
- create available on only one device
- edit available on only one device
- export available on only one device
- report generation available on only one device
- sync status available on only one device
- ERP integration request available on only one device

design_intent:
Device difference is presentation-only,
not business capability difference.
