# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Grade.create([
  { name: 'UNC', full_name: 'Uncirculated', description: 'A perfectly preserved note, never mishandled by the issuing authority, a bank teller, the public or a collector. Paper is clean and firm, without discoloration. Corners are sharp and square, without any evidence of rounding. (Rounded corners are often telltale sign of a cleaned or "doctored" note.) An uncirculated note will have its original natural sheen.' },
  { name: 'AU', full_name: 'About Uncirculated', description: 'A virtually perfect note, with some minor handling. May show evidence of bank counting folds at a corner or one light fold through the center, but not both. An AU note cannot be creased, a crease being a hard fold which has usually "broken" the surface of a note. Paper is clean and bright with original sheen.  Corners are not rounded.' },
  { name: 'XF', full_name: 'Extremely Fine', description: 'A very attractive note, with light handling. May have a maximum of three light folds or one strong crease. Paper is clean and bright with original sheen. Corners may show only the slightest evidence of rounding. There may also be the slightest sign of wear where a fold meets the edge.' },
  { name: 'VF', full_name: 'Very Fine', description: 'An attractive note, but with more evidence of handling and wear. May have a number of folds both vertically and horizontally. Paper may have minimal dirt, or possible color smudging. Paper itself is still relatively crisp and not floppy. There are no tears into the border area, although the edges do show slight wear. Corners also show wear but not full rounding.' },
  { name: 'F', full_name: 'Fine', description: 'A note which shows considerable circulation with many folds, creases and wrinkling. Paper is not excessively dirty, but may have some softness. Edges may show much handling with minor tears in the border area. Tears may not extend into the design. There will be no center hole because of folding. Colors are clear but not bright. A staple hole or two would not be considered unusual wear in a Fine note. Overall appearance is still on the desirable side.' },
  { name: 'VG', full_name: 'Very Good', description: 'A well used note, abused but still intact. Corners may have much wear and rounding, tiny nicks, tears may extend into the design, some discoloration may be present, staining may have occurred, and a small hole may be seen at center from excessive folding. Staple and pinholes are usually present, and the note itself is quite limp but NO pieces of the note can be missing. A note in VG condition may still have an overall not unattractive appearance.' },
  { name: 'G', full_name: 'Good', description: 'A well worn and heavily used note. Normal damage from prolonged circulation will include strong multiple folds and creases, stains, pinholes, and/or staple holes, dirt, discoloration, edge tears, center hole, rounded corners and an overall unattractive appearance. No large pieces of the note may be missing. Graffiti is commonly seen on notes in Good condition.' },
  { name: 'P', full_name: 'Poor', description: 'A "rag" with severe damage because of wear, staining, pieces missing, graffiti, larger holes. May have tape holding  pieces of the note together. Trimming may have taken place to remove rough edges. A Poor note is desirable only as a "filler" or when such note is the only one known of that particular issue.' } ])

NoteFeature.create([ { name: 'Specimen' }, { name: 'Replacement' }, { name: 'Counterfeit' }, { name: 'Cancelled' } ])

MasterFeature.create([
  { name: 'Window' },
  { name: 'Security Strip' },
  { name: 'Security Fiber' },
  { name: 'Watermark' },
  { name: 'Color Changing Ink' },
  { name: 'Foil Hologram' },
  { name: 'Texture' }
])

Material.create([ { name: 'Paper' }, { name: 'Polymer' }])
