b1 = Brewery.create name:"Koff", year:1897
b2 = Brewery.create name:"Malmgard", year:2001
b3 = Brewery.create name:"Weihenstephaner", year:1042

s1 = Style.create name:"Lager"
s2 = Style.create name:"Pale Ale"
s3 = Style.create name:"Porter"
s4 = Style.create name:"Weizen"

b1.beers.create name:"Iso 3", style:s1
b1.beers.create name:"Karhu", style:s1
b1.beers.create name:"Tuplahumala", style:s1
b2.beers.create name:"Huvila Pale Ale", style:s3
b2.beers.create name:"X Porter", style:s2
b3.beers.create name:"Hefeweizen", style:s4
b3.beers.create name:"Helles", style:s1

