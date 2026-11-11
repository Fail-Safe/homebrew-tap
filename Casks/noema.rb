cask "noema" do
  version "0.23.4"
  arch arm: "arm64", intel: "amd64"
  sha256 arm: "6b38d0f035b24a147a7b60c8781df1ffdab745b8dbfaef463bc739ce24f27f11", intel: "c7d9cdcb6558bfb52e8938519467ff7d64dbfbf4c560782f6b54cc850e6f12c7"
  url "https://github.com/Fail-Safe/Noema/releases/download/v0.23.4/noema_0.23.4_darwin_#{arch}.tar.gz"
  name "Noema"
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"

  binary "noema"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/noema"]
  end
end
