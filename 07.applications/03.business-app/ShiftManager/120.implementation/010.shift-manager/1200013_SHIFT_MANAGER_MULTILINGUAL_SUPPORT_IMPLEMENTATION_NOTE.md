# ============================================================
# SHIFT MANAGER MULTILINGUAL SUPPORT IMPLEMENTATION NOTE
# ============================================================

status: implementation-facing-fixed-candidate
type: multilingual-support-implementation-note
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This note fixes the implementation-facing multilingual principles
for ShiftManager.

# ============================================================
# 2. IMPLEMENTATION PRINCIPLES
# ============================================================

implementation_principles:
- keep API keys fixed
- keep DTO field names fixed
- keep DB/internal enums fixed
- localize only display/output layer
- resolve language before UI render and message render

# ============================================================
# 3. RECOMMENDED LANGUAGE KEYS
# ============================================================

recommended_language_keys:
- ui.language.ja
- ui.language.en
- notification.language.ja
- notification.language.en
- pdf.language.ja
- pdf.language.en

# ============================================================
# 4. LOCALIZATION TARGET GROUPS
# ============================================================

ui_label_groups:
- common action labels
- dashboard labels
- schedule labels
- assignment labels
- publish/share labels
- generation labels
- requested day-off labels
- headquarters dashboard labels
- subscription/read-only labels

notification_label_groups:
- publish
- republish
- same_day
- urgent_change

pdf_label_groups:
- title labels
- column headers
- DRAFT marker
- publication/version labels
- generated_at labels

validation_message_groups:
- required field
- invalid enum
- invalid period range
- invalid time range
- read-only blocked
- feature gate blocked

# ============================================================
# 5. FALLBACK POLICY
# ============================================================

fallback_policy:
- if requested language label is missing, use site/company default
- if site/company default is missing, use application default japanese
- never fail business execution merely because one label is missing

# ============================================================
# 6. CONCLUSION
# ============================================================

Multilingual support should be implemented
as a stable label/message layer on top of fixed internal codes.

