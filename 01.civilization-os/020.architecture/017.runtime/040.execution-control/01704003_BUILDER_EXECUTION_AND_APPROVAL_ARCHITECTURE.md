# ============================================================
# BUILDER EXECUTION AND APPROVAL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: builder-execution-and-property-revenue-distribution
component: builder-execution-and-approval

owner: Boss
prepared_by: Zero


# PURPOSE

Define the canonical execution architecture
for builder-side placement,
construction execution,
validation,
and approval handling.


# CORE PRINCIPLE

Ordinary builder placement
must not create manual system-company work waiting
for the user.

System-side execution companies
may perform construction automatically
after required checks pass.


# REQUIRED CHECKS

The following checks must pass
before automatic execution:

- compatibility validation
- authority validation
- right-basis validation
- zone or placement rule validation
- ownership or occupancy basis validation where applicable


# AUTOMATIC EXECUTION RULE

If all required checks pass
and the target category is not approval-required,
the system-side execution company
must proceed automatically.


# APPROVAL REQUIRED RULE

Explicit waiting is allowed only for
approval-required categories.

Examples may include:

- strategic infrastructure
- public land special use
- border-sensitive placement
- military-sensitive placement
- judicial-sensitive placement
- protected district redevelopment
- eminent-domain or compulsory reallocation paths


# FAIL-CLOSED RULE

If validation cannot determine safe execution,
the builder request must fail closed.

Silent fallback construction is prohibited.


# USER EXPERIENCE RULE

The user must see:

- allowed
- blocked
- approval required
- reason code

The user must not see
an unnecessary manual system-company queue
for normal builder execution.


# FINAL RULE

Normal builder execution
must be auto-progressed by system-side execution companies
after governed checks pass,
while approval-required categories remain explicitly gated.
