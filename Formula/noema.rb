class Noema < Formula
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"
  version "0.23.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.23.0/noema_0.23.0_darwin_arm64.tar.gz"
      sha256 "fb4ab082f27f8738d23381270d2c1ab1e99e0c0925735176db567a7cde5d318e"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.23.0/noema_0.23.0_darwin_amd64.tar.gz"
      sha256 "86a12ddf6845a3b0a8bb6ca11de0258bba17cc91817b9bddd3d8f12938adc737"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.23.0/noema_0.23.0_linux_arm64.tar.gz"
      sha256 "3e53705ff6a2341e45b844ea13d1ddcc4e1f6dd26a3b6d5b99477cc2af448055"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.23.0/noema_0.23.0_linux_amd64.tar.gz"
      sha256 "08bf29d8261433fc133a1be8d2323f0541ddf77f2ef9d0a48d6005f4752cb707"
    end
  end

  def install
    bin.install "noema"
  end

  test do
    system "#{bin}/noema", "version"
  end
end
