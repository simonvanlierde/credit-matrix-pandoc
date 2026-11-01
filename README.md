# credit-matrix-pandoc

A Pandoc Lua filter that writes a [CRediT](https://credit.niso.org/) authorship statement from the
roles in your document's author list. It also works as a Quarto extension.

The filter is written and tested in [CRediT Matrix](https://github.com/simonvanlierde/credit-matrix),
and this repository copies it from each release. Report problems and send changes there.

## Install

Pandoc: download [`credit-matrix.lua`](credit-matrix.lua) and pass it to Pandoc.

```sh
pandoc paper.md --lua-filter=credit-matrix.lua -o paper.pdf
```

Quarto:

```sh
quarto add simonvanlierde/credit-matrix-pandoc
```

then list `credit-matrix` under `filters` in your document or `_quarto.yml`.

## Use

Give each author `roles` in the front matter. A role can carry a level: `lead`, `equal` or
`supporting`.

```yaml
---
title: A sample manuscript
author:
  - name: Marie Skłodowska-Curie
    roles:
      - conceptualization
      - investigation
      - writing
  - name: Antonie van Leeuwenhoek
    roles:
      - investigation: supporting
      - editing
---
```

The statement is added at the end of the document:

> **Marie Skłodowska-Curie**: Conceptualization, Investigation, Writing – original draft;
> **Antonie van Leeuwenhoek**: Investigation (Supporting), Writing – review & editing.

[`sample.md`](sample.md) is a complete example. Role names, short forms such as `writing` and
`editing`, placement and heading options are described in the
[CRediT Matrix Pandoc guide](https://github.com/simonvanlierde/credit-matrix/tree/main/integrations/pandoc).

## Test

`scripts/test.sh` renders the sample and checks the statement. It needs Pandoc 3.

The weekly sync copies the filter but not the test. When a release changes the statement's wording,
the sync fails until `test/expected.txt` is updated by hand.

## License

[MIT](LICENSE)
