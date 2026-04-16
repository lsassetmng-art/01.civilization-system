# ============================================================
# LIFE OS PLATFORM SUPPORT
# ============================================================

status: canonical-draft
system: life-os
layer: constitution
domain: core
owner: Boss
prepared_by: Zero

purpose:
Defines the canonical platform support scope of LifeOS.

summary:
LifeOS must be designed as a multi-device life support system.
It is not limited to a single device class.
Core functions must remain available across smartphone, tablet, and PC environments.

supported_platforms:
- iphone
- android
- pc
- tablet

constitutional_rules:
- platform support is a canonical assumption
- LifeOS meaning must remain consistent across platforms
- platform differences may change layout and interaction density
- platform differences must not change source-of-truth meaning
- smartphone support is mandatory
- tablet support is mandatory
- pc support is mandatory

device_positioning:
iphone:
- quick input
- reminders
- on-the-go review
- compact dashboard use

android:
- quick input
- reminders
- on-the-go review
- compact dashboard use

pc:
- detailed review
- settings
- history browsing
- long-form reflection
- dense dashboard usage

tablet:
- touch-first dashboard use
- medium-form input
- review browsing
- household-friendly summary use

conclusion:
LifeOS must be treated as supporting iphone, android, pc, and tablet
as a constitutional premise.
