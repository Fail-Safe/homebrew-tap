class Noema < Formula
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"
  version "0.24.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.24.1/noema_0.24.1_darwin_arm64.tar.gz"
      sha256 "126c959518f8e7e1fd584ba05c5ac22fadcbd032b8888a8c0ed7d3cca13ce844"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.24.1/noema_0.24.1_darwin_amd64.tar.gz"
      sha256 "a43a1ffa27749650a972efc6dd17ca4f89b699cdc932322b2a6e9f6838af81a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.24.1/noema_0.24.1_linux_arm64.tar.gz"
      sha256 "3685c3e5ae8b7f3294bbb35ad0f5f0b101e63f21fc9151936e9fee4c6a3b0e1b"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.24.1/noema_0.24.1_linux_amd64.tar.gz"
      sha256 "ff3210a239a0c2e11080e98ffc5c345d2186cd6c0806af5e812dc785e9e5ae25"
    end
  end

  def install
    bin.install "noema"
  end

  test do
    system "#{bin}/noema", "version"
  end
end
