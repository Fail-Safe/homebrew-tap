class Noema < Formula
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"
  version "0.24.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.24.2/noema_0.24.2_darwin_arm64.tar.gz"
      sha256 "21256be321e8ab9a82f3aa5179e66bda5172aaf2fc81540b611b55d7886abde6"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.24.2/noema_0.24.2_darwin_amd64.tar.gz"
      sha256 "c69711935c7ce81d0eab691c3415ce2b5ec288a6e7095b644a5b3f55f28daf55"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.24.2/noema_0.24.2_linux_arm64.tar.gz"
      sha256 "b3fc4bad9dc72bb62f79c2c0f3bdab79a7640baca554701e8e97bb7d1620821d"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.24.2/noema_0.24.2_linux_amd64.tar.gz"
      sha256 "d7d3be67b516df0d50153bec804c053877dce74f1097d1d673e2e99c74d9ded3"
    end
  end

  def install
    bin.install "noema"
  end

  test do
    system "#{bin}/noema", "version"
  end
end
