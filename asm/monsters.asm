arch 65816
hirom

table "menu.tbl",ltr 

;------------------------------------------------------------------
;Monsters list
;------------------------------------------------------------------

org $CFC050

	db "Guardia   "	     ;0
	db "Soldado   "	     ;1
	db "Falange   "	     ;2
	db "Ninja     "	     ;3
	db "Samur'i   "		 ;4
	db "Shokan    "      ;5
	db "Merodeador"      ;6
	db "Siervo    "      ;7
	db "Conjurador"      ;8
	db "Choni     "      ;9
	db "Paralmas  "      ;10
	db "Luchador  "      ;11
	db "G'rgola   "      ;12
	db "Wrexsoul  "      ;13
	db "Espirito  "      ;14
	db "Liche     "      ;15
	db "          "      ;
	db "Oficial   "      ;17
	db "Rhodox    "      ;18
	db "RataCloaca"      ;19
	db "          "      ;
	db "Rhyhorn   "      ;21
	db "Organix   "      ;22
	db "Lechuguin "      ;23
	db "Gato      "      ;24
	db "Lobo      "      ;25
	db "Banshee   "      ;26
	db "Mamut     "      ;27
	db "Chucho    "      ;28
	db "Adamantina"      ;29
	db "Suriander "      ;30
	db "Quimera   "      ;31
	db "Begimo    "      ;32
	db "Mesosaurio"      ;33
	db "Albatros  "      ;34
	db "Colm>F#sil"      ;35
	db "D-Blanco  "      ;36
	db "Shemp     "      ;37
	db "          "      ;
	db "Tirano    "      ;39
	db "Cuervo    "      ;40
	db "Piko      "      ;41
	db "Buitre    "      ;42
	db "          "      ;
	db "Cang>Arena"      ;44
	db "Cyborg    "      ;45
	db "Avispa    "      ;46
	db "Grillo    "      ;47
	db "Escarabajo"      ;48
	db "          "      ;
	db "Trilium   "      ;50
	db "Belladonna"      ;51
	db "Rodadora  "      ;52
	db "Vamplanta "      ;53
	db "Trilobite "      ;54
	db "Siegfried "      ;55
	db "Nautiloide"      ;56
	db "Exocite   "      ;57
	db "Anguiforme"      ;58
	db "Saltirrana"      ;59
	db "Basilisco "      ;60
	db "Pollito   "      ;61
	db "Gusano    "      ;62
	db "Tanatos   "      ;63
	db "Tif#n     "      ;
	db "Cebolleta "      ;65
	db "Armad>MTec"      ;66
	db "ArmadCielo"      ;67
	db "Telstar   "      ;68
	db "ARMA      "      ;69
	db "Vaporite  "      ;70
	db "Flan      "      ;71
	db "Djinn     "      ;72
	db "Humpty    "      ;73
	db "Cerebrito "      ;74
	db "Cosa>rara "      ;75
	db "Cactilio  "      ;76
	db "          "      ;
	db "Mendigo   "      ;78
	db "Bom       "      ;79
	db "          "      ;80
	db "Cajita    "      ;81
	db "Bailarina "      ;82
	db "Gigante   "      ;83
	db "Tomberi   "      ;84
	db "Urna      "      ;85
	db "          "      ;
	db "          "      ;
	db "Buffalax  "      ;88
	db "Eucariota "      ;89
	db "Fantasma  "      ;90
	db "Troll     "      ;91
	db "Raya>Arena"      ;92
	db "Antoleon  "      ;93
	db "FlorMarina"      ;94
	db "Hipocampo "      ;95
	db "Europa    "      ;96
	db "Molbol    "      ;97
	db "Gusano    "      ;98
	db "Moco      "      ;99
	db "Capit'n   "      ;100
	db "Tropa     "      ;101
	db "Templario "      ;102
	db "Shinobi   "      ;103
	db "Tarokan   "      ;104
	db "Brujo     "      ;105
	db "Madame    "      ;106
	db "Joker     "      ;107
	db "Luchador  "      ;108
	db "Mefisto   "      ;109
	db "          "      ;
	db "Esclavo   "      ;111
	db "Osteosauro"      ;112
	db "Doberman  "      ;113
	db "Rocky     "      ;114
	db "Rata>Plaga"      ;115
	db "Oso>negro "      ;116
	db "Rhydon    "      ;117
	db "Rabiejo   "      ;118
	db "Gatete    "      ;119
	db "Lobo>rojo "      ;120
	db "Rottweiler"      ;121
	db "Colmillos "      ;122
	db "Perrete   "      ;123
	db "          "      ;
	db "Verrugoso "      ;125
	db "Manticora "      ;126
	db "Intangir>Z"      ;127
	db "Raptor    "      ;128
	db "Wyvern    "      ;129
	db "Zombueso  "      ;130
	db "          "      ;
	db "Bronto    "      ;132
	db "Dinosaurio"      ;
	db "Cocatriz  "      ;134
	db "Corredor  "      ;135
	db "Gavil'n   "      ;136
	db "Grifo     "      ;137
	db "Ermita@o  "      ;138
	db "Robot     "      ;139
	db "          "      ;
	db "Lib&lula  "      ;141
	db "Pelotero  "      ;142
	db "Langosta  "      ;143
	db "Mandr'gora"      ;144
	db "Hortensia "      ;145
	db "Esfera    "      ;146
	db "Hierbajo  "      ;147
	db "Primordita"      ;148
	db "Calisto   "      ;149
	db "Cefalido  "      ;150
	db "Garrador  "      ;151
	db "Ranita    "      ;152
	db "Komodo    "      ;153
	db "Kikiriki  "      ;154
	db "Gusanote  "      ;155
	db "Segador   "      ;156
	db "Ganimedes "      ;157
	db "Timmy     "      ;158
	db "Mega>Armad"      ;159
	db "Persecutor"      ;160
	db "Mecha     "      ;161
	db "Ectoplasma"      ;162
	db "          "      ;
	db "Efreet    "      ;164
	db "Dumpty    "      ;165
	db "Bizarro   "      ;166
	db "Moco>feo  "      ;167
	db "Mec'nico  "      ;168
	db "Vagabundo "      ;169
	db "Granada   "      ;170
	db "S~cubo    "      ;171
	db "Pan>Dora  "      ;172
	db "Bailangina"      ;173
	db "Coloso    "      ;174
	db "Merodeador"      ;175
	db "          "      ;
	db "Procariota"      ;177
	db "          "      ;
	db "Escorpi#n "      ;179
	db "Esponja   "      ;180
	db "Caballito "      ;181
	db "          "      ;
	db "Oscar     "      ;183
	db "Slurm     "      ;184
	db "Latimeria "      ;185
	db "Zombi     "      ;186
	db "Huesolord "      ;187
	db "Mu        "      ;188
	db "Asesino   "      ;189
	db "Fulana    "      ;190
	db "Paraguo   "      ;191
	db "Espectro  "      ;192
	db "Gorokan   "      ;193
	db "          "      ;
	db "Conejoscur"      ;195
	db "Mago      "      ;196
	db "Guerrero  "      ;197
	db "Rhyperior "      ;198
	db "Comando   "      ;199
	db "Opinicus  "      ;200
	db "Poppers   "      ;201
	db "Lunaris   "      ;202
	db "Foxhound  "      ;203
	db "C#ndor    "      ;204
	db "Kiwok     "      ;205
	db "Nastidon  "      ;206
	db "          "      ;
	db "Saltamonte"      ;208
	db "Alima@a   "      ;209
	db "Mantodea  "      ;210
	db "Chupacabra"      ;211
	db "Oso>pardo "      ;212
	db "Necrosauro"      ;213
	db "Adamantoid"      ;214
	db "Muerte    "      ;215
	db "Dactilo   "      ;216
	db "          "      ;
	db "Cosita    "      ;218
	db "Tofu      "      ;219
	db "O-Bake    "      ;220
	db "Vagabundo "      ;221
	db "          "      ;
	db "Reparador "      ;223
	db "Diablo    "      ;224
	db "          "      ;
	db "          "      ;
	db "Lanzafuego"      ;227
	db "Esfinge   "      ;228
	db "Furia     "      ;229
	db "Osprey    "      ;230
	db "Hot>Wheels"      ;231
	db "Bicho     "      ;232
	db "Anemona   "      ;233
	db "Arsenal   "      ;234
	db "Atleta    "      ;235
	db "Roc       "      ;236
	db "Androide  "      ;237
	db "Kudzu     "      ;238
	db "Yonki     "      ;239
	db "Mengana   "      ;240
	db "Nigromante"      ;241
	db "Tit'n     "      ;242
	db "Merodeador"      ;243
	db "          "      ;
	db "Oso>dorado"      ;245
	db "Buscador  "      ;246
	db "Bruja     "      ;247
	db "Lobohombre"      ;248
	db "Didalos   "      ;249
	db "Infernal  "      ;250
	db "Ahriman   "      ;251
	db "Autobot   "      ;252
	db "Iron>Man  "      ;253
	db "Io        "      ;254
	db "ReyTomberi"      ;255
	db "Ymir      "      ;256
	db "Testicofre"      ;257
	db "Robomecha "      ;258
	db "Vargas    "      ;259
	db "Tuneladora"      ;260
	db "Prometeo  "      ;261
	db "TrFantasma"      ;262
	db "Dadaluma  "      ;263
	db "Shiva     "      ;264
	db "Ifrit     "      ;265
	db "Numero>024"      ;266
	db "Numero>128"      ;267
	db "Inferno   "      ;268
	db "Grua      "      ;269
	db "          "      ;
	db "          "      ;
	db "Yeti      "      ;272
	db "Guardi'n  "      ;
	db "Guardi'n  "      ;274
	db "FAI       "      ;275
	db "Esper...? "      ;
	db "Esper...? "      ;
	db "Comefuegos"      ;278
	db "Atma      "      ;279
	db "Nimufu    "      ;280
	db "Intangir  "      ;281
	db "          "      ;
	db "TentaculoA"      ;283
	db "Dullahan  "      ;284
	db "Desgueis  "      ;285
	db "Lakhsmi   "      ;286
	db "Curly     "      ;287
	db "Larry     "      ;288
	db "Moe       "      ;289
	db "          "      ;
	db "Hidon     "      ;291
	db "Katanalma "      ;292
	db "Mago>Nv.4 "      ;293
	db $be,"Blinky   "   ;294
	db "Sefirot   "      ;295
	db "Sofia     "      ;296
	db "Zurvan    "      ;297
	db "Kefka     "      ;298
	db "Mago>Nv.3 "      ;299
	db "Ultros    "      ;300
	db "Ultros    "      ;301
	db "Ultros    "      ;302
	db "Tif#n     "      ;303
	db "Mago>Nv.2 "      ;304
	db "Ziegfried "      ;
	db "Mago>Nv.1 "      ;306
	db "Mago>Nv.5 "      ;307
	db $be,"Ymir     "   ;308
	db $be,"Testicofr"   ;309
	db "          "      ;
	db "Kaiser    "      ;311
	db "Maestro>T "      ;312
	db "Mago>Nv.8 "      ;313
	db "Mercader  "      ;
	db "Desnudo   "      ;
	db "TentaculoB"      ;316
	db "TentaculoC"      ;317
	db "TentaculoD"      ;318
	db $be,"Rapier   "   ;319
	db $be,"Saber    "   ;320
	db $be,"Striker  "   ;321
	db $be,"Rake     "   ;322
	db "Mago>Nv.9 "      ;323
	db "Esper...? "      ;324
	db $be,"Right Bay"   ;325
	db "          "      ;326
	db $be,"Left Bay "	 ;327
	db "Chadarnook"      ;328
	db "D-Plata   "      ;329
	db "Kefka     "      ;330
	db "D-Morado  "      ;331
	db "D-Marr#n  "      ;332
	db "Oso       "      ;333
	db "Templario "      ;
	db "          "      ;
	db "D-Dorado  "      ;336
	db "D-Verde   "      ;337
	db "D-Azul    "      ;338
	db "D-Rojo    "      ;339
	db "Pira@a    "      ;340
	db "Rizopas   "      ;341
	db "Alma      "      ;342
	db $be,"Short Arm"   ;343
	db $be,"Long Arm "   ;344
	db $be,"Face     "   ;345
	db $be,"Tiger    "   ;346
	db $be,"Tools    "   ;347
	db $be,"Magic    "   ;348
	db $be,"Hit      "   ;349
	db $be,"Girl     "   ;350
	db $be,"Sleep    "   ;351
	db $be,"Pinky    "   ;352
	db $be,"Inky     "   ;353
	db $be,"Clyde    "   ;354
	db "Mago>Nv.6 "      ;355
	db "Mago>Nv.7 "      ;356
	db "ProtoArmad"      ;357
	db "MagMaestro"      ;358
	db "Alma>Pena "      ;359
	db "Ultros    "      ;360
	db "Batwoman  "      ;361
	db "Humbaba   "      ;
	db "Humbaba   "      ;
	db "Humbaba   "      ;364
	db "          "      ;
	db "(Event)   "      ;
	db "(Event)   "      ;
	db $be,"Cyan     "   ;
	db "Tragusano "      ;369
	db $be,"Gau      "   ;
	db "(Event)   "      ;
	db "          "      ;
	db "Tropa     "      ;
	db "Centuri#n "      ;374
	db "Kefka     "      ;375
	db "          "      ;
	db "Recluta   "      ;
	db "(Event)   "      ;
	db "(Event)   "      ;
	db "          "      ;
	db "Artema    "      ;381
	db "          "      ;
	db "          "      ;

warnpc $CFD0CF

;------------------------------------------------------------------
;Monster's specials
;------------------------------------------------------------------

org $CFD0D0

	db "Cr;tico   "		  ;0
	db "Golpe     "       ;1
	db "Corte     "       ;2
	db "Tenue     "       ;3
	db "Destripar "       ;4
	db "Corrupci#n"       ;5
	db "Rueda     "       ;6
	db "Destripar "       ;7
	db "Fatiga    "       ;8
	db "A>callar  "       ;9
	db "Aguas     "       ;10
	db "Pu@etazo  "       ;11
	db "Furia     "       ;12
	db "Karma     "       ;13
	db "Epilepsia "       ;14
	db "Deja>Vu   "       ;15
	db "          "       ;
	db "Estocada  "       ;17
	db "Mordisco  "       ;18
	db "Mordisco  "       ;19
	db "          "       ;
	db "Golpe     "       ;21
	db "Asfixia   "       ;22
	db "Mordisco  "       ;23
	db "Ara@azo   "       ;24
	db "Colmillo  "       ;25
	db "Grito     "       ;26
	db "Pisot#n   "       ;27
	db "Mordisco  "       ;28
	db "Garra     "       ;29
	db "Bostezo   "       ;30
	db "Provocar  "       ;31
	db "Golpe     "       ;32
	db "U@a       "       ;33
	db "Pum       "       ;34
	db "Hueso     "       ;35
	db "Garra>D   "       ;36
	db "          "       ;37
	db "          "       ;
	db "Golpe     "       ;39
	db "Nunca>m's "       ;40
	db "Polvitos  "       ;41
	db "Ceguera   "       ;42
	db "          "       ;
	db "Tenaza    "       ;44
	db "Control   "       ;45
	db "Aguja     "       ;46
	db "Ruido     "       ;47
	db "Zap       "       ;48
	db "          "       ;
	db "Desgracia "       ;50
	db "Esporas   "       ;51
	db "Absorci#n "       ;52
	db "Zombificar"       ;53
	db "Pincho    "       ;54
	db "Mishamune "       ;55
	db "Tinta     "       ;56
	db "Tenaza    "       ;57
	db "Garrote   "       ;58
	db "Lengua    "       ;59
	db "Piel>Roca "       ;60
	db "Lengua    "       ;61
	db "Aplastar  "       ;62
	db "Pica      "       ;63
	db "Estornudo "       ;
	db "Activar   "       ;65
	db "Pu@o>Metal"       ;66
	db "Eyecci#n  "       ;67
	db "R'faga    "       ;68
	db "Rub;      "       ;69
	db "Niebla    "       ;70
	db "Moco      "       ;71
	db "Maldici#n "       ;72
	db "Abrazo    "       ;73
	db "Paro      "       ;74
	db "Tocamiento"       ;75
	db "8=====D   "       ;76
	db "          "       ;
	db "Garfio    "       ;78
	db "Bum       "       ;79
	db "          "       ;80
	db "Confundir "       ;81
	db "Whiskey   "       ;82
	db "Shock     "       ;83
	db "Cuchillada"       ;84
	db "Bofetada  "       ;85
	db "          "       ;
	db "          "       ;
	db "Disturbio "       ;88
	db "Violaci#n "       ;89
	db "Subcon    "       ;90
	db "LOL       "       ;91
	db "Pincho    "       ;92
	db "Paral;s   "       ;93
	db "Espina    "       ;94
	db "Paliza    "       ;95
	db "Apolo     "       ;96
	db "Baba      "       ;97
	db "Tragar    "       ;98
	db "Sue@o     "       ;99
	db "Golpe     "       ;100
	db "Bayoneta  "       ;101
	db "Corte     "       ;102
	db "Invis     "       ;103
	db "Profanar  "       ;104
	db "Callar    "       ;105
	db "Loveless  "       ;106
	db "Parasol   "       ;107
	db "Patada    "       ;108
	db "Rojo      "       ;109
	db "          "       ;
	db "Corte     "       ;111
	db "Fortaleza "       ;112
	db "Asalto    "       ;113
	db "Plof      "       ;114
	db "Plaga     "       ;115
	db "Blacked   "       ;116
	db "Embestida "       ;117
	db "Mordedura "       ;118
	db "Ara@azo   "       ;119
	db "Colmillo  "       ;120
	db "Asalto    "       ;121
	db "Colmillo  "       ;122
	db "Mordisco  "       ;123
	db "          "       ;
	db "Sue@o     "       ;125
	db "Furia     "       ;126
	db "Plom      "       ;127
	db "Romper    "       ;128
	db "Golpe     "       ;129
	db "Hueso     "       ;130
	db "          "       ;
	db "Golpe     "       ;132
	db "Kiki      "       ;
	db "Mirada    "       ;134
	db "Sales     "       ;135
	db "Ceguera   "       ;136
	db "Tal#n     "       ;137
	db "Tenaza    "       ;138
	db "Alt       "       ;139
	db "          "       ;
	db "Zumbido   "       ;141
	db "R'faga    "       ;142
	db "Kappa     "       ;143
	db "T#xico    "       ;144
	db "Esporas   "       ;145
	db "Rodar     "       ;146
	db "Muertovivo"       ;147
	db "Tenaza    "       ;148
	db "Cr'ter    "       ;149
	db "Acosar    "       ;150
	db "Pinza     "       ;151
	db "Slurp     "       ;152
	db "Parapiel  "       ;153
	db "Comer     "       ;154
	db "Aplastar  "       ;155
	db "Lanza     "       ;156
	db "Golpe>luna"       ;157
	db "Sed>Sangre"       ;158
	db "Ca@#n     "       ;159
	db "Hiperrayo "       ;160
	db "Carbonizar"       ;161
	db "Agarre    "       ;162
	db "          "       ;
	db "Maldici#n "       ;164
	db "Olor      "       ;165
	db "Toqueteo  "       ;166
	db "A>dormir  "       ;167
	db "Llave     "       ;168
	db "Cuchillo  "       ;169
	db "Kabum     "       ;170
	db "Ciencia   "       ;171
	db "Puzle     "       ;172
	db "Tango     "       ;173
	db "Spluirc   "       ;174
	db "Poluci#n  "       ;175
	db "          "       ;
	db "Mutaci#n  "       ;177
	db "          "       ;
	db "Veneno    "       ;179
	db "Antena    "       ;180
	db "Derrota   "       ;181
	db "          "       ;
	db "Otra>vida "       ;183
	db "Digerir   "       ;184
	db "Apret#n   "       ;185
	db "Infectar  "       ;186
	db "Huesopalo "       ;187
	db "Agarre    "       ;188
	db "Invis     "       ;189
	db "Besito    "       ;190
	db "Aguas     "       ;191
	db "Nocturno  "       ;192
	db "Desecrar  "       ;193
	db "          "       ;
	db "Ae>Am     "       ;195
	db "Saciar    "       ;196
	db "Cabezazo  "       ;197
	db "Golpet#n  "       ;198
	db "Penetrar  "       ;199
	db "Cuerno    "       ;200
	db "Pop       "       ;201
	db "Colmillo  "       ;202
	db "Mordisco  "       ;203
	db "Picotazo  "       ;204
	db "Caramelito"       ;205
	db "Agarre    "       ;206
	db "          "       ;
	db "Plaga     "       ;208
	db "Rabia     "       ;209
	db "Sacaojos  "       ;210
	db "Buu       "       ;211
	db "Destrozo  "       ;212
	db "Asquear   "       ;213
	db "Lacerar   "       ;214
	db "Empalar   "       ;215
	db "Zas       "       ;216
	db "          "       ;
	db "Toque     "       ;218
	db "Moco      "       ;219
	db "Vud~      "       ;220
	db "Tajo      "       ;221
	db "          "       ;
	db "Llave     "       ;223
	db "Asalto    "       ;224
	db "          "       ;
	db "          "       ;
	db "Pistola   "       ;227
	db "Acertijo  "       ;228
	db "Kappadilla"       ;229
	db "Ceguera   "       ;230
	db "Cansado   "       ;231
	db "Aguij#n   "       ;232
	db "Concha    "       ;233
	db "Cohete    "       ;234
	db "Toqueteo  "       ;235
	db "Garra>gris"       ;236
	db "Supr      "       ;237
	db "Virus     "       ;238
	db "Pipa      "       ;239
	db "Foxtrot   "       ;240
	db "Adi#s     "       ;241
	db "Dominar   "       ;242
	db "Cansado   "       ;243
	db "          "       ;
	db "Destrozo  "       ;245
	db "Silencio  "       ;246
	db "Varita    "       ;247
	db "Destrozo  "       ;248
	db "Confusi#n "       ;249
	db "Sondeo    "       ;250
	db "Cr;tico   "       ;251
	db "Impacto   "       ;252
	db "Esteroide "       ;253
	db "Rayo>lunar"       ;254
	db "Cuchillada"       ;255
	db "          "       ;256
	db "          "       ;257
	db "Desarme   "       ;258
	db "Pu@oMuerte"       ;259
	db "Taladro   "       ;260
	db "Taladro   "       ;261
	db "Atropello "       ;262
	db "Codazo    "       ;263
	db "Fr;o      "       ;264
	db "Fiebre    "       ;265
	db "Sobrecarga"       ;266
	db "Program666"       ;267
	db "Subversi#n"       ;268
	db "Bola      "       ;269
	db "          "       ;
	db "          "       ;
	db "Placaje   "       ;272
	db "FAKK2     "       ;
	db "FAKK2     "       ;274
	db "          "       ;275
	db "          "       ;
	db "          "       ;
	db "Humo      "       ;278
	db "Poder>100%"       ;279
	db "          "       ;280
	db "Golpe     "       ;281
	db "          "       ;
	db "Enredar   "       ;283
	db "Mayal     "       ;284
	db "Mirada    "       ;285
	db "BesoMuerte"       ;286
	db "Cabezazo  "       ;287
	db "Nariz     "       ;288
	db "Ojo       "       ;289
	db "          "       ;
	db "Atadura   "       ;291
	db "Asesino   "       ;292
	db "          "       ;293
	db "Megagarra "       ;294
	db "EinSofOhr "       ;295
	db "Cintamani "       ;296
	db "Tyrfing   "       ;297
	db "Ala>Caos  "       ;298
	db "          "       ;299
	db "Tinta     "       ;300
	db "Tinta     "       ;301
	db "Tinta     "       ;302
	db "Resoplido "       ;303
	db "          "       ;304
	db "          "       ;
	db "          "       ;306
	db "          "       ;307
	db "          "       ;308
	db "Petra     "       ;309
	db "          "       ;
	db "Rompehueso"       ;311
	db "Navajazo  "       ;312
	db "Hit       "       ;313
	db "          "       ;
	db "          "       ;
	db "Enredar   "       ;316
	db "Enredar   "       ;317
	db "Enredar   "       ;318
	db "Estocada  "       ;319
	db "Sable     "       ;320
	db "Golpe     "       ;321
	db "Cuchillada"       ;322
	db "          "       ;323
	db "Sultalo   "       ;324
	db "          "       ;325
	db "          "       ;326
	db "          "       ;327
	db "Besazo    "       ;328
	db "Garra>D   "       ;329
	db "Cuchillos "       ;330
	db "Garra>D   "       ;331
	db "Garra>D   "       ;332
	db "Garra     "       ;333
	db "          "       ;
	db "          "       ;
	db "Garra>D   "       ;336
	db "Garra>D   "       ;337
	db "Garra>D   "       ;338
	db "Garra>D   "       ;339
	db "          "       ;340
	db "Mordisco  "       ;341
	db "Son'mbulo "       ;342
	db "Brazocorto"       ;343
	db "Brazolargo"       ;344
	db "Cara      "       ;345
	db "Tigre     "       ;346
	db "Herramient"       ;347
	db "Magia     "       ;348
	db "Golpe     "       ;349
	db "Amor      "       ;350
	db "Paz       "       ;351
	db "Garra>roca"       ;352
	db "GarraKappa"       ;353
	db "Garra>loca"       ;354
	db "          "       ;355
	db "          "       ;356
	db "Programa35"       ;357
	db "Exceso    "       ;358
	db "Condenita "       ;359
	db "Tinta     "       ;360
	db "Bola      "       ;361
	db "Bloqueo   "       ;
	db "Bloqueo   "       ;
	db "Bloqueo   "       ;364
	db "          "       ;
	db "          "       ;
	db "          "       ;
	db "          "       ;
	db "Pulverizar"       ;369
	db "          "       ;
	db "          "       ;
	db "          "       ;
	db "Bayoneta  "       ;
	db "Corte     "       ;374
	db "Cuchillos "       ;375
	db "          "       ;
	db "          "       ;
	db "          "       ;
	db "          "       ;
	db "          "       ;
	db "Poder>100%"       ;381
	db "          "       ;
	db "          "       ;
	
warnpc $CFDFDF