# ============================================================
# FINAL WORDING AND FORMAT POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Fixes the remaining wording, digit-width, and display-format details.

# ============================================================
# 1. FRONT_LOCAL INVOICE FOOTER WORDING
# ============================================================

front_local_invoice_footer_wording:
- ja-JP:
  この請求書は InvoiceFlow 上で発行されたフロント管理請求です。
- en-US:
  This invoice was issued from InvoiceFlow as a front-managed invoice.

footer_rules:
- footer is mandatory for FRONT_LOCAL invoice PDF
- footer is not mandatory for ERP_MASTER invoice PDF by default
- localized wording follows document language_code

# ============================================================
# 2. RECEIPT NUMBER SERIAL DIGITS
# ============================================================

receipt_number_format:
- RCT-YYYYMMDD-####

serial_digit_rule:
- serial uses 4 digits
- examples:
  - RCT-20260413-0001
  - RCT-20260413-0124
  - RCT-20260413-9999

overflow_rule:
- if daily serial exceeds 9999, implementation must fail closed
  or use an explicitly reviewed extension policy
- silent format change is forbidden

# ============================================================
# 3. REISSUE DISPLAY WORDING
# ============================================================

reissue_wording:
- ja-JP:
  再発行
- en-US:
  Reissued

reissue_visibility_rules:
- reissued receipt detail must show:
  - current receipt number
  - prior receipt number
  - reissue reason
  - reissue marker
- reissued receipt PDF should include the reissue marker

# ============================================================
# 4. AUTHORITY BADGE WORDING
# ============================================================

authority_badge_wording:
- FRONT_LOCAL:
  - ja-JP: FRONT_LOCAL
  - en-US: FRONT_LOCAL
- ERP_MASTER:
  - ja-JP: ERP_MASTER
  - en-US: ERP_MASTER

erp_eligibility_warning_wording:
- ja-JP:
  この請求は ERP正本反映対象外です。
- en-US:
  This invoice is not eligible for ERP master reflection.

# ============================================================
# 5. CURRENCY DISPLAY RULE
# ============================================================

currency_display_rule:
- currency code is always shown
- symbol-only display is forbidden for critical financial amounts
- recommended examples:
  - JPY 110,000
  - USD 1,250.00
  - EUR 980.50

currency_summary_rule:
- customer summaries remain currency-separated
- cross-currency totals must not be shown as one implicit sum

# ============================================================
# 6. LANGUAGE FALLBACK DISPLAY RULE
# ============================================================

language_fallback_rule:
- customer preferred language
- actor preference
- tenant default
- system default

fallback_display_rule:
- if exact localized copy is unavailable, fall back in the above order
- fallback must not silently change numeric/currency meaning
- document language_code must reflect actual generation language

# ============================================================
# 7. SHARE LINK RULE
# ============================================================

share_link_rule:
- share link is not enabled in initial launch default
- share link remains later optional expansion
- no hidden/partial share-link UI should appear before enablement

# ============================================================
# 8. FINAL INTERPRETATION
# ============================================================

final_interpretation:
Wording and formatting decisions are now fixed enough
that implementation does not need to invent display meaning.
