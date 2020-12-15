jq --compact-output ".feature" input.geojson > output.geojson
mongoimport --db dbname -c collectionname --file "output.getjson" --jsonArray