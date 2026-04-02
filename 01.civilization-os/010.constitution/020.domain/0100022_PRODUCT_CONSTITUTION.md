# ============================================================
# PRODUCT CONSTITUTION
# ============================================================

status: canonical
layer: constitution
scope: civilization.product

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define what can be sold in Civilization.

Clarify difference between:

- Asset
- Product
- App


# ============================================================
# 2. DEFINITION
# ============================================================

Product is:

"Sellable value unit"


Product is NOT raw asset.

Product is a packaged or usable value.


# ============================================================
# 3. RELATIONSHIP
# ============================================================

Product
 └ uses
    └ Assets


App
 └ contains
    └ Products


# ============================================================
# 4. PRODUCT TYPES
# ============================================================

Products include:

- digital goods
- services
- knowledge
- subscriptions
- AI functions


Examples:

book
course
AI tool
consulting
data pack


# ============================================================
# 5. NON-PRODUCT
# ============================================================

Assets are NOT products.


Assets:

character
image
voice
model


They must be packaged to become products.


# ============================================================
# 6. PRODUCT STRUCTURE
# ============================================================

product

product_id
product_name
product_type
seller_id
price_civ_cash
status
created_at


# ============================================================
# 7. OWNERSHIP
# ============================================================

ownership is granted after purchase.


ownership

owner_id
product_id
acquired_at


# ============================================================
# 8. DELIVERY MODEL
# ============================================================

Product delivery types:

download
access
subscription
API usage


# ============================================================
# 9. ECONOMIC ROLE
# ============================================================

Product is:

"Final consumption unit"


Assets are:

"Production resources"


# ============================================================
# 10. PRINCIPLE
# ============================================================

Civilization economy flow:

Asset → Product → App → User


# ============================================================
# END
# ============================================================

