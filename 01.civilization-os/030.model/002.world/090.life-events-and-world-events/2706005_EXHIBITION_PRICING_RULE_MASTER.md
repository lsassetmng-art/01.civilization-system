# EXHIBITION PRICING RULE MASTER

status: design-review-ready
layer: model
system: CivilizationOS
scope: exhibition-builder
owner: Boss

## 1. Formula

total =
venue_base_fee
+ exhibit_unit_charge
+ streaming_delivery_charge
+ option_charge
- approved_discount

exhibit_unit_charge is the sum of:

unit_price multiplied by unit_weight

for each unique canonical exhibit reference.

## 2. Initial unit weights

| Media class | Duration band | Unit weight |
|---|---:|---:|
| Static visual artwork | not applicable | 1 |
| Publication or book | not applicable | 2 |
| Video | up to 10 minutes | 3 |
| Video | over 10 to 30 minutes | 5 |
| Video | over 30 to 60 minutes | 8 |
| Video | over 60 minutes | 8 plus 4 per started additional 30 minutes |

These values are initial master records.

They must not be hardcoded in application source.

## 3. Master fields

- pricing_rule_code
- pricing_rule_version
- effective_from
- effective_to
- currency_code
- venue_type
- venue_base_fee
- media_class
- duration_lower_seconds
- duration_upper_seconds
- unit_price
- unit_weight
- streaming_delivery_rate
- option_code
- option_price
- cancellation_policy_code
- enabled_flag
- approved_by
- approved_at

## 4. Snapshot

Estimate submission creates an immutable snapshot containing:

- every pricing input
- every line item
- pricing-rule version
- currency
- subtotal
- discount
- final total
- rounding decision
- timestamp

Later master changes do not rewrite submitted estimates or approved exhibitions.

## 5. Validation

- Duration bands must not overlap.
- Effective periods must not overlap for the same pricing dimension.
- Negative fees are forbidden.
- Negative weights are forbidden.
- Discounts require an explicit approved rule.
- Missing pricing dimensions block estimate confirmation.

## 6. Final rule

Pricing counts canonical exhibit references, not uploaded files.

Replacing a source version under the same approved source asset ID triggers rights validation but does not add another exhibit count.

A changed canonical asset ID is a new exhibit reference.
