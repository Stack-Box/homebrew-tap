class Stackbox < Formula
  desc "Create app stacks loaded with all your favourite clients, services and infra along with code boilerplates in under 5 mins."
  homepage ""
  url "https://github.com/Stack-Box/StackBox/archive/v1.2.0.tar.gz"
  sha256 "ea9bcc6905169868ac4f5ee54b7ace6ad8ed8416d482accbcf3fb7211027436b"

  depends_on "docker"
  depends_on "docker-compose"
  depends_on "python"
  depends_on "shc"

  def install
    system "mkdir -p /usr/local/Cellar/stackbox/1.2.0/bin"
    system "cp -a . /usr/local/Cellar/stackbox/1.2.0/"
    system "shc -f ./brew/stackbox-brew.sh -o stackbox"
    system "cp ./stackbox /usr/local/Cellar/stackbox/1.2.0/bin/"
  end
end
