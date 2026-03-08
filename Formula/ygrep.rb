# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-3.2.3-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-3.2.3-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-3.2.3-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/3.2.3/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "3.2.3"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.2.3/ygrep-3.2.3-darwin-arm64.tar.gz"
      sha256 "49ce8969a33a98654f24f10e4b50712e0f188cc02fdaa3aed3793e73e986897f"
    end
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.2.3/ygrep-3.2.3-darwin-x86_64.tar.gz"
      sha256 "7f03434b00b2c0ce9969449e8e0a97e58130cd26dc216d910b56ee8c3d2c0531"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.2.3/ygrep-3.2.3-linux-x86_64.tar.gz"
      sha256 "fa1f58f1cc5b8fdb78089db2b184eefb122a9afe94fd5be9a248f105f5a79fea"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.2.3/ygrep-3.2.3-linux-aarch64.tar.gz"
      sha256 "ba99b7ea552cf1f57bdf167e640c2f902ae1bc99b6ced4c24f0a3c921c55602b"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
