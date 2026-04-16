# ============================================================
# SHIFT MANAGER MULTILINGUAL DEVELOPMENT GUIDE
# ============================================================

status: development-extension
type: multilingual-development-guide
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This guide fixes development rules
for multilingual support in ShiftManager.

# ============================================================
# 2. BASIC RULE
# ============================================================

basic_rule:
Keep internals fixed.
Localize only display/output surfaces.

# ============================================================
# 3. DO NOT LOCALIZE
# ============================================================

do_not_localize:
- API field names
- DTO field names
- DB column names
- internal enum values
- feature codes
- error codes
- SQL identifiers
- repository/service/controller class names

# ============================================================
# 4. LOCALIZE
# ============================================================

localize_targets:
- screen labels
- button labels
- helper text
- notification display text
- validation/user-facing messages
- PDF visible labels
- dashboard labels
- requested day-off labels
- generation warning display labels

# ============================================================
# 5. INITIAL LANGUAGE SET
# ============================================================

initial_languages:
- japanese
- english

future_languages:
- chinese_simplified
- chinese_traditional
- korean
- vietnamese
- indonesian
- thai

# ============================================================
# 6. FALLBACK RULE
# ============================================================

fallback_rule:
1. user preference
2. site/company default
3. application default japanese

Never fail business execution
only because one translated label is missing.

# ============================================================
# 7. DEVELOPMENT CHECKPOINTS
# ============================================================

development_checkpoints:
- API payload snapshots remain unchanged across languages
- UI text is swappable by language key
- notification rendering is localized at output layer
- PDF visible labels can switch language
- logs/debug continue to rely on stable internal codes

# ============================================================
# 8. CONCLUSION
# ============================================================

Multilingual development in ShiftManager
must remain a display-layer concern,
not a business-logic concern.

