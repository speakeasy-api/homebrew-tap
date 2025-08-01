# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT15633 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.563.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.563.3/speakeasy_darwin_amd64.zip"
      sha256 "2ff7b636ee08445be91cfe4362599383d9b3ce6144c059f9cf848d0960a2a080"

      def install
        bin.install "speakeasy"
        bash_completion.install "completions/speakeasy.bash" => "speakeasy"
        zsh_completion.install "completions/speakeasy.zsh" => "_speakeasy"
        fish_completion.install "completions/speakeasy.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.563.3/speakeasy_darwin_arm64.zip"
      sha256 "48dfbe98ed828e612c3cf2a5e2d9fc8ed85af6661b4a1b67aa413cb55fb84679"

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
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.563.3/speakeasy_linux_amd64.zip"
      sha256 "6aaf5cbed964fc4bf033eed1c3a6971d44dbff48d14b18e71662809fbe09669f"
      def install
        bin.install "speakeasy"
        bash_completion.install "completions/speakeasy.bash" => "speakeasy"
        zsh_completion.install "completions/speakeasy.zsh" => "_speakeasy"
        fish_completion.install "completions/speakeasy.fish"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.563.3/speakeasy_linux_arm64.zip"
      sha256 "a2c96b07c98561327d76098b64fcc61dc4a2f676be58d411ace1062f8cdcae69"
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
