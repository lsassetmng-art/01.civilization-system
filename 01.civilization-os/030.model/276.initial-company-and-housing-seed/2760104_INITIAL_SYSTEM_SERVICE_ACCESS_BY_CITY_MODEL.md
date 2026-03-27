# ============================================================
# INITIAL SYSTEM SERVICE ACCESS BY CITY MODEL
# ============================================================

status: canonical
layer: model
scope: initial-company-and-housing-seed
component: initial-system-service-access-by-city

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines how initial city-level company and housing seed
assumes system service access.


# ============================================================
# 2. HIGH ACCESS CITIES
# ============================================================

very_high_access:
- center_commercial_city
- asic_city
- kyo
- helios_city

high_access:
- third_base
- ye_moja
- gold_city
- tetsuo
- higashi_kakona
- liberta
- concordia


# ============================================================
# 3. VARIABLE ACCESS CITIES
# ============================================================

medium_or_city_specific_access:
- Orpheus smaller islands
- Free Cities secondary autonomous cities
- Helios frontier cities
- Seiwa eastern frontier cities

degraded_or_historical_access:
- Aurelia historical cities in current runtime


# ============================================================
# 4. FINAL RULE
# ============================================================

System-service access must modulate company seed density
and housing stability.
