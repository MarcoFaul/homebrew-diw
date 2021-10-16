class Diw < Formula
  desc "DIW is a CLI utility helper tool."
  homepage "https://dasistweb.de"
  url "https://github.com/MarcoFaul/diw/releases/download/v0.9.4.6/diw-0.9.4.6.tar.gz"
  version "0.9.4.6"
  sha256 "0db3bd2e88e657ba35e85a7dd45e5da7cf1fcb20c32d8a0a5aedf1790b22fdb8"

  def install
    prefix.install Dir["*"]
  end

  def post_install
    if !(File.exist?((etc/"diw-override.config.yaml"))) then
      (etc/"diw-override.config.yaml").write override_conf
    end
  end

  def override_conf; <<~EOS
  EOS
  end

  def caveats
    <<~EOS
      Diw is a CLI utility helper tool made for DIW

      To start diw simply run:

            diw

        Documentation is available at: https://diw-tool.netlify.app/
        Created by Marco Faul
    EOS
  end

    test do
      system "#{bin}/diw"
    end
end
