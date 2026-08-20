class Noema < Formula
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"
  version "0.21.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.1/noema_0.21.1_darwin_arm64.tar.gz"
      sha256 "4b2cf5ea414e0aedc8105299fdfc5a25288412bf9e800b2cba98c0e5fdf379a8"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.1/noema_0.21.1_darwin_amd64.tar.gz"
      sha256 "d2011a014e96d66192f2f341a32038e958cf095fe6e1b30ad1cf4bfd57d4a8ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.1/noema_0.21.1_linux_arm64.tar.gz"
      sha256 "9e7b0522ea2fa8a9c31f139c1d1ecbaf0a2c46b0a0ff946045e35b8312b64479"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.1/noema_0.21.1_linux_amd64.tar.gz"
      sha256 "77369565242f40950c0fffff1ec19ecfa27ea96a9bc206a56cfd91fffe8836ab"
    end
  end

  def install
    bin.install "noema"
  end

  test do
    system "#{bin}/noema", "version"
  end
end
