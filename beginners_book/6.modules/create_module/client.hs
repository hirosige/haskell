import qualified Geometry

main :: IO()
main = do
  let radius = 10.0::Float
  print $ Geometry.sphereVolume radius
