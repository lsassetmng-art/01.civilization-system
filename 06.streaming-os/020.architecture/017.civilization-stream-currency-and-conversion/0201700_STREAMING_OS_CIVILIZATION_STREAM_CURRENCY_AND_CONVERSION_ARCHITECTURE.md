# ============================================================
# STREAMING OS CIVILIZATION STREAM CURRENCY AND CONVERSION
# ARCHITECTURE
# ============================================================

status: canonical-draft
system: streaming-os
domain: civilization-stream-currency-and-conversion
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines:
- AI tipping currency rule
- Civilization national currency usage
- beneficiary-side currency conversion
- display currency interpretation
- BusinessOS linkage boundary

# ============================================================
# 2. DESIGN POSITION
# ============================================================

AI-origin tipping in StreamingOS
does not use real-world fiat currency such as JPY.

Instead,
it uses formal national currencies
defined inside Civilization.

These currencies are not vague internal points.
They are formal economic currencies inside Civilization.

# ============================================================
# 3. AI TIPPING CURRENCY PRINCIPLE
# ============================================================

AI tipping shall use Civilization national currency.

Therefore:
- AI tip value is denominated in a Civilization national currency
- the currency belongs to a Civilization nation context
- the value is formally meaningful inside Civilization economics
- the value is not an arbitrary UI-only point

# ============================================================
# 4. BENEFICIARY-SIDE CONVERSION PRINCIPLE
# ============================================================

The broadcaster or beneficiary
does not necessarily receive the original source currency directly.

Instead,
benefit realization shall be interpreted
in the currency of the nation
to which the beneficiary belongs.

Therefore:
- source currency may differ from beneficiary currency
- payout meaning shall be converted into
  beneficiary-affiliated national currency
- received value shall be explained in beneficiary currency

# ============================================================
# 5. DISPLAY CURRENCY PRINCIPLE
# ============================================================

UI display shall, by default,
use the national currency
of the broadcaster or beneficiary affiliation.

Example meaning:
if a broadcaster belongs to Seiwa,
display and benefit interpretation
shall use Seiwa national gold.

Display currency and source currency
must remain distinguishable.

# ============================================================
# 6. REQUIRED CURRENCY MEANINGS
# ============================================================

StreamingOS should preserve at least:
- source nation id
- source national currency id
- source amount
- beneficiary nation id
- beneficiary national currency id
- converted beneficiary amount
- conversion rule or rate reference
- display currency id
- display amount
- conversion timestamp

# ============================================================
# 7. SOURCE / BENEFICIARY / DISPLAY SEPARATION
# ============================================================

StreamingOS shall separate:

1. source currency
The national currency in which the tip originated.

2. beneficiary currency
The national currency into which benefit is realized
for the broadcaster or beneficiary.

3. display currency
The currency shown in UI.
By default,
this is the beneficiary currency.

These three meanings must not be collapsed.

# ============================================================
# 8. BUSINESSOS LINKAGE BOUNDARY
# ============================================================

StreamingOS may link monetization meaning to BusinessOS
when company-side operational handling is needed.

However:
- ERP is not the current downstream target
- the canonical monetary meaning remains in StreamingOS
- BusinessOS linkage is optional and operational,
  not required for every tip event

# ============================================================
# 9. CORPORATE STREAM INTERPRETATION
# ============================================================

For official corporate streams,
the beneficiary nation currency should resolve
according to the company's affiliated nation context.

If the corporate beneficiary belongs to Seiwa,
converted benefit and display meaning
should resolve into Seiwa national gold by default.

# ============================================================
# 10. ANALYTICS / EXPLANATION REQUIREMENT
# ============================================================

StreamingOS should be able to explain:
- original tip currency
- converted beneficiary currency
- displayed amount
- why conversion occurred
- which nation context governed the conversion

This is necessary for trust and auditability.

# ============================================================
# 11. CANONICAL FIXED STATEMENT
# ============================================================

AI-origin tipping in StreamingOS
shall use Civilization national currency,
not real-world fiat currency.

Benefit realization shall be converted into
the national currency of the broadcaster's
or beneficiary's affiliated nation.

UI display shall, by default,
use beneficiary-side national currency display.

For example,
if a broadcaster belongs to Seiwa,
benefit interpretation and display
shall use Seiwa national gold.

StreamingOS may optionally link such monetization meaning
to BusinessOS,
but ERP is not the current downstream target.

