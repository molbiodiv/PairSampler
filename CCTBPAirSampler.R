participants = sample(c(	"MBD_Ankenbrand", 
							"MBD_Gaube",
							"MBD_Voulgari",
							"MBD_Peters",
							"MBD_Hohlfeld",
							"EvolGen_Freudenthal",
							"EvolGen_Anwar",
							"EvolGen_Lopez",
							"CIA_Paul",
							"CIA_Repp",
							"CEB_Terhoeven",
							"EcoMod_Figueiredo",
							"EcoMod_Leidinger"
					),replace=F)

tmp_pairs = sample(participants, replace=F)
print(sum(gsub("_.*","",participants) == gsub("_.*","", tmp_pairs)))

while(sum(gsub("_.*","",participants) == gsub("_.*","", tmp_pairs))) {
	tmp_pairs = sample(participants, replace=F)
	#print(sum(gsub("_.*","",participants) == gsub("_.*","", tmp_pairs)))
}
print(data.frame(	Slides=participants,	
					Presenter=tmp_pairs, 
					Time=format(seq(	ISOdatetime(2018,3,6,9,0,0), 
										ISOdatetime(2018,3,6,10,30,0), 
										by=paste((90 / length(participants)),"min")),"%H:%M")[0:length(participants)]))
