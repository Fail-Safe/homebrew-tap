cask "noema" do
  version "0.21.9"
  arch arm: "arm64", intel: "amd64"
  sha256 arm: "79831cf4fde9e786ee58b47ff6b89e700bfc24ec8c5e1dbf1612be8ef3c0b187", intel: "ecab0a1f7cddc9c52dc0fc896970862018d18953f1ea0e23f1bc912c1919aa09"
  url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.9/noema_0.21.9_darwin_#{arch}.tar.gz"
  name "Noema"
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"

  binary "noema"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/noema"]
  end
end
