-- name:          Nemesis.hs
-- version:       see VERSION.md
-- synopsis:      `Nemesis` file to build `TeX` articles.
-- license:       BSD3
-- license-file:  LICENSE.md
-- author:        art rimbaud
-- maintainer:    rimbaudcode[at]gmail(DoT)com
-- copyright:     (c) 2017 rimbaudcode
-- category:      System

import           System.FilePath.Posix (replaceExtension)
import           System.Nemesis.Env

src :: String
src = "main.tex"

bib, pdf :: String
bib      = replaceExtension src ".aux"
pdf      = replaceExtension src ".pdf"

comp, flags :: String
comp        = "latexmk"
flags       = "-xelatex"

viewer :: String
viewer = "open -a /Applications/Preview.app"


main :: IO ()
main = run $ do

  desc "Build LaTeX to PDF."
  task "build" $ sh . unwords $ [comp, flags, src]

  desc "Open PDF."
  task "open" $ sh . unwords $ [viewer, pdf]

  desc "Trash PDF."
  task "trash" $ sh . unwords $ ["trash", pdf]

  clean [ "**/*.aux"
        , "*.acn"
        , "*.acr"
        , "*.bak"
        , "*.bbl"
        , "*.bcf"
        , "*.blg"
        , "*.brf"
        , "*.fdb_latexmk"
        , "*.fls"
        , "*.glo"
        , "*.gls"
        , "*.gz"
        , "*.idx"
        , "*.ist"
        , "*.lof"
        , "*.log"
        , "*.lot"
        , "*.nav"
        , "*.not"
        , "*.ntn"
        , "*.out"
        , "*.pdfsync"
        , "*.run.xml"
        , "*.snm"
        , "*.synctex.gz*"
        , "*.thm"
        , "*.toc"
        , "*.xdv"
        , "*Notes.bib"
        , "*~"
        ]
