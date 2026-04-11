# ============================================================
# NAMECARD SEARCH INTERFACE FREEZE
# ============================================================

status: canonical
layer: interface
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Freezes initial search UI scope for Phase A.

ui_requirements:
- expose supported search modes only
- do not imply OCR search in Phase A
- do not imply semantic fuzzy search in Phase A
- support query + filter + sort + paging
- expose normalized company search path where available
- recent update default sort must be visible or predictable

