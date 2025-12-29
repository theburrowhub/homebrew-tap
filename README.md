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

Or, after tapping:

```bash
brew install krakenv
```

## Automatic Formula Updates

This tap supports automatic formula updates via GitHub Actions. There are three ways to trigger an update:

### 1. Manual Dispatch (GitHub UI)

Go to Actions → "Update Formula" → "Run workflow" and optionally specify:
- `version`: Target version (defaults to latest release)
- `formula`: Formula name (defaults to `krakenv`)

### 2. Repository Dispatch (from another repo)

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

### 3. GoReleaser Integration

Add to your `.goreleaser.yml`:

```yaml
brews:
  - name: krakenv
    repository:
      owner: theburrowhub
      name: homebrew-tap
      token: "{{ .Env.HOMEBREW_TAP_TOKEN }}"
    directory: Formula
    homepage: "https://github.com/theburrowhub/krakenv"
    description: "Environment variable management with annotation-based wizards"
    license: "MIT"
    test: |
      system "#{bin}/krakenv version"
```

## Documentation

- [krakenv](https://github.com/theburrowhub/krakenv) - When envs get complex, release the krakenv

## License

MIT License
