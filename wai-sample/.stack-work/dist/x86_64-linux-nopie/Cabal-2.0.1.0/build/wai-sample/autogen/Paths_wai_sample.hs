{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_wai_sample (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/hiro/Haskell/wai-sample/.stack-work/install/x86_64-linux-nopie/lts-10.10/8.2.2/bin"
libdir     = "/home/hiro/Haskell/wai-sample/.stack-work/install/x86_64-linux-nopie/lts-10.10/8.2.2/lib/x86_64-linux-ghc-8.2.2/wai-sample-0.1.0.0-GjMDWuMFGC2p3vDl60TKb-wai-sample"
dynlibdir  = "/home/hiro/Haskell/wai-sample/.stack-work/install/x86_64-linux-nopie/lts-10.10/8.2.2/lib/x86_64-linux-ghc-8.2.2"
datadir    = "/home/hiro/Haskell/wai-sample/.stack-work/install/x86_64-linux-nopie/lts-10.10/8.2.2/share/x86_64-linux-ghc-8.2.2/wai-sample-0.1.0.0"
libexecdir = "/home/hiro/Haskell/wai-sample/.stack-work/install/x86_64-linux-nopie/lts-10.10/8.2.2/libexec/x86_64-linux-ghc-8.2.2/wai-sample-0.1.0.0"
sysconfdir = "/home/hiro/Haskell/wai-sample/.stack-work/install/x86_64-linux-nopie/lts-10.10/8.2.2/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "wai_sample_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "wai_sample_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "wai_sample_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "wai_sample_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "wai_sample_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "wai_sample_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
