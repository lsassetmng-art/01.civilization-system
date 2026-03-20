# ============================================================
# POCKET SECRETARY CONFIGURATION MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: configuration-model
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

Defines the configuration system
for PocketSecretary.


# STORAGE

Configuration is stored using

SharedPreferences


# CONFIGURATION ITEMS

erp_company_code

erp_endpoint

erp_api_key


active_secretary_id


ui_layout_mode


tool_order


notification_enabled


background_theme


# ERP CONFIGURATION

Example

company_code = LSAM001

erp_endpoint = https://erp.example.com

api_key = xxxxxx


# UI CONFIGURATION

Stores user interface preferences

dashboard layout
tool ordering
theme selection


# DESIGN PRINCIPLE

Configuration must remain

simple
recoverable
locally stored
