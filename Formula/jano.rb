class Jano < Formula
  desc "Terminal editor with plugin-based syntax highlighting and formatting"
  homepage "https://janoeditor.dev"
  version "1.0.0-alpha.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jano-editor/jano/releases/download/editor-v#{version}/jano-darwin-arm64"
      sha256 "3a74ea57768e60d825fde9fd6305cda76b37909430e7f37d479991c10573b7bd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jano-editor/jano/releases/download/editor-v#{version}/jano-linux-x64"
      sha256 "fd786fc3d78aafc6ed36e905cd0904d1d2186876a13408f068c8344f22e6a3cc"
    end
  end

  def install
    binary = stable.url.split("/").last
    bin.install binary => "jano"
  end

  test do
    assert_match "jano v#{version}", shell_output("#{bin}/jano --version")
  end
end
