# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-4.0.1-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-4.0.1-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-4.0.1-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/4.0.1/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "4.0.1"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v4.0.1/ygrep-4.0.1-darwin-arm64.tar.gz"
      sha256 "b4719372efb7316ae221df88001a70b3db866f2614cb44ad6cf640fea354d8d8"
    end
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v4.0.1/ygrep-4.0.1-darwin-x86_64.tar.gz"
      sha256 "9f94bdaffe5a1056aff28a4e41b69a034da960da7b37672bbc83eb09267bd30d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v4.0.1/ygrep-4.0.1-linux-x86_64.tar.gz"
      sha256 "319cbbf82d49f818a02075a68ec884b032e34cb506f2991bae6ef9e5c9855c8c"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v4.0.1/ygrep-4.0.1-linux-aarch64.tar.gz"
      sha256 "b98c60f893fec522a001c361cb85659dd5249fdc1246d81516453650be86770d"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end

