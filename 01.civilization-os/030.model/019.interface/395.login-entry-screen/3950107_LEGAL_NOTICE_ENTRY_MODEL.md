# ============================================================
# LEGAL NOTICE ENTRY MODEL
# ============================================================

status: canonical
layer: model
scope: login-entry-screen
component: legal-notice-entry

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ENTRY POSITION
# ============================================================

entry_position:
- bottom_right_icon_or_link


# ============================================================
# 2. EXPOSED CONTENT
# ============================================================

exposed_content:
- copyright_notice
- terms_of_use
- privacy_notice
- required_legal_notices
- license_information


# ============================================================
# 3. RULES
# ============================================================

rules:
- legal entry is always accessible from the login entry screen
- legal entry may open as overlay, sheet, or dedicated surface
- forced read or forced consent is only required when legally necessary


# ============================================================
# 4. FINAL RULE
# ============================================================

Legal access should be easy to find
without overwhelming the primary login
and registration paths.
