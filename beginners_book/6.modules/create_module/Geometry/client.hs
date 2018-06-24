import qualified Geometry.Sphere as Sphere

main :: IO ()
main = do
  let radius = 10.0::Float
  print $ Sphere.volume radius
