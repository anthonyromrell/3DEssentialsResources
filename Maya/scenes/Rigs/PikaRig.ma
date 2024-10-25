//Maya ASCII 2025 scene
//Name: PikaRig.ma
//Last modified: Wed, Sep 25, 2024 11:08:42 PM
//Codeset: UTF-8
requires maya "2025";
requires -nodeType "materialxStack" -nodeType "MaterialXSurfaceShader" -dataType "MxDocumentStackData"
		 "LookdevXMaya" "1.4.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiImagerDenoiserOidn"
		 "mtoa" "5.4.1.2";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.28.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2025";
fileInfo "version" "2025";
fileInfo "cutIdentifier" "202404240506-c155a58772";
fileInfo "osv" "Mac OS X 14.6.1";
fileInfo "UUID" "FCF5B7B2-1D4C-4DE7-EC4F-EAB1B629B2E1";
createNode transform -s -n "persp";
	rename -uid "E19495EE-6A45-1080-58A0-0FAF39413D42";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -16.430305031586173 13.542989008718061 16.523534934636885 ;
	setAttr ".r" -type "double3" -19.200000000000003 -46.400000000000006 -1.1530106383856414e-15 ;
	setAttr ".rpt" -type "double3" -3.1650140651815681e-18 -4.2260336179055135e-17 6.6011089577737692e-18 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "9F553704-A044-637D-DA8E-D89153AC21AA";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 25.371625382273731;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.92111599445342451 5.1991076469421396 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "E44FE7D3-3743-900E-470C-7BB4A0F133C3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "ED750CD4-2B4A-90B1-6ABC-BC820D54E966";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "49395E21-2649-F6D5-3EC9-DAB25F9DA2A8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.21004343032836914 5.0042150020599374 1000.1125418101852 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "C37A1ADC-0C45-0472-12A0-359F585C1E70";
	setAttr -k off ".v" no;
	setAttr ".coi" 1000.1125418101852;
	setAttr ".ow" 19.748062400457854;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 0.21004343032836914 5.0042150020599374 -2.2204460492503131e-16 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "7F84D64A-2844-7EC1-4574-85A6CF05CCE3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "377DA2B1-3340-860D-46FA-AD8AB7681AE1";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "materialXStack1";
	rename -uid "3155624C-C842-0280-B7B8-69ABFFFDEB61";
createNode materialxStack -n "materialXStackShape1" -p "materialXStack1";
	rename -uid "E1A5E72C-674B-898B-FA91-D4AA8CB45265";
	setAttr -k off ".v";
	setAttr ".docs" -type "string" "[\n    {\n        \"document\": \"AAABUXicdZDNCoJAEIDvPsUwD5BJlw7+EHgUi15AhnakJV1ldw17+6x1Q4Vu88c330ycjW0DT9ZGdirBaLfHLA3ilixrSc24bB2OmAYAsbGkBGlRmUHXdGNQ1HKCF/kgBPvqp3jumDsJ1giqEyy4TvB0Lc9FXpV5tYUghA7uUi8wszfVyO/xhcWKD3s9/bWe0FL1g10DveBf6+VpTjDc0Kdvhb93pcEb36NzjQ==\",\n        \"name\": \"document1\"\n    }\n]\n";
createNode transform -n "toonMeshpolySurface1";
	rename -uid "24648E9E-A242-3D51-9555-B096C1164193";
	setAttr ".t" -type "double3" 0 5.0000000000000009 -2.2204460492503131e-16 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "toonMeshpolySurfaceShape1" -p "toonMeshpolySurface1";
	rename -uid "505689A0-BE41-357E-3747-7C9C7277A8DB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "toonMeshpolySurfaceShape1Orig" -p "toonMeshpolySurface1";
	rename -uid "9821A7D1-A54E-AA13-3E19-BD82933586BD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 92 ".uvst[0].uvsp[0:91]" -type "float2" 0.30517429 0.39486003
		 0.295838 0.31820828 0.38557744 0.32236731 0.39002258 0.39259309 0.62939978 0.40662801
		 0.56355011 0.41096401 0.57364929 0.34544963 0.65015054 0.35001636 0.38030803 0.46724832
		 0.28421438 0.44708502 0.57480609 0.48843616 0.68857944 0.48920059 0.25400639 0.53146839
		 0.37022883 0.54937804 0.37335986 0.63570583 0.2745899 0.62296331 0.69348538 0.60500181
		 0.64041698 0.68054402 0.55722654 0.6623491 0.57196772 0.57555878 0.54106307 0.83248532
		 0.54512644 0.74316657 0.61782849 0.74684238 0.58277392 0.80567193 0.28453088 0.68047166
		 0.38011384 0.71897745 0.3860023 0.82105041 0.30152529 0.77219284 0.18891811 0.66911244
		 0.11361438 0.59203625 0.13476503 0.75675607 0.058455706 0.72861576 0.070735335 0.83832836
		 0.1414901 0.85296381 0.15332484 0.94242787 0.10518527 0.92391694 0.76564777 0.67718017
		 0.67793965 0.71539485 0.70666242 0.86781335 0.70643544 0.7808007 0.8033663 0.75589633
		 0.77736461 0.86583114 0.70899498 0.96150422 0.74315643 0.93033683 0.34484971 0.26635104
		 0.19737494 0.28547478 0.31920582 0.18842453 0.13257253 0.19310409 0.31667155 0.099045634
		 0.11920375 0.080826223 0.60333276 0.28666824 0.72370923 0.32328165 0.64038777 0.21511608
		 0.80858278 0.25213033 0.665766 0.12508649 0.83929229 0.10044646 0.33590049 0.0015372038
		 0.12450725 0.0014644861 0.66688311 0.0029072165 0.82256746 0.00084298849 0.49208695
		 0.10848564 0.50154638 0.0017776489 0.48230171 0.19518417 0.476991 0.26921427 0.47823459
		 0.33529353 0.47675931 0.40450454 0.4758684 0.48045909 0.47157264 0.56399262 0.46740401
		 0.65126359 0.46693665 0.74300683 0.47371542 0.85822821 0.63114119 0.87155855 0.6668011
		 0.99999988 0.63471675 0.78254628 0.62569392 0.76347101 0.24568307 0.71896255 0.2290175
		 0.79151309 0.22888196 0.87104011 0.21278381 0.9652915 0.76308608 0.49930567 0.79519057
		 0.60345066 0.84237647 0.69113696 0.87933552 0.61746752 0.83321488 0.50881708 0.90017402
		 0.51789844 0.96200287 0.63283539 0.9145968 0.70427346 0.98355293 0.71681631 0.75859606
		 0.37643403 0.67777419 0.40155739 0.74468839 0.40068173 0.7554934 0.48832506;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 92 ".vt[0:91]"  -1.92415679 -2.2282954e-16 1.0035350323 -2.037403584 -3.9453908e-16 1.77684605
		 -0.20882612 -3.6454877e-16 1.64178169 -0.20445758 -2.1074892e-16 0.94912875 1.51147342 -3.3998267e-16 1.53114581
		 1.32060099 -2.1469381e-16 0.96689498 -0.21376367 1.4356739e-16 -0.64657003 -2.39843798 8.4003632e-17 -0.37831873
		 2.01551199 2.214518e-16 -0.99733025 -0.11386926 7.9654227e-16 -3.58730745 -1.85810411 6.1577035e-16 -2.77318311
		 0.96231103 6.7342682e-16 -3.032844782 1.29704177 5.407695e-16 -2.43540931 -0.21236311 5.4119169e-16 -2.4373107
		 -2.05245018 4.1318733e-16 -1.86083031 1.93558502 -3.5296604e-17 0.15896177 -0.19319829 -4.2105439e-17 0.18962604
		 -2.11889124 -1.0515868e-16 0.47359258 -3.78927612 2.2567491e-16 -1.016349435 -2.43052459 5.0092443e-16 -2.25596309
		 -4.29955816 5.3343896e-16 -2.40239549 -2.57777143 6.6294871e-16 -2.98565555 -3.78034043 9.6417316e-16 -4.34224987
		 -2.69370294 1.0496385e-15 -4.72715139 -4.14754438 7.7623613e-16 -3.49585676 -2.55791593 8.3947932e-16 -3.78067875
		 3.15417504 5.4987849e-16 -2.47643256 1.47538674 6.1901972e-16 -2.787817 2.59881401 9.4064226e-16 -4.23627615
		 1.85411239 1.0997921e-15 -4.95302343 2.92357063 7.9543583e-16 -3.5823245 1.46338367 8.1680827e-16 -3.67857742
		 -3.028409004 -4.6250027e-16 2.082916021 -0.23102102 -5.1228812e-16 2.30714059 -3.79385877 -1.0957954e-15 4.93502378
		 0.01405115 -1.1062732e-15 4.98221159 -3.69336414 -6.6611693e-16 2.99992394 -0.17700543 -6.7682607e-16 3.048153639
		 2.24130678 -1.032615e-17 1.81368768 3.075522184 -5.639376e-16 2.53974915 3.19094992 -1.116446e-15 5.028025627
		 -3.84088302 -9.1765125e-16 4.13273382 -0.079130121 -8.6933638e-16 3.91514301 3.36229539 -8.9840518e-16 4.046057224
		 -1.65255094 -1.105354e-15 4.97807169 -1.84662056 -8.8752266e-16 3.99704671 -1.82116127 -6.8693483e-16 3.093679428
		 -1.55649269 -5.1334548e-16 2.31190252 -1.14010525 -3.9005404e-16 1.75664723 -1.076237082 -2.3244919e-16 1.046858072
		 -1.15191269 -6.5771056e-17 0.2962065 -1.23079801 1.1712298e-16 -0.527475 -1.086691022 4.9299663e-16 -2.22025943
		 -1.00060403347 7.1921467e-16 -3.23905492 0.55250216 7.3541349e-16 -3.3120079 0.56929964 5.3691582e-16 -2.41805387
		 0.79291534 1.6329462e-16 -0.73541361 0.79805297 -3.025564e-17 0.13625929 0.66463268 -2.0151946e-16 0.90756297
		 0.74522948 -3.4640964e-16 1.5600903 1.031164885 -4.7706002e-16 2.14848733 1.39407146 -6.3606457e-16 2.86458015
		 1.64561105 -8.3494393e-16 3.76025319 1.65685761 -1.1052149e-15 4.9774456 2.2656343 1.0118461e-15 -4.55694962
		 2.21732831 8.0402268e-16 -3.62099624 2.19185257 6.1089811e-16 -2.75124049 1.50516438 3.9227237e-16 -1.76663768
		 0.6687029 3.568125e-16 -1.60694063 -0.23215954 3.3752561e-16 -1.52008021 -1.1764158 3.0856206e-16 -1.38963997
		 -2.16716266 2.8612744e-16 -1.28860343 -3.0112679 3.9363604e-16 -1.77277911 -3.52923107 5.9138173e-16 -2.66334653
		 -3.43634462 8.0453148e-16 -3.62328768 -3.29417872 1.0024103e-15 -4.51445484 4.058432102 1.5871973e-17 -0.071481012
		 4.70715523 2.6733101e-16 -1.20395184 2.7561295 3.7738957e-16 -1.69961154 1.88955176 4.6740713e-16 -2.10501456
		 1.38010311 5.7721346e-16 -2.59953833 4.94497681 -2.8965453e-17 -2.037714481 2.68308187 -1.7279107e-17 0.077818178
		 3.031788349 2.1198565e-16 -0.9546985 3.5268662 4.038247e-16 -1.81866479 4.25231647 4.2870648e-16 -1.93072236
		 3.87667656 2.3811518e-16 -1.072375417 3.386657 -3.2018225e-19 0.0014419727 2.60332561 -2.8808618e-16 1.29742479
		 1.80241954 -2.2848192e-16 1.028991103 2.47094607 -2.3402387e-16 1.053949833 2.60425353 -4.1202634e-17 0.18556017;
	setAttr -s 156 ".ed[0:155]"  0 1 0 1 48 0 2 3 0 3 49 0 5 58 0 2 59 0 4 5 0
		 3 16 0 0 17 0 6 51 0 5 15 0 8 56 0 6 69 0 7 71 0 9 53 0 8 67 0 11 54 0 12 11 0 13 9 0
		 14 10 0 12 55 1 13 52 1 15 8 0 16 6 0 17 7 0 15 57 1 16 50 1 7 18 0 14 19 0 18 72 0
		 18 20 0 19 21 0 20 73 0 20 24 0 21 25 0 22 75 0 24 22 0 25 23 0 24 74 1 8 78 0 12 80 0
		 26 66 0 26 30 0 27 31 0 28 64 0 30 28 0 31 29 0 30 65 1 1 32 0 2 33 0 32 47 0 32 36 0
		 33 37 0 34 44 0 36 41 0 37 42 0 36 46 1 33 60 0 38 4 0 37 61 0 39 38 0 35 63 0 40 43 0
		 41 34 0 42 35 0 43 39 0 41 45 1 42 62 1 44 35 0 45 42 1 46 37 1 47 33 0 48 2 0 49 0 0
		 50 17 1 51 7 0 52 14 1 53 10 0 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1
		 51 70 1 52 53 1 54 9 0 55 13 1 56 6 0 57 16 1 58 3 0 59 4 0 60 38 0 61 39 0 62 43 1
		 63 40 0 54 55 1 55 68 1 56 57 1 57 58 1 58 59 1 59 60 1 60 61 1 61 62 1 62 63 1 64 29 0
		 65 31 1 66 27 0 67 12 0 68 56 1 69 13 0 70 52 1 71 14 0 72 19 0 73 21 0 74 25 1 75 23 0
		 64 65 1 65 66 1 66 79 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 15 82 0 8 83 0 76 77 0 78 26 0 79 67 1 80 27 0 78 79 1 79 80 1 77 81 0 81 85 0 82 87 0
		 83 86 0 84 78 0 82 83 1 83 84 1 85 84 0 86 77 0 87 76 0 85 86 1 86 87 1 38 88 0 4 89 0
		 88 89 0 89 15 0 89 90 0 15 91 0 90 91 0;
	setAttr -s 65 -ch 260 ".fc[0:64]" -type "polyFaces" 
		f 4 0 1 82 73
		mu 0 4 0 1 2 3
		f 4 4 101 92 6
		mu 0 4 4 5 6 7
		f 4 -74 83 74 -9
		mu 0 4 0 3 8 9
		f 4 100 -5 10 25
		mu 0 4 10 5 4 11
		f 4 -76 85 124 -14
		mu 0 4 12 13 14 15
		f 4 15 121 110 -12
		mu 0 4 16 17 18 19
		f 4 97 -21 17 16
		mu 0 4 20 21 22 23
		f 4 -77 86 77 -20
		mu 0 4 24 25 26 27
		f 4 99 -26 22 11
		mu 0 4 19 10 11 16
		f 4 -75 84 75 -25
		mu 0 4 9 8 13 12
		f 4 13 125 -30 -28
		mu 0 4 12 15 28 29
		f 4 29 126 -33 -31
		mu 0 4 29 28 30 31
		f 4 38 128 -36 -37
		mu 0 4 32 33 34 35
		f 4 32 127 -39 -34
		mu 0 4 31 30 33 32
		f 4 135 133 -16 39
		mu 0 4 36 37 17 16
		f 4 119 -42 42 47
		mu 0 4 38 39 40 41
		f 4 118 -48 45 44
		mu 0 4 42 38 41 43
		f 4 81 -2 48 50
		mu 0 4 44 2 1 45
		f 4 80 -51 51 56
		mu 0 4 46 44 45 47
		f 4 79 -57 54 66
		mu 0 4 48 46 47 49
		f 4 -93 102 93 58
		mu 0 4 7 6 50 51
		f 4 -94 103 94 60
		mu 0 4 51 50 52 53
		f 4 104 95 65 -95
		mu 0 4 52 54 55 53
		f 4 78 -67 63 53
		mu 0 4 56 48 49 57
		f 4 105 96 62 -96
		mu 0 4 54 58 59 55
		f 4 -70 -79 68 -65
		mu 0 4 60 48 56 61
		f 4 -71 -80 69 -56
		mu 0 4 62 46 48 60
		f 4 -72 -81 70 -53
		mu 0 4 63 44 46 62
		f 4 -73 -82 71 -50
		mu 0 4 64 2 44 63
		f 4 -83 72 2 3
		mu 0 4 3 2 64 65
		f 4 -84 -4 7 26
		mu 0 4 8 3 65 66
		f 4 -85 -27 23 9
		mu 0 4 13 8 66 67
		f 4 123 -86 -10 12
		mu 0 4 68 14 13 67
		f 4 -87 -22 18 14
		mu 0 4 26 25 69 70
		f 4 -89 -98 87 -19
		mu 0 4 69 21 20 70
		f 4 -111 122 -13 -90
		mu 0 4 19 18 68 67
		f 4 -91 -100 89 -24
		mu 0 4 66 10 19 67
		f 4 -92 -101 90 -8
		mu 0 4 65 5 10 66
		f 4 -102 91 -3 5
		mu 0 4 6 5 65 64
		f 4 -103 -6 49 57
		mu 0 4 50 6 64 63
		f 4 -104 -58 52 59
		mu 0 4 52 50 63 62
		f 4 67 -105 -60 55
		mu 0 4 60 54 52 62
		f 4 61 -106 -68 64
		mu 0 4 61 58 54 60
		f 4 -108 -119 106 -47
		mu 0 4 71 38 42 72
		f 4 -109 -120 107 -44
		mu 0 4 73 39 38 71
		f 4 -110 -134 136 -41
		mu 0 4 22 17 37 74
		f 4 -122 109 20 98
		mu 0 4 18 17 22 21
		f 4 -123 -99 88 -112
		mu 0 4 68 18 21 69
		f 4 -113 -124 111 21
		mu 0 4 25 14 68 69
		f 4 -125 112 76 -114
		mu 0 4 15 14 25 24
		f 4 -126 113 28 -115
		mu 0 4 28 15 24 75
		f 4 -127 114 31 -116
		mu 0 4 30 28 75 76
		f 4 -128 115 34 -117
		mu 0 4 33 30 76 77
		f 4 -129 116 37 -118
		mu 0 4 34 33 77 78
		f 4 -23 129 142 -131
		mu 0 4 16 11 79 80
		f 4 120 -136 132 41
		mu 0 4 39 37 36 40
		f 4 -137 -121 108 -135
		mu 0 4 74 37 39 73
		f 4 130 143 141 -40
		mu 0 4 16 80 81 36
		f 4 148 146 131 -146
		mu 0 4 82 83 84 85
		f 4 147 145 137 138
		mu 0 4 86 82 85 87
		f 4 -144 140 -148 144
		mu 0 4 81 80 82 86
		f 4 -143 139 -149 -141
		mu 0 4 80 79 83 82
		f 4 -59 149 151 -151
		mu 0 4 7 51 88 89
		f 4 152 -11 -7 150
		mu 0 4 89 11 4 7
		f 4 -153 153 155 -155
		mu 0 4 11 89 90 91;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode joint -n "body";
	rename -uid "73E27D1E-3449-3642-51AD-CEB0EDA9CB6F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-16 0 0
		 0 0 1 0 0 1 0 1;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "back" -p "body";
	rename -uid "D36B2240-3642-E123-3A97-D693D568EA3E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.026670521204079378 0.99964427838041625 0 0 -0.99964427838041625 0.026670521204079378 0 0
		 0 0 1 0 0 3 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "head" -p "back";
	rename -uid "8737FB30-2D4A-2182-4B10-60B347A8CE3C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -88.471710478086266 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 -1.7347234759768071e-16 0 0 1.7347234759768071e-16 1.0000000000000002 0 0
		 0 0 1 0 -6.9388939039072284e-18 4 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "tail" -p "head";
	rename -uid "9FF25C63-4F47-550A-3072-4AB3781AB4C0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 9.9392333795734887e-15 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 -1.7347234759768071e-16 0 0 1.7347234759768071e-16 1.0000000000000002 0 0
		 0 0 1 0 2.4577345729031781 5.3204730522714696 -7.8886090522101181e-31 1;
	setAttr ".radi" 0.5;
createNode joint -n "earL" -p "head";
	rename -uid "C785F6D5-ED45-DBBD-5D9B-CE9D046539A3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999957 0 64.596429624158802 ;
	setAttr ".bps" -type "matrix" 0.42899142374102367 0.90330856209639132 0 0 -6.6613381477509412e-16 2.2204460492503146e-16 1 0
		 0.90330856209639132 -0.42899142374102373 6.6613381477509392e-16 0 1.630928569618411 5.9589088151207807 -2.9582283945787943e-31 1;
	setAttr ".radi" 0.53019392425729339;
createNode joint -n "earL2" -p "earL";
	rename -uid "57DDC286-D642-8F6F-85D5-788854C6FB65";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 22.238703812310707 5.201869266260369e-15 ;
	setAttr ".bps" -type "matrix" 0.055209256507231519 0.99847480588942217 -2.5210908989642649e-16 0
		 7.8841171228126979e-16 -2.2880578885152007e-16 -1 0 -0.99847480588942217 0.055209256507231574 -7.3904822330396224e-16 0
		 2.3103433947650904 7.3895230297786316 -8.7915741481685326e-17 1;
	setAttr ".radi" 0.5;
createNode joint -n "earL3" -p "earL2";
	rename -uid "475694BB-3741-D676-B882-E88C049178A0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.055209256507231519 0.99847480588942217 -2.5210908989642649e-16 0
		 7.8841171228126979e-16 -2.2880578885152007e-16 -1 0 -0.99847480588942217 0.055209256507231574 -7.3904822330396224e-16 0
		 2.3562382006548854 8.2195433977606385 -2.2763262322516249e-16 1;
	setAttr ".radi" 0.5;
createNode joint -n "earR" -p "head";
	rename -uid "A6272581-604D-2A2E-B2AC-6195CF6F4C89";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000000000000014 0 132.33699923393286 ;
	setAttr ".bps" -type "matrix" -0.67348999618370353 0.73919633727479706 0 0 1.665334536937736e-16 1.1102230246251565e-16 1 0
		 0.73919633727479694 0.67348999618370353 -2.2204460492503131e-16 0 -2.2448888266700053 6.1050909374371045 -3.3139997065066315e-16 1;
	setAttr ".radi" 0.5230329494266831;
createNode joint -n "earR2" -p "earR";
	rename -uid "FCE693BF-9E47-A88A-9401-D59E0D910063";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.3764749681484919e-15 -38.760664858935549 9.5985355561672136e-15 ;
	setAttr ".bps" -type "matrix" -0.062378286155179485 0.99805257848288897 -1.3901516085428072e-16 0
		 1.665334536937736e-16 1.1102230246251565e-16 1 0 0.99805257848288886 0.06237828615517943 -1.7314326908364558e-16 0
		 -3.2182864026022502 7.1734541305334707 -2.3375893135169741e-16 1;
	setAttr ".radi" 0.5073350513758389;
createNode joint -n "earR3" -p "earR2";
	rename -uid "9DD5507E-5649-B3D2-63BE-1D9D4BB175A4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" -0.062378286155179485 0.99805257848288897 -1.3901516085428072e-16 0
		 1.665334536937736e-16 1.1102230246251565e-16 1 0 0.99805257848288886 0.06237828615517943 -1.7314326908364558e-16 0
		 -3.28951061547534 8.3130415365029275 -2.4333154948461032e-16 1;
	setAttr ".radi" 0.5073350513758389;
createNode joint -n "footL" -p "body";
	rename -uid "761F5984-5043-E309-6D1D-4C9F1DA36A1D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.999999999999986 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 0 0 0 0 1.0000000000000004 0 0 0 0 1 0
		 2 1 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "footR" -p "body";
	rename -uid "78DA5923-8449-9AF6-C171-A0922BFCFB95";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.999999999999986 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 0 0 0 0 1.0000000000000004 0 0 0 0 1 0
		 -2 1 0 1;
	setAttr ".radi" 0.5;
createNode transform -n "directionalLight1";
	rename -uid "CAB76072-4045-29AD-FBD6-E280B242C59E";
	setAttr ".t" -type "double3" 0 3.8782835804942843 6.7627512134721757 ;
createNode directionalLight -n "directionalLightShape1" -p "directionalLight1";
	rename -uid "49C6A714-D14E-209C-588F-2C82FC48B16E";
	setAttr -k off ".v";
	setAttr ".in" 0.80000001192092896;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "FDE2E67B-6142-8C64-1DD9-40B9CC2B64C6";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "9271971E-E54E-3B22-EC77-8394FBB8C0B6";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "942FB304-B642-E062-77CB-F98806E8C57E";
createNode displayLayerManager -n "layerManager";
	rename -uid "3D84AE1D-F949-3F8B-1B3F-DAA9B1671203";
	setAttr ".cdl" 2;
	setAttr -s 3 ".dli[1:2]"  1 2;
	setAttr -s 3 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "A107594D-7641-8751-559C-08A135A60EA4";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "0BB4C1E7-F04F-3FF4-C75C-B2873DEBD735";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "FF101F24-D541-F1EB-4C80-FF9FF4F79C49";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "6079E7BA-4E40-278E-A90A-8B844FB64D8E";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 920\n            -height 656\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 918\n            -height 656\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1852\n            -height 1402\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 918\n            -height 656\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -hierarchyBelow 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n"
		+ "                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n"
		+ "                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Front View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1852\\n    -height 1402\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1852\\n    -height 1402\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C70B9819-854E-8609-6673-FD82778A5564";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 25 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode MaterialXSurfaceShader -n "surfacematerial1";
	rename -uid "4447A024-394F-B9A3-820E-939768153006";
	setAttr ".up" -type "string" "|materialXStack1|materialXStackShape1,%document1%surfacematerial1";
createNode shadingEngine -n "surfacematerial1SG";
	rename -uid "D0632A34-2646-22CD-43BD-13BF9673045B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "D44EC770-9245-9AF3-4452-659C78478018";
createNode shadingEngine -n "lambert2SG";
	rename -uid "71CEBC07-5A4A-E54F-F9F1-1C8CA7D21EE6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "4F535733-DF47-95AF-8733-07A7085A8819";
createNode file -n "file1";
	rename -uid "33728AA0-FB44-D6B8-9CBE-75800115EFB9";
	setAttr ".ftn" -type "string" "/Users/anthonyromrell/GitRepos/3DEssentialsResources/Maya//sourceimages/Pikachu_As_StitchTXT.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "E0D910B1-E449-2919-DB6D-4E93DA9E06B8";
createNode displayLayer -n "layer1";
	rename -uid "CD7279DA-2543-8015-38C7-CCB1A60D3D5B";
	setAttr ".dt" 2;
	setAttr ".c" 4;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 1;
createNode displayLayer -n "layer2";
	rename -uid "CADF253F-9E4C-0215-5D4E-FEAC4D2A1AB4";
	setAttr ".c" 1;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 2;
createNode skinCluster -n "skinCluster1";
	rename -uid "36A141DB-5A44-A6F7-8E6D-C385154DD6AF";
	setAttr -s 92 ".wl";
	setAttr ".wl[0:91].w"
		4 0 0.026281461045333028 1 0.042268651970909565 2 0.90345263481140137 
		7 0.027997252172356036
		4 0 0.49032360845586487 1 0.078902244835034066 2 0.37514868378639221 
		13 0.05562546292270891
		4 0 0.17295792180919661 1 0.00026699758334634263 2 0.82677507400512695 
		13 6.6023300884293185e-09
		4 0 1.9872491107410757e-07 1 0.00013247590087333297 2 0.99986732006072998 
		4 5.3134856124377055e-09
		5 0 0.33520895326628342 1 0.0026390583161031616 2 0.66095435619354248 
		3 0.00073671453476277407 12 0.00046091768930815518
		4 0 0.072853603646233417 1 0.0015422773039794285 2 0.9250645637512207 
		3 0.00053955529856644462
		3 1 2.935563221958093e-05 2 0.99995243549346924 4 1.8208874311180792e-05
		4 1 0.0001427583789833473 2 0.97184884548187256 7 0.027457281186621454 
		8 0.00055111495252264009
		4 2 0.93959778547286987 3 0.0016440459792869126 4 0.058586866710372963 
		5 0.00017130183747025084
		4 2 0.97423708438873291 4 0.0068724019619337221 5 0.0094452568246666795 
		6 0.0094452568246666882
		4 2 0.89238744974136353 7 0.038958175505098953 8 0.040593037852594369 
		9 0.028061336900943153
		4 2 0.93595224618911743 4 0.017600732816390255 5 0.024052231183072759 
		6 0.022394789811419562
		4 2 0.82081937789916992 4 0.090707321078722244 5 0.065489389620695462 
		6 0.022983911401412382
		3 2 0.99932026863098145 4 0.00037735910782787479 7 0.00030237226119067989
		4 2 0.95431333780288696 7 0.041596883934696967 8 0.0035248600758537472 
		9 0.00056491818656232286
		4 1 3.7118502129498396e-07 2 0.99996638298034668 3 2.9160174322850143e-05 
		4 4.0856603091751855e-06
		4 0 4.9996788341986422e-07 1 1.1404939169550446e-05 2 0.99998784065246582 
		4 2.5444048120937674e-07
		4 0 0.0042906713110857407 1 0.0087819470299458028 2 0.95520615577697754 
		7 0.031721225881990917
		4 2 0.012044182909579322 7 0.96081441640853882 8 0.024881601080591304 
		9 0.0022597996012905575
		4 2 0.036093340180748994 7 0.94977468252182007 8 0.012686369718137953 
		9 0.0014456075792929832
		4 2 0.0011334923124026498 7 0.026483632874665781 8 0.96082937717437744 
		9 0.011553497638554127
		4 2 0.0025218453801271338 7 0.029306121478871627 8 0.87911248207092285 
		9 0.089059551070078388
		4 2 0.0012854537434564075 7 0.0084069012211120623 8 0.12530292673175111 
		9 0.86500471830368042
		4 2 0.0061731874604831708 7 0.02371314851276712 8 0.19755974328090009 
		9 0.77255392074584961
		4 2 0.00059059373072121665 7 0.0075433039167237302 8 0.53591930866241455 
		9 0.45594679369014052
		4 2 0.0010968288530104349 7 0.0063361121069535906 8 0.10161989593502499 
		9 0.89094716310501099
		5 2 0.0037048192946143822 3 0.0030051747059389533 4 0.37454341552909964 
		5 0.56272679567337036 6 0.056019794796976663
		4 2 0.12045604937054473 4 0.33729984294497811 5 0.47355374693870544 
		6 0.068690360745771756
		4 2 0.00029540568990301047 4 0.019364157281827589 5 0.099337355229715929 
		6 0.88100308179855347
		3 4 0.0088038596325649473 5 0.024808689672397209 6 0.96638745069503784
		5 2 0.0001827909241355753 3 0.00011345440127000185 4 0.12846954486262982 
		5 0.3238523915174395 6 0.54738181829452515
		4 2 0.0033678385604643856 4 0.031767477709705505 5 0.057666671854677519 
		6 0.90719801187515259
		5 0 0.049144661309893686 1 0.013068034617509222 2 0.016419878214271103 
		7 0.0094776343696785226 13 0.91188979148864746
		4 0 0.5027346453934739 1 5.0492362709193767e-06 2 0.49726030230522156 
		13 3.0650337167295559e-09
		5 0 0.003799013367649273 1 0.00012018126027195845 2 7.1294276487096414e-05 
		12 5.3626638957150466e-05 13 0.99595588445663452
		5 0 0.99838382005691528 1 0.00020895338393540563 2 6.5722543679208863e-05 
		12 0.00068593629562210248 13 0.0006555677198479997
		1 13 1
		2 0 0.93333332985639572 2 0.066666670143604279
		5 0 0.074223647329392101 1 0.034326082961975583 2 0.1376926600933075 
		3 0.04091040881725367 12 0.71284720079807118
		5 0 0.0048327634066522218 1 0.00054994662536394525 2 0.00083616756199082342 
		3 0.00071308298872616363 12 0.99306803941726685
		5 0 0.021212976704865608 1 0.0003470645885363959 2 0.00019847924297447072 
		12 0.97807574272155762 13 0.00016573674206590762
		1 13 1
		1 0 1
		1 12 1
		5 0 0.99625468254089355 1 3.1745760317316791e-05 2 1.2405710925958921e-05 
		12 2.0895551883584597e-05 13 0.0036802704359795851
		1 0 1
		4 0 0.99316638708114624 1 0.00023317979084797833 2 8.0090456547702083e-05 
		13 0.0065203426714580794
		4 0 0.56835425305859466 1 0.0056415283900072581 2 0.42214396595954895 
		13 0.003860252591849122
		4 0 0.20936674147000084 1 0.00024250882656624839 2 0.79037845134735107 
		13 1.229835608186103e-05
		4 0 0.089696098099936991 1 0.00090254791995887759 2 0.90936768054962158 
		7 3.3673430482549517e-05
		1 2 1
		3 1 9.6752823887038763e-06 2 0.99991309642791748 7 7.7228289693815648e-05
		3 2 0.9994933009147644 7 0.0003830293135967181 8 0.00012366977163887758
		4 2 0.98282510042190552 7 0.0052612934458579775 8 0.0060103385292047829 
		9 0.005903267603031722
		4 2 0.99940282106399536 4 0.00015236977185208408 5 0.00022240817516927942 
		6 0.00022240098898327511
		3 2 0.99671745300292969 4 0.0019464796532040831 5 0.0013360673438662294
		3 2 0.9850279688835144 3 0.00091765769128733347 4 0.014054373425198262
		4 1 8.8480373447191125e-07 2 0.99999845027923584 3 1.9272805116487322e-07 
		4 4.7218897852337191e-07
		1 2 1
		2 0 0.23866510391235352 2 0.76133489608764648
		4 0 0.62244363762517108 1 0.0023406841836865339 2 0.37507107853889465 
		12 0.00014459965224776082
		1 0 1
		5 0 0.99920403957366943 1 7.9002947723768311e-07 2 2.5075662718135473e-07 
		12 0.00079477013839703166 13 1.4950182911568728e-07
		5 0 0.79691720008850098 1 0.0017051708039900176 2 0.00066689518955655495 
		12 0.19959107016255218 13 0.0011196637554002607
		3 4 0.0061554499295090881 5 0.027870517191615179 6 0.96597403287887573
		4 2 3.3370892869501873e-05 4 0.11477390610402298 5 0.28099379035540245 
		6 0.60419893264770508
		4 2 7.1791180453266351e-06 4 0.25425492148198719 5 0.74426603317260742 
		6 0.0014718662273600651
		3 2 0.97136718034744263 4 0.027485740105529857 5 0.0011470795470275173
		3 2 0.99836140871047974 4 0.001414617503244715 5 0.00022397378627554866
		1 2 1
		3 2 0.99917411804199219 7 0.00077524145795456498 8 5.0640500053247538e-05
		3 2 0.93396741151809692 7 0.0660126869159572 8 1.9901565945870576e-05
		4 2 0.020859347300371901 7 0.97790426015853882 8 0.0012279282287016035 
		9 8.4643123876787543e-06
		4 2 9.2493957475109286e-05 7 0.013567672182533391 8 0.97965270280838013 
		9 0.0066871310516113738
		4 2 1.2650916019554186e-05 7 0.00016490820022864439 8 0.29607471823692322 
		9 0.70374772264682861
		4 2 0.001267333548112043 7 0.0068182410145133853 8 0.098493609969540097 
		9 0.89342081546783447
		5 2 0.00086326714980522565 3 0.99888128042221069 4 0.00013553867367549369 
		5 8.367256347429715e-05 6 3.6241190834290299e-05
		5 2 0.00086123205089290184 3 0.99766981601715088 4 0.00057488964076822708 
		5 0.00057459614791428631 6 0.00031946614327370596
		5 2 0.026280967928137024 3 0.021831807931482802 4 0.74757951498031616 
		5 0.19012274146259681 6 0.014184967697467186
		5 2 0.31268084049224854 3 0.00013831945514875067 4 0.6608211978845463 
		5 0.025561334078677622 6 0.00079830808937878125
		4 2 0.58881207924895551 4 0.15871896167814423 5 0.19593131542205811 
		6 0.056537643650842143
		5 2 0.0035846700511249379 3 0.97986733913421631 4 0.005993245217879941 
		5 0.0059932452178799436 6 0.0045615003788988685
		4 2 0.5078922110344708 3 0.49078339338302612 4 0.0011795690451856231 
		5 0.00014482653731755771
		5 2 0.038428593622717021 3 0.94983822107315063 4 0.007980207513882627 
		5 0.0030934541931535594 6 0.00065952359709616013
		5 2 0.015598013552242907 3 0.85850107669830322 4 0.054892916547588655 
		5 0.054892916547588599 6 0.016115076654276604
		5 2 0.0040777549862506032 3 0.97354936599731445 4 0.0086923251507337457 
		5 0.0086923251507337509 6 0.0049882287149674489
		5 2 0.0024206787537259626 3 0.99527817964553833 4 0.0010475142761266325 
		5 0.00091766876137216818 6 0.00033595856323690636
		5 2 0.040202087224934374 3 0.95637470483779907 4 0.0023415423964924646 
		5 0.00079452876201292148 6 0.00028713677876116543
		5 0 0.021404905462510889 1 0.024636421414950153 2 0.76039475202560425 
		3 0.16251066342394779 4 0.031053257672986907
		1 2 1
		5 0 0.0058988350480157553 1 0.0077550017549266144 2 0.89257436990737915 
		3 0.080997796820729648 4 0.012773996468948829
		4 2 0.86398696899414062 3 0.13376238473642807 4 0.0020223126026888373 
		5 0.00022833366674245622;
	setAttr -s 14 ".pm";
	setAttr ".pm[0]" -type "matrix" 2.2204460492503121e-16 -0.99999999999999978 0 0 0.99999999999999978 2.2204460492503121e-16 0 0
		 0 0 1 0 -0.99999999999999978 -2.2204460492503121e-16 0 1;
	setAttr ".pm[1]" -type "matrix" 0.026670521204079367 -0.99964427838041581 0 0 0.99964427838041581 0.026670521204079367 0 0
		 0 0 1 0 -2.9989328351412472 -0.080011563612238087 0 1;
	setAttr ".pm[2]" -type "matrix" 0.99999999999999978 1.7347234759768064e-16 0 0 -1.7347234759768064e-16 0.99999999999999978 0 0
		 0 0 1 0 7.0082828429462977e-16 -3.9999999999999991 0 1;
	setAttr ".pm[3]" -type "matrix" 0.99999999999999978 1.7347234759768064e-16 0 0 -1.7347234759768064e-16 0.99999999999999978 0 0
		 0 0 1 0 -2.4577345729031768 -5.3204730522714678 7.8886090522101181e-31 1;
	setAttr ".pm[4]" -type "matrix" 0.42899142374102345 -6.0172437838827359e-16 0.90330856209639077 0
		 0.90330856209639077 2.8576569360240668e-16 -0.42899142374102339 0 8.5190900806315521e-17 1 6.9697960958907605e-16 0
		 -6.0823877225507728 -7.2148223091717084e-16 1.0830890354376685 1;
	setAttr ".pm[5]" -type "matrix" 0.05520925650723154 7.2400227589444906e-16 -0.9984748058894215 0
		 0.9984748058894215 -2.925268775288953e-16 0.055209256507231484 0 -1.8492919115325519e-16 -1 -7.9984142886803039e-16 0
		 -7.5058049138750027 4.0102448093968686e-16 1.898849600208838 1;
	setAttr ".pm[6]" -type "matrix" 0.05520925650723154 7.2400227589444906e-16 -0.9984748058894215 0
		 0.9984748058894215 -2.925268775288953e-16 0.055209256507231484 0 -1.8492919115325519e-16 -1 -7.9984142886803039e-16 0
		 -8.3370931577908216 4.7088292181142446e-16 1.8988496002088384 1;
	setAttr ".pm[7]" -type "matrix" -0.6734899961837032 1.6413455867221243e-16 0.73919633727479672 0
		 0.73919633727479661 1.4954482012357122e-16 0.6734899961837032 0 3.0091335756572292e-17 1 -1.9787332906594502e-16 0
		 -6.0247710269898818 -2.1312091859275146e-16 -2.4523040738920927 1;
	setAttr ".pm[8]" -type "matrix" -0.062378286155179402 1.6413455867221246e-16 0.99805257848288853 0
		 0.99805257848288842 1.4954482012357122e-16 0.062378286155179458 0 -1.0041802381290035e-16 1 -1.7313452381534516e-16 0
		 -7.360235581758503 -3.1076195789171701e-16 2.7645512679381246 1;
	setAttr ".pm[9]" -type "matrix" -0.062378286155179402 1.6413455867221246e-16 0.99805257848288853 0
		 0.99805257848288842 1.4954482012357122e-16 0.062378286155179458 0 -1.0041802381290035e-16 1 -1.7313452381534516e-16 0
		 -8.5020465750247212 -4.5991837865289367e-16 2.7645512679381241 1;
	setAttr ".pm[10]" -type "matrix" 0.99999999999999978 1.7347234759768064e-16 0 0 -1.7347234759768064e-16 0.99999999999999978 0 0
		 0 0 1 0 8.6736173798840305e-16 -4.9999999999999982 0 1;
	setAttr ".pm[11]" -type "matrix" 0.99999999999999978 1.7347234759768064e-16 0 0 -1.7347234759768064e-16 0.99999999999999978 0 0
		 0 0 1 0 1.2143064331837644e-15 -6.9999999999999982 0 1;
	setAttr ".pm[12]" -type "matrix" 0.99999999999999956 0 0 0 0 0.99999999999999956 0 0
		 0 0 1 0 -1.9999999999999991 -0.99999999999999956 0 1;
	setAttr ".pm[13]" -type "matrix" 0.99999999999999956 0 0 0 0 0.99999999999999956 0 0
		 0 0 1 0 1.9999999999999991 -0.99999999999999956 0 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 2.2204460492503131e-16 1.0000000000000002 0
		 0 -1.0000000000000002 2.2204460492503131e-16 0 0 5.0000000000000009 -2.2204460492503131e-16 1;
	setAttr -s 12 ".ma";
	setAttr -s 14 ".dpf[0:13]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 12 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 12 ".ifcl";
createNode dagPose -n "bindPose1";
	rename -uid "7623DE30-FC42-5104-1E5D-9F898E716A74";
	setAttr -s 12 ".wm";
	setAttr -s 14 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 -0.026673684081124509 0 1.9999999999999996
		 4.4408920985006242e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.99964427838041603 0.026670521204079381
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.69761360322026433 0.71647418697538545 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.4577345729031772 1.3204730522714696
		 -7.8886090522101181e-31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.6309285696184102 1.9589088151207807
		 -2.9582283945787943e-31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.59770214650380471 0.37782554713087368 0.37782554713087396 0.59770214650380515 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.5837492023076725 -8.7915741481685178e-17
		 2.2655510736666818e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.98122758286499656 1.1808864432142769e-17 -0.19285339153075909 6.0082860929535621e-17 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.83128824391582012 -6.9858440871738484e-17
		 -4.9960036108132044e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.2448888266700053 2.1050909374371036
		 -3.3139997065066315e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.28570526938450774 0.64681720682579702 0.64681720682579691 0.28570526938450769 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4453036889158735 9.7641039298965622e-17
		 -6.106226635438361e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.33183733806880761 0 0.94333662128818463 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1418109932662175 1.4915642076117632e-16
		 -1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.6653345369377338e-16
		 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.4694469519536132e-16
		 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.4408920985006262e-16
		 -1.9999999999999996 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.4408920985006262e-16
		 1.9999999999999996 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr -s 12 ".m";
	setAttr -s 12 ".p";
	setAttr ".bp" yes;
createNode animCurveTU -n "head_visibility";
	rename -uid "634FA49B-C04C-E5B5-E2A8-DFB744C7BC5A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 6 1 13 1 19 1 25 1;
	setAttr -s 5 ".kit[0:4]"  9 9 9 1 9;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
createNode animCurveTL -n "head_translateX";
	rename -uid "DC44D49F-C64A-E43C-4FC8-AD831FCABA6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.99964427838041603 6 0.99964427838041603
		 13 0.99964427838041603 19 0.99964427838041603 25 0.99964427838041603;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[3:4]"  1 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "head_translateY";
	rename -uid "439803A2-5B46-FDE3-CC08-D9A54DF794B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.026670521204079381 6 0.026670521204079381
		 13 0.026670521204079381 19 0.026670521204079381 25 0.026670521204079381;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[3:4]"  1 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "head_translateZ";
	rename -uid "E0C4F59B-314F-C057-A7AF-4F8160F05C14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 6 0 13 0 19 0 25 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[3:4]"  1 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "head_rotateX";
	rename -uid "21265498-4D47-B9C9-A0FC-3F9CB2AD526C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 6 0 13 0 19 0 25 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[3:4]"  1 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "head_rotateY";
	rename -uid "088037E5-BA48-3748-4F2C-50A801496732";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 6 0 13 0 19 0 25 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[3:4]"  1 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "head_rotateZ";
	rename -uid "6105D9D9-DD47-3B1F-CB41-95BAB7676D8C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 21.992737187853432 6 0 13 -20.486905916969661
		 19 0 25 21.992737187853432;
createNode animCurveTU -n "head_scaleX";
	rename -uid "E271DC8E-8144-55ED-01A7-2E8C2078B459";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 6 1 13 1 19 1 25 1;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[3:4]"  1 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTU -n "head_scaleY";
	rename -uid "931BC942-194F-0880-B78D-91B5E38BE5BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 6 1 13 1 19 1 25 1;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[3:4]"  1 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTU -n "head_scaleZ";
	rename -uid "A9B2339D-1F47-031E-C687-6C8527113B79";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 6 1 13 1 19 1 25 1;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[3:4]"  1 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "earL_rotateX";
	rename -uid "548948AD-B64E-1D46-0BC8-2F9BD10C142C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 0 19 0 25 0;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "earL_rotateY";
	rename -uid "F7C20AED-4F49-763C-6A16-E194553C2BA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 14.510864589066609 19 -17.188900010697299
		 25 0;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "earL_rotateZ";
	rename -uid "81DCF45D-0440-E2D1-8021-C0A6C8EA1B0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 0 19 0 25 0;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTU -n "earL_visibility";
	rename -uid "14F33E90-CA4F-56F1-AF62-7D84B7A2863D";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
	setAttr -s 4 ".kit[0:3]"  9 9 1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTL -n "earL_translateX";
	rename -uid "C034B0BB-EE47-CBE3-B604-D4BE97422EFD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1.6309285696184102 6 1.6309285696184102
		 19 1.6309285696184102 25 1.6309285696184102;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "earL_translateY";
	rename -uid "D095A0E6-A142-E863-B325-238B97C8E8DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1.9589088151207807 6 1.9589088151207807
		 19 1.9589088151207807 25 1.9589088151207807;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "earL_translateZ";
	rename -uid "9B7C2055-2046-1533-7847-77BBA481711F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -2.9582283945787943e-31 6 -2.9582283945787943e-31
		 19 0 25 0;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTU -n "earL_scaleX";
	rename -uid "6A5B9DF4-E54F-F4BB-E4F1-69BF53C40E3D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTU -n "earL_scaleY";
	rename -uid "B904D0F6-8B44-5575-71D4-748B92115298";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTU -n "earL_scaleZ";
	rename -uid "63149320-C146-F32C-FEF9-9EAFF63A3FB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "earR_rotateX";
	rename -uid "DC68B019-C046-67D1-9804-27BA8AC00436";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 0 19 0 25 0;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "earR_rotateY";
	rename -uid "551B83F1-F740-1D97-ACC4-7990ED875BE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 21.225779462331868 19 -18.297938448592745
		 25 0;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "earR_rotateZ";
	rename -uid "5BDA1CAF-5149-EEB0-9408-E09DB36A1526";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 0 19 0 25 0;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTU -n "earR_visibility";
	rename -uid "1F9738B7-424C-D21D-B6F9-59A1E8DEA665";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
	setAttr -s 4 ".kit[0:3]"  9 9 1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTL -n "earR_translateX";
	rename -uid "B2C17301-184E-EDFF-20E2-44A7F7DE248A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -2.2448888266700053 6 -2.2448888266700053
		 19 -2.2448888266700053 25 -2.2448888266700053;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "earR_translateY";
	rename -uid "98583BA8-8146-D6C8-6227-1AA485090E67";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 2.1050909374371036 6 2.1050909374371036
		 19 2.1050909374371036 25 2.1050909374371036;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "earR_translateZ";
	rename -uid "E7FAA67B-484B-7540-6DD1-8A82C1A57C7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -3.3139997065066315e-16 6 -3.3139997065066315e-16
		 19 0 25 0;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTU -n "earR_scaleX";
	rename -uid "ECEA7B1D-3144-78C7-77DA-D892327FB7E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTU -n "earR_scaleY";
	rename -uid "04A7362F-A943-FC83-3454-55855641CF80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTU -n "earR_scaleZ";
	rename -uid "4FEAEA65-3C4A-9CBA-3E0B-9B8A406CA409";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode timeEditor -s -n "timeEditor";
	rename -uid "7344BBF7-5F4C-CD3F-9630-C9A9B6E54360";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "92A700CA-DD4C-AC50-297C-D4B6A04DE446";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".version" -type "string" "5.4.1.2";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "1F996CCE-3141-3727-BD3C-E295A7AEE396";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "D9A3C378-0C4C-D25B-4842-AC9EB487EC49";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "1BDEF1A2-4C42-6802-2875-DEAE3D91DA09";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode aiImagerDenoiserOidn -s -n "defaultArnoldDenoiser";
	rename -uid "9F35633B-A747-AF61-50F0-AF81B10E8844";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "DD782D96-234D-2584-AF16-2FAEDFA26C96";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -2982.265421299127 -4685.4505590004928 ;
	setAttr ".tgi[0].vh" -type "double2" 5007.2653408328606 58.33333101537518 ;
	setAttr -s 30 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -937.14288330078125;
	setAttr ".tgi[0].ni[0].y" 504.28570556640625;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 144.28572082519531;
	setAttr ".tgi[0].ni[1].y" 11.428571701049805;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 291.42855834960938;
	setAttr ".tgi[0].ni[2].y" -120;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 598.5714111328125;
	setAttr ".tgi[0].ni[3].y" -85.714286804199219;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" -937.14288330078125;
	setAttr ".tgi[0].ni[4].y" -481.42855834960938;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -937.14288330078125;
	setAttr ".tgi[0].ni[5].y" -382.85714721679688;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 291.42855834960938;
	setAttr ".tgi[0].ni[6].y" -275.71429443359375;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 1271.4285888671875;
	setAttr ".tgi[0].ni[7].y" -191.42857360839844;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" -937.14288330078125;
	setAttr ".tgi[0].ni[8].y" -185.71427917480469;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" -937.14288330078125;
	setAttr ".tgi[0].ni[9].y" 11.428571701049805;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" -937.14288330078125;
	setAttr ".tgi[0].ni[10].y" 110;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" -937.14288330078125;
	setAttr ".tgi[0].ni[11].y" 307.14285278320312;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" -937.14288330078125;
	setAttr ".tgi[0].ni[12].y" -87.142860412597656;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" -15.714285850524902;
	setAttr ".tgi[0].ni[13].y" 38.571430206298828;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 291.42855834960938;
	setAttr ".tgi[0].ni[14].y" 420;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" -322.85714721679688;
	setAttr ".tgi[0].ni[15].y" -51.428569793701172;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 291.42855834960938;
	setAttr ".tgi[0].ni[16].y" -431.42855834960938;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" -630;
	setAttr ".tgi[0].ni[17].y" 57.142856597900391;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" -8.5714282989501953;
	setAttr ".tgi[0].ni[18].y" 11.428571701049805;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" -1551.4285888671875;
	setAttr ".tgi[0].ni[19].y" -287.14285278320312;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" -15.714285850524902;
	setAttr ".tgi[0].ni[20].y" -174.28572082519531;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" -1244.2857666015625;
	setAttr ".tgi[0].ni[21].y" -287.14285278320312;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" -937.14288330078125;
	setAttr ".tgi[0].ni[22].y" 208.57142639160156;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" -937.14288330078125;
	setAttr ".tgi[0].ni[23].y" -284.28570556640625;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 598.5714111328125;
	setAttr ".tgi[0].ni[24].y" 241.42857360839844;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 964.28570556640625;
	setAttr ".tgi[0].ni[25].y" -191.42857360839844;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 291.42855834960938;
	setAttr ".tgi[0].ni[26].y" 92.857139587402344;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" -162.85714721679688;
	setAttr ".tgi[0].ni[27].y" 11.428571701049805;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" -937.14288330078125;
	setAttr ".tgi[0].ni[28].y" 405.71429443359375;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" -322.85714721679688;
	setAttr ".tgi[0].ni[29].y" 104.28571319580078;
	setAttr ".tgi[0].ni[29].nvs" 18304;
createNode animCurveTA -n "body_rotateX";
	rename -uid "648985B4-8444-B30E-626C-25912476D4A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 0 19 0 25 0;
createNode animCurveTA -n "body_rotateY";
	rename -uid "012F6267-2040-2200-BCB8-C28ADD94E986";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 0 19 0 25 0;
createNode animCurveTA -n "body_rotateZ";
	rename -uid "0D207C79-CE42-A784-06A1-78A5C5C9DB4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 0 19 0 25 0;
createNode animCurveTA -n "back_rotateX";
	rename -uid "4761ED8D-CE42-4F52-5AED-AC85A6097562";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 0 19 0 25 0;
createNode animCurveTA -n "back_rotateY";
	rename -uid "51215708-D945-C2C9-10EC-6AB69C3DBB8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 0 19 0 25 0;
createNode animCurveTA -n "back_rotateZ";
	rename -uid "2867E387-B54F-4036-3DE2-30BEFE5A0122";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -1.5282895219137238 6 -1.5282895219137238
		 19 -1.5282895219137238 25 -1.5282895219137238;
createNode animCurveTA -n "earL2_rotateX";
	rename -uid "8B6784BF-A149-99E5-1DBC-D491F9CA308C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 0 19 0 25 0;
createNode animCurveTA -n "earL2_rotateY";
	rename -uid "714A9BE4-A144-9424-CD7A-678A0C234E6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 -11.513099423597831 19 19.830249005830083
		 25 0;
createNode animCurveTA -n "earL2_rotateZ";
	rename -uid "7EC58094-3A42-A04E-EA14-EBB17CC89557";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 0 19 0 25 0;
createNode animCurveTA -n "earL3_rotateX";
	rename -uid "89F416ED-6D43-D8E5-822D-6DA73EA09F06";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 0 19 0 25 0;
createNode animCurveTA -n "earL3_rotateY";
	rename -uid "31EA9FD7-2447-B66D-E3B6-638165D15A51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 -11.513099423597831 19 19.830249005830083
		 25 0;
createNode animCurveTA -n "earL3_rotateZ";
	rename -uid "0DFAE9F2-1C41-9D18-8B0F-A38CECDD6C52";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 0 19 0 25 0;
createNode animCurveTA -n "earR2_rotateX";
	rename -uid "D181EB69-C44D-D9A8-5410-8E9B99A14953";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 0 19 0 25 0;
createNode animCurveTA -n "earR2_rotateY";
	rename -uid "D525E709-5046-8BE8-9C84-F787B99FB615";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 15.887051313263136 19 -13.305035792302347
		 25 0;
createNode animCurveTA -n "earR2_rotateZ";
	rename -uid "AFBA2D81-0945-7FA8-5865-05A17F499D2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 0 19 0 25 0;
createNode animCurveTA -n "earR3_rotateX";
	rename -uid "742AD3CD-D545-243E-D01E-13A9DE159A32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 0 19 0 25 0;
createNode animCurveTA -n "earR3_rotateY";
	rename -uid "9E1CC476-F947-95D4-4CF6-DC87EC7139E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 15.887051313263136 19 -13.305035792302347
		 25 0;
createNode animCurveTA -n "earR3_rotateZ";
	rename -uid "85B69B55-874E-AD70-1319-F3BBE326009D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 0 19 0 25 0;
createNode animCurveTA -n "tail_rotateX";
	rename -uid "56BD81C6-2548-B915-0057-97AE92E8A805";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 0 19 0 25 0;
createNode animCurveTA -n "tail_rotateY";
	rename -uid "75BEC620-EB4A-707A-5FF6-D8BD3ABC9EE5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 0 19 0 25 0;
createNode animCurveTA -n "tail_rotateZ";
	rename -uid "CE04BD72-8042-2C09-87B0-27A92192797A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 25.199470232912631 19 -30.339568105043352
		 25 0;
createNode animCurveTA -n "footL_rotateX";
	rename -uid "09256AE9-3D41-8750-C923-07869FA78F37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 0 19 0 25 0;
createNode animCurveTA -n "footL_rotateY";
	rename -uid "6A659BC5-C74A-BADC-FFC9-0093EB1E0A3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 0 19 0 25 0;
createNode animCurveTA -n "footL_rotateZ";
	rename -uid "06E13080-F44B-0F46-4007-9FA1638752A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 14.67010349757135 19 -10.759676873321133
		 25 0;
createNode animCurveTA -n "footR_rotateX";
	rename -uid "4978E3EC-1A44-96C8-BE7D-05887F6DE2E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 0 19 0 25 0;
createNode animCurveTA -n "footR_rotateY";
	rename -uid "E81F2EE3-8A43-E74A-3A5D-7E8C20C4EFF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 0 19 0 25 0;
createNode animCurveTA -n "footR_rotateZ";
	rename -uid "1F92B9D0-0247-2BC8-CE70-0D8E7F0C64DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 14.67010349757135 19 -10.759676873321133
		 25 0;
createNode animCurveTU -n "body_visibility";
	rename -uid "A531E379-A944-069C-D209-2EBE9D697C59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "body_translateX";
	rename -uid "F3016D6D-854A-9383-62A1-EEB35CC5F022";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 0 19 0 25 0;
createNode animCurveTL -n "body_translateY";
	rename -uid "B133F9C0-B94D-BF1F-D8F6-38B645BB808A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
createNode animCurveTL -n "body_translateZ";
	rename -uid "4381034F-CC47-97BF-DB3B-83B49944CDC5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 0 19 0 25 0;
createNode animCurveTU -n "body_scaleX";
	rename -uid "2263A21F-EC42-97B9-AEDA-DAADEE3D0AEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
createNode animCurveTU -n "body_scaleY";
	rename -uid "755141BC-084E-61A6-15FC-75B0877F5600";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
createNode animCurveTU -n "body_scaleZ";
	rename -uid "73EC272C-184C-E0A7-EED6-DEB3A125F95F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
createNode animCurveTU -n "back_visibility";
	rename -uid "9E086937-2E4F-8A97-E143-FA9545311C23";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "back_translateX";
	rename -uid "1FA0C078-3442-6987-56B9-89B3DDBC9B0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1.9999999999999996 6 1.9999999999999996
		 19 1.9999999999999996 25 1.9999999999999996;
createNode animCurveTL -n "back_translateY";
	rename -uid "2CA8B428-A245-AE94-41E6-6B9084ACA30D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 4.4408920985006242e-16 6 4.4408920985006242e-16
		 19 0 25 0;
createNode animCurveTL -n "back_translateZ";
	rename -uid "5E39958C-B841-E727-0845-C3A0C4074ECA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 0 19 0 25 0;
createNode animCurveTU -n "back_scaleX";
	rename -uid "C90E06D5-274C-DABA-7BC3-36BE9771B46E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
createNode animCurveTU -n "back_scaleY";
	rename -uid "23D471F7-2E4F-E5C5-7672-99BD964C5D2F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
createNode animCurveTU -n "back_scaleZ";
	rename -uid "2C21BADF-EC45-85AB-30C3-E4B15170FFE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
createNode animCurveTU -n "tail_visibility";
	rename -uid "8A9ECA9B-0F4E-705A-E37A-3AB1DC105236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "tail_translateX";
	rename -uid "C93AAD33-4044-E3A1-1B5D-208742490E76";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 2.4577345729031772 6 2.4577345729031772
		 19 2.4577345729031772 25 2.4577345729031772;
createNode animCurveTL -n "tail_translateY";
	rename -uid "8F9A994F-A848-6DEA-0786-B7BE3C4EEACF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1.3204730522714696 6 1.3204730522714696
		 19 1.3204730522714696 25 1.3204730522714696;
createNode animCurveTL -n "tail_translateZ";
	rename -uid "ED59410D-1D40-67F6-C0B0-45B94C5062A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -7.8886090522101181e-31 6 -7.8886090522101181e-31
		 19 0 25 0;
createNode animCurveTU -n "tail_scaleX";
	rename -uid "2B28E5C0-424B-CF53-9C7F-4DAFF2D45206";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
createNode animCurveTU -n "tail_scaleY";
	rename -uid "B748DE5B-2541-9B5C-7EBE-97BA5C884406";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
createNode animCurveTU -n "tail_scaleZ";
	rename -uid "9F227012-604C-292D-CCD1-47BD42F8AF76";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
createNode animCurveTU -n "earL2_visibility";
	rename -uid "D568EF79-2C44-C092-613D-A4B99E761D01";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "earL2_translateX";
	rename -uid "1584434B-B44D-1B1B-8D0E-CA91F813423D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1.5837492023076725 6 1.5837492023076725
		 19 1.5837492023076725 25 1.5837492023076725;
createNode animCurveTL -n "earL2_translateY";
	rename -uid "A6973793-A44A-F47E-6E59-0C8873F84F0F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -8.7915741481685178e-17 6 -8.7915741481685178e-17
		 19 0 25 0;
createNode animCurveTL -n "earL2_translateZ";
	rename -uid "2AB18508-7049-65DD-DE1F-288C56789F59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 2.2655510736666818e-16 6 2.2655510736666818e-16
		 19 0 25 0;
createNode animCurveTU -n "earL2_scaleX";
	rename -uid "A949C703-2244-0ABD-1629-79A4DD80FCFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
createNode animCurveTU -n "earL2_scaleY";
	rename -uid "2062C0AC-AF41-298D-F946-BE984C17D27D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
createNode animCurveTU -n "earL2_scaleZ";
	rename -uid "7401C3E6-CD46-C328-6548-A58C95C5BA55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
createNode animCurveTU -n "earL3_visibility";
	rename -uid "0F89C46B-2C43-7F39-7317-93AB2D353FAC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "earL3_translateX";
	rename -uid "75161424-8745-21B2-E03D-4B84C289A24E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0.83128824391582012 6 0.83128824391582012
		 19 0.83128824391582012 25 0.83128824391582012;
createNode animCurveTL -n "earL3_translateY";
	rename -uid "B63B7901-B14C-9188-496B-FE8939943C60";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -6.9858440871738484e-17 6 -6.9858440871738484e-17
		 19 0 25 0;
createNode animCurveTL -n "earL3_translateZ";
	rename -uid "E3E7D7D2-1D43-13D9-CFF7-CB9E034C902D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -4.9960036108132044e-16 6 -4.9960036108132044e-16
		 19 0 25 0;
createNode animCurveTU -n "earL3_scaleX";
	rename -uid "7D682CE9-054C-6CA9-E75C-F7B0928A53D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
createNode animCurveTU -n "earL3_scaleY";
	rename -uid "678B739B-3A44-CA79-C4C1-E7BA5880EC5B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
createNode animCurveTU -n "earL3_scaleZ";
	rename -uid "00F99E45-1F4E-A636-E51C-3681750514F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
createNode animCurveTU -n "earR2_visibility";
	rename -uid "16C27EB4-2642-1401-4AFA-B4A7AC4B58F0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "earR2_translateX";
	rename -uid "3E0E0898-5844-DEB0-345D-A78F59C5A35F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1.4453036889158735 6 1.4453036889158735
		 19 1.4453036889158735 25 1.4453036889158735;
createNode animCurveTL -n "earR2_translateY";
	rename -uid "19850995-4141-B35F-1092-928AF95DCF97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.7641039298965622e-17 6 9.7641039298965622e-17
		 19 0 25 0;
createNode animCurveTL -n "earR2_translateZ";
	rename -uid "B627A137-624C-2E39-9FE5-9BAE84BEFCB3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -6.106226635438361e-16 6 -6.106226635438361e-16
		 19 0 25 0;
createNode animCurveTU -n "earR2_scaleX";
	rename -uid "425CB49C-A94B-1D87-2CD5-B1A0BEDB5C70";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
createNode animCurveTU -n "earR2_scaleY";
	rename -uid "EAD579EB-B24C-DC4E-E71A-CBBD3037C629";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
createNode animCurveTU -n "earR2_scaleZ";
	rename -uid "40039DD8-624F-6745-3D8C-DDA48A0DA1BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
createNode animCurveTU -n "earR3_visibility";
	rename -uid "D0B46EED-6E47-7970-0E73-2BAB4748D112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "earR3_translateX";
	rename -uid "60ED8862-184F-809F-4498-49ACE35A133F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1.1418109932662175 6 1.1418109932662175
		 19 1.1418109932662175 25 1.1418109932662175;
createNode animCurveTL -n "earR3_translateY";
	rename -uid "0ACC9A38-6240-A151-09A9-9E9F999EA7AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1.4915642076117632e-16 6 1.4915642076117632e-16
		 19 0 25 0;
createNode animCurveTL -n "earR3_translateZ";
	rename -uid "48766176-3541-6D92-1248-77B7452A0953";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -1.1102230246251565e-16 6 -1.1102230246251565e-16
		 19 0 25 0;
createNode animCurveTU -n "earR3_scaleX";
	rename -uid "898C36B0-F44C-75AC-91EF-33A5659F57AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
createNode animCurveTU -n "earR3_scaleY";
	rename -uid "B37D5F31-B749-3B40-B018-05BC4C46938F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
createNode animCurveTU -n "earR3_scaleZ";
	rename -uid "7539285F-B644-C148-F6AF-E6B10C0BF02C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
createNode animCurveTU -n "footL_visibility";
	rename -uid "3B9BF543-6E43-EEB0-0796-B9A8D2D1E5C6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "footL_translateX";
	rename -uid "83C84753-7B48-F962-75E3-74966BA7AE6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 4.4408920985006262e-16 6 4.4408920985006262e-16
		 19 0 25 0;
createNode animCurveTL -n "footL_translateY";
	rename -uid "14E01812-534C-9566-71F8-8A89B487AD5E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -1.9999999999999996 6 -1.9999999999999996
		 19 -1.9999999999999996 25 -1.9999999999999996;
createNode animCurveTL -n "footL_translateZ";
	rename -uid "41AFAB8B-C043-E1EE-3EE9-5897DE941B85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 0 19 0 25 0;
createNode animCurveTU -n "footL_scaleX";
	rename -uid "B094DD29-DF4D-A540-E33F-46BF7C1B2083";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
createNode animCurveTU -n "footL_scaleY";
	rename -uid "76E9CC53-5646-3DB4-2651-62A7CEEBEE4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
createNode animCurveTU -n "footL_scaleZ";
	rename -uid "A2F31711-4C42-EB1B-10A6-3C82165F8360";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
createNode animCurveTU -n "footR_visibility";
	rename -uid "5E561B1E-E847-9B1B-B147-87899DE2598C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "footR_translateX";
	rename -uid "0360BDAC-8C4F-7A24-7EB0-0F9F56D9C28B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -4.4408920985006262e-16 6 -4.4408920985006262e-16
		 19 0 25 0;
createNode animCurveTL -n "footR_translateY";
	rename -uid "110F12DE-C544-4206-98B9-1DA2CDD5D87F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1.9999999999999996 6 1.9999999999999996
		 19 1.9999999999999996 25 1.9999999999999996;
createNode animCurveTL -n "footR_translateZ";
	rename -uid "1A471272-B741-8483-549F-898C729C2C82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 0 19 0 25 0;
createNode animCurveTU -n "footR_scaleX";
	rename -uid "D882CB98-2546-D7AF-57F2-B4857E30367E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
createNode animCurveTU -n "footR_scaleY";
	rename -uid "87B48379-0140-6C9D-4790-2C895AC2329C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
createNode animCurveTU -n "footR_scaleZ";
	rename -uid "764A02D8-C846-7768-43D4-DFB16FACF1D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 19 1 25 1;
createNode lambert -n "lambert2";
	rename -uid "040736AF-B344-9D7D-C0D8-C9B747529CBA";
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "FAA527C4-5342-8338-18C0-4A94A0534DAC";
select -ne :time1;
	setAttr ".o" 22;
	setAttr ".unw" 22;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 3;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :lightList1;
select -ne :defaultTextureList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".imfkey" -type "string" "exr";
	setAttr ".an" yes;
	setAttr ".ef" 24;
	setAttr ".pff" yes;
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".w" 1400;
	setAttr ".h" 1400;
	setAttr ".pa" 1;
	setAttr ".dar" 1;
select -ne :defaultLightSet;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "layer1.di" "toonMeshpolySurface1.do";
connectAttr "skinCluster1.og[0]" "toonMeshpolySurfaceShape1.i";
connectAttr "body_scaleX.o" "body.sx";
connectAttr "body_scaleY.o" "body.sy";
connectAttr "body_scaleZ.o" "body.sz";
connectAttr "layer2.di" "body.do";
connectAttr "body_rotateX.o" "body.rx";
connectAttr "body_rotateY.o" "body.ry";
connectAttr "body_rotateZ.o" "body.rz";
connectAttr "body_visibility.o" "body.v";
connectAttr "body_translateX.o" "body.tx";
connectAttr "body_translateY.o" "body.ty";
connectAttr "body_translateZ.o" "body.tz";
connectAttr "body.s" "back.is";
connectAttr "back_scaleX.o" "back.sx";
connectAttr "back_scaleY.o" "back.sy";
connectAttr "back_scaleZ.o" "back.sz";
connectAttr "back_rotateX.o" "back.rx";
connectAttr "back_rotateY.o" "back.ry";
connectAttr "back_rotateZ.o" "back.rz";
connectAttr "back_visibility.o" "back.v";
connectAttr "back_translateX.o" "back.tx";
connectAttr "back_translateY.o" "back.ty";
connectAttr "back_translateZ.o" "back.tz";
connectAttr "back.s" "head.is";
connectAttr "head_scaleX.o" "head.sx";
connectAttr "head_scaleY.o" "head.sy";
connectAttr "head_scaleZ.o" "head.sz";
connectAttr "head_visibility.o" "head.v";
connectAttr "head_translateX.o" "head.tx";
connectAttr "head_translateY.o" "head.ty";
connectAttr "head_translateZ.o" "head.tz";
connectAttr "head_rotateX.o" "head.rx";
connectAttr "head_rotateY.o" "head.ry";
connectAttr "head_rotateZ.o" "head.rz";
connectAttr "head.s" "tail.is";
connectAttr "tail_rotateX.o" "tail.rx";
connectAttr "tail_rotateY.o" "tail.ry";
connectAttr "tail_rotateZ.o" "tail.rz";
connectAttr "tail_visibility.o" "tail.v";
connectAttr "tail_translateX.o" "tail.tx";
connectAttr "tail_translateY.o" "tail.ty";
connectAttr "tail_translateZ.o" "tail.tz";
connectAttr "tail_scaleX.o" "tail.sx";
connectAttr "tail_scaleY.o" "tail.sy";
connectAttr "tail_scaleZ.o" "tail.sz";
connectAttr "earL_scaleX.o" "earL.sx";
connectAttr "earL_scaleY.o" "earL.sy";
connectAttr "earL_scaleZ.o" "earL.sz";
connectAttr "head.s" "earL.is";
connectAttr "earL_rotateX.o" "earL.rx";
connectAttr "earL_rotateY.o" "earL.ry";
connectAttr "earL_rotateZ.o" "earL.rz";
connectAttr "earL_visibility.o" "earL.v";
connectAttr "earL_translateX.o" "earL.tx";
connectAttr "earL_translateY.o" "earL.ty";
connectAttr "earL_translateZ.o" "earL.tz";
connectAttr "earL.s" "earL2.is";
connectAttr "earL2_scaleX.o" "earL2.sx";
connectAttr "earL2_scaleY.o" "earL2.sy";
connectAttr "earL2_scaleZ.o" "earL2.sz";
connectAttr "earL2_rotateX.o" "earL2.rx";
connectAttr "earL2_rotateY.o" "earL2.ry";
connectAttr "earL2_rotateZ.o" "earL2.rz";
connectAttr "earL2_visibility.o" "earL2.v";
connectAttr "earL2_translateX.o" "earL2.tx";
connectAttr "earL2_translateY.o" "earL2.ty";
connectAttr "earL2_translateZ.o" "earL2.tz";
connectAttr "earL2.s" "earL3.is";
connectAttr "earL3_rotateX.o" "earL3.rx";
connectAttr "earL3_rotateY.o" "earL3.ry";
connectAttr "earL3_rotateZ.o" "earL3.rz";
connectAttr "earL3_visibility.o" "earL3.v";
connectAttr "earL3_translateX.o" "earL3.tx";
connectAttr "earL3_translateY.o" "earL3.ty";
connectAttr "earL3_translateZ.o" "earL3.tz";
connectAttr "earL3_scaleX.o" "earL3.sx";
connectAttr "earL3_scaleY.o" "earL3.sy";
connectAttr "earL3_scaleZ.o" "earL3.sz";
connectAttr "head.s" "earR.is";
connectAttr "earR_scaleX.o" "earR.sx";
connectAttr "earR_scaleY.o" "earR.sy";
connectAttr "earR_scaleZ.o" "earR.sz";
connectAttr "earR_rotateX.o" "earR.rx";
connectAttr "earR_rotateY.o" "earR.ry";
connectAttr "earR_rotateZ.o" "earR.rz";
connectAttr "earR_visibility.o" "earR.v";
connectAttr "earR_translateX.o" "earR.tx";
connectAttr "earR_translateY.o" "earR.ty";
connectAttr "earR_translateZ.o" "earR.tz";
connectAttr "earR.s" "earR2.is";
connectAttr "earR2_scaleX.o" "earR2.sx";
connectAttr "earR2_scaleY.o" "earR2.sy";
connectAttr "earR2_scaleZ.o" "earR2.sz";
connectAttr "earR2_rotateX.o" "earR2.rx";
connectAttr "earR2_rotateY.o" "earR2.ry";
connectAttr "earR2_rotateZ.o" "earR2.rz";
connectAttr "earR2_visibility.o" "earR2.v";
connectAttr "earR2_translateX.o" "earR2.tx";
connectAttr "earR2_translateY.o" "earR2.ty";
connectAttr "earR2_translateZ.o" "earR2.tz";
connectAttr "earR2.s" "earR3.is";
connectAttr "earR3_rotateX.o" "earR3.rx";
connectAttr "earR3_rotateY.o" "earR3.ry";
connectAttr "earR3_rotateZ.o" "earR3.rz";
connectAttr "earR3_visibility.o" "earR3.v";
connectAttr "earR3_translateX.o" "earR3.tx";
connectAttr "earR3_translateY.o" "earR3.ty";
connectAttr "earR3_translateZ.o" "earR3.tz";
connectAttr "earR3_scaleX.o" "earR3.sx";
connectAttr "earR3_scaleY.o" "earR3.sy";
connectAttr "earR3_scaleZ.o" "earR3.sz";
connectAttr "body.s" "footL.is";
connectAttr "footL_rotateX.o" "footL.rx";
connectAttr "footL_rotateY.o" "footL.ry";
connectAttr "footL_rotateZ.o" "footL.rz";
connectAttr "footL_visibility.o" "footL.v";
connectAttr "footL_translateX.o" "footL.tx";
connectAttr "footL_translateY.o" "footL.ty";
connectAttr "footL_translateZ.o" "footL.tz";
connectAttr "footL_scaleX.o" "footL.sx";
connectAttr "footL_scaleY.o" "footL.sy";
connectAttr "footL_scaleZ.o" "footL.sz";
connectAttr "body.s" "footR.is";
connectAttr "footR_rotateX.o" "footR.rx";
connectAttr "footR_rotateY.o" "footR.ry";
connectAttr "footR_rotateZ.o" "footR.rz";
connectAttr "footR_visibility.o" "footR.v";
connectAttr "footR_translateX.o" "footR.tx";
connectAttr "footR_translateY.o" "footR.ty";
connectAttr "footR_translateZ.o" "footR.tz";
connectAttr "footR_scaleX.o" "footR.sx";
connectAttr "footR_scaleY.o" "footR.sy";
connectAttr "footR_scaleZ.o" "footR.sz";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfacematerial1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfacematerial1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "materialXStackShape1.sk" "surfacematerial1.sk";
connectAttr "surfacematerial1.oc" "surfacematerial1SG.ss";
connectAttr "surfacematerial1SG.msg" "materialInfo1.sg";
connectAttr "surfacematerial1.msg" "materialInfo1.m";
connectAttr "surfacematerial1.msg" "materialInfo1.t" -na;
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "toonMeshpolySurfaceShape1.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo2.sg";
connectAttr "lambert2.msg" "materialInfo2.m";
connectAttr "file1.msg" "materialInfo2.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "layerManager.dli[1]" "layer1.id";
connectAttr "layerManager.dli[2]" "layer2.id";
connectAttr "toonMeshpolySurfaceShape1Orig.w" "skinCluster1.ip[0].ig";
connectAttr "toonMeshpolySurfaceShape1Orig.o" "skinCluster1.orggeom[0]";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "body.wm" "skinCluster1.ma[0]";
connectAttr "back.wm" "skinCluster1.ma[1]";
connectAttr "head.wm" "skinCluster1.ma[2]";
connectAttr "tail.wm" "skinCluster1.ma[3]";
connectAttr "earL.wm" "skinCluster1.ma[4]";
connectAttr "earL2.wm" "skinCluster1.ma[5]";
connectAttr "earL3.wm" "skinCluster1.ma[6]";
connectAttr "earR.wm" "skinCluster1.ma[7]";
connectAttr "earR2.wm" "skinCluster1.ma[8]";
connectAttr "earR3.wm" "skinCluster1.ma[9]";
connectAttr "footL.wm" "skinCluster1.ma[12]";
connectAttr "footR.wm" "skinCluster1.ma[13]";
connectAttr "body.liw" "skinCluster1.lw[0]";
connectAttr "back.liw" "skinCluster1.lw[1]";
connectAttr "head.liw" "skinCluster1.lw[2]";
connectAttr "tail.liw" "skinCluster1.lw[3]";
connectAttr "earL.liw" "skinCluster1.lw[4]";
connectAttr "earL2.liw" "skinCluster1.lw[5]";
connectAttr "earL3.liw" "skinCluster1.lw[6]";
connectAttr "earR.liw" "skinCluster1.lw[7]";
connectAttr "earR2.liw" "skinCluster1.lw[8]";
connectAttr "earR3.liw" "skinCluster1.lw[9]";
connectAttr "footL.liw" "skinCluster1.lw[12]";
connectAttr "footR.liw" "skinCluster1.lw[13]";
connectAttr "body.obcc" "skinCluster1.ifcl[0]";
connectAttr "back.obcc" "skinCluster1.ifcl[1]";
connectAttr "head.obcc" "skinCluster1.ifcl[2]";
connectAttr "tail.obcc" "skinCluster1.ifcl[3]";
connectAttr "earL.obcc" "skinCluster1.ifcl[4]";
connectAttr "earL2.obcc" "skinCluster1.ifcl[5]";
connectAttr "earL3.obcc" "skinCluster1.ifcl[6]";
connectAttr "earR.obcc" "skinCluster1.ifcl[7]";
connectAttr "earR2.obcc" "skinCluster1.ifcl[8]";
connectAttr "earR3.obcc" "skinCluster1.ifcl[9]";
connectAttr "footL.obcc" "skinCluster1.ifcl[12]";
connectAttr "footR.obcc" "skinCluster1.ifcl[13]";
connectAttr "tail.msg" "skinCluster1.ptt";
connectAttr "body.msg" "bindPose1.m[0]";
connectAttr "back.msg" "bindPose1.m[1]";
connectAttr "head.msg" "bindPose1.m[2]";
connectAttr "tail.msg" "bindPose1.m[3]";
connectAttr "earL.msg" "bindPose1.m[4]";
connectAttr "earL2.msg" "bindPose1.m[5]";
connectAttr "earL3.msg" "bindPose1.m[6]";
connectAttr "earR.msg" "bindPose1.m[7]";
connectAttr "earR2.msg" "bindPose1.m[8]";
connectAttr "earR3.msg" "bindPose1.m[9]";
connectAttr "footL.msg" "bindPose1.m[12]";
connectAttr "footR.msg" "bindPose1.m[13]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[2]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[2]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[0]" "bindPose1.p[12]";
connectAttr "bindPose1.m[0]" "bindPose1.p[13]";
connectAttr "body.bps" "bindPose1.wm[0]";
connectAttr "back.bps" "bindPose1.wm[1]";
connectAttr "head.bps" "bindPose1.wm[2]";
connectAttr "tail.bps" "bindPose1.wm[3]";
connectAttr "earL.bps" "bindPose1.wm[4]";
connectAttr "earL2.bps" "bindPose1.wm[5]";
connectAttr "earL3.bps" "bindPose1.wm[6]";
connectAttr "earR.bps" "bindPose1.wm[7]";
connectAttr "earR2.bps" "bindPose1.wm[8]";
connectAttr "earR3.bps" "bindPose1.wm[9]";
connectAttr "footL.bps" "bindPose1.wm[12]";
connectAttr "footR.bps" "bindPose1.wm[13]";
connectAttr ":defaultArnoldDenoiser.msg" ":defaultArnoldRenderOptions.imagers" -na
		;
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "head_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "toonMeshpolySurface1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "earL3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "toonMeshpolySurfaceShape1Orig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "head_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "head_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "earR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "toonMeshpolySurfaceShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "head_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn";
connectAttr "head_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "head_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn";
connectAttr "head_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "back.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn";
connectAttr "earL2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn";
connectAttr "tail.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn";
connectAttr "earL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn";
connectAttr "footR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn";
connectAttr "head.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn";
connectAttr "layer2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn";
connectAttr "earR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn";
connectAttr "body.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn";
connectAttr "head_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "head_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn";
connectAttr "bindPose1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn";
connectAttr "skinCluster1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn";
connectAttr "footL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn";
connectAttr "layer1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn";
connectAttr "head_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "earR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn";
connectAttr "file1.oc" "lambert2.c";
connectAttr "file1.ot" "lambert2.it";
connectAttr "surfacematerial1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "surfacematerial1.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "directionalLightShape1.ltd" ":lightList1.l" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "directionalLight1.iog" ":defaultLightSet.dsm" -na;
// End of PikaRig.ma
