# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

[
{title: "Stone IPA", url: "http://www.stonebrew.com/tasting/ipa/ipa.jpg", caption: "Light-medium malt character with a heavy dose of over the top hops! Two full weeks of dry hopping give this beer its abundant hop aroma and crisp hop flavor."},
{title: "Breckenridge Brewery", url: "http://www.breckbrew.com/_photos/hero/beer/bottles-lrg/brew-agave.png", caption: "Agave complements the refreshingly light quality of our wheat and adds a subtle note of flavor that expands this beer\'s uplifting taste profile. It is familiar, yet creative."},
{title: "Goose Island 312", url: "http://www.gooseisland.com/filebin/images/products/full/312.jpg", caption: "Inspired by the city of Chicago and densely populated with flavor, 312\'s spicy aroma of Cascade hops is followed by a crisp, fruity ale flavor delivered in a smooth, creamy body that\'s immensely refreshing."},
{title: "Goose Island Oatmeal Stout", url: "http://www.gooseisland.com/filebin/images/products/full/oatmeal-stout.jpg", caption: "An aromatic blend of oats, chocolate and roast malts make up this classic English-Style Oatmeal Stout. A rich black over ruby hue and creamy tan head make our stout a memorable beer to behold."},
{title: "BJ's Brewhouse Tatonka Stout", url: "http://www.bjsbrewhouse.com/sites/default/files/Tatonkawebsite.png", caption: "An imperial stout -- a classic style so rich and flavorful that it was once the private beverage of Russian Czars. The profile is malty sweet, hop bitter roasted, full-bodied, alcoholic and deliciously complex. Beer doesn\'t get much more intense than this!"},
{title: "Spaten Oktoberfest", url: "http://www.spatenbeer.com/images/oktoberfest-bottel.png", caption: "The beer of Munich\'s famous Oktoberfest: aromatic, savoury, gold-colored."}
].each do |photo|
	Photo.find_or_create_by_url photo
end
#{title: "", url: "", caption: ""},
