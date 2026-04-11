class Jano < Formula
  desc "Terminal editor with plugin-based syntax highlighting and formatting"
  homepage "https://janoeditor.dev"
  version "1.0.0-alpha.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jano-editor/jano/releases/download/editor-v#{version}/jano-darwin-arm64"
      sha256 "19d24de9d945bc596e389e0fe1ec766dc8839326493713a1f4e612866e896841"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jano-editor/jano/releases/download/editor-v#{version}/jano-linux-x64"
      sha256 "8ae33a204169df0c6e254a53fe3569f44c7d5af8b85cf6cce3fdc7feacdf7cd1"
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
