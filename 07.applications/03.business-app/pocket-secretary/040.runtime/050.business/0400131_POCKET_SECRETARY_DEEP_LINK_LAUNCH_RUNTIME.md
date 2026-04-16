# ============================================================
# POCKET SECRETARY DEEP LINK LAUNCH RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for Deep Link launch
of EstimateCreator and NameCardManager.

runtime sequence:
1. user chooses external business-app entry
2. PocketSecretary determines target app and mode
3. bounded launch context is prepared if needed
4. authenticated BusinessOS context is inherited
5. Deep Link launch is requested
6. launch success or failure is detected
7. failure path shows install guidance

targets:
- EstimateCreator
- NameCardManager

rules:
- target app should not require normal re-login on successful inherited context
- launch success does not equal business success
- launch success does not equal submission success
- install guidance is required when target app is unavailable
- target-side authorization and publication checks still apply
- invalid inherited context must fail closed at target side
