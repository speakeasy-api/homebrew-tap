# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT15441 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.544.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.544.1/speakeasy_darwin_amd64.zip"
      sha256 "a7f0f2b395aa9a9f06f26ccdf6f567b8cf1afddc94566cb8027af1bf6a829fc6"

      def install
        bin.install "speakeasy"
        bash_completion.install "completions/speakeasy.bash" => "speakeasy"
        zsh_completion.install "completions/speakeasy.zsh" => "_speakeasy"
        fish_completion.install "completions/speakeasy.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.544.1/speakeasy_darwin_arm64.zip"
      sha256 "53ac165d132f53b054cfb0350eafa8913b4303584599cb571991537197ad8df5"

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
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.544.1/speakeasy_linux_amd64.zip"
      sha256 "082d37e2933e6b02778cf12ea2002560dc4ae9b6d69c95b89acff4861caa18ac"
      def install
        bin.install "speakeasy"
        bash_completion.install "completions/speakeasy.bash" => "speakeasy"
        zsh_completion.install "completions/speakeasy.zsh" => "_speakeasy"
        fish_completion.install "completions/speakeasy.fish"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.544.1/speakeasy_linux_arm64.zip"
      sha256 "9b4bf4d5ba7b651110118da0c15f16fc58a66ad0bbfa582d761ed101fd79725b"
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
