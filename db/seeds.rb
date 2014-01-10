# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.find_or_create_by name: 'Using textiles or leather', description: 'kerajinan yang berasal dari bahan-bahan sebagai berikut : Banner-making Calligraphy Canvas work Cross-stitch Crochet Embroidery Felting Knitting Lace-making Embossing leather Luce Macrame Millinery (hat making) Needlepoint Needlework generally Patchwork Quilting Ribbon embroidery Rug making Saddlemaking Sewing generally Shoe making (cobblery) Silkscreening Spinning (textiles) String art Tapestry Tatting T-shirt art Weaving'
Category.find_or_create_by name: 'Using wood, metal, clay, bone, horn, glass, or stone', description: 'Kerajinan yang berasal dari bahan-bahan sebagai berikut : Bead work Bone carving (buffalo, camel, etc., as well as horn and Bone carving (Made of Camel Bones Carpentry Ceramic art generally Chip carving Dollhouse construction and furnishing Doll making Fretwork Glass etching Glassblowing Jewelry design Lapidary Lath art Marquetry Metalwork Mosaics Pottery Puppet making Repoussé and chasing (embossing metal) Scale modeling Sculpture Stained glass Toy making Wood burning (pyrography) Wood carving Wood turning Woodworking generally'
Category.find_or_create_by name: 'Using paper or canvas', description: 'Kerajinan yang berasal dari bahan-bahan sebagai berikut : Altered books Artist trading cards Assemblage – collage in three dimensions Bookbinding Card making Collage De collage Decoupage Embossing paper Iris folding Origami or paper folding Paper craft generally Paper making Paper marbling Paper modeling, paper craft or card modeling Papier-mâché Parchment craft Pop-up books Quilling or paper filigree Rubber/acrylic stamping Scrap booking'
Category.find_or_create_by name: 'Using plants other than wood', description: 'Kerajinan yang berasal dari bahan-bahan sebagai berikut : Basket weaving Corn dolly making Floral design Pressed flower craft Straw marquetry'
Category.find_or_create_by name: 'Other', description: 'Kerajinan yang berasal dari bahan-bahan sebagai berikut : Balloon animals Cake decorating Egg decorating'
User.create name: 'administrator', address: 'Admin Street', phone: '08091002000', email: 'admin@admin.com', password: 'kmzway87aa', role: 'admin'