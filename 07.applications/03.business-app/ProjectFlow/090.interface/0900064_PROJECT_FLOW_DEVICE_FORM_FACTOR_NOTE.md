# ============================================================
# PROJECT FLOW DEVICE FORM FACTOR NOTE
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines form-factor-specific UI expectations.

form_factors:
- iphone
- android_phone
- tablet
- pc

layout_expectations:

iphone_and_android_phone:
- stacked layout
- compact navigation
- touch-first interaction
- reduced simultaneous columns

tablet:
- wider layout than phone
- optional split-pane presentation
- touch-first interaction with denser information
- same action set as phone and pc

pc:
- dense tables
- multi-pane presentation where useful
- keyboard and pointer optimization
- same action set as phone and tablet

global_rule:
Same action set,
same business capability,
different presentation only.
