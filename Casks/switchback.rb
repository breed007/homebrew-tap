cask "switchback" do
  version "0.6.0"
  sha256 "3b51ec3fb7b5a79ea550fc1d04ef26b6c9c1063f9e5e20c4d9a38d227352772c"

  url "https://github.com/breed007/switchback-macos/releases/download/v#{version}/Switchback-v#{version}-universal.zip"
  name "Switchback"
  desc "Switch between network locations from the menu bar"
  homepage "https://github.com/breed007/switchback-macos"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Switchback.app"

  # v0.5 adds a privileged helper (an SMAppService LaunchDaemon). Stop it on uninstall.
  uninstall launchctl: "com.breed007.switchback.helper",
            quit:      "com.breed007.switchback"

  zap trash: "~/Library/Preferences/com.breed007.switchback.plist"
end
