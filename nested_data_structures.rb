nl = {
  name: "National League",
  nl_east: {
    name: "National League East",
    mets: ["Syndergaard", "Harvey", "deGrom", "Wheeler", "Matz"],
    nationals: ["Scherzer", "Strasburg", "Gonzalez", "Roark", "Ross"],
    braves: ["Tehran", "Dickey", "Foltynewicz", "Wisler", "Blair"],
    marlins: ["Conley", "Chen", "Koehler", "Urena", "Esch"],
    phillies: ["Nola", "Hellickson", "Eickoff", "Eflin", "Thompson"]
  },
  nl_central: {
    name: "National League Central",
      cubs: ["Arrieta", "Lester", "Hendricks", "Lackey"],
      reds: [],
      brewers: [],
      cardinals: [],
      pirates: []
  },
  nl_west: {
    name: "National League West",
    giants: [],
    padres: [],
    dodgers: ["Kershaw", "Maeda", "Urias"],
    diamondbacks: [],
    rockies: []
  }
}

puts nl[:nl_west][:dodgers][0]
puts nl[:nl_east][:mets].length 
puts nl[:nl_central][:name]
p nl[:nl_east][:braves]
nl[:nl_east][:braves] << "Colon"
p nl[:nl_east][:braves]