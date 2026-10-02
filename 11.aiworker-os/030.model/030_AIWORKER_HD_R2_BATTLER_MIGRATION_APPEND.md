# AIWorkerOS Model Append: HD-R2 Battler Migration

status: active
phase: hd-r2 battler migration
scope: AIWorkerOS only

## Correction

HD-R2 is Battler / 戦闘員.

Correct model bundle:

- model_no: HD-R2
- model_code: hd_r2_battler
- model_name: Battler
- model_name_ja: 戦闘員
- product_name: Battler AI Worker
- product_name_ja: 戦闘員AIワーカー
- role_layer_code: BATTLER
- role_layer_name_ja: 戦闘員
- model_category_code: fictional_combat_worker

## Deprecated wrong bundles

The following old/wrong model codes are deprecated and should not be used as app-facing active models:

- hd_r2_butler
- hd_r2_fighter

## Reason

The previous Butler / バトラー / 執事 interpretation was wrong.

The intended HD-R2 meaning is Battler / 戦闘員.

## Physical delete

Physical delete is not executed in this phase.

Old bundles should be physically deleted only in a later phase after all references are verified as zero.
