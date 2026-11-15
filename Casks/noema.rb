cask "noema" do
  version "0.24.1"
  arch arm: "arm64", intel: "amd64"
  sha256 arm: "126c959518f8e7e1fd584ba05c5ac22fadcbd032b8888a8c0ed7d3cca13ce844", intel: "a43a1ffa27749650a972efc6dd17ca4f89b699cdc932322b2a6e9f6838af81a8"
  url "https://github.com/Fail-Safe/Noema/releases/download/v0.24.1/noema_0.24.1_darwin_#{arch}.tar.gz"
  name "Noema"
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"

  binary "noema"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/noema"]
  end
end
