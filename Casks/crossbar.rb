cask "crossbar" do
  version "0.3.0"
  sha256 "d350dae050f30573f776a0736b3614aa6c06931900b0bcb7e478b4fccb4e929d"

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

  zap trash: "~/Library/Preferences/com.breed.Crossbar.plist"
end
