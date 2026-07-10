class Gittool < Formula
  desc "A tool that makes Git incredibly simple with 5 core commands"
  homepage "https://github.com/sidx1-scratch/gittool"
  url "https://github.com/sidx1-scratch/gittool/archive/refs/tags/v5.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  license "MIT"

  depends_on "go" => :build

  def install
    # 1. Strict OS Gatekeeping: Block Windows
    if ENV["OS"] =~ /Windows_NT/i
      odie "Error: gittool does not support Windows operating systems."
    end

    # 2. Compile the Go binary
    system "go", "build", "-ldflags", "-s -w", "-o", bin/"gittool", "main.go"
  end

  test do
    assert_match "gittool - Making Git simple.", shell_output("#{bin}/gittool --help")
  end
end
