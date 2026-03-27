# ============================================================
# CIVILIZATION RETAIL DIGITAL PRODUCT ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official retail digital product architecture
for CivilizationOS.

This architecture covers:
- retail company sellable product classes
- digital-only marketplace scope
- OS-origin product linkage
- entitlement and license behavior
- BusinessOS-linked app classification
- delegation boundary to BusinessOS access control

This architecture explicitly assumes:
- retail companies sell only Civilization-internal digital products
- real-world physical goods are out of scope
- illegal/regulated real goods marketplace is not supported
- BusinessOS-linked app access control belongs to BusinessOS as source of truth


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Retail products must remain digital and Civilization-internal.

The marketplace must support:
- digital product listing
- digital entitlement and license
- OS-origin product linkage
- app integration classification
- delegated access-control boundary where required

Core principle:

product ownership and use rights are digital
runtime access control belongs to the OS that owns the runtime/data policy


# ============================================================
# 2. ALLOWED PRODUCT CATEGORIES
# ============================================================

Retail companies may sell at minimum:

- game_connected
- game_standalone
- businessos_app_full_extension
- businessos_app_db_linked
- standalone_app_package
- app_background_asset
- theme_asset
- persona_snapshot_product
- persona_costume_product

These are the official minimum supported categories.


# ============================================================
# 3. DISALLOWED PRODUCT SCOPE
# ============================================================

The following are out of scope:
- real-world physical goods marketplace
- shipping-based secondhand goods market
- weapon/drug/hazardous real goods
- counterfeit-sensitive real goods exchange
- uncontrolled real-world regulated retail

This exclusion is intentional and architectural.


# ============================================================
# 4. GAME PRODUCT CATEGORIES
# ============================================================

## 4.1 GAME_CONNECTED
A game whose source-of-truth and runtime linkage
connect to GameOS.

Characteristics:
- source truth belongs to GameOS
- entitlement may be sold through retail company
- runtime/update linkage may depend on GameOS
- versioning and activation may follow GameOS policy

## 4.2 GAME_STANDALONE
A digital game product sold in Civilization
without GameOS source-of-truth linkage.

Characteristics:
- sold as a standalone digital game package
- entitlement is marketplace-native
- runtime may be independent
- update policy is package/product-defined


# ============================================================
# 5. APP PRODUCT CATEGORIES
# ============================================================

## 5.1 BUSINESSOS_APP_FULL_EXTENSION
An app that depends on BusinessOS
for data, auth, UI, workflow, and/or extension surfaces.

Characteristics:
- strongly integrated with BusinessOS
- may depend on BusinessOS runtime surfaces
- may use BusinessOS app/user/workspace context deeply
- effective access control is delegated to BusinessOS policy

## 5.2 BUSINESSOS_APP_DB_LINKED
An app that primarily uses BusinessOS DB/user data,
while UI/runtime may remain more independent.

Characteristics:
- BusinessOS DB linkage
- user-owned data usage through BusinessOS-controlled interfaces
- looser runtime coupling than full extension
- effective access control is delegated to BusinessOS policy

## 5.3 STANDALONE_APP_PACKAGE
An app sold as an independent digital app product,
without BusinessOS dependency.

Characteristics:
- no BusinessOS dependency required
- independent runtime model
- marketplace/native entitlement only


# ============================================================
# 6. ASSET PRODUCT CATEGORIES
# ============================================================

## 6.1 APP_BACKGROUND_ASSET
A background/visual asset used by apps or app surfaces.

## 6.2 THEME_ASSET
A broader visual/theming asset package.

## 6.3 PERSONA_SNAPSHOT_PRODUCT
A product derived from Persona snapshot release
or persona-allowed snapshot packaging.

## 6.4 PERSONA_COSTUME_PRODUCT
A product representing wearable/visual costume compatibility
for persona presentation systems.

Asset products are digital, license-aware,
and may have compatibility restrictions.


# ============================================================
# 7. ORIGIN OS RULE
# ============================================================

Each retail digital product must carry origin_os identity.

Examples:
- GameOS
- BusinessOS
- PersonaOS
- Civilization-native
- standalone_runtime

Origin OS is mandatory for product interpretation,
entitlement behavior, and update/runtime policy.


# ============================================================
# 8. APP INTEGRATION MODE RULE
# ============================================================

Apps must distinguish integration mode.

Recommended integration modes:
- none
- db_only
- db_and_auth
- full_extension

This distinction is mandatory
for BusinessOS-linked app design.


# ============================================================
# 9. BUSINESSOS DELEGATION RULE
# ============================================================

If a retail product is BusinessOS-linked,
CivilizationOS must not become the source of truth
for detailed BusinessOS data-access control.

CivilizationOS should define only:
- that the product is BusinessOS-linked
- which integration mode it uses
- what entitlement/license state is attached
- that actual data/runtime access control is delegated
  to BusinessOS policy and BusinessOS API enforcement

This delegation is mandatory.


# ============================================================
# 10. RETAIL-SIDE ACCESS INTERPRETATION RULE
# ============================================================

CivilizationOS may store retail-facing metadata such as:
- requested integration summary
- supported runtime summary
- product-level capability summary

However, detailed rules such as:
- user-scoped DB ownership model
- requested scope model
- user granted scope model
- effective access decision model
- API runtime enforcement logic

belong to BusinessOS when the app is BusinessOS-linked.


# ============================================================
# 11. FINAL ARCHITECTURAL RULE
# ============================================================

Retail digital product architecture in CivilizationOS must be:

- digital-only
- OS-origin-aware
- entitlement-aware
- integration-mode-aware
- delegation-aware

Core summary:

- real-world goods marketplace is excluded
- game/app/persona/asset categories are explicit
- BusinessOS-linked apps are classified explicitly
- detailed BusinessOS access control is delegated to BusinessOS
- CivilizationOS keeps retail/product truth, not BusinessOS access-control truth
