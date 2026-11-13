# Contributing to credit-matrix-pandoc

This repository mirrors the Pandoc/Quarto filter (`credit-matrix.lua` and
`_extensions/credit-matrix/_extension.yml`) from
[simonvanlierde/credit-matrix](https://github.com/simonvanlierde/credit-matrix) on each release.

## Where to send changes

- **Filter behaviour, role names, formatting or documentation:** open an issue or pull request in
  [simonvanlierde/credit-matrix](https://github.com/simonvanlierde/credit-matrix). The weekly sync
  workflow here copies new releases from that repository.
- **Mirror packaging, CI workflows, or the sample test fixture (`test/expected.txt`):** open a
  pull request in this repository.

## Checks and standards

Every change must pass the sample test against Pandoc 3 (`sh scripts/test.sh` or
`docker run --rm -v "$PWD":/w:ro -w /w --entrypoint sh pandoc/core:3.11.0 scripts/test.sh`).
Follow `.editorconfig` and keep shell scripts clean under `shellcheck`.

## Commit messages

Use [Conventional Commits](https://www.conventionalcommits.org/) (`feat:`, `fix:`, `chore:`, `docs:`).

## Code of conduct

This project follows [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md).
