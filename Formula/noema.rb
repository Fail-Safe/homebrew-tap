class Noema < Formula
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"
  version "0.21.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.0/noema_0.21.0_darwin_arm64.tar.gz"
      sha256 "5adeaf0c7fbb5afbbd35c906275f2f4904a67524b41011870918304371fbce1f"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.0/noema_0.21.0_darwin_amd64.tar.gz"
      sha256 "80060793d084a2f7f262fc61172efa5ce7efeee05d104d4df6ccb9aaf2535b92"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.0/noema_0.21.0_linux_arm64.tar.gz"
      sha256 "62ffc0b52e8f32802ec3cdf17b8b246d30c496ad20ef1d086cd8c107bed134ef"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.0/noema_0.21.0_linux_amd64.tar.gz"
      sha256 "1570d7c4b1f34783a3fc5c5fdc5f0b359048c995d223df7f66e35ec0dde53c3a"
    end
  end

  def install
    bin.install "noema"
  end

  test do
    system "#{bin}/noema", "version"
  end
end
