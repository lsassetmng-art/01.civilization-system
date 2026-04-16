# ============================================================
# ANDROID PHASE 1 I18N AND MULTICURRENCY SEQUENCE PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines implementation sequence for Phase 1
with multilingual and multicurrency foundations.

sequence:

1.
MoneyValue / LocalePreference / CurrencyPreference model setup

2.
local entities and dao setup

3.
repositories for settings and core chain

4.
formatter and text resolver setup

5.
Settings screen and SettingsViewModel minimum setup

6.
Forecast Editor core

7.
Action Board core

8.
Proposal Builder core

9.
Profit Preview core

10.
Forecast Detail core

11.
Dashboard and Forecast List integration

rule:
Settings foundation for locale and currency must exist
before screen-level rendering is finalized.
