# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT15750 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.575.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.575.0/speakeasy_darwin_amd64.zip"
      sha256 "cc6c48402936a8c16a9a6765479489be1cd0cf1037941a67f0fc063b6d6c8b70"

      def install
        bin.install "speakeasy"
        bash_completion.install "completions/speakeasy.bash" => "speakeasy"
        zsh_completion.install "completions/speakeasy.zsh" => "_speakeasy"
        fish_completion.install "completions/speakeasy.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.575.0/speakeasy_darwin_arm64.zip"
      sha256 "108f6a80661e379dbf2af971d1f70baaf821124b0ab6b6a7938478ef68b6ffee"

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
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.575.0/speakeasy_linux_amd64.zip"
      sha256 "ef6134525ff91c78ff0cc1044a21e79caf4c3f8ac0c4cddce32c3dedd9cf30da"
      def install
        bin.install "speakeasy"
        bash_completion.install "completions/speakeasy.bash" => "speakeasy"
        zsh_completion.install "completions/speakeasy.zsh" => "_speakeasy"
        fish_completion.install "completions/speakeasy.fish"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.575.0/speakeasy_linux_arm64.zip"
      sha256 "82189f756f1f0c98f23fc3f704da5c4ab798f8d4225c0a7adf56ac36c5d239ac"
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
