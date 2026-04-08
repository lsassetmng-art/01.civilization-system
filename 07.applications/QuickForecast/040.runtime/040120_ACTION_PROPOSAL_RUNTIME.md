# ============================================================
# ACTION / PROPOSAL RUNTIME
# ============================================================

status: canonical
layer: runtime
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines runtime behavior of action and proposal generation.

rules:
- action ideas must remain editable
- proposal drafts must remain editable
- proposal text must remain linked to scenario and action source
- profit preview must be regenerable after forecast edits
- regenerated drafts must not silently erase prior user-authored content
