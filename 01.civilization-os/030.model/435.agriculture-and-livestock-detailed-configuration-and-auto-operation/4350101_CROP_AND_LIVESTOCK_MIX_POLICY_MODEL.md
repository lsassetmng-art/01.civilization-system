# ============================================================
# CROP AND LIVESTOCK MIX POLICY MODEL
# ============================================================

status: canonical
layer: model
scope: agriculture-and-livestock-detailed-configuration-and-auto-operation
component: crop-and-livestock-mix-policy

owner: Boss
prepared_by: Zero


crop_mix_policies:
- staple_priority
- vegetable_priority
- fruit_priority
- balanced_crop_mix
- resilience_crop_mix
- local_contract_crop_mix

livestock_mix_policies:
- egg_priority
- dairy_priority
- meat_priority
- mixed_smallholding
- resilience_livestock_mix


# FINAL RULE

Production mix
must shape yield, risk, and local supply fit.
