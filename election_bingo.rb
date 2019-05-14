#!/bin/ruby

funnies = [
    '"Bell weather"',
    '"negative campaign"',
    '"The swing is on"',
    'Egg boy / egg girl discussion',
    'Barnaby joyce is a victim',
    'Pauline Hanson is a victim',
    '"Canberra bubble"',
    '"fair dinkum"',
    'Panelists agree to disagree',
    '"Social media"',
    '"There is a mood for change"',
    '"Top end of town"',
    '"Franking credits"',
    '"Real Climate change action"',
    'Bill shorten\'s mum discussion',
    'Clive Palmer Preference deal discussion',
    '"Black hole in costings"',
    '"The Bill you can\'t afford"',
    '"A lot of lies during this campaign"',
    'Footage of Scott Morrison in church',
    'Adani debate',
    'Penny Wong\'s expression says it all',
    'Live cross has no sound',
    'Live cross drops out mid interview',
    'Sad/bored family member next to candidate',
    'Idiot in background during interview',
    'Footage of sausage sizzle at polling booth',
    'Celebrities shown at polling booth',
    'Speculation about Chinese interference',
    '"Landslide"'
]

electorates = [
    'Adelaide',
    'Aston',
    'Ballarat',
    'Banks',
    'Barker',
    'Barton',
    'Bass',
    'Bean',
    'Bendigo',
    'Bennelong',
    'Berowra',
    'Blair',
    'Blaxland',
    'Bonner',
    'Boothby',
    'Bowman',
    'Braddon',
    'Bradfield',
    'Brand',
    'Brisbane',
    'Bruce',
    'Burt',
    'Calare',
    'Calwell',
    'Canberra',
    'Canning',
    'Capricornia',
    'Casey',
    'Chifley',
    'Chisholm',
    'Clark',
    'Cook',
    'Cooper',
    'Corangamite',
    'Corio',
    'Cowan',
    'Cowper',
    'Cunningham',
    'Curtin',
    'Dawson',
    'Deakin',
    'Dickson',
    'Dobell',
    'Dunkley',
    'Durack',
    'Eden-Monaro',
    'Fadden',
    'Fairfax',
    'Farrer',
    'Fenner',
    'Fisher',
    'Flinders',
    'Flynn',
    'Forde',
    'Forrest',
    'Fowler',
    'Franklin',
    'Fraser',
    'Fremantle',
    'Gellibrand',
    'Gilmore',
    'Gippsland',
    'Goldstein',
    'Gorton',
    'Grayndler',
    'Greenway',
    'Grey',
    'Griffith',
    'Groom',
    'Hasluck',
    'Herbert',
    'Higgins',
    'Hindmarsh',
    'Hinkler',
    'Holt',
    'Hotham',
    'Hughes',
    'Hume',
    'Hunter',
    'Indi',
    'Isaacs',
    'Jagajaga',
    'Kennedy',
    'Kingsford Smith',
    'Kingston',
    'Kooyong',
    'La Trobe',
    'Lalor',
    'Leichhardt',
    'Lilley',
    'Lindsay',
    'Lingiari',
    'Longman',
    'Lyne',
    'Lyons',
    'Macarthur',
    'Mackellar',
    'Macnamara',
    'Macquarie',
    'Makin',
    'Mallee',
    'Maranoa',
    'Maribyrnong',
    'Mayo',
    'McEwen',
    'McMahon',
    'McPherson',
    'Melbourne',
    'Menzies',
    'Mitchell',
    'Monash',
    'Moncrieff',
    'Moore',
    'Moreton',
    'New England',
    'Newcastle',
    'Nicholls',
    'North Sydney',
    'O\'Connor',
    'Oxley',
    'Page',
    'Parkes',
    'Parramatta',
    'Paterson',
    'Pearce',
    'Perth',
    'Petrie',
    'Rankin',
    'Reid',
    'Richmond',
    'Riverina',
    'Robertson',
    'Ryan',
    'Scullin',
    'Shortland',
    'Solomon',
    'Spence',
    'Stirling',
    'Sturt',
    'Swan',
    'Sydney',
    'Tangney',
    'Wannon',
    'Warringah',
    'Watson',
    'Wentworth',
    'Werriwa',
    'Whitlam',
    'Wide Bay',
    'Wills',
    'Wright'
]

funnies_shuffled = funnies.shuffle
electorates_shuffled = electorates.shuffle
results = (electorates_shuffled[0,5].map { |e| e + " is called"} \
    + funnies_shuffled[0,16-5]).shuffle
idx = 0

puts <<-EOT
<html><body>
<style>
body {
    font-family: sans-serif;
}
table {
  border-collapse: collapse;
}
table, th, td {
    border: 1px solid black;
}
th, td {
  padding: 15px;
  width: 60px;
  text-align: center;
  font-size: 25px;
}
</style>
<h1>Election Bingo</h1>
EOT
puts "<table>"
4.times do
    puts "<tr>"
    4.times do
        puts "<td>"
        puts results[idx]
        idx += 1
        puts "</td>"
    end
    puts "</tr>"
end
puts "</table>"
puts "</body></html>"
