# ============================================================
# NAMECARD LANGUAGE SETTING INTERFACE
# ============================================================

status: canonical
layer: interface
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines language and locale setting interface.

ui_blocks:
- UI language selector
- output language selector
- fallback language selector
- translation display toggle
- multilingual search toggle
- original vs translated display hint

requirements:
- language settings must be easy to find
- user must understand that original card data is preserved
- translation display should be optional where applicable

