# Wine.destroy_all
Category.destroy_all
FoodGroup.destroy_all
Pairing.destroy_all
Varietal.destroy_all
Food.destroy_all

# ---------------------- Add Varietal and Descriptions  -------------------------

# Bold Red Wines
v1 = Varietal.create(name: "Malbec", visual: "dark ruby and purple color", aroma: "medium to pronounced aromas", fruit: "ripe and lush black rasberry, black cherry, blackberry, concord grape jam, blueberry, plum, raspberry liqueur", floral: "violets, damsom flowers", herbal: "", spice: "", other: "", earth: "medium minerality", oak: "vanilla, baking spices, chocolate, cinnamon", structure: "dry, full body, medium to medium plus tannin, medium to medium plus acidity, high alcohol")
v2 = Varietal.create(name: "Syrah", visual: "ruby and purple color", aroma: "medium plus intensity", fruit: "tart and ripe blackberry, black cherry, black currant, black raspberry, black plum, blueberry, boysenberry, raspberry, prune, citrus, orange, mulberry, stewed fruit", floral: "lavender, violets", herbal: "black and green olive, green peppercorn, rosemary, tea leaf", spice: "white and black peppercorn", other: "tar, roasted meat, smoke, sausage, bacon fat, soy, leather, animal", earth: "medium to high minerality, granite, crushed rocks", oak: "cinnamon, clove, chocolate, cocoa, smoke, char, vanilla, cocnut, toast, coffee", structure: "dry, medium plus body, medium plus tannin, medium plus to high acidity, medium to medium plus alcohol")
v3 = Varietal.create(name: "Shiraz", visual: "opaque and dark purple color", aroma: "high intensity", fruit: "ripe and lush blackberry, cassis, blueberry, plum, fig, raisin, date, raspberry liqueur, mulberry", floral: "roses, lavender", herbal: "eucalyptus", spice: "menthol, herbes de provence, rosemary", other: "bitter chocolate, smoke, grilled meat", earth: "low to medium minerality", oak: "vanilla, coconut, dill, chocolate, mocha, baking spices, cumin, curry, maple", structure: "dry, full body, medium to medium plus tannin, medium to medium plus acidity, high alcohol")
v4 = Varietal.create(name: "Pinotage", visual: "dark ruby and purple color", aroma: "medium plus intensity", fruit: "roasted and charred blackberry, black cherry, slight fig", floral: "", herbal: "", spice: "clove", other: "leather saddle, smoke, blood, fresh paint, rubber, barbecue", earth: "", oak: "medium to high use of new oak", structure: "dry, medium plus body, medium tannin, medium plus acidity, medium plus alcohol")
v5 = Varietal.create(name: "Petite Sirah", visual: "", aroma: "", fruit: "", floral: "", herbal: "", spice: "", other: "", earth: "", oak: "", structure: "")
v6 = Varietal.create(name: "Cabernet Sauvignon", visual: "dark purple color", aroma: "medium plus intensity", fruit: "ripe and lush blackcurrant, blackberry, black cherry, sweet red cherry, black raspberry, boysenberry, blueberry, plum", floral: "purple flowers, violets", herbal: "sage, mint, pepper, eucalyptus, tobacco, rosemary, black tea", spice: "sweet anise, cocoa, cinnamon, clove, allspice, nutmeg", other: "cedar, pencil shavings, sweet leather, cigar box", earth: "low to medium plus minerality, gravel, loamy, dusty earth", oak: "smoke, toast, coffee, vanilla, roasted nut, cocoa, cidar", structure: "dry, full body, medium plus to high tannin, medium acidity, medium plus to high alcohol")
v7 = Varietal.create(name: "Bordeaux Blend", visual: "dark ruby and purple color", aroma: "medium plus intensity", fruit: "blackcurrant, cassis, blackberry, black cherry, slight red fruit, plum", floral: "purple flowers, violets", herbal: "sage, green bell pepper, mint, tobacco, dried savory herbs", spice: "savory, green peppercorn, anise, clove, exotic spices", other: "leather, pencil shavings, cedar, iodine, game, cigar box", earth: "medium plus to high minerality, graphite, gravel, iron, damp soil, mushroom", oak: "baking spices, clove, smoke, coffee, vanilla, roasted nut, cidar", structure: "dry, medium to medium plus body, medium plus to high tannin, medium plus acidity, medium to medium plus alcohol")
v8 = Varietal.create(name: "Meritage", visual: "dark ruby and purple color", aroma: "medium plus intensity", fruit: "blackcurrant, cassis, blackberry, black cherry, slight red fruit, plum", floral: "purple flowers, violets", herbal: "sage, tobacco, dried savory herbs", spice: "savory, green peppercorn, anise, clove, exotic spices", other: "leather, pencil shavings, cedar, iodine, game, cigar box", earth: "low to medium plus minerality, gravel, volcanic", oak: "baking spices, clove, smoke, coffee, vanilla, roasted nut, cidar", structure: "dry, medium to medium plus body, medium plus to high tannin, medium acidity, medium plus to high alcohol")
v9 = Varietal.create(name: "Mourvedre", visual: "dark ruby color", aroma: "medium plus intensity", fruit: "ripe blackberry, black raspberry, black cherry, blueberry, red plum, red cherry", floral: "purple flowers", herbal: "wild herbs, black tea, tobacco", spice: "bitter chocolate, black pepper, curing spices", other: "cured meats, game, leather saddle", earth: "medium plus to high minerality, forest floor, dusty", oak: "coffee, cinnamon", structure: "dry, full body, high tannin, medium plus acidity, medium plus to high alcohol")

# Medium Red Wines
v10 = Varietal.create(name: "Merlot", visual: "ruby color with blue tones", aroma: "medium plus intensity", fruit: "lush plum, ripe blueberry, blackberry, blackcurrant, boysenberry, black or red cherry", floral: "purple flowers, violets", herbal: "fern, bay leaf, sage, rosemary, mint, tobacco", spice: "christmas spice, anise", other: "", earth: "dusty earth, mushroom, truffle, graphite", oak: "chocolate, coffee, mocha, sweet baking spices, vanilla, brown sugar, cinnamon", structure: "dry, medium plus to full body, medium to medium plus tannin, medium acidity, high alcohol")
v11 = Varietal.create(name: "Sangiovese", visual: "light ruby to dark ruby with slight garnet tones", aroma: "medium minus to medium concentration", fruit: "sour cherry, raspberry, cranberry, red currant, red apple, red plum, black cherry, cherry tomato, prune, mulberry", floral: "dry flowers, potpourri, rose, chamomile", herbal: "thyme, marjoram, fennel, roasted savory herbs, rosemary", spice: "clove, smoke", other: "balsamic, animal, leather, tar", earth: "truffle, mushroom, smoke, baked earth, crushed rock", oak: "cinnamon, vanilla, pepper, toasted grain, coffee, mocha, nut, cedar, cola nut", structure: "bone dry to dry, medium to medium plus body, medium plus to high tannin, medium plus to high acidity, medium to high alcohol")
v12 = Varietal.create(name: "Zinfandel", visual: "ruby to dark ruby", aroma: "medium plus to high intensity", fruit: "jammy, brambly berry, raspberry, black cherry, red cherry, cherry compote, blackberry, cassis, blueberry, cranberry jam, raisin, rhubarb, peach yogurt, apricot", floral: "lavender", herbal: "green herbs, fennel seed, coriander, dill, black tea leaf, eucalyptus, mint", spice: "black pepper, soy", other: "", earth: "damp earth, mineral dust, humus", oak: "vanilla, sawdust, coconut, chocolate, mocha, coffee, caramel, dillweed, cinnamon, clove, nutmeg", structure: "dry, full bodied, medium to medium plus tannin, medium to medium plus acidity, high alcohol")
v13 = Varietal.create(name: "Cabernet Franc", visual: "dark ruby color", aroma: "medium plus intensity", fruit: "bright red fruit, raspberry, cranberry, red cherry, cherry pit, tart black fruit, black cherry, black currant, blackberry", floral: "violets, lilacs, white and red flowers", herbal: "black currant bud, serrano pepper, celery seed, sage, tobacco", spice: "", other: "leather, cedar, cigar box", earth: "high minerality, pencil lead, gravel dust", oak: "baking spices, clove, vanilla, coffee, cedar, smoke", structure: "bone dry to dry, medium plus body, medium plus tannin, medium plus acidity, medium to medium plus alcohol")
v14 = Varietal.create(name: "Tempranillo", visual: "ruby", aroma: "medium plus intensity", fruit: "tart and sweet red fruit, red cherry, strawberry, red currant, sour asian plum, dry plum", floral: "red and dry flowers", herbal: "tobacco, dill", spice: "", other: "sweet and sour sauce, iodine, leather, spice", earth: "medium to high minerality, baked earth, clay, compost", oak: "vanilla, coconut, dill, cumin, curry, fenugreek, sandalwood", structure: "dry, medium plus body, medium plus tannin, medium to medium plus acidity, medium to medium plus alcohol")
v15 = Varietal.create(name: "Nebbiolo", visual: "ruby and garnet", aroma: "high intensity", fruit: "tart red fruit, red plum, sour cherry, blackberry, mulberry, prune, dry cherry", floral: "roses, violets", herbal: "tea leaf, tobacco, tree bark", spice: "licorice, anise, clove, cinnamon spice", other: "tar, leather", earth: "high minerality, truffle, dust, soil", oak: "", structure: "dry, medium to full body, high tannin, high acidity, high alcohol")
v16 = Varietal.create(name: "Barbera", visual: "purple with blue tones", aroma: "medium plus intensity", fruit: "tangy, sour cherry, raspberry, blackberry, dry cherry", floral: "purple flowers, lavender", herbal: "dry herbs, tea leaf", spice: "", other: "cured meat, prosciutto", earth: "", oak: "", structure: "dry, medium to medium plus body, low tannin, high acidity, medium plus alcohol")
v17 = Varietal.create(name: "Cotes du Rhone Blend", visual: "ruby color with slight orange rim", aroma: "medium plus intensity", fruit: "cooked to dry fruits, strawberry, cherry, raspberry, roasted red plum, blackberry, raisin", floral: "red flowers, dried lavender", herbal: "rosemary, brewed black tea, savory herbs", spice: "curing spices, black pepper, juniper, clove, licorice", other: "dried orange, grapefruit peel, old leather", earth: "medium plus to high minerality, gravelly, baked earth", oak: "", structure: "dry, medium plus to full body, medium to medium plus tannin, medium to medium plus acidity, medium plus to high alcohol")

# Light Red Wine
v18 = Varietal.create(name: "Pinot Noir", visual: "light ruby to ruby color", aroma: "medium plus intensity", fruit: "red fruit, red cherry, raspberry, cranberry, whild strawberry, black cherry, plum", floral: "roses, lavender, violets, lilacs, potpourri", herbal: "tea leaf, citrus zest, citrus peel, dried herbs, fennel, rhubarb, tomato leaf", spice: "red licorice, anise, clove, cinnamon", other: "game, leather, cola, coconut, soy, farmyeard, charcuterie", earth: "mushroom, forest floor, damp or dry leafs, compost, truffle", oak: "vanilla, baking spices, espresso, chocolate, caramel, toast, smoke, baking spices, clove, cinnamon, roasted nut, caramel, ginger, sandalwood", structure: "dry, medium plus body, medium to minus medium tannin, medium plus acidity, medium to high alcohol")
v19 = Varietal.create(name: "Grenache", visual: "ruby color with slight orange rim", aroma: "medium plus intensity", fruit: "stewed strawberry, maraschino cherry, prune, fig, raisin, plum pie", floral: "roses", herbal: "black tea leaf, dried savory herbs, mint", spice: "curing spices, black pepper, licorice", other: "", earth: "crushed vitamin, baked earth", oak: "", structure: "dry, medium plus to full body, medium tannin, medium acidity, high alcohol")
v20 = Varietal.create(name: "Gamay", visual: "bright ruby with purple tones", aroma: "medium plus to high intensity", fruit: "tart red fruit, strawberry, red cherry, raspberry, cranberry, red currant, watermelon, banana", floral: "violets, lilacs, peonies", herbal: "", spice: "", other: "slight black pepper, dry savory herbs, bubble gum, cotton candy", earth: "wet granite, stoney, crushed rock", oak: "", structure: "dry, medium minus to medium body, low to medium minus tannin, medium plus to high acidity, medium to medium plus alcohol")
v21 = Varietal.create(name: "Carignan", visual: "", aroma: "", fruit: "", floral: "", herbal: "", spice: "", other: "", earth: "", oak: "", structure: "")
v22 = Varietal.create(name: "Counoise", visual: "", aroma: "", fruit: "", floral: "", herbal: "", spice: "", other: "", earth: "", oak: "", structure: "")

# Rose Wines
v23 = Varietal.create(name: "Provencal Rose", visual: "", aroma: "", fruit: "", floral: "", herbal: "", spice: "", other: "", earth: "", oak: "", structure: "")
v24 = Varietal.create(name: "White Zinfandel", visual: "", aroma: "", fruit: "", floral: "", herbal: "", spice: "", other: "", earth: "", oak: "", structure: "")
v25 = Varietal.create(name: "Loire Valley Rose", visual: "", aroma: "", fruit: "", floral: "", herbal: "", spice: "", other: "", earth: "", oak: "", structure: "")
v26 = Varietal.create(name: "Pinot Noir Rose", visual: "", aroma: "", fruit: "", floral: "", herbal: "", spice: "", other: "", earth: "", oak: "", structure: "")
v27 = Varietal.create(name: "Syrah Rose", visual: "", aroma: "", fruit: "", floral: "", herbal: "", spice: "", other: "", earth: "", oak: "", structure: "")
v28 = Varietal.create(name: "Garnacha Rosado", visual: "", aroma: "", fruit: "", floral: "", herbal: "", spice: "", other: "", earth: "", oak: "", structure: "")
v29 = Varietal.create(name: "Bandol Rose", visual: "", aroma: "", fruit: "", floral: "", herbal: "", spice: "", other: "", earth: "", oak: "", structure: "")
v30 = Varietal.create(name: "Tempranillo Rose", visual: "", aroma: "", fruit: "", floral: "", herbal: "", spice: "", other: "", earth: "", oak: "", structure: "")
v31 = Varietal.create(name: "Sangiovese Rosato", visual: "", aroma: "", fruit: "", floral: "", herbal: "", spice: "", other: "", earth: "", oak: "", structure: "")

# Rich White Wines
v32 = Varietal.create(name: "Chardonnay", visual: "yellow, pale gold", aroma: "medium to medium plus intensity", fruit: "ripe tree fruits, yellow apple, baked pear, meyer lemon, ripe apricot, pinapple, mango, melon", floral: "white flowers, apple blossoms, honeysuckle, citrus blossoms", herbal: "lemon thyme, lemon grass, blonde tobacco", spice: "", other: "popcorn, butter, butterscotch, yogurt, cornmeal, oatmeal, flan, lemon curd, slight savory herbs", earth: "minerals, stones, gun flint, steel, mushroom, chalk, forest floor, limestone", oak: "smoke, cream, vanilla, custard, salted caramel, bread crust, burnt sugar, butterscotch, sweet baking spices, pie crust, honey, hazelnut, nutmeg, ginger", structure: "dry, medium plus to full body, medium acidity, medium plus to high alcohol")
v33 = Varietal.create(name: "Semillon", visual: "gold", aroma: "high intensity", fruit: "stewed, tree fruit, apple, quince, cooked peach, dried apricot, fig, fruitcake, sweet citrus, orange, tangerine, lemon marmalade, ripe melon, pinapple", floral: "honeysuckle, orange blossom", herbal: "sweet hay, dried grass, savory herbs", spice: "cinnamon, clove, nutmeg, vanilla", other: "honey, ginger bread, saffron, candy pinapple, dried apricot, hazelnut, almond", earth: "mushroom, truffle", oak: "toast, smoke, caramel, creme brulee, vanilla, coconut, baking spices", structure: "desert sweet, full body, medium plus acidity, medium plus alcohol")
v34 = Varietal.create(name: "Viognier", visual: "yellow to pale gold", aroma: "high intensity", fruit: "ripe stone fruit, apricot, peach, peach skin, nectarine, marmalade, ripe citrus, mandarin orange, blood orange, golden apple, ruby red grapefruit, tangerine, ripe tropical fruit, pinapple, mango, persimmon, fruit cocktail", floral: "honeysuckle, jasmine, orange blossoms, gardenia, rose", herbal: "tea leaf", spice: "cinnamon, sweet spices, vanilla, cardomon, ginger bread, candied citrus peel, star anise", other: "oily, fruit loops, yogurt, butter", earth: "mineral, stone, blonde tobacco", oak: "vanilla, almond, toast", structure: "dry to off dry, full bodied, low to medium acidity, high alcohol")
v35 = Varietal.create(name: "Marsanne", visual: "yellow with hints of golden green", aroma: "medium plus intensity", fruit: "ripe stone fruit, apricot, white peach, white plum, ripe tree fruit, quince, pear, baked apple, melon, orange marmalade, citron oil", floral: "white flowers, jasmine, honeysuckle, acacia", herbal: "green olive, thyme, pine", spice: "cinnamon, musk", other: "beeswax, honey, parsnip, root beer", earth: "stoney, granite", oak: "vanilla bean, toast, smoke, baking spices", structure: "dry, medium plus to full body, medium to medium plus acidity, medium plus to high alcohol")
v36 = Varietal.create(name: "Roussanne", visual: "white", aroma: "", fruit: "", floral: "", herbal: "", spice: "", other: "", earth: "", oak: "", structure: "")

# Light White Wines
v37 = Varietal.create(name: "Sauvignon Blanc", visual: "pale straw with hints of green", aroma: "medium to medium plus intensity", fruit: "citrus fruit, grapefruit, lemon, mandarin orange, lime, tropical fruit, passion fruit, guava, kiwi, tree fruit, red apple, green fig, green apple, yellow apple, stone fruit, white peach, nectarine, apricot, melon", floral: "white flowers, citrus blossoms, honeysuckle", herbal: "cut grass, celery, tarragon, lemon grass, herb, green tea leaf, lemon verbena, lemon thyme", spice: "", other: "", earth: "gravel, wet rocks, wet wool, cat box, gun flint, mineral", oak: "", structure: "dry, medium to medium plus body, medium plus to high acidity, medium to high alcohol")
v38 = Varietal.create(name: "Albarino", visual: "pale straw with hints of green", aroma: "medium plus intensity", fruit: "ripe citrus, orange, meyer lemon, ruby red grapefruit, stone fruit, white peach, peach pit, apricot, nectarine, green apple, melon", floral: "light and yellow flowers, citrus and apple blossoms", herbal: "", spice: "", other: "bubble gum, agave, slight beer yeast, saline", earth: "minerals", oak: "", structure: "dry, medium body, medium plus acidity, medium alcohol")
v39 = Varietal.create(name: "Pinot Blanc", visual: "", aroma: "", fruit: "", floral: "", herbal: "", spice: "", other: "", earth: "", oak: "", structure: "")
v40 = Varietal.create(name: "Vermentino", visual: "", aroma: "", fruit: "", floral: "", herbal: "", spice: "", other: "", earth: "", oak: "", structure: "")
v41 = Varietal.create(name: "Melon de Bourgogne", visual: "clear to pale straw with hints of green", aroma: "medium minus to medium intensity", fruit: "tart citrus, lemon, lime, tart tree fruit, green apple, green pear, under-ripe stone fruit, white peach nectarine", floral: "faint white flowers", herbal: "dandelion greens, nettles, savory herbs, peppery greens, turnip, root vegetable", spice: "", other: "yeast, sourdough, sour beer, slight cream", earth: "high minerality, saline, sea salt, wet stones", oak: "", structure: "bone dry to dry, medium minus to medium body, high acidity, medium alcohol")
v42 = Varietal.create(name: "Gargenega", visual: "", aroma: "", fruit: "", floral: "", herbal: "", spice: "", other: "", earth: "", oak: "", structure: "")
v43 = Varietal.create(name: "Trebbiano", visual: "", aroma: "", fruit: "", floral: "", herbal: "", spice: "", other: "", earth: "", oak: "", structure: "")
v44 = Varietal.create(name: "Pinot Gris", visual: "yellow to pale gold", aroma: "medium to medium plus intensity", fruit: "stone fruit, apricot, yellow peach, candied citrus, meyer lemon, orange, ripe tree fruit, baked apple, quince, tropical notes, pinapple, banana", floral: "faint white flowers, apple blossoms, honeysuckle, citrus blossom, rose peddle", herbal: "lemon grass, lemon thyme", spice: "exotic spices, musk, cinnamon, giner", other: "beeswax, damp cellar, nutty, bitter almond", earth: "mineral, stone, asphalt, flint slate, forest floor", oak: "", structure: "dry to medium sweet, medium plus body, medium to medium plus acidity, medium plus alcohol")
v45 = Varietal.create(name: "Pinot Grigo", visual: "pale straw with hints of green", aroma: "medium intensity", fruit: "citrus lemon, tree fruit, red and yellow apple, creamy stone fruit, white peach, nectarine, melon", floral: "white and yellow flowers", herbal: "watercress, arugula", spice: "", other: "peanut shell, stale beer", earth: "stone, chalk, ashen notes, saline", oak: "", structure: "dry, medium body, medium plus acidity, medium alcohol")
v46 = Varietal.create(name: "Torrontes", visual: "yellow, hints of green", aroma: "high intensity", fruit: "synthetic grape, tropical fruit, pinapple, guava, papaya, ripe citrus, orange, meyer lemon, ripe stone fruit, peach, melon", floral: "perfumed, orange blossoms, roses, jasmine, geraniums", herbal: "", spice: "", other: "soapy, hand lotion, potpourri, slight musk spice", earth: "slight minerality", oak: "", structure: "dry, medium plus body, medium plus acidity, medium plus to high alcohol")

# Sparkling Wines
v47 = Varietal.create(name: "Champagne", visual: "bubbles", aroma: "", fruit: "cherry, lemon, lime, grapefruit, green apple, yellow apple, pear, pinapple, passion fruit, lychee, raspberry, strawberry, cucumber", floral: "honeysuckle, rose, gardenia, freesia, apple blossom, lime blossom, mint", herbal: "", spice: "", other: "yeast, dough, soy, cream, vegemite, plain yogurt, vanilla, honey, blonde tobacco, melted butter", earth: "mineral, chalk, dust, mushroom", oak: "toast, brioche, baguette, biscuit, hazelnut, almond, walnut, vanilla wafer, gingerbread, dry fruit, raisin, fig, coffee", structure: "bone dry to very sweet, light to medium body, medium to high acidity, low to medium alcohol")
v48 = Varietal.create(name: "Prosecco", visual: "bubbles", aroma: "", fruit: "cherry, lemon, lime, grapefruit, green apple, yellow apple, pear, pinapple, passion fruit, lychee, raspberry, strawberry, cucumber", floral: "honeysuckle, rose, gardenia, freesia, apple blossom, lime blossom, mint", herbal: "", spice: "", other: "yeast, dough, soy, cream, vegemite, plain yogurt, vanilla, honey, blonde tobacco, melted butter", earth: "mineral, chalk, dust, mushroom", oak: "toast, brioche, baguette, biscuit, hazelnut, almond, walnut, vanilla wafer, gingerbread, dry fruit, raisin, fig, coffee", structure: "bone dry to very sweet, light to medium body, medium to high acidity, low to medium alcohol")
v49 = Varietal.create(name: "Cremant", visual: "bubbles", aroma: "", fruit: "cherry, lemon, lime, grapefruit, green apple, yellow apple, pear, pinapple, passion fruit, lychee, raspberry, strawberry, cucumber", floral: "honeysuckle, rose, gardenia, freesia, apple blossom, lime blossom, mint", herbal: "", spice: "", other: "yeast, dough, soy, cream, vegemite, plain yogurt, vanilla, honey, blonde tobacco, melted butter", earth: "mineral, chalk, dust, mushroom", oak: "toast, brioche, baguette, biscuit, hazelnut, almond, walnut, vanilla wafer, gingerbread, dry fruit, raisin, fig, coffee", structure: "bone dry to very sweet, light to medium body, medium to high acidity, low to medium alcohol")
v50 = Varietal.create(name: "Cava", visual: "bubbles", aroma: "", fruit: "cherry, lemon, lime, grapefruit, green apple, yellow apple, pear, pinapple, passion fruit, lychee, raspberry, strawberry, cucumber", floral: "honeysuckle, rose, gardenia, freesia, apple blossom, lime blossom, mint", herbal: "", spice: "", other: "yeast, dough, soy, cream, vegemite, plain yogurt, vanilla, honey, blonde tobacco, melted butter", earth: "mineral, chalk, dust, mushroom", oak: "toast, brioche, baguette, biscuit, hazelnut, almond, walnut, vanilla wafer, gingerbread, dry fruit, raisin, fig, coffee", structure: "bone dry to very sweet, light to medium body, medium to high acidity, low to medium alcohol")
v51 = Varietal.create(name: "Mentodo Classico", visual: "bubbles", aroma: "", fruit: "cherry, lemon, lime, grapefruit, green apple, yellow apple, pear, pinapple, passion fruit, lychee, raspberry, strawberry, cucumber", floral: "honeysuckle, rose, gardenia, freesia, apple blossom, lime blossom, mint", herbal: "", spice: "", other: "yeast, dough, soy, cream, vegemite, plain yogurt, vanilla, honey, blonde tobacco, melted butter", earth: "mineral, chalk, dust, mushroom", oak: "toast, brioche, baguette, biscuit, hazelnut, almond, walnut, vanilla wafer, gingerbread, dry fruit, raisin, fig, coffee", structure: "bone dry to very sweet, light to medium body, medium to high acidity, low to medium alcohol")
v52 = Varietal.create(name: "Sparkling Varietal", visual: "bubbles", aroma: "", fruit: "cherry, lemon, lime, grapefruit, green apple, yellow apple, pear, pinapple, passion fruit, lychee, raspberry, strawberry, cucumber", floral: "honeysuckle, rose, gardenia, freesia, apple blossom, lime blossom, mint", herbal: "", spice: "", other: "yeast, dough, soy, cream, vegemite, plain yogurt, vanilla, honey, blonde tobacco, melted butter", earth: "mineral, chalk, dust, mushroom", oak: "toast, brioche, baguette, biscuit, hazelnut, almond, walnut, vanilla wafer, gingerbread, dry fruit, raisin, fig, coffee", structure: "bone dry to very sweet, light to medium body, medium to high acidity, low to medium alcohol")
v53 = Varietal.create(name: "Sparkling Rose", visual: "pink bubbles", aroma: "", fruit: "cherry, lemon, lime, grapefruit, green apple, yellow apple, pear, pinapple, passion fruit, lychee, raspberry, strawberry, cucumber", floral: "honeysuckle, rose, gardenia, freesia, apple blossom, lime blossom, mint", herbal: "", spice: "", other: "yeast, dough, soy, cream, vegemite, plain yogurt, vanilla, honey, blonde tobacco, melted butter", earth: "mineral, chalk, dust, mushroom", oak: "toast, brioche, baguette, biscuit, hazelnut, almond, walnut, vanilla wafer, gingerbread, dry fruit, raisin, fig, coffee", structure: "bone dry to very sweet, light to medium body, medium to high acidity, low to medium alcohol")


# Sweet White Wines
v54 = Varietal.create(name: "Moscato", visual: "straw", aroma: "high intensity", fruit: "candy citrus, orange, tangerine, ripe stone fruit, yellow peach, apricot, tropical fruit, pinapple, mango, melon liqueur, grape", floral: "white yellow and red flowers, honeysuckle, orange blossoms, lilacs, elderflower", herbal: "", spice: "", other: "honey", earth: "", oak: "", structure: "desert sweet, full bodied, medium acidity, high alcohol")
v55 = Varietal.create(name: "Riesling", visual: "star bright to billiant, watery white to straw with hints of green, pale gold", aroma: "high intensity", fruit: "tart to ripe tree fruits, green apple, yellow apple, pear, quince, citrus, lemon, lime, grapefruit, orange, citrus peal, stone fruits, white peach, white plum, nectarine, apricot, cherry, melon, blackcurrant", floral: "white flowers, jasmine, wild flowers, honeysuckle, fruit tree blossom", herbal: "", spice: "", other: "slight smoke, candle wax, panna cotta, slight petrol", earth: "high minerality, granite, slate, crushed rock", oak: "", structure: "off dry to medium sweet, medium minus body to light body, high acidity, low to medium minus alcohol")
v56 = Varietal.create(name: "Chenin Blanc", visual: "pale straw to straw with hints of green", aroma: "medium to medium plus", fruit: "tree fruit, green golden oxidized apple, quince, yellow pear, citrus, tangerine, orange, lemon, melon, tropical fruit", floral: "orange blossom, jasmine, honeysuckle, fragrant white flowers", herbal: "chamomile, medicimal notes, dandelion greens, wasabi, savory herbs, tree bark", spice: "", other: "wet wool, lanolin, honey, ginger, marmalade, bitter nut, almond, cheese rind, soft cheese", earth: "medium plus to high minerality, damp straw, limestone, wet stones, white mushroom", oak: "", structure: "dry to off dry, medium body, high acidity, medium minus to medium alcohol")
v57 = Varietal.create(name: "Gewurztraminer", visual: "yellow to gold", aroma: "high intensity", fruit: "apple, pear, peach jam, dried apricot, tangerine, lychee, orange marmalade, orange zest, passion fruit punch, pinapple, grapefruit pith", floral: "honeysuckle, tuberose, freesia, gardenia, jasmine, roses, perfume", herbal: "", spice: "clove, cinnamon, anise, nutmeg, mace, pepper, gingerbread, musk, potpourri, exotic spices", other: "sauerkraut, honey, bergamot oil, soapy", earth: "smoke, kerosene, mineral", oak: "vanilla, sweet spice", structure: "dry to off dry, medium plus to full body, low to medium acidity, medium to medium plus alcohol")
v58 = Varietal.create(name: "Late Harvest Varietals", visual: "", aroma: "", fruit: "apricot, peach, nectarine, yellow apple, pear, fruit salad, golden raisin, kumquat, loquat, custard apple, quince, pinapple, mango, banana, marmalade, fig, citrus peel, prum, lychee, guava, candy citrus", floral: "acacia, fresh herbs, verbena, saffron", herbal: "", spice: "", other: "almond, nut, honey, marzipan, fruitcake, beeswax, lanolin", earth: "mineral, stone", oak: "toffee, caramel, flan, butterscotch, vanilla, cinnamon, cardomon, nutmeg, clove, chocolate", structure: "")
v59 = Varietal.create(name: "Alsatian Pinot Gris", visual: "yellow to pale gold", aroma: "medium to medium plus intensity", fruit: "stone fruit, apricot, yellow peach, candied citrus, meyer lemon, orange, ripe tree fruit, baked apple, quince, tropical notes, pinapple, banana", floral: "faint white flowers, apple blossoms, honeysuckle, citrus blossom, rose peddle", herbal: "lemon grass, lemon thyme", spice: "exotic spices, musk, cinnamon, giner", other: "beeswax, damp cellar, nutty, bitter almond", earth: "mineral, stone, asphalt, flint slate, forest floor", oak: "", structure: "medium sweet, medium plus body, medium to medium plus acidity, medium plus alcohol")

# Never Forget About Dessert...
# Just add sugar
v60 = Varietal.create(name: "Port", visual: "", aroma: "", fruit: "", floral: "", herbal: "", spice: "", other: "", earth: "", oak: "", structure: "")
v61 = Varietal.create(name: "Sherry", visual: "", aroma: "", fruit: "", floral: "", herbal: "", spice: "", other: "", earth: "", oak: "", structure: "")
v62 = Varietal.create(name: "Madeira", visual: "", aroma: "", fruit: "", floral: "", herbal: "", spice: "", other: "", earth: "", oak: "", structure: "")
v63 = Varietal.create(name: "Vin Santo", visual: "", aroma: "", fruit: "", floral: "", herbal: "", spice: "", other: "", earth: "", oak: "", structure: "")
v64 = Varietal.create(name: "Muscat", visual: "", aroma: "", fruit: "", floral: "", herbal: "", spice: "", other: "", earth: "", oak: "", structure: "")
v65 = Varietal.create(name: "Pedro Ximenez", visual: "", aroma: "", fruit: "", floral: "", herbal: "", spice: "", other: "", earth: "", oak: "", structure: "")

# ---------------------- Add Wines to Categories -------------------------
# # Bold Red Wines
# w1 = Wine.create(varietal: "Malbec")
# w2 = Wine.create(varietal: "Syrah")
# w3 = Wine.create(varietal: "Pinotage")
# w4 = Wine.create(varietal: "Petite Sirah")
# w5 = Wine.create(varietal: "Cabernet Sauvignon")
# w6 = Wine.create(varietal: "Bordeaux Blend")
# w7 = Wine.create(varietal: "Meritage")
# w64 = Wine.create(varietal: "Mourvedre")

# # Medium Red Wines
# w8 = Wine.create(varietal: "Merlot")
# w9 = Wine.create(varietal: "Sangiovese")
# w10 = Wine.create(varietal: "Zinfandel")
# w11 = Wine.create(varietal: "Cabernet Franc")
# w12 = Wine.create(varietal: "Tempranillo")
# w13 = Wine.create(varietal: "Nebbiolo")
# w14 = Wine.create(varietal: "Barbera")
# w15 = Wine.create(varietal: "Cotes du Rhone Blend")

# # Light Red Wines
# w16 = Wine.create(varietal: "Pinot Noir")
# w17 = Wine.create(varietal: "Grenache")
# w18 = Wine.create(varietal: "Gamay")
# w19 = Wine.create(varietal: "Carignan")
# w20 = Wine.create(varietal: "Counoise")

# # Rose Wines
# w21 = Wine.create(varietal: "Provencal Rose")
# w22 = Wine.create(varietal: "White Zinfandel")
# w23 = Wine.create(varietal: "Loire Valley Rose")
# w24 = Wine.create(varietal: "Pinot Noir Rose")
# w25 = Wine.create(varietal: "Syrah Rose")
# w26 = Wine.create(varietal: "Garnacha Rosado")
# w27 = Wine.create(varietal: "Bandol Rose")
# w28 = Wine.create(varietal: "Tempranillo Rose")
# w29 = Wine.create(varietal: "Sangiovese Rosato")

# # Rich White Wines
# w30 = Wine.create(varietal: "Chardonnay")
# w31 = Wine.create(varietal: "Semillon")
# w32 = Wine.create(varietal: "Viognier")
# w33 = Wine.create(varietal: "Marsanne")
# w34 = Wine.create(varietal: "Roussanne")

# # Light White Wines
# w35 = Wine.create(varietal: "Sauvignon Blanc")
# w36 = Wine.create(varietal: "Albarino")
# w37 = Wine.create(varietal: "Pinot Blanc")
# w38 = Wine.create(varietal: "Vermentino")
# w39 = Wine.create(varietal: "Melon de Bourgogne")
# w40 = Wine.create(varietal: "Gargenega")
# w41 = Wine.create(varietal: "Trebbiano")
# w42 = Wine.create(varietal: "Pinot Gris")
# w43 = Wine.create(varietal: "Pinot Grigo")
# w44 = Wine.create(varietal: "Torrontes")

# # Sparkling Wines
# w45 = Wine.create(varietal: "Champagne")
# w46 = Wine.create(varietal: "Prosecco")
# w47 = Wine.create(varietal: "Cremant")
# w48 = Wine.create(varietal: "Cava")
# w49 = Wine.create(varietal: "Mentodo Classico")
# w50 = Wine.create(varietal: "Sparkling Wine")
# w51 = Wine.create(varietal: "Sparkling Rose")


# # Sweet White Wines
# w52 = Wine.create(varietal: "Moscato")
# w53 = Wine.create(varietal: "Riesling")
# w54 = Wine.create(varietal: "Chenin Blanc")
# w55 = Wine.create(varietal: "Gewurztraminer")
# w56 = Wine.create(varietal: "Late Harvest Wines")
# w57 = Wine.create(varietal: "Alsatian Pinot Gris")

# # Never Forget About Dessert...
# # Just add sugar
# w58 = Wine.create(varietal: "Port")
# w59 = Wine.create(varietal: "Sherry")
# w60 = Wine.create(varietal: "Madeira")
# w61 = Wine.create(varietal: "Vin Santo")
# w62 = Wine.create(varietal: "Muscat")
# w63 = Wine.create(varietal: "Pedro Ximenez")



c1 = Category.create(name: "Bold Red")
c2 = Category.create(name: "Medium Red")
c3 = Category.create(name: "Light Red")
c4 = Category.create(name: "Rose")
c5 = Category.create(name: "Rich White")
c6 = Category.create(name: "Light White")
c7 = Category.create(name: "Sparkling")
c8 = Category.create(name: "Sweet White")
c9 = Category.create(name: "Dessert")

# ------------ Add Varietals to Categories ----------------- 

# Bold Red Varietals Array
c1.varietals << v1
c1.varietals << v2
c1.varietals << v3
c1.varietals << v4
c1.varietals << v5
c1.varietals << v6
c1.varietals << v7
c1.varietals << v9
c1.varietals << v9

# Medium Red Varietals Array
c2.varietals << v10
c2.varietals << v11
c2.varietals << v12
c2.varietals << v13
c2.varietals << v14
c2.varietals << v15
c2.varietals << v16
c2.varietals << v17

# Light Red Varietals Array
c3.varietals << v18
c3.varietals << v19
c3.varietals << v20
c3.varietals << v21
c3.varietals << v22

# Rose Varietals Array
c4.varietals << v23
c4.varietals << v24
c4.varietals << v25
c4.varietals << v26
c4.varietals << v27
c4.varietals << v28
c4.varietals << v29
c4.varietals << v30
c4.varietals << v31

# Rich White Varietals Array
c5.varietals << v32
c5.varietals << v33
c5.varietals << v34
c5.varietals << v35
c5.varietals << v36

# Light White Varietals Array
c6.varietals << v37
c6.varietals << v38
c6.varietals << v39
c6.varietals << v40
c6.varietals << v41
c6.varietals << v42
c6.varietals << v43
c6.varietals << v44
c6.varietals << v45
c6.varietals << v46

# Sparkeling Varietals Array
c7.varietals << v47
c7.varietals << v48
c7.varietals << v49
c7.varietals << v50
c7.varietals << v51
c7.varietals << v52
c7.varietals << v53

# Sweet White Varietals Array
c8.varietals << v54
c8.varietals << v55
c8.varietals << v56
c8.varietals << v57
c8.varietals << v58
c8.varietals << v59

# Never Forgot About Dessert...
c9.varietals << v60
c9.varietals << v61
c9.varietals << v62
c9.varietals << v63
c9.varietals << v64
c9.varietals << v65

# ---------------------- Add Pairings to Food_Group -------------------------

f1 = FoodGroup.create(name: "Meat")
f2 = FoodGroup.create(name: "Preparation")
f3 = FoodGroup.create(name: "Dairy")
f4 = FoodGroup.create(name: "Vegetable")
f5 = FoodGroup.create(name: "Herb and Spice")
f6 = FoodGroup.create(name: "Starch")
f7 = FoodGroup.create(name: "Sweet")



#  Meat Food Group
p1 = Pairing.create(name: "Red Meat")
p2 = Pairing.create(name: "Cured Meat")
p3 = Pairing.create(name: "Pork")
p4 = Pairing.create(name: "Poultry")
p5 = Pairing.create(name: "Mollusk")
p6 = Pairing.create(name: "Fish and Raw Fish")
p7 = Pairing.create(name: "Lobster and Shellfish")

# Preparation Food Group
p8 = Pairing.create(name: "Grilled and Barbecued")
p9 = Pairing.create(name: "Sauteed or Fried")
p10 = Pairing.create(name: "Smoked")
p11 = Pairing.create(name: "Roasted")
p12 = Pairing.create(name: "Poached or Steamed")

# Dairy Food Group
p13 = Pairing.create(name: "Soft Cheese and Cream")
p14 = Pairing.create(name: "Pungent Cheese")
p15 = Pairing.create(name: "Hard Cheese")

# Vegetable Food Group
p16 = Pairing.create(name: "Alliums")
p17 = Pairing.create(name: "Green Vegetables")
p18 = Pairing.create(name: "Root Vegetables and Squash")
p19 = Pairing.create(name: "Nightshades")
p20 = Pairing.create(name: "Funghi")
p21 = Pairing.create(name: "Nuts and Seeds")
p22 = Pairing.create(name: "Beans and Peas")

# Herbs and Spices Food Group
p23 = Pairing.create(name: "Black Pepper")
p24 = Pairing.create(name: "Red Pepper")
p25 = Pairing.create(name: "Hot and Spicy")
p26 = Pairing.create(name: "Herbs")
p27 = Pairing.create(name: "Baking Spices")
p28 = Pairing.create(name: "Exotic and Aromatic")

# Starch Food Group
p29 = Pairing.create(name: "White Starches")
p30 = Pairing.create(name: "Whole Wheat Grains")
p31 = Pairing.create(name: "Sweet Root Vegetables")
p32 = Pairing.create(name: "Potato")

# Sweet Food Group
p33 = Pairing.create(name: "Fruit and Berries")
p34 = Pairing.create(name: "Vanilla and Caramel")
p35 = Pairing.create(name: "Chocolate and Coffee")


# Meat Array
f1.pairings << p1
f1.pairings << p2
f1.pairings << p3
f1.pairings << p4
f1.pairings << p5
f1.pairings << p6

# Preparation Array
f2.pairings << p7
f2.pairings << p8
f2.pairings << p9
f2.pairings << p10
f2.pairings << p11
f2.pairings << p12

# Dairy Array
f3.pairings << p13
f3.pairings << p14
f3.pairings << p15

# Vegetable Array
f4.pairings << p16
f4.pairings << p17
f4.pairings << p18
f4.pairings << p19
f4.pairings << p20
f4.pairings << p21
f4.pairings << p22

# Herb and Spices Array
f5.pairings << p23
f5.pairings << p24
f5.pairings << p25
f5.pairings << p26
f5.pairings << p27
f5.pairings << p28

# Starch Arrays
f6.pairings << p29
f6.pairings << p30
f6.pairings << p31	
f6.pairings << p32

# Sweet Arrays
f7.pairings << p33
f7.pairings << p34
f7.pairings << p35

# ---------------------- Add Pairings to Food_Group to Wine -------------------------

# Bold Red Pairings Array
c1.pairings << p1
c1.pairings << p8
c1.pairings << p15
c1.pairings << p23
c1.pairings << p2
c1.pairings << p3
c1.pairings << p10
c1.pairings << p14
c1.pairings << p16
c1.pairings << p19
c1.pairings << p20
c1.pairings << p24
c1.pairings << p29
c1.pairings << p32

# Medium Red Pairings Array
c2.pairings << p3
c2.pairings << p10
c2.pairings << p14
c2.pairings << p16
c2.pairings << p19
c2.pairings << p20
c2.pairings << p24
c2.pairings << p28
c2.pairings << p1
c2.pairings << p2
c2.pairings << p4
c2.pairings << p8
c2.pairings << p11
c2.pairings << p13
c2.pairings << p15
c2.pairings << p22
c2.pairings << p23
c2.pairings << p26
c2.pairings << p27
c2.pairings << p29
c2.pairings << p32

# Light Red Pairings Array
c3.pairings << p2
c3.pairings << p4
c3.pairings << p9
c3.pairings << p13
c3.pairings << p20
c3.pairings << p8
c3.pairings << p10
c3.pairings << p11
c3.pairings << p16
c3.pairings << p21
c3.pairings << p26
c3.pairings << p28
c3.pairings << p29
c3.pairings << p30
c3.pairings << p32

# Rose Pairings Array
c4.pairings << p18
c4.pairings << p2
c4.pairings << p3
c4.pairings << p4
c4.pairings << p7
c4.pairings << p9
c4.pairings << p10
c4.pairings << p11
c4.pairings << p13
c4.pairings << p14
c4.pairings << p15
c4.pairings << p16
c4.pairings << p19
c4.pairings << p21
c4.pairings << p22
c4.pairings << p24
c4.pairings << p26
c4.pairings << p27
c4.pairings << p28
c4.pairings << p29
c4.pairings << p30
c4.pairings << p31
c4.pairings << p32

# Rich White Pairings Array
c5.pairings << p4
c5.pairings << p7
c5.pairings << p13
c5.pairings << p20
c5.pairings << p6
c5.pairings << p9
c5.pairings << p12
c5.pairings << p15
c5.pairings << p16
c5.pairings << p18
c5.pairings << p21
c5.pairings << p26
c5.pairings << p29
c5.pairings << p30
c5.pairings << p32

# Light White Pairings Array
c6.pairings << p6
c6.pairings << p12
c6.pairings << p17
c6.pairings << p22
c6.pairings << p26
c6.pairings << p4
c6.pairings << p5
c6.pairings << p7
c6.pairings << p9
c6.pairings << p13
c6.pairings << p14
c6.pairings << p16
c6.pairings << p21
c6.pairings << p24
c6.pairings << p25
c6.pairings << p29
c6.pairings << p32

# Sparkeling Pairings Array
c7.pairings << p5
c7.pairings << p2
c7.pairings << p3
c7.pairings << p4
c7.pairings << p6
c7.pairings << p8
c7.pairings << p9
c7.pairings << p10
c7.pairings << p12
c7.pairings << p13
c7.pairings << p14
c7.pairings << p15
c7.pairings << p16
c7.pairings << p17
c7.pairings << p21
c7.pairings << p22
c7.pairings << p24
c7.pairings << p25
c7.pairings << p28
c7.pairings << p29
c7.pairings << p32
c7.pairings << p33

# Sweet White Pairings Array
c8.pairings << p2
c8.pairings << p21
c8.pairings << p25
c8.pairings << p28
c8.pairings << p30
c8.pairings << p31
c8.pairings << p33
c8.pairings << p7
c8.pairings << p8
c8.pairings << p11
c8.pairings << p12
c8.pairings << p13
c8.pairings << p14
c8.pairings << p16
c8.pairings << p18
c8.pairings << p19
c8.pairings << p24
c8.pairings << p27
c8.pairings << p29
c8.pairings << p32
c8.pairings << p34

# Never Forgot About Dessert...
c9.pairings << p14
c9.pairings << p27
c9.pairings << p35
c9.pairings << p2
c9.pairings << p10
c9.pairings << p13
c9.pairings << p29
c9.pairings << p33
c9.pairings << p34

# ---------------------- Add Pairings to Food_Group -------------------------

# Red Meat
d1 = Food.create(name: "Beef")
d2 = Food.create(name: "Lamb")
d3 = Food.create(name: "Venison")

# Cured Meat
d4 = Food.create(name: "Salami")
d5 = Food.create(name: "Prosciutto")
d6 = Food.create(name: "Bacon")

# Pork Foods
d7 = Food.create(name: "Roast")
d8 = Food.create(name: "Tenderloin")
d9 = Food.create(name: "Pork Chop")

# Poultry Foods
d10 = Food.create(name: "Chicken")
d11 = Food.create(name: "Duck")
d12 = Food.create(name: "Turkey")

# Mollusk Foods
d13 = Food.create(name: "Oyster")
d14 = Food.create(name: "Mussel")
d15 = Food.create(name: "Clam")

# Fish Foods 
d16 = Food.create(name: "Tune")
d17 = Food.create(name: "Cod")
d18 = Food.create(name: "Trout")
d19 = Food.create(name: "Bass")

# Shell Fish Foods
d20 = Food.create(name: "Prawn")
d21 = Food.create(name: "Crab")
d22 = Food.create(name: "Langoustin")

# Soft Cheese Foods
d23 = Food.create(name: "Brie")
d24 = Food.create(name: "Mascarpone")
d25 = Food.create(name: "Creame Fraiche")

# Pungent Cheese Foods
d26 = Food.create(name: "Blue")
d27 = Food.create(name: "Gargonzola")
d28 = Food.create(name: "Stilton")
d29 = Food.create(name: "Roquefort")

# Hard Cheese Foods
d30 = Food.create(name: "Cheddar")
d31 = Food.create(name: "Pecorino")
d32 = Food.create(name: "Manchego")
d33 = Food.create(name: "Asiago")
d34 = Food.create(name: "Parmesan")

# Allums Foods
d35 = Food.create(name: "Onion")
d36 = Food.create(name: "Shallot")
d37 = Food.create(name: "Garlic")
d38 = Food.create(name: "Scallion")

# Green Vegetables Foods
d39 = Food.create(name: "Green Bean")
d40 = Food.create(name: "Kale")
d41 = Food.create(name: "Lettuce")

# Root Vegetables and Squash Foods
d42 = Food.create(name: "Turnip")
d43 = Food.create(name: "Butternut")
d44 = Food.create(name: "Pumpkin")
d45 = Food.create(name: "Delicate")
d46 = Food.create(name: "Carrot")

# Nightshades Foods 
d47 = Food.create(name: "Tomato")
d48 = Food.create(name: "Eggplant")
d49 = Food.create(name: "Bell Pepper")

# Funghi Foods
d50 = Food.create(name: "Crimini")
d51 = Food.create(name: "Shiitake")
d52 = Food.create(name: "Chanterelle")

# Nuts and Seeds Foods
d53 = Food.create(name: "Peanut")
d54 = Food.create(name: "Pecon")
d55 = Food.create(name: "Almond")
d56 = Food.create(name: "Sesame")

# Beans and Peas Foods
d57 = Food.create(name: "Lentil")
d58 = Food.create(name: "Pinto")
d59 = Food.create(name: "Chickpea")

# Red Pepper Foods
d60 = Food.create(name: "Ancho")
d61 = Food.create(name: "Aleppo")
d62 = Food.create(name: "Chipotle")
d63 = Food.create(name: "Chili")

# Hot and Spicy Foods
d64 = Food.create(name: "Hot Sauce")
d65 = Food.create(name: "Habenero")
d66 = Food.create(name: "Sichuan")

# Herb Foods
d67 = Food.create(name: "Thyme")
d68 = Food.create(name: "Oregano")
d69 = Food.create(name: "Basi")
d70 = Food.create(name: "Tarragon")

# Baking Spices Foods
d71 = Food.create(name: "Cinnamon")
d72 = Food.create(name: "Clove")
d73 = Food.create(name: "Allspice")
d74 = Food.create(name: "Mace")

# Exotic and Aromatic Spices Foods
d75 = Food.create(name: "Anise")
d76 = Food.create(name: "Turnmeric")
d77 = Food.create(name: "Saffron")
d78 = Food.create(name: "Fennel")
d79 = Food.create(name: "Ginger")

# White Starches Foods
d80 = Food.create(name: "Flour")
d81 = Food.create(name: "White Rice")
d82 = Food.create(name: "Pasta")
d83 = Food.create(name: "Bread")
d84 = Food.create(name: "Tortillas")

# Whole Wheat Grains
d85 = Food.create(name: "Quinoa")
d86 = Food.create(name: "Farro")
d87 = Food.create(name: "Brown Rice")

# Sweet Root Vegetable Foods
d88 = Food.create(name: "Sweet Potato")
d89 = Food.create(name: "Yucca")
d90 = Food.create(name: "Taro")

# Fruits and Berries Foods
d91 = Food.create(name: "Strawberry")
d92 = Food.create(name: "Orange")
d93 = Food.create(name: "Apple")
d94 = Food.create(name: "Peach")

# Vanilla and Carmel Foods
d95 = Food.create(name: "Creme Brulee")
d96 = Food.create(name: "Ice Cream")


# Red Meat Foods 
p1.foods << d1
p1.foods << d2
p1.foods << d3

# Cured Meat Foods
p2.foods << d4
p2.foods << d5
p2.foods << d6

# Pork Foods
p3.foods << d7
p3.foods << d8
p3.foods << d9

# Poultry Foods
p4.foods << d10
p4.foods << d11
p4.foods << d12

# Mollusk Foods
p5.foods << d13
p5.foods << d14
p5.foods << d15

# Fish Foods
p6.foods << d16
p6.foods << d17
p6.foods << d18
p6.foods << d19

# Shell Fish Foods
p7.foods << d20
p7.foods << d21
p7.foods << d22

# Soft Cheese Foods
p13.foods << d23
p13.foods << d24
p13.foods << d25

# Pungent Cheese Foods
p14.foods << d26
p14.foods << d27
p14.foods << d28
p14.foods << d29

# Hard Cheese Foods
p15.foods << d30
p15.foods << d31
p15.foods << d32
p15.foods << d33
p15.foods << d34

# Allium Foods
p16.foods << d35
p16.foods << d36
p16.foods << d37
p16.foods << d38

# Green Vegetable Foods
p17.foods << d39
p17.foods << d40
p17.foods << d41

# Root Vegetables and Squash Foods
p18.foods << d42
p18.foods << d43
p18.foods << d44
p18.foods << d45
p18.foods << d46

# Nightshades Foods 
p19.foods << d47
p19.foods << d49
p19.foods << d49

# Funghi Foods
p20.foods << d50
p20.foods << d51
p20.foods << d52

# Nuts and Seeds Foods
p21.foods << d53
p21.foods << d54
p21.foods << d55
p21.foods << d56

# Beans and Peas Foods
p22.foods << d57
p22.foods << d58
p22.foods << d59

# Red Pepper Foods
p24.foods << d60
p24.foods << d61
p24.foods << d62
p24.foods << d63

# Hot and Spicy Foods
p25.foods << d64
p25.foods << d65
p25.foods << d66

# Herb Foods
p26.foods << d67
p26.foods << d68
p26.foods << d69
p26.foods << d70

# Baking Spices Foods
p27.foods << d71
p27.foods << d72
p27.foods << d73
p27.foods << d74

# Exotic and Aromatic Spices Foods
p28.foods << d75
p28.foods << d76
p28.foods << d77
p28.foods << d78
p28.foods << d79

# White Starches Foods
p29.foods << d80
p29.foods << d81
p29.foods << d82
p29.foods << d83
p29.foods << d84

# Whole Wheat Grains
p30.foods << d85
p30.foods << d86
p30.foods << d87

# Sweet Root Vegetable Foods
p31.foods << d88
p31.foods << d89
p31.foods << d90

# Fruits and Berries Foods
p33.foods << d91
p33.foods << d92
p33.foods << d93
p33.foods << d94

# Vanilla and Carmel Foods
p34.foods << d95
p34.foods << d96
