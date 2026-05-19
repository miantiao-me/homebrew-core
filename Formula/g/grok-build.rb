class GrokBuild < Formula
  desc "Agentic coding CLI by xAI powered by Grok 4.3 Heavy"
  homepage "https://x.ai/cli"
  version "0.1.42"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://x.ai/cli/releases/download/v0.1.42/grok-build-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_DARWIN_ARM64"
    end
    on_intel do
      url "https://x.ai/cli/releases/download/v0.1.42/grok-build-darwin-amd64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_DARWIN_AMD64"
    end
  end

  on_linux do
    on_arm do
      url "https://x.ai/cli/releases/download/v0.1.42/grok-build-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_ARM64"
    end
    on_intel do
      url "https://x.ai/cli/releases/download/v0.1.42/grok-build-linux-amd64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_AMD64"
    end
  end

  def install
    bin.install "grok-build"
  end

  def caveats
    <<~EOS
      Grok Build requires authentication to use.

      To authenticate, you can either:
      1. Run 'grok-build login' and follow the prompts
      2. Set GROK_DEPLOYMENT_KEY environment variable

      For more information, visit: https://docs.x.ai/build/overview
    EOS
  end

  test do
    # Test that the binary is installed and executable
    assert_match version.to_s, shell_output("#{bin}/grok-build --version 2>&1", 1)
  end
end
