# ============================================================
# MULTICURRENCY PRICE DISPLAY COMMON PROMOTION DESIGN
# ============================================================

status: promotion-design
system: StaticArtOS
layer_origin: application-feature
component_name: Multicurrency Price Display Common
owner: Boss
prepared_by: Zero

purpose:
Defines the promotion design for Multicurrency Price Display Common
as a reusable price-display family
for commerce-connected applications.

canonical_responsibility:
- render base currency amount
- render display currency amount
- render source-vs-display currency distinction
- expose historical amount labels where applicable
- normalize visible price summary for consumer apps

not_responsible_for:
- exchange-rate engine ownership
- settlement execution
- pricing strategy logic
- tax calculation
- StaticArtOS-specific pricing copy

reuse_scope:
- marketplace applications
- commerce-connected cards
- product detail summaries
- listing surfaces
- membership and offer summaries

required_inputs:
- base_amount
- base_currency_code
- display_amount_or_null
- display_currency_code_or_null
- historical_label_or_null
- price_display_profile
- rounding_profile

emitted_events:
- price_rendered
- display_currency_rendered
- historical_label_rendered
- invalid_price_input_detected

state_model:
- price_pristine
- price_render_ready
- price_rendered
- price_invalid

ui_boundary:
- base price line
- display price line
- currency badge/label
- optional historical note

promotion_caution:
- do not merge with monetary rule engine ownership
- do not hard-code one conversion source
- keep display behavior separate from pricing calculation policy

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
