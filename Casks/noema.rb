cask "noema" do
  version "0.21.3"
  arch arm: "arm64", intel: "amd64"
  sha256 arm: "54c45c6f56c706e5286cbe3da91d334d767756bb1c54954f6a0fa52577274c96", intel: "25441b6e8ad2822a63a3e8ecbd6436e33410f0100d7f41e64b7d9ff580d92782"
  url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.3/noema_0.21.3_darwin_#{arch}.tar.gz"
  name "Noema"
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"

  binary "noema"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/noema"]
  end
end
