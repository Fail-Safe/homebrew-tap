cask "noema" do
  version "0.24.2"
  arch arm: "arm64", intel: "amd64"
  sha256 arm: "21256be321e8ab9a82f3aa5179e66bda5172aaf2fc81540b611b55d7886abde6", intel: "c69711935c7ce81d0eab691c3415ce2b5ec288a6e7095b644a5b3f55f28daf55"
  url "https://github.com/Fail-Safe/Noema/releases/download/v0.24.2/noema_0.24.2_darwin_#{arch}.tar.gz"
  name "Noema"
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"

  binary "noema"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/noema"]
  end
end
