# ============================================================
# NAMECARD LOCALIZATION GUIDE
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Provides implementation guidance for localization and multilingual support.

implementation_rules:
- use key-managed UI strings
- do not hardcode user-facing labels where localization is expected
- preserve original user-entered values
- separate canonical data from translated display values
- keep multilingual search normalization reviewable
- locale-aware outputs should accept locale as an explicit input

initial_implementation_scope:
- ja UI
- en UI
- original-data preservation
- localized interface labels
- localized validation and message wording

