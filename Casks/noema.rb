cask "noema" do
  version "0.23.5"
  arch arm: "arm64", intel: "amd64"
  sha256 arm: "11a71d37c86dbfaa2a23d546b951e19e38d14fa6213b25a5b912552ddd9f8fe4", intel: "ba4027b95e5fde3b0ce5af50e8b6d85fb25d3ae7ff86bd66291c8341001be299"
  url "https://github.com/Fail-Safe/Noema/releases/download/v0.23.5/noema_0.23.5_darwin_#{arch}.tar.gz"
  name "Noema"
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"

  binary "noema"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/noema"]
  end
end
