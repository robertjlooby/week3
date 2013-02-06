# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

[
{title: "Stone IPA", url: "http://www.stonebrew.com/tasting/ipa/ipa.jpg"},
{title: "Breckenridge Brewery", url: "http://www.breckbrew.com/_photos/hero/beer/bottles-lrg/brew-agave.png"},
{title: "Goose Island 312", url: "http://www.gooseisland.com/filebin/images/products/full/312.jpg"},
{title: "Goose Island Oatmeal Stout", url: "http://www.gooseisland.com/filebin/images/products/full/oatmeal-stout.jpg"},
{title: "BJ's Brewhouse Tatonka Stout", url: "http://www.bjsbrewhouse.com/sites/default/files/Tatonkawebsite.png"},
{title: "Spaten Oktoberfest", url: "http://www.spatenbeer.com/images/oktoberfest-bottel.png"}
].each do |photo|
	Photo.find_or_create_by_url photo
end
#{title: "", url: "", caption: ""},
