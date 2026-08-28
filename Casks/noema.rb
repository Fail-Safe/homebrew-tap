cask "noema" do
  version "0.21.6"
  arch arm: "arm64", intel: "amd64"
  sha256 arm: "efcac155df408213f2761d508840f3460cd4e373dcaebf8de91b2c0db216b2e3", intel: "894ced1a93db5dd20ff9fbac802c6c8f7dbfe35ceabe03d9a9f66820d2458cc2"
  url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.6/noema_0.21.6_darwin_#{arch}.tar.gz"
  name "Noema"
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"

  binary "noema"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/noema"]
  end
end
