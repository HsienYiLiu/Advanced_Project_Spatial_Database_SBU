var bound = db.boundry.findOne({ geometry: { $geoIntersects: { 
    $geometry: { type: "Point", coordinates: [ -111.0970801722779,44.487322588834374 ] } } } })

db.earthquake.find({
    geometryt: {
        $geoWithin:{
            $geometry: bound.geometry
        }
    }
})