# ============================================================
# SHIFT MANAGER MULTILINGUAL SUPPORT POLICY
# ============================================================

status: design-extension
type: multilingual-support-policy
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the multilingual support policy
for ShiftManager.

The goal is:
- Japanese-first operation
- English-ready extension
- language-neutral business logic
- localized display/output surfaces

# ============================================================
# 2. BASIC POLICY
# ============================================================

basic_policy:
- business logic remains language-neutral
- UI text is language-switchable
- API payload keys remain fixed and language-neutral
- database enum/code values remain fixed internal codes
- only display labels/messages are translated

important_rule:
Do not localize:
- API field names
- DB column names
- enum internal values
- feature codes
- error codes

Translate:
- screen labels
- button labels
- helper text
- notification display text
- validation display messages
- PDF visible labels

# ============================================================
# 3. INITIAL LANGUAGE SCOPE
# ============================================================

initial_languages:
- japanese
- english

future_candidates:
- chinese_simplified
- chinese_traditional
- korean
- vietnamese
- indonesian
- thai

# ============================================================
# 4. TARGET SURFACES
# ============================================================

multilingual_target_surfaces:
- startup / login
- dashboard
- shift list / detail / edit
- publish / republish
- share settings
- requested day-off
- generation warnings
- subscription / read-only messages
- notification center
- headquarters dashboard
- PDF visible labels
- error display messages

# ============================================================
# 5. LANGUAGE RESOLUTION
# ============================================================

recommended_language_fields:
- ui_language
- notification_language
- pdf_language

resolution_order:
1. explicit user preference
2. site/company default language
3. application default language

recommended_defaults:
- application default: japanese
- site default: configurable
- user preference: optional override

# ============================================================
# 6. INTERNAL CODE POLICY
# ============================================================

internal_code_examples:
schedule_status:
- draft
- published
- superseded
- closed

subscription_status:
- trial
- active
- grace
- inactive

policy:
These remain fixed internally.
Only labels/messages shown to users change by language.

# ============================================================
# 7. NOTIFICATION POLICY
# ============================================================

notification_policy:
- notification_type remains internal fixed code
- rendered title/body may be localized
- template variables remain language-neutral input
- final notification text is localized at output layer

# ============================================================
# 8. PDF POLICY
# ============================================================

pdf_policy:
- PDF visible labels may be language-selected
- DRAFT / publication distinction must remain visually clear in every language
- site/company may choose a default PDF language
- internal export_type/layout_type codes remain fixed

# ============================================================
# 9. ERROR / VALIDATION POLICY
# ============================================================

error_policy:
- error_code remains fixed
- user-facing message is localized
- logs/debug rely on code-first structure
- support should not depend on translated wording alone

# ============================================================
# 10. CONCLUSION
# ============================================================

ShiftManager multilingual support should be implemented as:
- code-fixed internals
- localized display/output layer
- Japanese-first, English-next
- extensible to more languages later

