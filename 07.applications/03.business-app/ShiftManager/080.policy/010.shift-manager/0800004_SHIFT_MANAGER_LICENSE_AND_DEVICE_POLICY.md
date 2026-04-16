# ============================================================
# SHIFT MANAGER LICENSE AND DEVICE POLICY
# ============================================================

status: design-extension
type: license-and-device-policy
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. POSITIONING
# ============================================================

ShiftManager should be positioned as:
- a subscription-based application
- a monthly-use application

It should not be positioned primarily as:
- per-user SaaS
- user-count pricing software

# ============================================================
# 2. LICENSE MODEL
# ============================================================

license_model:
- site-based monthly license
- 900 JPY per site / store / operation unit
- unlimited users inside the licensed site
- no initial fee
- 3-day initial trial available

meaning:
The license is not primarily tied to one named individual.
It is tied to the operational site/unit adopting ShiftManager.

# ============================================================
# 3. DEVICE POLICY
# ============================================================

device_policy:
- usable from company PC
- usable from company smartphone
- PC and smartphone should both be supported
- both device types may be used under the same site-based license

important_rule:
Do not position this as:
- separate paid PC license
- separate paid smartphone license

Recommended position:
- one site-based license
- multi-device usage allowed inside that licensed site

# ============================================================
# 4. PRICING EXPRESSION
# ============================================================

recommended_pricing_expression:
- 1 site = 900 JPY / month
- unlimited users within the site
- usable from company PC and company smartphone
- no initial fee
- initial 3-day trial

avoid_expression:
- per-user pricing
- separate PC and smartphone pricing
- SaaS-heavy wording

preferred_expression:
- subscription-based application
- monthly-use application
- site-based fixed monthly pricing

# ============================================================
# 5. BUSINESS VALUE
# ============================================================

business_value:
- no user-count anxiety
- easier budget explanation
- easier site/store rollout
- easier enterprise internal approval
- easier calculation at company-wide rollout
- practical multi-operator use for shift managers

example_value_message:
Even when multiple shift operators exist in one store/site,
the price remains fixed for that site.

# ============================================================
# 6. SUBSCRIPTION STATUS RELATION
# ============================================================

subscription_status:
- trial
- active
- grace
- inactive

relation_to_license:
- trial/active/inactive state should be evaluated per licensed site/unit
- feature control should follow the site subscription state
- inactive state becomes read-only mode for allowed viewers

# ============================================================
# 7. FEATURE CONTROL IN RELATION TO LICENSE
# ============================================================

active_or_trial:
- create
- edit
- auto generation
- publish / republish
- share management
- PDF export
- ERP export
- viewing
- notification viewing

inactive:
- self shift viewing
- already visible published shift viewing
- notification viewing

disabled_when_inactive:
- create
- edit
- auto generation
- publish / republish
- share management
- new PDF export
- ERP export
- generation rule management
- management-side configuration change

# ============================================================
# 8. ENTERPRISE ROLLOUT MEANING
# ============================================================

enterprise_rollout_meaning:
This model is designed to reduce adoption friction.

because:
- pricing can be explained per site/store
- multiple responsible people can still operate under one site license
- company-wide rollout can be estimated from number of sites
- internal approval becomes easier than per-user expansion pricing

# ============================================================
# 9. FUTURE OPEN ITEMS
# ============================================================

non_blocking_open_items:
- exact definition of site/store/operation unit
- whether headquarters-only management view needs separate policy
- whether central admin visibility crosses site license boundary
- exact billing system linkage

# ============================================================
# 10. CONCLUSION
# ============================================================

ShiftManager should use:
- site-based monthly pricing
- 900 JPY per site
- unlimited users within site
- PC/smartphone dual-device usage
- no initial fee
- 3-day trial

This is clearer and easier to adopt
than per-user or device-separated pricing.

