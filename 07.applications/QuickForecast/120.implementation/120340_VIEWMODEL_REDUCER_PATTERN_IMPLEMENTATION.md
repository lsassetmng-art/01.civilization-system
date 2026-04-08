# ============================================================
# VIEWMODEL REDUCER PATTERN IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines reducer-like ViewModel pattern direction for QuickForecast.

pattern:
- State is the single main UI representation
- Event is user/system input
- Effect is one-time navigation/message side effect

principles:
- navigation is effect, not durable state
- toast/snackbar/dialog trigger is effect
- screen content is state
- repository result mapping should update state explicitly
- Pro governance actions should expose pending/success/failure states clearly
