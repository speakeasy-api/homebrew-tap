# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT15480 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.548.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.548.0/speakeasy_darwin_amd64.zip"
      sha256 "9f0e941575b70f8a94e16766c2dd82ea17a735b613091cd0a2a9fd253b584966"

      def install
        bin.install "speakeasy"
        bash_completion.install "completions/speakeasy.bash" => "speakeasy"
        zsh_completion.install "completions/speakeasy.zsh" => "_speakeasy"
        fish_completion.install "completions/speakeasy.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.548.0/speakeasy_darwin_arm64.zip"
      sha256 "6c129029b0cd91caf1018d17ba99e15835ffaec7986224d0ee7ee0edb495e9b2"

      def install
        bin.install "speakeasy"
        bash_completion.install "completions/speakeasy.bash" => "speakeasy"
        zsh_completion.install "completions/speakeasy.zsh" => "_speakeasy"
        fish_completion.install "completions/speakeasy.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.548.0/speakeasy_linux_amd64.zip"
      sha256 "cbea2d61accefa19b3ea3109ebe7f290975bc6d184a8af989945e6e4c77c2d80"
      def install
        bin.install "speakeasy"
        bash_completion.install "completions/speakeasy.bash" => "speakeasy"
        zsh_completion.install "completions/speakeasy.zsh" => "_speakeasy"
        fish_completion.install "completions/speakeasy.fish"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.548.0/speakeasy_linux_arm64.zip"
      sha256 "d20512faf90e34ff297073b32ed6c2ac0811ec11f73dc22b39a521544a60b347"
      def install
        bin.install "speakeasy"
        bash_completion.install "completions/speakeasy.bash" => "speakeasy"
        zsh_completion.install "completions/speakeasy.zsh" => "_speakeasy"
        fish_completion.install "completions/speakeasy.fish"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
