# ============================================================
# POCKET SECRETARY VIEWMODEL MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: viewmodel-model
owner: Boss
prepared_by: Zero


# PURPOSE

Defines ViewModel responsibilities for PocketSecretary.


# VIEWMODEL STRUCTURE

DashboardViewModel  
ScheduleViewModel  
TodoViewModel  
ArchiveViewModel  
ToolsViewModel  
SettingsViewModel


# RESPONSIBILITIES

ViewModel must:

- expose UI state
- call repository layer
- transform data for UI
- handle UI actions


# CONSTRAINTS

ViewModel must not:

- directly access database
- perform network operations

All data access must go through repositories.
