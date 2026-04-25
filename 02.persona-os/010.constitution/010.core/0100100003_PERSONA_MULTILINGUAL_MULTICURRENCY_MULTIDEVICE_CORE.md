# ============================================================
# PERSONA MULTILINGUAL / MULTICURRENCY / MULTI-DEVICE CORE
# ============================================================

status: canonical
system: persona-os
layer: core
owner: Boss
prepared_by: Zero

purpose:
Defines multilingual support, multicurrency support,
and multi-device support as supported core scope
inside PersonaOS.

# ============================================================
# 1. CORE POSITION
# ============================================================

PersonaOS core shall include:
- multilingual support
- multicurrency support
- multi-device support

These are treated as supported design scope inside PersonaOS.

# ============================================================
# 2. MULTILINGUAL SUPPORT
# ============================================================

PersonaOS shall support multilingual operation.

This means PersonaOS is designed on the premise that:
- display may be expanded to multiple languages
- labels and user-facing wording may be localized
- state expression may be localized
- guidance and interaction wording may be localized
- future supported languages may be added

This core statement makes multilingual support explicit
inside PersonaOS design scope.

# ============================================================
# 3. MULTICURRENCY SUPPORT
# ============================================================

PersonaOS shall support multicurrency operation
where monetary, quasi-monetary, reward, exchange,
value, price, cost, or compensation expressions are handled.

This means PersonaOS is designed on the premise that:
- multiple currencies may be represented
- currency-aware display is supported
- future supported currencies may be added

This core statement makes multicurrency support explicit
inside PersonaOS design scope.

# ============================================================
# 4. MULTI-DEVICE SUPPORT
# ============================================================

PersonaOS shall support:
- iPhone
- Android
- PC
- tablet

This means PersonaOS is designed on the premise that:
- smartphone use is supported
- desktop / notebook use is supported
- tablet use is supported
- multiple screen sizes and usage environments are supported

This core statement makes multi-device support explicit
inside PersonaOS design scope.

# ============================================================
# 5. BOUNDARY RULE
# ============================================================

This core addition does not change PersonaOS authority boundaries.

The following remain unchanged:
- identity authority belongs to PersonaOS
- state authority belongs to PersonaOS
- growth truth belongs to PersonaOS
- snapshot authority belongs to PersonaOS
- visual truth belongs to PersonaOS
- runtime / hosting / execution artifacts are not truth owners

Multilingual support, multicurrency support,
and multi-device support are treated as
supported scope extensions on top of existing PersonaOS boundaries.

# ============================================================
# 6. DETAIL RULE
# ============================================================

This core file declares support scope only.

It does not yet fix:
- translation workflow details
- translation key structure
- untranslated fallback details
- exchange-rate management details
- conversion timing details
- rounding rules
- per-device layout details
- OS-specific UI optimization details

Those may be defined later in architecture,
runtime, interface, implementation, or development layers.

# ============================================================
# 7. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
PersonaOS core explicitly supports
multilingual operation, multicurrency operation,
and iPhone / Android / PC / tablet operation
as supported design scope.

# EXACT READY CONSTITUTION REINFORCEMENT

status_extension: author-reviewed-with-constitution-reinforcement
reinforced_at: 20260417_150617
reinforcement_scope:
- authority clarification
- non-bypass clarification
- audit obligation clarification
- precedence clarification

domain: core

minimum_constitution_requirements:
- name the authority owner for this domain
- define what decisions require explicit approval
- define which state mutations are forbidden outside authority
- define which terminal paths must remain auditable
- define override or precedence behavior against lower-layer narratives

mandatory_non_bypass_rules:
- no direct truth mutation outside named authority
- no silent override through runtime or integration
- no unaudited reject, release, grant, transfer, or replay decision
- no hidden fallback that changes constitutional meaning

mandatory_audit_requirements:
- actor identity
- decision timestamp
- subject or object identifier
- reason or code family
- terminal outcome

constitution_ready_note:
This reinforcement does not replace the authored constitutional content above.
It marks the minimum exact-ready constitutional items that must be explicit
before implementation or downstream policy binding is considered complete.
