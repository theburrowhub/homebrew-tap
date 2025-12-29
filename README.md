# Homebrew Tap for The Burrow Hub

This repository contains Homebrew formulae for [The Burrow Hub](https://github.com/theburrowhub) projects.

## Installation

```bash
brew tap theburrowhub/tap
```

## Available Formulae

### krakenv

Environment variable management with annotation-based wizards.

```bash
brew install theburrowhub/tap/krakenv
```

### go-secret

A beautiful terminal UI for managing GCP Secret Manager secrets.

```bash
brew install theburrowhub/tap/go-secret
```

### git-gone

A simple tool to clean up Git branches.

```bash
brew install theburrowhub/tap/git-gone
```

### cherry-go

A CLI tool for partial file versioning from other Git repositories.

```bash
brew install theburrowhub/tap/cherry-go
```

## Automatic Formula Updates

This tap supports automatic formula updates via GitHub Actions.

### Manual Dispatch (GitHub UI)

Go to Actions → "Update Formula" → "Run workflow" and select:
- `formula`: Which formula to update
- `version`: Target version (optional, defaults to latest release)

### Repository Dispatch (from project repos)

Send a `repository_dispatch` event from your release workflow:

```yaml
- name: Update Homebrew tap
  uses: peter-evans/repository-dispatch@v3
  with:
    token: ${{ secrets.TAP_GITHUB_TOKEN }}
    repository: theburrowhub/homebrew-tap
    event-type: update-formula
    client-payload: '{"formula": "krakenv", "version": "${{ github.ref_name }}"}'
```

> **Note**: Requires a PAT with `repo` scope stored as `TAP_GITHUB_TOKEN` secret.

## Documentation

| Formula | Repository | Description |
|---------|------------|-------------|
| krakenv | [theburrowhub/krakenv](https://github.com/theburrowhub/krakenv) | When envs get complex, release the krakenv |
| go-secret | [theburrowhub/go-secret](https://github.com/theburrowhub/go-secret) | Terminal UI for GCP Secret Manager |
| git-gone | [theburrowhub/git-gone](https://github.com/theburrowhub/git-gone) | Clean up Git branches |
| cherry-go | [theburrowhub/cherry-go](https://github.com/theburrowhub/cherry-go) | Partial file versioning from Git repos |

## License

MIT License
