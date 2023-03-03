CREATE 
(kovaiexp:TRAIN{no:12676,name:"Chennai-Salem SF express",PNR:"42553671"}),
(shatabdiexp:TRAIN{no:12686,name:"Salem-Bang Shatabdi",PNR:"42553771"}),
(vandebharatexp:TRAIN{no:12696,name:"Chennai-Bang SF express",PNR:"42553871"}),

(MAS:STATION{name: "Chennai", nop:15}),
(SA:STATION{name: "Salem", nop:10}),
(BLR:STATION{name: "Bengaluru", nop:12}),
 
(MAS)-[:NEARTO]-> (SA),
(SA)<-[:NEARTO]- (MAS),
(MAS)-[:NEARTO]-> (BLR),
(BLR)<-[:NEARTO]- (MAS),
(SA)-[:NEARTO]-> (BLR),
(BLR)<-[:NEARTO]- (SA),

(kovaiexp)-[:STOPS_AT {time:"11:10 AM"}]-> (SA),
(shatabdiexp)-[:STOPS_AT {time:"05:30 PM"}]-> (BLR),
(vandebharatexp)-[:STOPS_AT {time:"12:00 AM"}]-> (BLR),

(kovaiexp)-[:STARTS_AT {time:"06:15 AM"}]-> (MAS),
(shatabdiexp)-[:STARTS_AT {time:"08:30 AM"}]-> (SA),
(vandebharatexp)-[:STARTS_AT {time:"03:00 PM"}]-> (MAS);
