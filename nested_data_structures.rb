nl = {
  name: "National League",
  nl_east: {
    name: "National League East",
    mets: ["Syndergaard", "Harvey", "deGrom"],
    nationals: [],
    braves: [],
    marlins: [],
    phillies: []
  },
  nl_central: {
    name: "National League Central",
      cubs: ["Arrieta", "Lester"],
      reds: [],
      brewers: [],
      cardinals: [],
      pirates: []
    },
  nl_west: {
    name: "National League West",
    giants: [],
    padres: []
  }
  }


puts nl[:nl_east][:mets][0]
puts nl[:name]
nl[:nl_east][:mets] << "Lugo"
puts nl[:nl_east][:mets]
puts nl[:nl_central][:cubs][0]