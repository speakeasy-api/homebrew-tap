# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14451 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.445.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.445.1/speakeasy_darwin_amd64.zip"
      sha256 "2ccab640c1a28fcdc8c1f1b2b2632483d7cc688e34e96124af4254a2fdf9e9c1"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.445.1/speakeasy_darwin_arm64.zip"
      sha256 "f9be81fdb88c75ff31aa1a24559b755b3ee08d0985e3c693e79e97ee5ced7593"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.445.1/speakeasy_linux_amd64.zip"
        sha256 "4f4f64d0ea6498ee5c1fe9eb91e9fc4d81e9ada03efb4a3278f74209d255731d"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.445.1/speakeasy_linux_arm64.zip"
        sha256 "cca587dce22bf65209f656765abb1da12d7d01f128e1dba7766ad8cd627105df"

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
