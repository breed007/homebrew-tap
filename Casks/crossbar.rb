cask "crossbar" do
  version "0.6.0"
  sha256 "e504d4598080c196b53bb510509364b82ea1aba1fb1eaa083f1ccf4357f571b1"

  url "https://github.com/breed007/crossbar-macos/releases/download/v#{version}/crossbar-v#{version}-universal.zip"
  name "Crossbar"
  desc "Toggle network services from the menu bar"
  homepage "https://github.com/breed007/crossbar-macos"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Crossbar.app"

  # Since 0.5, Crossbar can install a privileged helper (an SMAppService LaunchDaemon).
  # Stop it on uninstall.
  uninstall launchctl: "com.breed.Crossbar.helper",
            quit:      "com.breed.Crossbar"

  zap trash: "~/Library/Preferences/com.breed.Crossbar.plist"
end
