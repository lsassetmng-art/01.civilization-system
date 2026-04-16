# ============================================================
# POCKET SECRETARY
# UI ARCHITECTURE
# ============================================================

status: canonical
layer: ui
component: pocket-secretary-ui

owner: Boss
prepared_by: Zero


# PURPOSE

Define the official UI architecture of PocketSecretary.


# DASHBOARD STRUCTURE

Background Layer
↓
Persona Layer
↓
Assistant Message
↓
Action Buttons


# BACKGROUND

Tap → Background Manager


Background Manager

background change
theme change
background marketplace


# PERSONA

Tap → Character Manager


Character Manager

persona change
costume change
voice change
persona marketplace


# ASSISTANT MESSAGE

Persona communicates with the user.

examples

Good morning
You have 2 schedules today
3 tasks remaining


# ACTION BUTTONS

Schedule
Tools
Library
TODO


# SCHEDULE

calendar
event list
reminders


# TODO

task list
task completion
task reminders


# TOOLS

calculator
transit
expense
notes
business card


# TRANSIT

Yahoo Transit

integration

Android Intent


# EXPENSE

travel expense

integration

ERP


# LIBRARY

Open Civilization Reader

Android Intent


# BUSINESS CARD

Open Business Card App

Android Intent


# MARKETPLACE ENTRY

Persona → Persona Marketplace

Background → Theme Marketplace

Library → Book Marketplace


# DESIGN GOAL

Persona-centered assistant UI.

