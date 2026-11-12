cask "crossbar" do
  version "0.6.1"
  sha256 "549818078be56316ec0300abeffedd23e45460e5abbeb4a8d6fc9a0455ecb57a"

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
