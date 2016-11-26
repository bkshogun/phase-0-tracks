
major_league_baseball = {
   name: 'Major League Baseball', 
   leagues: {
   	   national_league: {
   	   name: 'National League',
          nl_east: {
             name: 'NL East',
      	     teams: {
      	     	new_york_mets: ['Syndergaard' 'Harvey' 'deGrom' 'Matz' 'Colon'],
      	        washington_nationals: ['Scherzer', 'Strasburg', 'Gonzalez', 'Roark', 'Ross'],
      	        atlanta_braves: ['Tehran', 'Dickey', 'Foltynewicz', 'Wisler', 'Blair'],
      	        miami_marlins: ['Conley', 'Chen', 'Koehler', 'Urena', 'Esch'],
      	        philadelphia_phillies: ['Nola', 'Hellickson', 'Eflin', 'Thompson', 'Morgan']
      	        },
      	     },
          nl_central: {
             name: 'NL Central',
             teams: {
                chicago_cubs: [],
                cincinatti_reds: [],
                milwaukee_brewers: [],
                st_louis_cardinlas: [],
                pittsburgh_pirates: []
                },
             },
          nl_west: {
             name: 'NL West',
             teams: {
             	san_francisco_giants: [],
                san_diego_padres: [],
                los_angeles_dodgers: [],
                arizona_diamondbacks: [],
                colorado_rockies: []
                },
             },   
        },     
        #american_league: {
        #name: 'American League' [],
        #}
    }
}

puts major_league_baseball[:leagues][:national_league][:nl_east][:new_york_mets][2]