{
  fetchFromGitHub,
  buildGoModule
}:

buildGoModule rec {
  pname = "p2ptui";
  version = "0.4";

  src = fetchFromGitHub {
    owner = "kristiansvanholm";
    repo = pname;
    rev = "v${version}";
    hash = "sha256-d45VCuvQC5K1qQNUYWTW+ouH7gWBhyXtxJGnt21Onic=";
  };

  vendorHash = "sha256-Nzh8EpFGg00jBWxkhk3TYmnHzayANe2rJvsZu2g+IAM=";

  meta = {
    description = "Little minesweeper for the terminal with p2p multiplayer capabilities.";
    homepage = "https://github.com/Dreamacro/go-check";
  };
}
