# ============================================================
# PROJECT FLOW DEVICE PARITY ALIGNMENT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines final alignment for iPhone,
Android,
tablet,
and PC parity across all major feature groups.

alignment_targets:
- core project operation
- customer-facing materials
- spreadsheet export
- progress report generation
- template and WBS proposal
- timeline and gantt
- light automation
- multilingual support
- entitlement and read-only behavior

alignment_rules:
- all supported device types must keep the same functional capability
- customer-facing outputs must be available on all supported device types
- multilingual capability must be available on all supported device types
- read-only and blocked-action behavior must be consistent on all supported device types
- device-specific differences must remain presentation-only
