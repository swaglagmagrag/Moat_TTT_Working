AddCSLuaFile()

MOAT_PAINT = MOAT_PAINT or {}

MOAT_PAINT.Colors = MOAT_PAINT.Colors or {
  {"Mint Green", {3, 255, 171}, 6},
  {"Joker Green", {2, 153, 57}, 3},
  {"Pindel Pink", {247, 136, 206}, 5},
  {"Bleek Banana", {236, 255, 140}, 3},
  {"Water Melon", {187, 235, 42}, 4},
  {"Magnetic Blue", {73, 76, 153}, 3},
  {"Aqua Blue", {66, 208, 255}, 4},
  {"Toxic Yellow", {221, 225, 3}, 6},
  {"Bright Purple", {96, 62, 148}, 4},
  {"Neon Pink", {255, 105, 180}, 5},
  {"Bright Gold", {227, 190, 70}, 7},
  {"Turkey Stuffer Green", {22, 161, 18}, 5},
  {"Neon Green", {5, 193, 25}, 4},
  {"Neon Purple", {27, 29, 163}, 6},
  {"Dark Gold Chrome", {251, 184, 41}, 7},
  {"Hot Pink", {255, 105, 180}, 7},
  {"Detox Purple", {157, 153, 188}, 3},
  {"Glossy Green", {0, 70, 0}, 3},
  {"Sky Blue", {127, 200, 255}, 5},
  {"Neon Sky Blue", {123, 255, 255}, 6},
  {"Pure Black", {0, 0, 0}, 6},
  {"Sharpe Yellow", {255, 255, 1}, 6},
  {"Bright Orange", {251, 86, 4}, 6},
  {"Cotton Candy Pink", {249, 82, 107}, 6},
  {"Deep Red", {229, 14, 6}, 3},
  {"Flueorescent Blue", {5, 193, 255}, 4},
  {"Freeze Green", {140, 255, 50}, 4},
  {"Red Bull Blue", {51, 51, 153}, 3},
  {"Monster Energy Neon Green", {51, 255, 153}, 3},
  {"Dr. Pepper Red", {153, 34, 34}, 3},
  {"Razer Green", {71, 225, 12}, 4},
  {"Electric Lime", {206, 250, 5}, 3},
  {"Blazing Blue", {44, 117, 255}, 3},
  {"Sunshine Orange", {255, 65, 5}, 4},
  {"Electric Indigo", {111, 0, 255}, 5},
  {"American Rose", {255, 3, 62}, 6},
  {"Lazer Blue", {0, 15, 255}, 4},
  {"Neon Aqua Blue", {123, 255,255}, 5},
  {"Bleak Banana", {236, 255, 140}, 3},
  {"Chameleon Green", {0, 43, 21}, 3},
  {"Perpiling Purple", {140, 138, 255}, 4},
  {"Serpentine Green", {64, 124, 132}, 3},
  {"Menacing Red", {52, 0, 17}, 4},
  {"Creamsicle Orange", {242, 80, 32}, 5},
  {"Glycerine Green", {3, 51, 9}, 3},
  {"Corrosive Green", {132, 255, 10}, 5},
  {"Electric Lime", {80, 100, 0}, 3},
  {"Deep Pink", {100, 0, 40}, 5},
  {"Pure Orange", {100, 60, 0}, 3},
  {"Very Soft Pink", {97, 69, 72}, 3},
  {"New Lime", {3, 39, 15}, 3},
  {"Brown Town", {39, 15, 3}, 4},
  {"Nardo Grey", {104, 106, 118}, 5},
  {"Light Teal", {103, 186, 181}, 4},
  {"Neon Mint", {0, 204, 120}, 5},
  {"Neon Lime", {0, 150, 45}, 4},
  {"Pure White", {255, 255, 255}, 6},
  {"George's Surprise", {115, 34, 136}, 7},
}
/*
MOAT_PAINT.Textures = {
  {"Flesh", "models/flesh", 7}
}
*/
MOAT_PAINT.Tints = MOAT_PAINT.Tints or {
	[6001] = {'Mint Green Tint', {3, 255, 171}, 6},
	[6002] = {'Joker Green Tint', {2, 153, 57}, 3},
	[6003] = {'Pindel Pink Tint', {247, 136, 206}, 5},
	[6004] = {'Bleek Banana Tint', {236, 255, 140}, 3},
	[6005] = {'Water Melon Tint', {187, 235, 42}, 4},
	[6006] = {'Magnetic Blue Tint', {73, 76, 153}, 3},
	[6007] = {'Aqua Blue Tint', {66, 208, 255}, 4},
	[6008] = {'Toxic Yellow Tint', {221, 225, 3}, 6},
	[6009] = {'Bright Purple Tint', {96, 62, 148}, 4},
	[6010] = {'Neon Pink Tint', {255, 105, 180}, 5},
	[6011] = {'Bright Gold Tint', {227, 190, 70}, 7},
	[6012] = {'Turkey Stuffer Green Tint', {22, 161, 18}, 5},
	[6013] = {'Neon Green Tint', {5, 193, 25}, 4},
	[6014] = {'Neon Purple Tint', {27, 29, 163}, 6},
	[6015] = {'Dark Gold Chrome Tint', {251, 184, 41}, 7},
	[6016] = {'Hot Pink Tint', {255, 105, 180}, 7},
	[6017] = {'Detox Purple Tint', {157, 153, 188}, 3},
	[6018] = {'Glossy Green Tint', {0, 70, 0}, 3},
	[6019] = {'Sky Blue Tint', {127, 200, 255}, 5},
	[6020] = {'Neon Sky Blue Tint', {123, 255, 255}, 6},
	[6021] = {'Pure Black Tint', {0, 0, 0}, 6},
	[6022] = {'Sharpe Yellow Tint', {255, 255, 1}, 6},
	[6023] = {'Bright Orange Tint', {251, 86, 4}, 6},
	[6024] = {'Cotton Candy Pink Tint', {249, 82, 107}, 6},
	[6025] = {'Deep Red Tint', {229, 14, 6}, 3},
	[6026] = {'Flueorescent Blue Tint', {5, 193, 255}, 4},
	[6027] = {'Freeze Green Tint', {140, 255, 50}, 4},
	[6028] = {'Red Bull Blue Tint', {51, 51, 153}, 3},
	[6029] = {'Monster Energy Neon Green Tint', {51, 255, 153}, 3},
	[6030] = {'Dr. Pepper Red Tint', {153, 34, 34}, 3},
	[6031] = {'Razer Green Tint', {71, 225, 12}, 4},
	[6032] = {'Electric Lime Tint', {206, 250, 5}, 3},
	[6033] = {'Blazing Blue Tint', {44, 117, 255}, 3},
	[6034] = {'Sunshine Orange Tint', {255, 65, 5}, 4},
	[6035] = {'Electric Indigo Tint', {111, 0, 255}, 5},
	[6036] = {'American Rose Tint', {255, 3, 62}, 6},
	[6037] = {'Lazer Blue Tint', {0, 15, 255}, 4},
	[6038] = {'Neon Aqua Blue Tint', {123, 255, 255}, 5},
	[6039] = {'Bleak Banana Tint', {236, 255, 140}, 3},
	[6040] = {'Chameleon Green Tint', {0, 43, 21}, 3},
	[6041] = {'Perpiling Purple Tint', {140, 138, 255}, 4},
	[6042] = {'Serpentine Green Tint', {64, 124, 132}, 3},
	[6043] = {'Menacing Red Tint', {52, 0, 17}, 4},
	[6044] = {'Creamsicle Orange Tint', {242, 80, 32}, 5},
	[6045] = {'Glycerine Green Tint', {3, 51, 9}, 3},
	[6046] = {'Corrosive Green Tint', {132, 255, 10}, 5},
	[6047] = {'Electric Lime Tint', {80, 100, 0}, 3},
	[6048] = {'Deep Pink Tint', {100, 0, 40}, 5},
	[6049] = {'Pure Orange Tint', {100, 60, 0}, 3},
	[6050] = {'Very Soft Pink Tint', {97, 69, 72}, 3},
	[6051] = {'New Lime Tint', {3, 39, 15}, 3},
	[6052] = {'Brown Town Tint', {39, 15, 3}, 4},
	[6053] = {'Nardo Grey Tint', {104, 106, 118}, 5},
	[6054] = {'Light Teal Tint', {103, 186, 181}, 4},
	[6055] = {'Neon Mint Tint', {0, 204, 120}, 5},
	[6056] = {'Neon Lime Tint', {0, 150, 45}, 4},
	[6057] = {'Pure White Tint', {255, 255, 255}, 6},
	[6058] = {'George\'s Surprise Tint', {115, 34, 136}, 7},
	[6566] = {'Infinity Tint', {255, 255, 255}, 9, '57731eec78594998cdfecf618fdb3cad.png', Dream = true}
}

MOAT_PAINT.Paints = MOAT_PAINT.Paints or {
	[6059] = {'Mint Green Paint', {3, 255, 171}, 6},
	[6060] = {'Joker Green Paint', {2, 153, 57}, 3},
	[6061] = {'Pindel Pink Paint', {247, 136, 206}, 5},
	[6062] = {'Bleek Banana Paint', {236, 255, 140}, 3},
	[6063] = {'Water Melon Paint', {187, 235, 42}, 4},
	[6064] = {'Magnetic Blue Paint', {73, 76, 153}, 3},
	[6065] = {'Aqua Blue Paint', {66, 208, 255}, 4},
	[6066] = {'Toxic Yellow Paint', {221, 225, 3}, 6},
	[6067] = {'Bright Purple Paint', {96, 62, 148}, 4},
	[6068] = {'Neon Pink Paint', {255, 105, 180}, 5},
	[6069] = {'Bright Gold Paint', {227, 190, 70}, 7},
	[6070] = {'Turkey Stuffer Green Paint', {22, 161, 18}, 5},
	[6071] = {'Neon Green Paint', {5, 193, 25}, 4},
	[6072] = {'Neon Purple Paint', {27, 29, 163}, 6},
	[6073] = {'Dark Gold Chrome Paint', {251, 184, 41}, 7},
	[6074] = {'Hot Pink Paint', {255, 105, 180}, 7},
	[6075] = {'Detox Purple Paint', {157, 153, 188}, 3},
	[6076] = {'Glossy Green Paint', {0, 70, 0}, 3},
	[6077] = {'Sky Blue Paint', {127, 200, 255}, 5},
	[6078] = {'Neon Sky Blue Paint', {123, 255, 255}, 6},
	[6079] = {'Pure Black Paint', {0, 0, 0}, 6},
	[6080] = {'Sharpe Yellow Paint', {255, 255, 1}, 6},
	[6081] = {'Bright Orange Paint', {251, 86, 4}, 6},
	[6082] = {'Cotton Candy Pink Paint', {249, 82, 107}, 6},
	[6083] = {'Deep Red Paint', {229, 14, 6}, 3},
	[6084] = {'Flueorescent Blue Paint', {5, 193, 255}, 4},
	[6085] = {'Freeze Green Paint', {140, 255, 50}, 4},
	[6086] = {'Red Bull Blue Paint', {51, 51, 153}, 3},
	[6087] = {'Monster Energy Neon Green Paint', {51, 255, 153}, 3},
	[6088] = {'Dr. Pepper Red Paint', {153, 34, 34}, 3},
	[6089] = {'Razer Green Paint', {71, 225, 12}, 4},
	[6090] = {'Electric Lime Paint', {206, 250, 5}, 3},
	[6091] = {'Blazing Blue Paint', {44, 117, 255}, 3},
	[6092] = {'Sunshine Orange Paint', {255, 65, 5}, 4},
	[6093] = {'Electric Indigo Paint', {111, 0, 255}, 5},
	[6094] = {'American Rose Paint', {255, 3, 62}, 6},
	[6095] = {'Lazer Blue Paint', {0, 15, 255}, 4},
	[6096] = {'Neon Aqua Blue Paint', {123, 255, 255}, 5},
	[6097] = {'Bleak Banana Paint', {236, 255, 140}, 3},
	[6098] = {'Chameleon Green Paint', {0, 43, 21}, 3},
	[6099] = {'Perpiling Purple Paint', {140, 138, 255}, 4},
	[6100] = {'Serpentine Green Paint', {64, 124, 132}, 3},
	[6101] = {'Menacing Red Paint', {52, 0, 17}, 4},
	[6102] = {'Creamsicle Orange Paint', {242, 80, 32}, 5},
	[6103] = {'Glycerine Green Paint', {3, 51, 9}, 3},
	[6104] = {'Corrosive Green Paint', {132, 255, 10}, 5},
	[6105] = {'Electric Lime Paint', {80, 100, 0}, 3},
	[6106] = {'Deep Pink Paint', {100, 0, 40}, 5},
	[6107] = {'Pure Orange Paint', {100, 60, 0}, 3},
	[6108] = {'Very Soft Pink Paint', {97, 69, 72}, 3},
	[6109] = {'New Lime Paint', {3, 39, 15}, 3},
	[6110] = {'Brown Town Paint', {39, 15, 3}, 4},
	[6111] = {'Nardo Grey Paint', {104, 106, 118}, 5},
	[6112] = {'Light Teal Paint', {103, 186, 181}, 4},
	[6113] = {'Neon Mint Paint', {0, 204, 120}, 5},
	[6114] = {'Neon Lime Paint', {0, 150, 45}, 4},
	[6115] = {'Pure White Paint', {255, 255, 255}, 6},
	[6116] = {'George\'s Surprise Paint', {115, 34, 136}, 7},
	[6565] = {'Infinity Paint', {255, 255, 255}, 9, '57731eec78594998cdfecf618fdb3cad.png', Dream = true}
}

local holidays = 'Holiday Collection'
MOAT_PAINT.Skins = {
	[6117] = {'Flesh Skin', 'http://tttservershit.store/skins/vtf/flesh.vtf', 7, 'http://tttservershit.store/skins/img/flesh.png', 15},
	[6119] = {'Test Skin', 'https://i.imgur.com/dvRkf9t.png'/*'/uwu/b4573.vtf'*/, 8, nil, 'Testing Collection', 15},
	[6120] = {'Merry Poops Skin', 'http://tttservershit.store/skins/vtf/merrypoops.vtf', 3, 'http://tttservershit.store/skins/img/merrypoops.png', holidays, 12},
	[6123] = {'Blizzard Skin', 'http://tttservershit.store/skins/vtf/blizzard.vtf', 4, 'http://tttservershit.store/skins/img/blizzard.png', holidays, 30},
	[6127] = {'Pokemon Skin', 'http://tttservershit.store/skins/vtf/pokemon.vtf', 4, 'http://tttservershit.store/skins/img/pokemon.png', holidays, 11},
	[6128] = {'Playful Skin', 'http://tttservershit.store/skins/vtf/playful.vtf', 4, 'http://tttservershit.store/skins/img/playful.png', holidays, 24},
	[6129] = {'Xmas Skin', 'http://tttservershit.store/skins/vtf/xmas.vtf', 5, 'http://tttservershit.store/skins/img/xmas.png', holidays, 81},
	[6131] = {'Stickers Skin', 'http://tttservershit.store/skins/vtf/stickers.vtf', 5, 'http://tttservershit.store/skins/img/stickers.png', holidays, 28},
	[6132] = {'Warrior Skin', 'http://tttservershit.store/skins/vtf/warrior.vtf', 5, 'http://tttservershit.store/skins/img/warrior.png', holidays, 42},
	[6133] = {'Scales Skin','http://tttservershit.store/skins/vtf/scales.vtf', 5, 'http://tttservershit.store/skins/img/scales.png', holidays, 50},
	[6151] = {'Polkadot Skin', 'http://tttservershit.store/skins/vtf/polkadot.vtf', 5, 'http://tttservershit.store/skins/img/polkadot.png', holidays, 60},
	[6140] = {'Flourish Skin', 'http://tttservershit.store/skins/vtf/flourish.vtf', 6, 'http://tttservershit.store/skins/img/flourish.png', holidays, 115},
	[6136] = {'Riptide Skin', 'http://tttservershit.store/skins/vtf/riptide.vtf', 5, 'http://tttservershit.store/skins/img/riptide.png', holidays, 32},
	[6135] = {'Lightning Skin', 'http://tttservershit.store/skins/vtf/lightning.vtf', 6, 'http://tttservershit.store/skins/img/lightning.png', holidays, 22},
	[6137] = {'Magma Skin', 'http://tttservershit.store/skins/vtf/magma.vtf', 6, 'http://tttservershit.store/skins/img/magma.png', holidays, 135},
	[6138] = {'Polygon Skin', 'http://tttservershit.store/skins/vtf/polygon.vtf', 6, 'http://tttservershit.store/skins/vtf/polygon.png', holidays, 135},
	[6139] = {'Comic Skin', 'http://tttservershit.store/skins/vtf/cosmic.vtf', 5, 'http://tttservershit.store/skins/vtf/cosmic.png', holidays, 33},
	[6141] = {'Zebra Skin', 'http://tttservershit.store/skins/vtf/zebra.vtf', 6, 'http://tttservershit.store/skins/vtf/zebra.png', holidays, 42},
	[6130] = {'Hype Skin', 'http://tttservershit.store/skins/vtf/hype.vtf', 6, 'http://tttservershit.store/skins/vtf/hype.png', holidays, 5},
	[6142] = {'Sherbert Skin', 'http://tttservershit.store/skins/vtf/sherbert.vtf', 7, 'http://tttservershit.store/skins/vtf/sherbert.png', holidays, 130},
	[6143] = {'Trippin Skin', 'http://tttservershit.store/skins/vtf/trippin.vtf', 7, 'http://tttservershit.store/skins/vtf/trippin.png', holidays, 40},
	[6134] = {'Holo Skin', 'http://tttservershit.store/skins/vtf/holo.vtf', 7, 'http://tttservershit.store/skins/vtf/holo.png', holidays, 50},
	[6144] = {'Gold Skin', 'http://tttservershit.store/skins/vtf/gold.vtf', 7, 'http://tttservershit.store/skins/vtf/gold.png', holidays, 40},
	[6149] = {'Skrilla Skin', 'http://tttservershit.store/skins/vtf/skrilla.vtf', 7, 'http://tttservershit.store/skins/vtf/skrilla.png', holidays, 58},
	[6145] = {'Hotline Skin', 'http://tttservershit.store/skins/vtf/hotline.vtf', 9, 'http://tttservershit.store/skins/vtf/hotline.png', holidays, 35},
	[6146] = {'Galaxy Skin', 'http://tttservershit.store/skins/vtf/galaxy.vtf', 9, 'http://tttservershit.store/skins/vtf/galaxy.png', holidays, 255},
	[6154] = {'Elevate Skin', 'http://tttservershit.store/skins/vtf/elevate.vtf', 7, 'http://tttservershit.store/skins/vtf/elevate.png', holidays, 90},
	[6200] = {'Blurred Neon Skin', 'http://tttservershit.store/skins/vtf/blurred_neon.vtf', 5, 'http://tttservershit.store/skins/vtf/blurred_neon.png', 'Easter Collection', 135},
	[6201] = {'Bubbles Skin','http://tttservershit.store/skins/vtf/bubbles.vtf', 5, 'http://tttservershit.store/skins/vtf/bubbles.png', 'Easter Collection', 72},
	[6202] = {'Butterflies Skin', 'http://tttservershit.store/skins/vtf/butterflies.vtf', 4, 'http://tttservershit.store/skins/vtf/butterflies.png', 'Easter Collection', 90},
	[6203] = {'Camo Skin', 'http://tttservershit.store/skins/vtf/camo.vtf', 3, 'http://tttservershit.store/skins/vtf/camo.png', 'Easter Collection', 70},
	[6204] = {'Caution Skin', 'http://tttservershit.store/skins/vtf/caution.vtf', 5, 'http://tttservershit.store/skins/vtf/caution.png', 'Easter Collection', 120},
	[6205] = {'Cheetah Skin', 'http://tttservershit.store/skins/vtf/cheeta.vtf', 4, 'http://tttservershit.store/skins/vtf/cheeta.png', 'Easter Collection', 57},
	[6206] = {'Dew Skin', 'http://tttservershit.store/skins/vtf/dew.vtf', 4, 'http://tttservershit.store/skins/vtf/dew.png', 'Easter Collection', 28},
	[6207] = {'Electric Current Skin', 'http://tttservershit.store/skins/vtf/electric_current.vtf', 5, 'http://tttservershit.store/skins/vtf/electric_current.png', 'Easter Collection', 62},
	[6208] = {'Encrypted Skin','http://tttservershit.store/skins/vtf/encrypted.vtf', 6, 'http://tttservershit.store/skins/vtf/encrypted.png', 'Easter Collection', 42},
	[6209] = {'Energy Flower Skin', 'http://tttservershit.store/skins/vtf/energy_flower.vtf', 5, 'http://tttservershit.store/skins/vtf/energy_flower.png', 'Easter Collection', 100},
	[6210] = {'Energy Skin', 'http://tttservershit.store/skins/vtf/energy.vtf', 4, 'http://tttservershit.store/skins/vtf/energy.png', 'Easter Collection', 200},
	[6211] = {'Fantasy Skin','http://tttservershit.store/skins/vtf/fantasy.vtf', 7, 'http://tttservershit.store/skins/vtf/fantasy.png', 'Easter Collection', 90},
	[6212] = {'Glitch Skin','http://tttservershit.store/skins/vtf/glitch.vtf', 7, 'http://tttservershit.store/skins/vtf/glitch.png', 'Easter Collection', 100},
	[6213] = {'Hairy Dragon Skin', 'http://tttservershit.store/skins/vtf/hairy_dragon.vtf', 6, 'http://tttservershit.store/skins/vtf/hairy_dragon.png', 'Easter Collection', 75},
	[6214] = {'Halo Skin', 'http://tttservershit.store/skins/vtf/halo.vtf', 4, 'http://tttservershit.store/skins/vtf/halo.png', 'Easter Collection', 135},
	[6215] = {'Heatwave Skin','http://tttservershit.store/skins/vtf/heatwave.vtf', 5, 'http://tttservershit.store/skins/vtf/heatwave.png', 'Easter Collection', 69},
	[6216] = {'Hyperdrive Skin', 'http://tttservershit.store/skins/vtf/hyperdrive.vtf', 6, 'http://tttservershit.store/skins/vtf/hyperdrive.png', 'Easter Collection', 100},
	[6217] = {'Hypno Skin', 'http://tttservershit.store/skins/vtf/hypno.vtf', 5, 'http://tttservershit.store/skins/vtf/hypno.png', 'Easter Collection', 100},
	[6218] = {'Illusion Skin', 'http://tttservershit.store/skins/vtf/illusion.vtf', 5, 'http://tttservershit.store/skins/vtf/illusion.png', 'Easter Collection', 140},
	[6219] = {'Kaleidoscope Skin', 'http://tttservershit.store/skins/vtf/kaleidoscope.vtf', 5, 'http://tttservershit.store/skins/vtf/kaleidoscope.png', 'Easter Collection', 120},
	[6220] = {'Kali Skin', 'http://tttservershit.store/skins/vtf/kali.vtf', 5, 'http://tttservershit.store/skins/vtf/kali.png', 'Easter Collection', 17},
	[6221] = {'Lava Lamp Skin', 'http://tttservershit.store/skins/vtf/lava_lamp.vtf', 4, 'http://tttservershit.store/skins/vtf/lava_lamp.png', 'Easter Collection', 120},
	[6222] = {'Light Show Skin','http://tttservershit.store/skins/vtf/light_show.vtf', 6, 'http://tttservershit.store/skins/vtf/light_show.png', 'Easter Collection', 120},
	[6223] = {'Loofa Skin', 'http://tttservershit.store/skins/vtf/loofa.vtf', 5, 'http://tttservershit.store/skins/vtf/loofa.png', 'Easter Collection', 75},
	[6224] = {'Lunar Skin','http://tttservershit.store/skins/vtf/lunar.vtf', 6, 'http://tttservershit.store/skins/vtf/lunar.png', 'Easter Collection', 40},
	[6225] = {'Magikarp Skin', 'http://tttservershit.store/skins/vtf/magikarp.vtf', 7, 'http://tttservershit.store/skins/vtf/magikarp.png', 'Easter Collection', 45},
	[6226] = {'Mirrored Skin', 'http://tttservershit.store/skins/vtf/mirrored.vtf', 3, 'http://tttservershit.store/skins/vtf/mirrored.png', 'Easter Collection', 140},
	[6227] = {'Missing Green Skin', 'http://tttservershit.store/skins/vtf/missing_green.vtf', 5, 'http://tttservershit.store/skins/vtf/missing_green.png', 'Easter Collection', 110},
	[6228] = {'Mosaic Skin','http://tttservershit.store/skins/vtf/mosaic.vtf', 5, 'http://tttservershit.store/skins/vtf/mosaic.png', 'Easter Collection', 75},
	[6229] = {'Motherboard Skin','http://tttservershit.store/skins/vtf/motherboard.vtf', 5, 'http://tttservershit.store/skins/vtf/motherboard.png', 'Easter Collection', 168},
	[6230] = {'Neon Rider Skin','http://tttservershit.store/skins/vtf/neon_rider.vtf', 6, 'http://tttservershit.store/skins/vtf/neon_rider.png', 'Easter Collection', 85},
	[6231] = {'Pattern Skin', 'http://tttservershit.store/skins/vtf/pattern.vtf', 6, 'http://tttservershit.store/skins/vtf/pattern.png', 'Easter Collection', 15},
	[6232] = {'Penguins Skin','http://tttservershit.store/skins/vtf/penguins.vtf', 5, 'http://tttservershit.store/skins/vtf/penguins.png', 'Easter Collection', 70},
	[6233] = {'Refraction Skin', 'http://tttservershit.store/skins/vtf/refraction.vtf', 6, 'http://tttservershit.store/skins/vtf/refraction.png', 'Easter Collection', 150},
	[6234] = {'Splat Skin', 'http://tttservershit.store/skins/vtf/splat.vtf', 4, 'http://tttservershit.store/skins/vtf/splat.png', 'Easter Collection', 90},
	[6235] = {'Starry Skin', 'http://tttservershit.store/skins/vtf/starry.vtf', 6, 'http://tttservershit.store/skins/vtf/starry.png', 'Easter Collection', 75},
	[6236] = {'Stem Skin', 'http://tttservershit.store/skins/vtf/stem.vtf', 6, 'http://tttservershit.store/skins/vtf/stem.png', 'Easter Collection', 12},
	[6237] = {'Sunflower Skin', 'http://tttservershit.store/skins/vtf/sunflower.vtf', 4, 'http://tttservershit.store/skins/vtf/sunflower.png', 'Easter Collection', 65},
	[6238] = {'Sunset Skin', 'http://tttservershit.store/skins/vtf/sunset.vtf', 6, 'http://tttservershit.store/skins/vtf/sunset.png', 'Easter Collection', 140},
	[6239] = {'Swirls Skin', 'http://tttservershit.store/skins/vtf/swirls.vtf', 6, 'http://tttservershit.store/skins/vtf/swirls.png', 'Easter Collection', 85},
	[6240] = {'Techno Skin', 'http://tttservershit.store/skins/vtf/techno.vtf', 6, 'http://tttservershit.store/skins/vtf/techno.png', 'Easter Collection', 120},
	[6241] = {'Tiles Skin', 'http://tttservershit.store/skins/vtf/tiles.vtf', 4, 'http://tttservershit.store/skins/vtf/tiles.png', 'Easter Collection', 60},
	[6242] = {'Triangles Skin', 'http://tttservershit.store/skins/vtf/triangles.vtf', 5, 'http://tttservershit.store/skins/vtf/triangles.png', 'Easter Collection', 110},
	[6243] = {'Void Skin', 'http://tttservershit.store/skins/vtf/void.vtf', 6, 'http://tttservershit.store/skins/vtf/void.png', 'Easter Collection', 125},
	[6244] = {'Watery Night Skin', 'http://tttservershit.store/skins/vtf/watery_night.vtf', 5, 'http://tttservershit.store/skins/vtf/watery_night.png', 'Easter Collection', 125},
	[6245] = {'Yellow Bricks Skin', 'http://tttservershit.store/skins/vtf/yellow_bricks.vtf', 3, 'http://tttservershit.store/skins/vtf/yellow_bricks.png', 'Easter Collection', 80},
	[6246] = {'Yellow Flower Skin', 'http://tttservershit.store/skins/vtf/yellow_flower.vtf', 3, 'http://tttservershit.store/skins/vtf/yellow_flower.png', 'Easter Collection', 55},

	[6247] = {'Acid Crater Skin', '/uwu/acid_crater.vtf', 8, '/uwu/owo/34.png', 'Pumpkin Collection', 47},
	[6248] = {'Alduinity Skin', '/uwu/alduinity.vtf', 8, '/uwu/owo/14.png', 'Pumpkin Collection', 90},
	[6249] = {'Archaic Arcade Skin', '/uwu/archaic_arcade.vtf', 8, '/uwu/owo/8.png', 'Pumpkin Collection', 34},
	[6250] = {'Burple Skin', '/uwu/burple.vtf', 8, '/uwu/owo/25.png', 'Pumpkin Collection', 105},
	[6251] = {'Californication Skin', '/uwu/californication.vtf', 8, '/uwu/owo/41.png', 'Pumpkin Collection', 55},
	[6252] = {'Candypot Skin', '/uwu/candypot.vtf', 8, '/uwu/owo/5.png', 'Pumpkin Collection', 40},
	[6253] = {'Choropleth Skin', '/uwu/choropleth.vtf', 8, '/uwu/owo/39.png', 'Pumpkin Collection', 115},
	[6254] = {'Cuddly Skin', '/uwu/cuddly.vtf', 8, '/uwu/owo/12.png', 'Pumpkin Collection', 115},
	[6255] = {'Cyter Skin', '/uwu/cyter.vtf', 8, '/uwu/owo/17.png', 'Pumpkin Collection', 55},
	[6256] = {'Daydream Skin', '/uwu/daydream.vtf', 8, '/uwu/owo/27.png', 'Pumpkin Collection', 115},
	[6257] = {'Deep Journey Skin', '/uwu/deep_journey.vtf', 8, '/uwu/owo/47.png', 'Pumpkin Collection', 60},
	[6258] = {'Deluded Skin', '/uwu/deluded.vtf', 8, '/uwu/owo/16.png', 'Pumpkin Collection', 22},
	[6259] = {'Driptina Skin', '/uwu/driptina.vtf', 8, '/uwu/owo/24.png', 'Pumpkin Collection', 60},
	[6260] = {'Eighteye Skin', '/uwu/eighteye.vtf', 8, '/uwu/owo/11.png', 'Pumpkin Collection', 15},
	[6261] = {'Factorion Skin', '/uwu/factorion.vtf', 8, '/uwu/owo/46.png', 'Pumpkin Collection', 20},
	[6262] = {'Felice Skin', '/uwu/felice.vtf', 8, '/uwu/owo/45.png', 'Pumpkin Collection', 85},
	[6263] = {'Gatsby Skin', '/uwu/gatsby.vtf', 8, '/uwu/owo/37.png', 'Pumpkin Collection', 104},
	[6264] = {'Granbow Skin', '/uwu/granbow.vtf', 8, '/uwu/owo/30.png', 'Pumpkin Collection', 50},
	[6265] = {'Heavens Skin', '/uwu/heavens.vtf', 8, '/uwu/owo/35.png', 'Pumpkin Collection', 35},
	[6266] = {'Hellbolt Skin', '/uwu/hellbolt.vtf', 8, '/uwu/owo/29.png', 'Pumpkin Collection', 100},
	[6267] = {'Krakatoa Skin', '/uwu/krakatoa.vtf', 8, '/uwu/owo/15.png', 'Pumpkin Collection', 55},
	[6268] = {'Lost in Divine Skin', '/uwu/lost_in_divine.vtf', 8, '/uwu/owo/19.png', 'Pumpkin Collection', 45},
	[6269] = {'Matrix Skin', '/uwu/matrix.vtf', 8, '/uwu/owo/32.png', 'Pumpkin Collection', 85},
	[6270] = {'Neuralite Skin', '/uwu/neuralite.vtf', 8, '/uwu/owo/3.png', 'Pumpkin Collection', 30},
	[6271] = {'Nightmare Skin', '/uwu/nightmare.vtf', 8, '/uwu/owo/36.png', 'Pumpkin Collection', 72},
	[6272] = {'Ōkami Skin', '/uwu/okami.vtf', 8, '/uwu/owo/38.png', 'Pumpkin Collection', 30},
	[6273] = {'Parallel Cosmos Skin', '/uwu/parallel_cosmos.vtf', 8, '/uwu/owo/23.png', 'Pumpkin Collection', 51},
	[6274] = {'Party City Skin', '/uwu/party_city.vtf', 8, '/uwu/owo/partycity.png', 'Pumpkin Collection', 10},
	[6275] = {'Phoenix Feather Skin', '/uwu/phoenix_feather.vtf', 8, '/uwu/owo/13.png', 'Pumpkin Collection', 32},
	[6276] = {'Pringle Skin', '/uwu/pringle.vtf', 8, '/uwu/owo/7.png', 'Pumpkin Collection', 65},
	[6277] = {'Pumpzag Skin', '/uwu/pumpzag.vtf', 8, '/uwu/owo/6.png', 'Pumpkin Collection', 28},
	[6278] = {'Pupa Skin', '/uwu/pupa.vtf', 8, '/uwu/owo/4.png', 'Pumpkin Collection', 18},
	[6279] = {'Purpendicular Skin', '/uwu/purpendicular.vtf', 8, '/uwu/owo/26.png', 'Pumpkin Collection', 50},
	[6280] = {'Quantum Realm Skin', '/uwu/quantum_realm.vtf', 8, '/uwu/owo/21.png', 'Pumpkin Collection', 145},
	[6281] = {'Rajah Skin', '/uwu/rajah.vtf', 8, '/uwu/owo/44.png', 'Pumpkin Collection', 45},
	[6282] = {'Reppit Skin', '/uwu/reppit.vtf', 8, '/uwu/owo/1.png', 'Pumpkin Collection', 120},
	[6283] = {'Rygan Skin', '/uwu/rygan.vtf', 8, '/uwu/owo/43.png', 'Pumpkin Collection', 39},
	[6284] = {'Splatter Space Skin', '/uwu/splatter_space.vtf', 8, '/uwu/owo/18.png', 'Pumpkin Collection', 55},
	[6285] = {'Stained Glass Skin', '/uwu/stained_glass.vtf', 8, '/uwu/owo/42.png', 'Pumpkin Collection', 22},
	[6286] = {'Tiki Oasis Skin', '/uwu/tiki_oasis.vtf', 8, '/uwu/owo/2.png', 'Pumpkin Collection', 22},
	[6287] = {'Trilogy Skin', '/uwu/trilogy.vtf', 8, '/uwu/owo/22.png', 'Pumpkin Collection', 60},
	[6288] = {'Ultrabeam Skin', '/uwu/ultrabeam.vtf', 8, '/uwu/owo/40.png', 'Pumpkin Collection', 73},
	[6289] = {'Untouched Skin', '/uwu/untouched.vtf', 8, '/uwu/owo/20.png', 'Pumpkin Collection', 57},
	[6290] = {'Vibestrus Skin', '/uwu/vibestrus.vtf', 8, '/uwu/owo/33.png', 'Pumpkin Collection', 20},
	[6291] = {'Wavelength Skin', '/uwu/wavelength.vtf', 8, '/uwu/owo/31.png', 'Pumpkin Collection', 42},
	[6292] = {'Witchpink Skin', '/uwu/witchpink.vtf', 8, '/uwu/owo/9.png', 'Pumpkin Collection', 32},
	[6293] = {'Zygzag Skin', '/uwu/zygzag.vtf', 8, '/uwu/owo/28.png', 'Pumpkin Collection', 6},

	[6294] = {'Alabaster Skin', '/uwu/pluto/Alabaster.vtf', 1, '/uwu/pluto/Alabaster.png', 'Paper Tiqers Collection', 85},
	[6324] = {'Amaterasu Skin', '/uwu/pluto/Amaterasu.vtf', 5, '/uwu/pluto/Amaterasu.png', 'Paper Tiqers Collection', 105},
	[6325] = {'Contrast Skin', '/uwu/pluto/Contrast.vtf', 4, '/uwu/pluto/Contrast.png', 'Paper Tiqers Collection', 120},
	[6326] = {'Crepuscule Skin', '/uwu/pluto/Crepuscule.vtf', 2, '/uwu/pluto/Crepuscule.png', 'Paper Tiqers Collection', 145},
	[6327] = {'Daybreak Skin', '/uwu/pluto/Daybreak.vtf', 6, '/uwu/pluto/Daybreak.png', 'Paper Tiqers Collection', 90},
	[6328] = {'Descent Skin', '/uwu/pluto/Descent.vtf', 6, '/uwu/pluto/Descent.png', 'Paper Tiqers Collection', 155},
	[6329] = {'Drift Skin', '/uwu/pluto/Drift.vtf', 7, '/uwu/pluto/Drift.png', 'Paper Tiqers Collection', 120},
	[6330] = {'Ethereal Skin', '/uwu/pluto/Ethereal.vtf', 6, '/uwu/pluto/Ethereal.png', 'Paper Tiqers Collection', 75},
	[6331] = {'Frigid Skin', '/uwu/pluto/Frigid.vtf', 3, '/uwu/pluto/Frigid.png', 'Paper Tiqers Collection', 24},
	[6332] = {'Gaia Skin', '/uwu/pluto/Gaia.vtf', 7, '/uwu/pluto/Gaia.png', 'Paper Tiqers Collection', 110},
	[6295] = {'Gleam Skin', '/uwu/pluto/Gleam.vtf', 5, '/uwu/pluto/Gleam.png', 'Paper Tiqers Collection', 86},
	[6296] = {'Good Fortune Skin', '/uwu/pluto/Good_Fortune.vtf', 3, '/uwu/pluto/Good_Fortune.png', 'Paper Tiqers Collection', 50},
	[6297] = {'Heavenly Body Skin', '/uwu/pluto/Heavenly_Body.vtf', 6, '/uwu/pluto/Heavenly_Body.png', 'Paper Tiqers Collection', 80},
	[6298] = {'Hellbent Skin', '/uwu/pluto/Hellbent.vtf', 4, '/uwu/pluto/Hellbent.png', 'Paper Tiqers Collection', 100},
	[6299] = {'Hyper Skin', '/uwu/pluto/Hyper.vtf', 3, '/uwu/pluto/Hyper.png', 'Paper Tiqers Collection', 59},
	[6300] = {'Ignite Skin', '/uwu/pluto/Ignite.vtf', 2, '/uwu/pluto/Ignite.png', 'Paper Tiqers Collection', 115},
	[6301] = {'Interconnected Skin', '/uwu/pluto/Interconnected.vtf', 1, '/uwu/pluto/Interconnected.png', 'Paper Tiqers Collection', 110},
	[6302] = {'Manic Skin', '/uwu/pluto/Manic.vtf', 7, '/uwu/pluto/Manic.png', 'Paper Tiqers Collection', 125},
	[6303] = {'Megatherm Skin', '/uwu/pluto/Megatherm.vtf', 5, '/uwu/pluto/Megatherm.png', 'Paper Tiqers Collection', 27},
	[6304] = {'Midnight Sun Skin', '/uwu/pluto/Midnight_Sun.vtf', 1, '/uwu/pluto/Midnight_Sun.png', 'Paper Tiqers Collection', 115},
	[6305] = {'Milky Way Skin', '/uwu/pluto/Milky_Way.vtf', 2, '/uwu/pluto/Milky_Way.png', 'Paper Tiqers Collection', 20},
	[6306] = {'Nemesis Skin', '/uwu/pluto/Nemesis.vtf', 4, '/uwu/pluto/Nemesis.png', 'Paper Tiqers Collection', 145},
	[6307] = {'Nimbus Skin', '/uwu/pluto/Nimbus.vtf', 1, '/uwu/pluto/Nimbus.png', 'Paper Tiqers Collection', 56},
	[6308] = {'Nippon Skin', '/uwu/pluto/Nippon.vtf', 2, '/uwu/pluto/Nippon.png', 'Paper Tiqers Collection', 17},
	[6309] = {'Overwrought Skin', '/uwu/pluto/Overwrought.vtf', 3, '/uwu/pluto/Overwrought.png', 'Paper Tiqers Collection', 30},
	[6310] = {'Pollution Skin', '/uwu/pluto/Pollution.vtf', 2, '/uwu/pluto/Pollution.png', 'Paper Tiqers Collection', 35},
	[6311] = {'Sardonyx Skin', '/uwu/pluto/Sardonyx.vtf', 5, '/uwu/pluto/Sardonyx.png', 'Paper Tiqers Collection', 78},
	[6312] = {'Scintilla Skin', '/uwu/pluto/Scintilla.vtf', 2, '/uwu/pluto/Scintilla.png', 'Paper Tiqers Collection', 80},
	[6313] = {'Spectrum Skin', '/uwu/pluto/Spectrum.vtf', 9, '/uwu/pluto/Spectrum.png', 'Paper Tiqers Collection', 120},
	[6314] = {'Stigma Skin', '/uwu/pluto/Stigma.vtf', 4, '/uwu/pluto/Stigma.png', 'Paper Tiqers Collection', 135},
	[6315] = {'The Starry Night Skin', '/uwu/pluto/The_Starry_Night.vtf', 6, '/uwu/pluto/The_Starry_Night.png', 'Paper Tiqers Collection', 24},
	[6316] = {'Tsunami Skin', '/uwu/pluto/Tsunami.vtf', 2, '/uwu/pluto/Tsunami.png', 'Paper Tiqers Collection', 30},
	[6317] = {'Verge Skin', '/uwu/pluto/Verge.vtf', 3, '/uwu/pluto/Verge.png', 'Paper Tiqers Collection', 26},
	[6318] = {'Viscous Skin', '/uwu/pluto/Viscous.vtf', 4, '/uwu/pluto/Viscous.png', 'Paper Tiqers Collection', 30},
	[6319] = {'Whimsical Skin', '/uwu/pluto/Whimsical.vtf', 5, '/uwu/pluto/Whimsical.png', 'Paper Tiqers Collection', 64},
	[6320] = {'Yore Skin', '/uwu/pluto/Yore.vtf', 1, '/uwu/pluto/Yore.png', 'Paper Tiqers Collection', 28},
	[6321] = {'Zed Skin', '/uwu/pluto/Zed.vtf', 9, '/uwu/pluto/Zed.png', 'Paper Tiqers Collection', 65},
	[6322] = {'Zircon Skin', '/uwu/pluto/Zircon.vtf', 4, '/uwu/pluto/Zircon.png', 'Paper Tiqers Collection', 40},
	[6323] = {'Zodiac Skin', '/uwu/pluto/Zodiac.vtf', 2, '/uwu/pluto/Zodiac.png', 'Paper Tiqers Collection', 65},

	-- /uwu/8e376.png
	--[6120] = {'Puppy Skin', '/uwu/dbd23.png', 8}, --'/uwu/91548.png', 8},
	--[6121] = {'Dev Team Stalker Skin', '/uwu/b8271.png', 8}
}

function GetPaintColor(id)
	return MOAT_PAINT.Paints[id] or MOAT_PAINT.Tints[id]
end

function ItemIsPaint(id)
	return id and MOAT_PAINT.Paints[id]
end

function ItemIsTint(id)
	return id and MOAT_PAINT.Tints[id]
end

function ItemIsSkin(id)
	return id and MOAT_PAINT.Skins[id]
end

function ItemPaints(id)
	return id and (MOAT_PAINT.Paints[id] or MOAT_PAINT.Tints[id] or MOAT_PAINT.Skins[id])
end

MOAT_PAINT.SkinCache = {}
function LoadSkin(id, cb)
	if (MOAT_PAINT.SkinCache[id]) then
		return cb(MOAT_PAINT.SkinCache[id])
	end
end

concommand.Add("moat_paint", function()
	local last_id = 6001
	for i = 1, #MOAT_PAINT.Colors do
		print("    ", "[" .. last_id .. "] = {'" .. MOAT_PAINT.Colors[i][1] .. " Tint', {" .. MOAT_PAINT.Colors[i][2][1] .. ", " .. MOAT_PAINT.Colors[i][2][2] .. ", " .. MOAT_PAINT.Colors[i][2][3] .. "}, " .. MOAT_PAINT.Colors[i][3] .. "}")
		last_id = last_id + 1
    end

	for i = 1, #MOAT_PAINT.Colors do
		print("    ", "[" .. last_id .. "] = {'" .. MOAT_PAINT.Colors[i][1] .. " Paint', {" .. MOAT_PAINT.Colors[i][2][1] .. ", " .. MOAT_PAINT.Colors[i][2][2] .. ", " .. MOAT_PAINT.Colors[i][2][3] .. "}, " .. MOAT_PAINT.Colors[i][3] .. "}")
		last_id = last_id + 1
    end

	for i = 1, #MOAT_PAINT.Skins do
		print("    ", "[" .. last_id .. "] = {'" .. MOAT_PAINT.Skins[i][1] .. " Texture', '" .. MOAT_PAINT.Skins[i][2] .. "', " .. MOAT_PAINT.Colors[i][3] .. "}")
		last_id = last_id + 1
    end
end)