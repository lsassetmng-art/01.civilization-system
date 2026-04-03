# ============================================================
# USER REGISTRATION UI MODEL
# ============================================================

status: canonical
layer: model
scope: user-registration-screen
component: user-registration-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED UI BLOCKS
# ============================================================

required_ui_blocks:
- title_block
- user_id_input
- password_input
- password_confirmation_input
- legal_acknowledgment_block
- submit_registration_button
- cancel_button
- legal_notice_link


# ============================================================
# 2. TITLE BLOCK
# ============================================================

title_block:
- main_title: New User Registration
- parent_context: Civilization Access Gateway


# ============================================================
# 3. FINAL RULE
# ============================================================

Registration UI must keep
required inputs and required consent
on one understandable screen.
