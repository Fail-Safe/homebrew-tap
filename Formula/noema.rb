class Noema < Formula
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"
  version "0.21.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.3/noema_0.21.3_darwin_arm64.tar.gz"
      sha256 "54c45c6f56c706e5286cbe3da91d334d767756bb1c54954f6a0fa52577274c96"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.3/noema_0.21.3_darwin_amd64.tar.gz"
      sha256 "25441b6e8ad2822a63a3e8ecbd6436e33410f0100d7f41e64b7d9ff580d92782"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.3/noema_0.21.3_linux_arm64.tar.gz"
      sha256 "8e3d578233955bdc5eeac17478b02a65a481b0594af5a7c2e7d1f680e61426f5"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.3/noema_0.21.3_linux_amd64.tar.gz"
      sha256 "0ed8564d461b6ad19c26c2a820e04e1f0628168b5128ff506bb81dcadddad08a"
    end
  end

  def install
    bin.install "noema"
  end

  test do
    system "#{bin}/noema", "version"
  end
end
