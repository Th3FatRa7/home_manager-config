{
  luaLoader.enable = true;

  performance = {
    # Some plugins ship documentation files with the same names. Keeping
    # plugins separate avoids buildEnv path collisions during packing.
    combinePlugins.enable = false;
    byteCompileLua.enable = true;
  };
}
