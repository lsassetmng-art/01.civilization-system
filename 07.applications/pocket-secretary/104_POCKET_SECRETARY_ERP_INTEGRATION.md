# ============================================================
# ERP INTEGRATION
# ============================================================

status: canonical
component: erp-integration
owner: Boss
prepared_by: Zero


# PURPOSE

Defines interaction between PocketSecretary and ERP.


# CONNECTION MODEL

Company Code
ERP URL
API Key


Example

LSAM001
https://erp.example.com
api_key_xxxx


# REQUEST FLOW

PocketSecretary
 ↓
ERP Request API
 ↓
ERP Approval Workflow


# SECURITY RULE

ERP submission must be manually triggered by the user.

Automatic financial operations are prohibited.
