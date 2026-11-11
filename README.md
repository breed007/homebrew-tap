# breed007/homebrew-tap

Homebrew casks for my macOS apps.

```sh
brew tap breed007/tap
brew trust breed007/tap          # one-time — Homebrew requires trusting third-party taps
brew install --cask switchback
brew install --cask crossbar
brew install --cask cloudpane
```

(Once tapped and trusted, `brew install --cask breed007/tap/switchback` also works
without the separate tap step.)

## Casks

| Cask | What it does | Source |
|------|--------------|--------|
| **switchback** | See and switch macOS network **locations** from the menu bar | [switchback-macos](https://github.com/breed007/switchback-macos) |
| **crossbar** | Toggle macOS network **services** (Wi-Fi, Ethernet, VPN…) from the menu bar | [crossbar-macos](https://github.com/breed007/crossbar-macos) |
| **cloudpane** | Audit cloud storage across iCloud Drive, Dropbox, Google Drive, OneDrive and Box, read-only and with no logins | [Cloudpane](https://github.com/breed007/Cloudpane) |

All are universal (Apple Silicon + Intel), signed with a Developer ID, and
notarized, so they install and launch without a Gatekeeper workaround. Requires
macOS 14 (Sonoma) or later.

## Updating

Each app release bumps `version` + `sha256` in its cask. `brew bump-cask-pr`
automates the bump; the `livecheck` block tracks the latest GitHub release.
