# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14030 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.403.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.403.0/speakeasy_darwin_amd64.zip"
      sha256 "42aebd3c413dd6284fabb44cf6cd9a91d76a350fff96a79436014fb18f082747"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.403.0/speakeasy_darwin_arm64.zip"
      sha256 "db64acb3bcce06709b146b07da6f6e9a631df47a77329b6d7370a51e5520631b"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.403.0/speakeasy_linux_amd64.zip"
        sha256 "ad6089c2a63dd5187d005611b83687652e8c3436cbbcd1e5599c334074f6c449"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.403.0/speakeasy_linux_arm64.zip"
        sha256 "3b43162e93b4c29573ca5870a64eccfc3075d6083d49b01b4abac4b57c5e593e"

        def install
          bin.install "speakeasy"
        end
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
