# ============================================================
# CONSUMER BEHAVIOR TO EVENT INFLUENCE MODEL
# ============================================================

status: canonical
layer: model
scope: consumer-behavior-and-market-culture-seed
component: consumer-behavior-to-event-influence

owner: Boss
prepared_by: Zero


# ============================================================
# 1. INFLUENCE RULES
# ============================================================

influence_rules:
- price_sensitivity_tendency modifies household budget strain events
- bargaining_visibility_tendency modifies market-interaction events
- brand_sensitivity_tendency modifies prestige consumption and comparison events
- premium_consumption_desire_tendency modifies luxury aspiration events
- second_hand_acceptance_tendency modifies recovery and low-cash resilience events
- local_market_reliance_tendency modifies neighborhood economy and trust-chain events
- chain_store_reliance_tendency modifies standardized urban shopping events
- impulse_purchase_tendency modifies debt and regret events
- savings_first_purchase_tendency modifies delayed household acquisition events
- counterfeit_risk_tolerance_tendency modifies fraud and low-trust market events
- class_consumption_gap_tendency modifies visible inequality and status anxiety events
