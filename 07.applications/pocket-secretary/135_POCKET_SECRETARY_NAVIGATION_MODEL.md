# ============================================================
# POCKET SECRETARY NAVIGATION MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: navigation-model
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

Defines screen navigation structure.


# MAIN SCREENS

Dashboard

Schedule

Todo

Archive

Tools

Settings


# ROOT STRUCTURE

MainActivity

DashboardFragment

ScheduleFragment

TodoFragment

ArchiveFragment

ToolsFragment

SettingsFragment


# NAVIGATION MODEL

Bottom navigation.


# NAVIGATION PRINCIPLES

Navigation must preserve
local application state.


Network connection must not be
required for navigation.
