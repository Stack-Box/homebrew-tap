class Stackbox < Formula
  desc "Create app stacks loaded with all your favourite clients, services and infra along with code boilerplates in under 5 mins."
  homepage ""
  url "https://github.com/Stack-Box/StackBox/archive/v1.0.0.tar.gz"
  sha256 "d0806cd02f5b51eb7f2f0ec9fb438b5de768f9782db88cdeb0d772ccf0365239"

  depends_on "docker"
  depends_on "docker-compose"
  depends_on "python"

  def install
    system "sh stack_box.sh"
  end
end
