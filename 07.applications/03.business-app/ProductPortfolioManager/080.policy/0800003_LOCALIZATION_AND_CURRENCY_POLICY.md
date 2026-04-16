# ============================================================
# LOCALIZATION AND CURRENCY POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

localization_policy:
- all user-facing text must be localization-ready
- hardcoded single-language UI is forbidden
- translated labels must preserve business meaning across locales

currency_policy:
- all monetary values must have explicit currency semantics
- display currency and stored currency must be distinguishable where needed
- reporting views may convert values, but conversion basis must be explainable

device_policy:
- iphone, android, pc, and tablet are all official target platforms
- business capability parity is mandatory
- UI layout differences are allowed only when business semantics remain equivalent
