# ============================================================
# NAMECARD SHARE VISIBILITY INTERFACE FREEZE
# ============================================================

status: canonical
layer: interface
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Freezes user-facing visibility presentation for Phase A share/revoke behavior.

ui_requirements:
- shared state badge must be visible
- revoked state must not continue to expose record detail
- shared_viewer must not see owner-only sections
- publication state must be visible in limited form where applicable
- forbidden actions must show permission reason
- visibility preview should reflect role-based visible sections

