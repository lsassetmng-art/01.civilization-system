# ============================================================
# USER REGISTRATION LEGAL ACKNOWLEDGMENT MODEL
# ============================================================

status: canonical
layer: model
scope: user-registration-screen
component: user-registration-legal-acknowledgment

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ACKNOWLEDGMENT ELEMENTS
# ============================================================

acknowledgment_elements:
- terms_acknowledgment
- privacy_acknowledgment
- required_notice_acknowledgment


# ============================================================
# 2. RULES
# ============================================================

rules:
- acknowledgment is shown when required by legal or policy rule
- ordinary registration may keep legal content link-accessible when forced acknowledgment is not required
- forced acknowledgment must be completed before submit
- legal link must remain accessible even when acknowledgment is not forced


# ============================================================
# 3. FINAL RULE
# ============================================================

Legal acknowledgment
must be explicit when required
and unobtrusive when not required.
