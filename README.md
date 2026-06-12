# breed007/homebrew-tap

Homebrew casks for my macOS menu-bar apps.

```sh
brew install --cask breed007/tap/switchback
brew install --cask breed007/tap/crossbar
```

(`brew tap breed007/tap` once, then `brew install --cask switchback` also works.)

## Casks

| Cask | What it does | Source |
|------|--------------|--------|
| **switchback** | See and switch macOS network **locations** from the menu bar | [switchback-macos](https://github.com/breed007/switchback-macos) |
| **crossbar** | Toggle macOS network **services** (Wi-Fi, Ethernet, VPN…) from the menu bar | [crossbar-macos](https://github.com/breed007/crossbar-macos) |

Both are universal (Apple Silicon + Intel), signed with a Developer ID, and
notarized, so they install and launch without a Gatekeeper workaround. Requires
macOS 14 (Sonoma) or later.

## Updating

Each app release bumps `version` + `sha256` in its cask. `brew bump-cask-pr`
automates the bump; the `livecheck` block tracks the latest GitHub release.
