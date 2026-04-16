# ============================================================
# EXPENSE MULTILINGUAL DESIGN
# ============================================================

status: canonical
layer: interface
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines multilingual design rules for ExpenseSettlement initial release,
without entering implementation.

design_policy:
- multilingual support is mandatory from the beginning
- language presentation and business meaning must be separated
- stored business facts must not depend on display language
- iphone, android, pc, and tablet must preserve the same meaning
- locale formatting must not rewrite accounting meaning
- multilingual support must cover UI, notifications, validation messages,
  and workflow visibility surfaces

# ============================================================
# 1. MULTILINGUAL DESIGN GOAL
# ============================================================

multilingual_design_goal:
- users can operate ExpenseSettlement in different languages
- the same report, item, state, and workflow meaning remains unchanged
- changing language changes presentation, not business truth
- review, approval, finance, and ERP-related meaning remain stable

# ============================================================
# 2. LANGUAGE SUPPORT SCOPE
# ============================================================

language_support_scope:
- screen labels
- menu text
- button text
- state labels
- validation messages
- notification message templates
- empty states
- error messages
- help / hint text
- template display names where localizable
- export-facing label sets where applicable

non_language_scope_note:
- business codes are not replaced by translated free text
- ids, codes, and structured values remain canonical

# ============================================================
# 3. WHAT MUST NOT BE LANGUAGE-DEPENDENT
# ============================================================

must_not_be_language_dependent:
- expense_report_id
- expense_item_id
- company_id
- applicant_user_id
- state codes
- category codes
- tax category codes
- project codes
- department codes
- currency codes
- exchange rate meaning
- ERP document reference
- approval action type codes
- finance action type codes

important_rule:
display labels may change by language,
but canonical stored codes must remain stable.

# ============================================================
# 4. LOCALIZATION LAYERS
# ============================================================

localization_layers:

  ui_label_layer:
    purpose:
      - localize visible labels, buttons, titles, and navigation text

  state_label_layer:
    purpose:
      - map canonical state codes to localized readable labels

  validation_message_layer:
    purpose:
      - localize required field errors, warnings, and blocking messages

  notification_message_layer:
    purpose:
      - localize title/body templates using structured params

  help_hint_layer:
    purpose:
      - localize explanations, tips, and guidance text

important_rule:
all language-visible strings should be externalized.
Hard-coded business-facing text should be avoided.

# ============================================================
# 5. LANGUAGE VS BUSINESS MEANING
# ============================================================

language_vs_business_meaning_rules:
- canonical state codes stay stable across all languages
- one language must not redefine workflow semantics differently from another
- approval, return, reject, finance block, ERP failure, and settlement terms
  must have controlled glossary meaning
- translated labels must be reviewed against business meaning, not only literal wording

examples:
- approval_state=approved is one canonical meaning
- Japanese label, English label, and other labels may differ in wording
- but they must map to the same canonical approved meaning

# ============================================================
# 6. GLOSSARY-CONTROLLED TERMS
# ============================================================

glossary_controlled_terms:
- draft
- submitted
- returned
- rejected
- approved
- pending_review
- ready_for_erp
- policy_blocked
- evidence_defect
- erp_pending
- erp_confirmed
- erp_failed
- settled
- duplicate_suspected
- evidence_unreadable
- reimbursement
- corporate_card
- advance_settlement
- business_trip

design_requirement:
- these terms require controlled translation
- avoid casual or inconsistent translation drift
- glossary review should happen before large-scale UI expansion

# ============================================================
# 7. STATE LABEL LOCALIZATION RULE
# ============================================================

state_label_localization_rule:
- canonical state code is source of truth
- localized state label is presentation only
- one canonical state may have one preferred label per language
- fallback behavior must exist when language-specific label is missing
- state badge color/icon meaning should remain consistent across languages where possible

# ============================================================
# 8. VALIDATION MESSAGE DESIGN
# ============================================================

validation_message_design:
- validation messages should be keyed by canonical validation code
- localized text should be generated from validation code + structured params
- blocking and warning severity must not depend on language
- translated message should preserve actionability

examples_of_validation_code_style:
- REQUIRED_EXPENSE_CATEGORY
- REQUIRED_USAGE_DATE
- REQUIRED_RECEIPT
- INVALID_CURRENCY_COMBINATION
- DUPLICATE_SUSPECTED
- ERP_PUBLICATION_NOT_ALLOWED

# ============================================================
# 9. NOTIFICATION MESSAGE DESIGN
# ============================================================

notification_message_design:
- notification title/body should use message keys
- business values should be passed as structured params
- amount and currency should remain separate params
- actor name, date, and reason summary should be param-based where appropriate
- push summary text may be shorter, but meaning must stay aligned with in-app notification

examples_of_message_param_style:
- expense_report_id
- title
- total_amount
- currency_code
- actor_name
- action_reason_summary
- target_month

# ============================================================
# 10. USER-ENTERED TEXT RULE
# ============================================================

user_entered_text_rule:
- notes, reasons, titles, and free input may be multilingual user content
- user-entered text is not auto-translated by default in canonical meaning
- user-entered text must be preserved as entered
- optional future translation support must not overwrite original input
- approval and finance reason history should preserve original user-entered wording

# ============================================================
# 11. TEMPLATE / MASTER DATA DISPLAY RULE
# ============================================================

template_master_display_rule:
- canonical template ids and master codes remain stable
- display names may be localized
- if no localized display exists, fallback language should be used
- master data meaning must not diverge by language

examples:
- expense category code remains canonical
- category display label changes by selected language
- project_code remains canonical even if project_name display is localized

# ============================================================
# 12. DATE / NUMBER / CURRENCY PRESENTATION RULE
# ============================================================

date_number_currency_presentation_rule:
- locale formatting is presentation-only
- stored date meaning must remain the same
- stored numeric meaning must remain the same
- amount formatting may vary by locale, but amount value and currency code do not change
- approval, finance, and ERP review screens must avoid ambiguous formatting

examples_of_good_display:
- 2026-04-12 (canonical context)
- Apr 12, 2026 (localized display)
- 12 Apr 2026 (localized display)
- all may be valid displays if canonical stored meaning is unchanged

# ============================================================
# 13. MULTI-DEVICE LANGUAGE CONSISTENCY RULE
# ============================================================

multi_device_language_consistency_rule:
- iphone, android, pc, and tablet must use the same localization keys and glossary meaning
- layout differences must not produce different business wording
- compact mobile labels may be shorter, but must remain semantically aligned
- desktop/tablet may show more explanatory text, but cannot change the decision meaning

# ============================================================
# 14. FALLBACK RULE
# ============================================================

fallback_rule:
- if selected language text is unavailable, configured fallback language must be used
- fallback behavior must be deterministic
- missing localized text must not break business operation
- fallback should prefer a controlled default language, not random mixed strings

# ============================================================
# 15. SEARCH / FILTER RULE
# ============================================================

search_filter_rule:
- search and filtering should rely on canonical data where possible
- localized labels may support display-side filtering helpers
- business logic must not depend on translated strings
- state filtering should use canonical state code, not display text matching

# ============================================================
# 16. EXPORT / PRINT RULE
# ============================================================

export_print_rule:
- export label language may follow user or policy-selected language
- exported business codes should remain available where needed
- multilingual display must not remove audit-relevant identifiers
- print/export should preserve amount + currency clarity and state meaning

# ============================================================
# 17. ACCESSIBILITY + LANGUAGE RULE
# ============================================================

accessibility_language_rule:
- localized text should remain understandable, not overly shortened
- icons must not be the only carrier of workflow meaning
- color alone must not carry state meaning
- multilingual UI should remain readable on phone and tablet widths

# ============================================================
# 18. FUTURE EXTENSION RULE
# ============================================================

future_extension_rule:
- future languages must be additive
- new language support must reuse canonical codes and message keys
- machine translation may assist draft localization, but controlled review is required for glossary-bound business terms
- future translation support for user-entered text must preserve original text

# ============================================================
# 19. DESIGN CONSEQUENCE
# ============================================================

design_consequence:
This design keeps multilingual support safe by separating:
- canonical business codes
- localized labels
- message templates
- user-entered original text
- locale-specific presentation

It allows ExpenseSettlement to support multiple languages
without changing approval, finance, ERP, or settlement meaning.

