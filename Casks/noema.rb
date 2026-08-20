cask "noema" do
  version "0.21.1"
  arch arm: "arm64", intel: "amd64"
  sha256 arm: "4b2cf5ea414e0aedc8105299fdfc5a25288412bf9e800b2cba98c0e5fdf379a8", intel: "d2011a014e96d66192f2f341a32038e958cf095fe6e1b30ad1cf4bfd57d4a8ad"
  url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.1/noema_0.21.1_darwin_#{arch}.tar.gz"
  name "Noema"
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"

  binary "noema"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/noema"]
  end
end
