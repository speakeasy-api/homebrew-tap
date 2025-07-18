# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT15710 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.571.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.571.0/speakeasy_darwin_amd64.zip"
      sha256 "7516eb98b19aa4f4cdb5256fb522ce6fa7feaec0da111e4dd1c168aeb8bf9752"

      def install
        bin.install "speakeasy"
        bash_completion.install "completions/speakeasy.bash" => "speakeasy"
        zsh_completion.install "completions/speakeasy.zsh" => "_speakeasy"
        fish_completion.install "completions/speakeasy.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.571.0/speakeasy_darwin_arm64.zip"
      sha256 "3c58278ffdf4ad900666ae5e44c092134bafe8dae39a9358d9afafd898a97796"

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
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.571.0/speakeasy_linux_amd64.zip"
      sha256 "c2083a4347bc90375bbaa835a8129af80c131553b2f9ff90b31ea8347df91026"
      def install
        bin.install "speakeasy"
        bash_completion.install "completions/speakeasy.bash" => "speakeasy"
        zsh_completion.install "completions/speakeasy.zsh" => "_speakeasy"
        fish_completion.install "completions/speakeasy.fish"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.571.0/speakeasy_linux_arm64.zip"
      sha256 "66afbb572a74522889bd0891c83064e3cb58e7b25023dca385faf605816f1b62"
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
