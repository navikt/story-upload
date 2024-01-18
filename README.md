# Story upload action

Denne github actionen laster opp datafortellinger til [datamarkedsplassen](https://data.intern.nav.no)

## Inputs

## `id`

_**Required**_ - ID på den eksisterende datafortellingen du ønsker å oppdatere.

## `dir`

_**Required**_ - Mappen i repoet som inneholder datafortelling filene.

## `team_token`

_**Required**_ - Tokenet til teamet som eier datafortellingen.

## `env`

Miljøet du ønsker å publisere til (dev/prod). Defaultverdi er dev

## `public`

Om du ønsker å publisere til den eksterne datakatalogen. Defaultverdi er false (intern datamarkedsplass)

## `batch_size`

Batch size for filene du laster opp. Default er 10.

## Example usage

```yaml
jobs:
  story-upload:
    name: story upload
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: navikt/story-upload@v1
        with:
          id: 757da08e-031e-4fac-a5f0-fffe6d2d96b6
          dir: example/quartobook/output
          team_token: ${{ secrets.TEAM_TOKEN }}
          env: dev
```