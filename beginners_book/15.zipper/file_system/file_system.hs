import Data.List (break)

type Name = String
type Data = String

data FSItem = File Name Data | Folder Name [FSItem] deriving (Show)
data FSCrumb = FSCrumb Name [FSItem] [FSItem] deriving (Show)
type FSZipper = (FSItem, [FSCrumb])

myDisk :: FSItem
myDisk =
  Folder "root"
    [ File "goat_yelling_like_man.wmv" "baaaaaa"
    , File "pope_tile.avi" "god bless"
    , Folder "pics"
      [ File "ape_throwing_up.jpg" "bleargh"
      , File "watermelon_smash.gif" "smash!"
      , File "skull_man(scary).bmp" "Yikes!"
      ]
    , File "dijon_poupon.doc" "best mustard"
    , Folder "programs"
      [ File "fartwizard.exe" "10gotofart"
      , File "owl_bandit.dmg" "mov eax, h00t"
      , File "not_a_virus.exe" "really not a virus"
      , Folder "source code"
        [ File "best_hs_prog.hs" "main = print (fix error)"
        , File "random.hs" "main = print 4"
        ]
      ]
    ]

fsUp :: FSZipper -> FSZipper
fsUp (item, FSCrumb name ls rs:bs) =
  (Folder name (ls ++ [item] ++ rs), bs)

fsTo :: Name -> FSZipper -> FSZipper
fsTo name (Folder folderName items, bs) =
  let (ls, item:rs) = break (nameIs name) items
  in  (item, FSCrumb folderName ls rs:bs)

nameIs :: Name -> FSItem -> Bool
nameIs name (Folder folderName _) = name == folderName
nameIs name (File fileName _) = name == fileName

fsRename :: Name -> FSZipper -> FSZipper
fsRename newName (Folder name items, bs) = (Folder newName items, bs)
fsRename newName (File name dat, bs) = (File newName dat, bs)

fsNewFile :: FSItem -> FSZipper -> FSZipper
fsNewFile item (Folder folderName items, bs) = (Folder folderName (item:items), bs)

x -: f = f x

main :: IO ()
main = do
  let newFocus = (myDisk, []) -: fsTo "pics" -: fsTo "skull_man(scary).bmp"
  print $ fst newFocus

  let newFocus2 = newFocus -: fsUp -: fsTo "watermelon_smash.gif"
  print $ fst newFocus2

  let rename = (myDisk, []) -: fsTo "pics" -: fsRename "cspi" -: fsUp
  print $ fst rename

  let makeNewFile = (myDisk, []) -: fsTo "pics" -: fsNewFile (File "heh.jpg" "lol") -: fsUp
  print $ fst makeNewFile
