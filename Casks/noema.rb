cask "noema" do
  version "0.21.7"
  arch arm: "arm64", intel: "amd64"
  sha256 arm: "c55b3b104d2f7622139f99d6d57249f70891f17bfef0a958454bbe1fb582c2b1", intel: "0a074f7917917903b4f3c6eb8d9085b2e0d5114b4db60db18298f199fbd914e8"
  url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.7/noema_0.21.7_darwin_#{arch}.tar.gz"
  name "Noema"
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"

  binary "noema"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/noema"]
  end
end
