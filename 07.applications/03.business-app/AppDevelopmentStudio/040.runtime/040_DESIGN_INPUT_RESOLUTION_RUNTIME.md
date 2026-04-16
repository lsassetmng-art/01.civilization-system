# ============================================================
# DESIGN INPUT RESOLUTION RUNTIME
# ============================================================

status: canonical-draft
layer: runtime
application: App Development Studio

purpose:
Defines how selected input mode changes runtime handling.

supported_modes:
- free_input
- guided_input
- standard_template
- full_generation_format
- imported_design_documents

runtime_effect:
Each input mode influences parse expectations, readiness thresholds,
and generation confidence.
