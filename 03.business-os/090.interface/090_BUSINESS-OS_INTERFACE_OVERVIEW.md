# ============================================================
# BUSINESS-OS INTERFACE OVERVIEW
# ============================================================

status: canonical
layer: interface
system: business-os
document_type: overview

purpose:
Defines the official overview of the interface layer
for business-os.

summary:
This layer contains the canonical documents
for interface in business-os.

file_count:
5

key_files:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/090.interface/090_BUSINESS_PERSONA_EVENT_REQUEST_INTERFACE.md
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/090.interface/091_BUSINESS_PERSONA_EVENT_RESPONSE_INTERFACE.md
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/090.interface/092_BUSINESS_PERSONA_ERROR_RESPONSE_INTERFACE.md
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/090.interface/093_BUSINESS_PERSONA_STATUS_QUERY_INTERFACE.md
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/090.interface/1200004_BUSINESS_OS_API_INTERFACE_SPEC.md

# ============================================================
## AICompanyManager Multilingual Presentation Binding
# ============================================================

status: canonical_additive_binding

scope:
- BusinessOS / AICompanyManager
- user-facing presentation only

supported_ui_locales:
- ja-jp
- en-us

locale_resolution_contract:
1. locale_code query parameter
2. localeCode query parameter
3. language_code query parameter
4. languageCode query parameter
5. shared/runtime locale context when available
6. portal.locale
7. portal.language compatibility value
8. civilization.portal.locale compatibility value
9. browser language
10. ja-jp fallback

presentation_rule:
AICompanyManager user-facing titles, navigation labels, headings,
buttons, form labels, placeholders, empty states, confirmations,
status display labels, accessibility labels, and presentation-only
fallback messages may be localized.

semantic_preservation_rule:
Localization must not change:
- API paths
- data-screen values
- data-core-action values
- storage keys
- role_code values
- status/state codes
- President / Manager / Leader / Worker canonical role semantics
- Japanese compatibility matching used to normalize legacy or display inputs
- DB payload field names
- business rule text stored as domain data
- user-entered or server-returned business content

ownership_rule:
BusinessOS remains canonical owner of AICompanyManager business semantics.
Localization is a presentation concern and must not create a second
business-domain source of truth.

implementation_binding:
Current browser implementation may resolve ja-jp / en-us and expose
a dedicated AICompanyManager presentation dictionary/helper.
The monolithic production core may consume that helper incrementally,
starting with shared shell and navigation surfaces.

fallback_rule:
If a translation key is unavailable, Japanese presentation text may be
used as a safe fallback without changing domain semantics.
