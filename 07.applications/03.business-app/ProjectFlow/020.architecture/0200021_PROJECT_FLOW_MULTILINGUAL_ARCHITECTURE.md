# ============================================================
# PROJECT FLOW MULTILINGUAL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines multilingual architecture across UI and output layers.

architecture_domains:
- locale resolution
- translation key layer
- fallback language layer
- customer-facing wording layer
- export label localization layer

multilingual_coverage:
application_ui:
- menu labels
- screen labels
- button labels
- filter labels
- badge and state labels

customer_outputs:
- customer-facing schedule headings
- progress report headings
- issue list headings
- risk list headings
- decision note headings
- follow-up action headings
- one-page summary headings

export_outputs:
- xlsx column headers
- csv column headers
- material section labels where exported

boundary_rules:
- business truth is language-neutral where possible
- displayed wording is localized through key-based resolution
- customer-facing wording may use material-specific localized templates
- localized output must remain reviewable before external use
