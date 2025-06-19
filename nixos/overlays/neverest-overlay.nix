self: super: {
  neverest = super.neverest.overrideAttrs (oldAttrs: {
    version = "master-v1";
    src = super.fetchFromGitHub {
      owner = "pimalaya";
      repo = "neverest";
      rev = "latest";
      sha1 = "sha1-4n+5L93sK1uJsehz96/wM91YJJk=";
    };
  });
}

