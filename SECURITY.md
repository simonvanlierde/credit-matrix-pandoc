# Security policy

## Reporting a vulnerability

Report it privately through GitHub:
[Report a vulnerability](https://github.com/simonvanlierde/credit-matrix-pandoc/security/advisories/new).
Don't open a public issue or pull request for a security problem: anyone can read those before
there is a fix.

Please include:

- What you found and where.
- How to reproduce it, and which release or commit you tested.
- The impact you expect.

## Disclosure timeline

- I reply within two weeks to confirm receipt, then tell you whether I can reproduce it and when
  I expect a fix.
- I aim to fix a confirmed vulnerability, or agree a later date with you, within 90 days of the
  report.
- Because the filter code is synced from
  [simonvanlierde/credit-matrix](https://github.com/simonvanlierde/credit-matrix), fixes to
  `credit-matrix.lua` ship upstream first and sync here on release.
