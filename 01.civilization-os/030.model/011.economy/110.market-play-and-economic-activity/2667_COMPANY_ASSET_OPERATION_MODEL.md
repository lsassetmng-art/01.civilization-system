# ============================================================
# COMPANY ASSET OPERATION MODEL
# ============================================================

status: canonical
layer: model
scope: company-builder
component: company-asset-operation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the official model
for company asset operation.

Company asset operation means that a company
may use financial and real estate assets
as part of wealth preservation, cash generation,
balance sheet strategy, or long-term investment.

This model is separate from:

- company core identity
- company site operations
- direct product sales

It governs asset-side activity.


# ============================================================
# 2. CORE RULE
# ============================================================

A company may perform asset operation.

Official asset operation scopes include:

- equity investment
- real estate investment

However, the company must not directly execute
market or property transfer operations on its own.

Execution must be routed through authorized intermediaries.

Official intermediary rules:

- equity-related execution must go through securities_firm
- real-estate-related execution must go through system real estate company


# ============================================================
# 3. COMPANY ASSET OPERATION PROFILE
# ============================================================

A company asset operation profile should contain:

- company_id
- asset_operation_enabled
- equity_investment_enabled
- real_estate_investment_enabled
- asset_operation_policy
- risk_posture
- income_source_mix
- portfolio_management_notes

Recommended risk_posture values:
- conservative
- balanced
- growth
- strategic
- opportunistic

Recommended income_source_mix dimensions:
- operating_income_ratio
- dividend_income_ratio
- rental_income_ratio
- capital_gain_ratio


# ============================================================
# 4. ASSET OPERATION POLICY
# ============================================================

Asset operation policy should describe:

- permitted asset classes
- concentration limits
- use of nation market regime
- use of intermediary firms
- liquidity preference
- long-term vs short-term orientation

Example policy dimensions:
- equity_holding_allowed
- real_estate_holding_allowed
- direct_execution_allowed = false
- leverage_allowed
- strategic_control_investment_allowed
- passive_income_target_enabled


# ============================================================
# 5. EQUITY ASSET OPERATION
# ============================================================

Equity asset operation includes:

- listed equity purchase intent
- listed equity sale intent
- TOB tender intent
- block trade intent
- offering or allotment subscription
- holding management
- dividend receipt
- corporate action processing

A company may hold equity,
but execution and processing path
must follow securities intermediary rules.


# ============================================================
# 6. REAL ESTATE ASSET OPERATION
# ============================================================

Real estate asset operation includes:

- property acquisition intent
- lease income operation
- resale intent
- tenant-unit use
- portfolio holding
- valuation management

A company may hold and operate real estate,
but transfer mediation must go through
system real estate company.


# ============================================================
# 7. ANALYTICS CONNECTION
# ============================================================

Company analytics should include asset-operation views.

Recommended analytics dimensions:
- portfolio_value
- equity_holdings_value
- real_estate_holdings_value
- dividend_income
- rental_income
- capital_gain
- capital_loss
- portfolio_resilience
- liquidity_posture


# ============================================================
# 8. EVALUATION CONNECTION
# ============================================================

Company evaluation may include asset-related factors.

Examples:
- asset_stability_score
- investment_performance_score
- portfolio_resilience_score

These must not replace core operating evaluation,
but may complement it.


# ============================================================
# 9. FINAL RULE
# ============================================================

Companies may operate assets,
but they must not bypass intermediary structures.

Asset ownership is allowed.
Direct market or property execution is not.
