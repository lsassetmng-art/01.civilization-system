# ============================================================
# PROJECT FLOW DEVICE SUPPORT DEFINITION
# ============================================================

status: canonical
layer: constitution
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines explicit device support targets.

supported_device_types:
- iphone
- android
- tablet
- pc

device_capability_rule:
ProjectFlow must provide the same functional capability
across iPhone,
Android,
tablet,
and PC.

allowed_difference:
- layout
- density
- navigation placement
- panel arrangement
- touch optimization
- pointer and keyboard optimization

forbidden_difference:
- feature availability gap by device type
- export available on only one device type
- report generation available on only one device type
- ERP-related request available on only one device type
