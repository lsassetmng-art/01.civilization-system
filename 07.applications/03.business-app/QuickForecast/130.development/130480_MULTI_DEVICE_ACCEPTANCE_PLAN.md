# ============================================================
# MULTI DEVICE ACCEPTANCE PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines acceptance criteria for multi-device support.

acceptance_criteria:
- iPhone-class compact layout remains fully usable
- Android smartphone compact layout remains fully usable
- tablet expanded layout preserves canonical flow
- proposal builder remains editable on both phone and tablet
- profit preview remains understandable on both phone and tablet
- locale and currency presentation remain consistent across device classes
- no required action disappears on larger or smaller layout

failure_conditions:
- tablet introduces a different business flow
- compact layout hides critical actions without access path
- larger layout breaks source / base / display money meaning
- multilingual comparison becomes unavailable because of device class
