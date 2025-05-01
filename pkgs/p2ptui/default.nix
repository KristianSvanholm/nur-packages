{
  fetchFromGitHub,
  buildGoModule
}:

buildGoModule rec {
  pname = "p2ptui";
  version = "0.1";

  src = fetchFromGitHub {
    owner = "kristiansvanholm";
    repo = pname;
    rev = "v${version}";
    hash = "sha256-K+0aGTBtE7liLSyUhd14aDBO3qBbyJBUjajrVbAt7FI=";
  };

  vendorHash = "sha256-Nzh8EpFGg00jBWxkhk3TYmnHzayANe2rJvsZu2g+IAM=";

  meta = {
    description = "Little minesweeper for the terminal with p2p multiplayer capabilities.";
    homepage = "https://github.com/Dreamacro/go-check";
  };
}
