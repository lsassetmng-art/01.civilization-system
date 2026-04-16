# ============================================================
# UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

primary_screens:
- dashboard
- product list
- product detail
- score detail
- proposal list
- review session
- alert list
- settings

ui_cross_platform_requirements:
- iphone and android phone layouts are mandatory
- tablet layouts are mandatory
- pc layouts are mandatory
- adaptive navigation is required by screen size
- touch and pointer interaction must both be supported

ui_localization_requirements:
- all labels and messages must come from translation-ready resources
- truncation and expansion for different languages must be considered

ui_currency_requirements:
- every monetary view must expose currency clearly
- mixed-currency reporting views must show conversion context where applicable
