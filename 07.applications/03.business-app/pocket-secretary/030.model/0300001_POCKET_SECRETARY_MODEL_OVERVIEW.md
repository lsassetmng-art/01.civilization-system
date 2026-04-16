# ============================================================
# POCKET SECRETARY MODEL OVERVIEW
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

role:
This layer defines PocketSecretary-specific model usage and app-local models.

shared common references:
- PersonaOS Consultation Common model
- PersonaOS Secretary Interaction Common model
- PersonaOS Notification Common model
- PersonaOS Background Common model
- BusinessOS Submission Common model
- BusinessOS Business AI Worker model

PocketSecretary-specific model groups:
- schedule / todo / memo / checklist / event
- Library and local file handling
- home layout and speech bubble usage
- home summary score selection
- initial secretary cast mapping
- secretary wording dictionary
- personal/company secretary scope distinction
- company secretary reference consumption
- travel expense / monthly aggregation
- PocketSecretary-specific ERP review usage
- Deep Link launch context for EstimateCreator and NameCardManager
- configuration and sync state

important distinctions:
- common model meaning vs app-specific usage
- draft vs submitted
- file existence vs summary availability
- secretary visible role vs deep lore
- company secretary reference vs BusinessOS truth
- launch context vs business result
