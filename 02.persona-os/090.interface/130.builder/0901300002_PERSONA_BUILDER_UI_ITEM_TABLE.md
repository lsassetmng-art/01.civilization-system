# PERSONA BUILDER UI ITEM TABLE

status: implementation-ready-followup

required_ui_items:
- draft id
- persona id
- draft version
- validation status
- approval status
- publish eligibility
- last updated at
- conflict indicator

# EXACT READY INTERFACE REINFORCEMENT

status_extension: author-reviewed-with-interface-reinforcement
reinforced_at: 20260417_152041
domain: builder

minimum_interface_requirements:
- define request or input shape
- define response or output shape
- define required identifiers
- define status or result family
- define error family where applicable

mandatory_interface_controls:
- no ambiguous field meaning
- no missing identifier in terminal result
- no undocumented reject family

minimum_interface_acceptance_targets:
- valid input and output example
- reject or error example
- result code example where applicable

# ============================================================
# PERSONA BUILDER MULTILINGUAL PRESENTATION BINDING
# ============================================================

status: canonical
scope: persona.builder.ui.multilingual.presentation
system: persona-os
owner: Boss
prepared_by: Zero

# PURPOSE

Define the multilingual presentation binding for Persona Builder UI
without changing PersonaOS canonical ownership,
Persona draft truth,
builder lifecycle semantics,
or authentication authority.

This section specializes the existing PersonaOS multilingual requirement
for the current Persona Builder presentation surface.

# CANONICAL OWNERSHIP

canonical_domain_owner:
- PersonaOS

canonical_builder_owner:
- PersonaOS Builder

presentation_host:
- may be hosted by an external web presentation surface
- presentation hosting does not transfer Persona Builder canonical ownership
- presentation infrastructure remains non-authoritative for Persona domain truth

current_web_presentation_binding:
- Civilization Portal presentation layer
- PortalI18nProvider
- usePortalI18n()
- t(key)

rule:
The current Portal presentation host is an implementation binding only.
It must not become the canonical owner of Persona Builder domain behavior.

# INITIAL PRESENTATION LOCALES

supported_initial_locales:
- ja-jp
- en-us

presentation_language_mapping:
- ja-jp -> Japanese
- en-us -> English

future_rule:
Additional supported locales may be added without changing
Persona Builder canonical draft semantics.

# LOCALE SOURCE

preferred_presentation_locale_source:
- existing authenticated or portal presentation locale context

current_portal_binding:
- canonical storage key: portal.locale
- compatibility storage key: portal.language
- presentation provider: PortalI18nProvider

locale_consumption_rule:
Persona Builder UI consumes the already resolved presentation locale.
Persona Builder must not establish an independent competing locale authority.

# LANGUAGE FIELD SEPARATION

persona_identity_language_code:
- belongs to Persona identity/domain data where defined
- must not be reinterpreted as the current UI presentation locale
- must not be overwritten merely because the user changes display language

presentation_locale:
- controls user-facing UI wording only
- must not mutate Persona identity truth
- must not mutate Persona draft truth
- must not mutate approval or publish state

non_equivalence_rule:
Persona identity language_code and presentation locale are separate concerns.

# LOCALIZABLE UI SCOPE

localizable_ui_content:
- headings
- labels
- descriptions
- helper text
- button wording
- navigation wording
- validation presentation wording
- empty-state wording
- loading-state wording
- user-facing guidance

non_localizable_by_presentation_only:
- identifiers
- draft id
- persona id
- draft version
- canonical enum values
- canonical status values
- persisted domain payload shape
- audit identifiers
- storage keys
- route identity

# EXISTING PERSONA BUILDER FLOW PRESERVATION

must_preserve:
- Persona Builder create entry
- image-upload creation route
- parts-select creation route
- AI generation route
- draft resume route
- existing route destinations
- draft save semantics
- resumeDraft semantics
- validation semantics
- approval semantics
- publish semantics
- canonical domain payload shapes

multilingual_patch_must_not:
- create a second Persona Builder
- create a second i18n authority
- change route ownership
- change draft format
- change database schema
- change API contracts solely for presentation localization
- change Persona identity language_code semantics

# CURRENT WEB IMPLEMENTATION TARGET

current_persona_builder_pages:
- /persona-menu
- /persona-menu/persona-create
- /persona-menu/persona-create/image-upload
- /persona-menu/persona-create/parts-select
- /persona-menu/persona-create/ai-generate
- /persona-menu/persona-create/drafts

implementation_direction:
- reuse the existing PortalI18nProvider
- reuse usePortalI18n()
- resolve user-facing strings through t(key)
- add Persona Builder translation keys to the existing Portal translation dictionary
- preserve existing component behavior and navigation
- avoid a Persona-specific parallel translation framework

# CLIENT / SERVER PRESENTATION RULE

rule:
A page may become a client presentation component only when required
to consume the existing PortalI18nProvider.

Such conversion is presentation-only and must not alter:
- route path
- data ownership
- persistence behavior
- domain state transitions
- authentication ownership
- draft lifecycle behavior

# FALLBACK AND FAILURE RULE

fallback_rule:
- use the existing Portal i18n fallback behavior
- do not create a Persona-specific fallback authority

missing_translation_rule:
- missing presentation wording must not modify or block canonical Persona data
- missing presentation wording must not silently change persisted values

# ACCEPTANCE REQUIREMENTS

acceptance_requirements:
- ja-jp renders Japanese Persona Builder UI wording
- en-us renders English Persona Builder UI wording
- locale switching uses the existing Portal locale mechanism
- all six current Persona Builder pages consume the same presentation locale authority
- no Persona Builder route changes
- no draft format changes
- no Persona identity language_code semantic changes
- no DB or schema changes
- no duplicate i18n provider
- no duplicate Persona Builder implementation
- existing image-upload, parts-select, AI generation, and draft-resume flows remain behaviorally unchanged

# FINAL BOUNDARY

final_boundary:
PersonaOS remains the canonical owner of Persona Builder.
The current Portal web layer may present Persona Builder UI and provide
presentation locale infrastructure, but presentation localization
must remain non-authoritative and must not seize Persona domain truth.
