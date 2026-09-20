class Noema < Formula
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"
  version "0.21.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.8/noema_0.21.8_darwin_arm64.tar.gz"
      sha256 "703c0f3b1872117f2ef71534baa5a0d558f92b27d34de8971a9c5680e82bc1b2"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.8/noema_0.21.8_darwin_amd64.tar.gz"
      sha256 "62228675a656eade79630d768212c57ada17e34f9efe84e01eb38862d05e61a0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.8/noema_0.21.8_linux_arm64.tar.gz"
      sha256 "3ab9a92d1460e9448d8da4ba3f34c3de1fdac2f83366ea75820d7b2e99a35b3a"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.8/noema_0.21.8_linux_amd64.tar.gz"
      sha256 "26b85cbd6afb628c4c376a3569092f06c4584be26b211e4b28961985ae5f26ae"
    end
  end

  def install
    bin.install "noema"
  end

  test do
    system "#{bin}/noema", "version"
  end
end
