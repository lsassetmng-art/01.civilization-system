# ============================================================
# ERP SETTING SCREEN INTERFACE
# ============================================================

status: draft
layer: interface
system: applications
application: NameCardManager
screen: erp_setting
owner: Boss
prepared_by: Zero

purpose:
Defines the ERP setting screen for NameCardManager.

# ============================================================
# 1. SCREEN GOAL
# ============================================================

The ERP setting screen manages ERP usage eligibility and
publication-related visibility for ERP-wide sharing.

# ============================================================
# 2. MAIN COMPONENTS
# ============================================================

- ERP use enabled state
- publication eligibility display
- publication rule display
- approval requirement visibility
- company context visibility

# ============================================================
# 3. MAIN ACTIONS
# ============================================================

- enable ERP use where allowed
- disable ERP use where allowed
- inspect publication eligibility
- inspect approval requirement

# ============================================================
# 4. RULE
# ============================================================

This screen supports ERP-wide sharing preparation only.
It does not provide ordinary-user revoke for published ERP-wide data.

