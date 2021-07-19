# GitHub Action for Bunny CLI

This action provides `bunny` for GitHub Actions.

## Usage

`.github/workflows/deploy.yml`
```yaml
name: Build and Deploy
on: [push]
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@master
      - name: Deploy to Edge Storage
        uses: ghostzero/bunny-action@main
        env:
          BUNNY_API_ACCESS_KEY: ${{ secrets.BUNNY_API_ACCESS_KEY }}
          BUNNY_STORAGE_HOSTNAME: storage.bunnycdn.com
          BUNNY_STORAGE_USERNAME: bunny-app
          BUNNY_STORAGE_PASSWORD: ${{ secrets.BUNNY_STORAGE_PASSWORD }}
          BUNNY_PULL_ZONE_ID: 464290
        with:
          args: deploy --dir=dist
```