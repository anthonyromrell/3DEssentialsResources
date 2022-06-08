//Maya ASCII 2020 scene
//Name: HammerWithUVs.ma
//Last modified: Tue, Jun 07, 2022 11:18:02 AM
//Codeset: UTF-8
requires maya "2020";
requires "mtoa" "4.0.3";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2020";
fileInfo "version" "2020";
fileInfo "cutIdentifier" "202004291615-7bd99f0972";
fileInfo "osv" "Mac OS X 10.16";
fileInfo "UUID" "9FE1B64E-3248-2329-F2DC-349E6CC8CB24";
createNode transform -s -n "persp";
	rename -uid "E7B6D13F-8A4A-2750-0CA7-779A5DC97415";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.5984424871706606 23.864337776925275 7.4906572952932846 ;
	setAttr ".r" -type "double3" -26.138352729616159 39.40000000000316 -2.0579891896431007e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "D850AFD6-9347-DEB1-00BC-B8A2B3ABA417";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 12.248666932380395;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "437AA45D-6A48-930A-29E2-459D4A25BAAF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.431478544979681 1000.1 0.14628247904901839 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "9040BCD8-8B4C-3C6B-AC9D-15BF91F52CE9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 11.295097132284925;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "D9026CF3-3448-6E1B-F350-0CAB646D1DFC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "C0F01DE6-0F4E-0532-91A0-209B7D1BF864";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "A527DA94-0B43-A73E-D919-5D8AE4FD8D2E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "176FBA1F-1541-1939-442B-1AA7B2802C13";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Hammermesh";
	rename -uid "F960DCB9-AB48-575C-901D-9795D63865A0";
	setAttr ".rp" -type "double3" 0 11.483282261362685 0 ;
	setAttr ".sp" -type "double3" 0 11.483282261362685 0 ;
createNode transform -n "transform1" -p "Hammermesh";
	rename -uid "6843A383-BE43-81BD-603C-E1B7408028D1";
	setAttr ".v" no;
createNode mesh -n "HammermeshShape" -p "transform1";
	rename -uid "35E7F2C8-6A40-0FB6-0475-2C9BB5690772";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:115]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1.0397041738033295 1.1013780832290649 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 157 ".uvst[0].uvsp[0:156]" -type "float2" 0.80413556 0.19893235
		 0.84928828 0.19893235 0.84928828 0.71985197 0.80413556 0.71985197 0.54515266 0.52091962
		 0.49999991 0.52091956 0.5 0 0.54515272 0 0.56024969 0 0.84928828 0.19893235 0.89444107
		 0.19893235 0.90953797 0.19893235 0.90953797 0.71985197 0.89444107 0.71985197 0.56024963
		 0.52091962 0.84928828 0.73206693 0.82040888 0.73206693 0.46690568 0.53313458 0.87816769
		 0.73206693 0.52887934 0.53313458 0.49999991 0.53313458 0.816194 0.73206693 0.84928828
		 1.044037819 0.8245545 1.044037819 0.47289634 0.84510541 0.87402207 1.044037819 0.5247336
		 0.84510541 0.49999988 0.84510541 0.52710342 0.84510541 0.45484719 0.5209195 0.47112051
		 0.53313458 0.4752661 0.84510541 0.45484722 0 0.47040331 0.86365795 0.87607163 1.062590361
		 0.84928828 1.062590361 0.82250494 1.062590361 0.81969172 1.062590361 0.52678323 0.86365795
		 0.49999988 0.86365795 0.47321653 0.86365795 0.80572987 1.12931919 0.84928828 1.12931919
		 0.84928828 1.17138052 0.80572987 1.16805625 0.49999988 0.98278296 0.80572987 1.17757428
		 0.5435583 0.96912384 0.49999988 0.97244811 0.49999988 0.9303869 0.5435583 0.9303869
		 0.61916184 1.12931919 0.55510235 1.14818263 0.89284664 1.090582371 0.89284664 1.081064463
		 0.41155398 0.89372182 0.93773419 1.099886298 0.45644152 0.9303869 0.45644152 0.96912384
		 0.41155398 0.95981991 0.41155398 0.9303869 0.45644152 0.97864187 0.89284664 1.16805625
		 0.93773419 1.1587522 0.41155398 0.96705186 0.89284664 1.12931919 0.93773419 1.12931919
		 0.5435583 0.88213205 0.80572987 1.090582371 0.76084244 1.099886298 0.58844572 0.89372182
		 0.76084244 1.1587522 0.76084244 1.12931919 0.58844572 0.96705186 0.58844572 0.9303869
		 0.58844572 0.95981991 0.36985147 0.89372182 0.9794367 1.099886298 0.36985147 0.95981991
		 0.36985147 0.9303869 0.9794367 1.1587522 0.36985147 0.96705186 0.9794367 1.12931919
		 0.71913981 1.099886298 0.63014835 0.89372182 0.71913981 1.1587522 0.71913981 1.12931919
		 0.63014835 0.96705186 0.63014835 0.9303869 0.63014835 0.95981991 0.34929407 0.86077368
		 0.9999941 1.073436975 0.34929407 0.98626912 0.34929407 0.93038678 0.9999941 1.18520153
		 0.34929407 1 0.9999941 1.12931919 0.69858241 1.073436975 0.65070575 0.86077368 0.69858241
		 1.18520153 0.69858241 1.12931919 0.65070575 1 0.65070575 0.93038678 0.65070575 0.98626912
		 0.61916256 1.18520164 0.57396579 1.21224189 0.49104318 1.16704607 0.52132714 1.21401131
		 0.65070575 0.87450457 0.49104166 1.11116362 0.63014835 0.90095389 0.58844572 0.90095389
		 0.5435583 0.89164996 0.45644152 0.89164996 0.41155398 0.90095389 0.36985147 0.90095389
		 0.34929407 0.87450457 0.49999988 0.88832581 0.84928828 1.087258101 0.52959645 0.86365795
		 0.80572987 1.081064463 0.87888485 1.062590361 0.45644152 0.88213205 0.84928828 1.18171537
		 0.5435583 0.97864187 0.53623879 1.084123373 0.58887744 1.08235395 0.73012596 0.86077368
		 0.9999941 1.059706092 0.9794367 1.092654228 0.93773419 1.092654228 0.76084244 1.092654228
		 0.71913981 1.092654228 0.69858241 1.059706092 0.6191622 1.19893241 0.69858241 1.19893241
		 0.71913981 1.16598415 0.76084244 1.16598415 0.89284664 1.17757428 0.93773419 1.16598415
		 0.9794367 1.16598415 0.9999941 1.19893241 0.82218474 1.044037819 0.53309423 0.53313458
		 0.87639183 1.044037819 0.5 0 0.43975031 0 0.43975028 0.5209195 0.78903854 0.19893235
		 0.78903854 0.71985197 0.88238257 0.73206693 0.73012596 0.93038678 0.73012596 0.87450457
		 0.73012596 0.98626912 0.6191622 1.059706092 0.73012596 1 0.6191622 1.073436975;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 121 ".vt[0:120]"  -0.84935993 0.90716696 0.84935993 0.84935993 0.90716696 0.84935993
		 -0.84935993 11.92577744 0.84935993 0.84935993 11.92577744 0.84935993 -0.84935993 11.92577744 -0.84935993
		 0.84935993 11.92577744 -0.84935993 -0.84935993 0.90716696 -0.84935993 0.84935993 0.90716696 -0.84935993
		 -0.54324526 12.1841526 0.54324526 0.54324526 12.1841526 0.54324526 0.54324526 12.1841526 -0.54324526
		 -0.54324526 12.1841526 -0.54324526 -0.50381625 19.17545891 0.50381625 0.50381625 19.17545891 0.50381625
		 0.50381625 19.17545891 -0.50381625 -0.50381625 19.17545891 -0.50381625 1.13334513 11.92577744 0
		 0.6225304 12.1841526 0 0.55673498 19.17545891 0 -0.55673498 19.17545891 0 -0.6225304 12.1841526 0
		 -1.13334513 11.92577744 0 -1.13334513 0.90716696 0 1.13334513 0.90716696 0 0 11.92577744 1.12646925
		 0 12.1841526 0.72048253 0 19.17545891 0.66818959 0 19.17545891 -0.66818959 0 12.1841526 -0.72048253
		 0 11.92577744 -1.12646925 0 0.90716696 -1.12646925 0 0.90716696 0 0 0.90716696 1.12646925
		 0.50983983 18.78302956 0 0.46526194 18.78302956 0.4146736 0 18.78302956 0.54996353
		 -0.46526194 18.78302956 0.4146736 -0.50983983 18.78302956 0 -0.46526194 18.78302956 -0.4146736
		 0 18.78302956 -0.54996353 0.46526194 18.78302956 -0.4146736 -0.81936902 19.76755333 0.81936902
		 0.81936902 19.76755333 0.81936902 -0.81936902 21.40629768 0.81936902 0.81936902 21.40629768 0.81936902
		 -0.81936902 21.40629768 -0.81936902 0.81936902 21.40629768 -0.81936902 -0.81936902 19.76755333 -0.81936902
		 0.81936902 19.76755333 -0.81936902 1.66373813 19.96435165 -0.62257248 1.66373813 19.96435165 0.62257248
		 1.66373813 21.20949936 -0.62257248 1.66373813 21.20949936 0.62257248 -1.66373813 19.96435165 -0.62257248
		 -1.66373813 19.96435165 0.62257248 -1.66373813 21.20949936 0.62257248 -1.66373813 21.20949936 -0.62257248
		 2.44819832 19.96435165 -0.62257248 2.44819832 19.96435165 0.62257248 2.44819832 21.20949936 -0.62257248
		 2.44819832 21.20949936 0.62257248 -2.44819832 19.96435165 -0.62257248 -2.44819832 19.96435165 0.62257248
		 -2.44819832 21.20949936 0.62257248 -2.44819832 21.20949936 -0.62257248 2.8348999 19.40488815 -1.18203545
		 2.8348999 19.40488815 1.18203545 2.8348999 21.76895905 -1.18203545 2.8348999 21.76895905 1.18203545
		 -2.8348999 19.40488815 -1.18203545 -2.8348999 19.40488815 1.18203545 -2.8348999 21.76895905 1.18203545
		 -2.8348999 21.76895905 -1.18203545 -4.32885838 19.40488815 -1.18203545 -4.32885838 19.40488815 1.18203545
		 -4.32885838 21.76895905 1.18203545 -4.32885838 21.76895905 -1.18203545 2.8348999 22.059396744 0
		 2.44819832 21.36247063 0 1.66373813 21.36247063 0 0.81936902 21.60762405 0 -0.81936902 21.60762405 0
		 -1.66373813 21.36247063 0 -2.44819832 21.36247063 0 -2.8348999 22.059396744 0 -4.32885838 22.059396744 0
		 -4.32885838 19.11445045 0 -2.8348999 19.11445045 0 -2.44819832 19.81137848 0 -1.66373813 19.81137848 0
		 -0.81936902 19.56622696 0 0.81936902 19.56622696 0 1.66373813 19.81137848 0 2.44819832 19.81137848 0
		 2.8348999 19.11445045 0 2.8348999 20.5869236 -1.54790235 2.44819832 20.58692551 -0.81527287
		 1.66373813 20.58692551 -0.81527287 0.81936902 20.58692551 -1.072982192 -0.81936902 20.58692551 -1.072982192
		 -1.66373813 20.58692551 -0.81527287 -2.44819832 20.58692551 -0.81527287 -2.8348999 20.5869236 -1.54790235
		 -4.32885838 20.5869236 -1.54790235 -4.32885838 20.5869236 0 -4.32885838 20.5869236 1.54790235
		 -2.8348999 20.5869236 1.54790235 -2.44819832 20.58692551 0.81527287 -1.66373813 20.58692551 0.81527287
		 -0.81936902 20.58692551 1.072982192 0.81936902 20.58692551 1.072982192 1.66373813 20.58692551 0.81527287
		 2.44819832 20.58692551 0.81527287 2.8348999 20.5869236 1.54790235 0 20.58692551 1.16506219
		 0 21.47661209 0.88968462 0 21.69521713 0 0 21.47661209 -0.88968462 0 20.58692551 -1.16506219
		 0 19.69723892 -0.88968462 0 19.69723892 0.88968462;
	setAttr -s 236 ".ed";
	setAttr ".ed[0:165]"  0 32 0 2 24 1 4 29 1 6 30 0 0 2 0 1 3 0 2 21 1 3 16 1
		 4 6 0 5 7 0 6 22 0 7 23 0 2 8 0 3 9 0 8 25 0 5 10 0 9 17 0 4 11 0 11 28 0 8 20 0
		 8 36 0 9 34 0 12 26 0 10 40 0 13 18 0 11 38 0 15 27 0 12 19 0 16 5 1 17 10 0 16 17 1
		 18 14 0 17 33 1 19 15 0 20 11 0 19 37 1 21 4 1 20 21 1 22 0 0 21 22 1 23 1 0 22 31 1
		 23 16 1 24 3 1 25 9 0 24 25 1 26 13 0 25 35 1 27 14 0 28 10 0 27 39 1 29 5 1 28 29 1
		 30 7 0 29 30 1 31 23 1 30 31 1 32 1 0 31 32 1 32 24 1 33 18 1 34 13 0 33 34 1 35 26 1
		 34 35 1 36 12 0 35 36 1 37 20 1 36 37 1 38 15 0 37 38 1 39 28 1 38 39 1 40 14 0 39 40 1
		 40 33 1 41 120 0 43 115 0 45 117 0 47 119 0 41 109 1 42 110 1 43 81 1 44 80 1 45 99 1
		 46 98 1 47 90 0 48 91 0 48 49 0 42 50 0 49 92 1 46 51 0 51 97 1 44 52 0 52 79 1 50 111 1
		 47 53 0 41 54 0 53 89 1 43 55 0 54 108 1 45 56 0 55 82 1 56 100 1 49 57 0 50 58 0
		 57 93 1 51 59 0 59 96 1 52 60 0 60 78 1 58 112 1 53 61 0 54 62 0 61 88 1 55 63 0
		 62 107 1 56 64 0 63 83 1 64 101 1 57 65 0 58 66 0 65 94 0 59 67 0 67 95 0 60 68 0
		 68 77 0 66 113 0 61 69 0 62 70 0 69 87 0 63 71 0 70 106 0 64 72 0 71 84 0 72 102 0
		 69 73 0 70 74 0 73 86 0 71 75 0 74 105 0 72 76 0 75 85 0 76 103 0 77 67 0 78 59 1
		 77 78 1 79 51 1 78 79 1 80 46 1 79 80 1 81 45 1 80 116 1 82 56 1 81 82 1 83 64 1
		 82 83 1 84 72 0 83 84 1 85 76 0 84 85 1 86 74 0 85 104 1 87 70 0 86 87 1 88 62 1;
	setAttr ".ed[166:235]" 87 88 1 89 54 1 88 89 1 90 41 0 89 90 1 91 42 0 92 50 1
		 91 92 1 93 58 1 92 93 1 94 66 0 93 94 1 95 65 0 96 57 1 95 96 1 97 49 1 96 97 1 98 48 1
		 97 98 1 99 47 1 98 118 1 100 53 1 99 100 1 101 61 1 100 101 1 102 69 0 101 102 1
		 103 73 0 102 103 1 104 86 1 103 104 1 105 75 0 104 105 1 106 71 0 105 106 1 107 63 1
		 106 107 1 108 55 1 107 108 1 109 43 1 108 109 1 110 44 1 109 114 1 111 52 1 110 111 1
		 112 60 1 111 112 1 113 68 0 112 113 1 114 110 1 115 44 0 114 115 1 116 81 1 115 116 1
		 117 46 0 116 117 1 118 99 1 117 118 1 119 48 0 118 119 1 120 42 0 120 114 1 27 119 0
		 26 120 0 13 42 0 18 91 0 14 48 0 15 47 0 19 90 0 12 41 0;
	setAttr -s 116 -ch 464 ".fc[0:115]" -type "polyFaces" 
		f 4 0 59 -2 -5
		mu 0 4 0 1 2 3
		f 4 2 54 -4 -9
		mu 0 4 4 5 6 7
		f 4 41 58 -1 -39
		mu 0 4 148 9 1 0
		f 4 -41 42 -8 -6
		mu 0 4 10 11 12 13
		f 4 38 4 6 39
		mu 0 4 148 0 3 149
		f 4 1 45 -15 -13
		mu 0 4 3 2 15 16
		f 4 7 30 -17 -14
		mu 0 4 13 12 150 18
		f 4 -3 17 18 52
		mu 0 4 5 4 19 20
		f 4 -7 12 19 37
		mu 0 4 149 3 16 21
		f 4 14 47 66 -21
		mu 0 4 16 15 22 23
		f 4 16 32 62 -22
		mu 0 4 18 150 144 25
		f 4 -19 25 72 71
		mu 0 4 20 19 26 27
		f 4 -20 20 68 67
		mu 0 4 21 16 23 142
		f 4 28 15 -30 -31
		mu 0 4 147 29 30 17
		f 4 75 -33 29 23
		mu 0 4 31 24 17 30
		f 4 -35 -68 70 -26
		mu 0 4 19 143 28 26
		f 4 -37 -38 34 -18
		mu 0 4 4 14 143 19
		f 4 10 -40 36 8
		mu 0 4 7 8 14 4
		f 4 3 56 -42 -11
		mu 0 4 7 6 145 8
		f 4 -43 -12 -10 -29
		mu 0 4 147 146 32 29
		f 4 43 13 -45 -46
		mu 0 4 2 13 18 15
		f 4 -48 44 21 64
		mu 0 4 22 15 18 25
		f 4 -50 -72 74 -24
		mu 0 4 30 20 27 31
		f 4 -52 -53 49 -16
		mu 0 4 29 5 20 30
		f 4 -55 51 9 -54
		mu 0 4 6 5 29 32
		f 4 -57 53 11 -56
		mu 0 4 145 6 32 146
		f 4 -59 55 40 -58
		mu 0 4 1 9 11 10
		f 4 -60 57 5 -44
		mu 0 4 2 1 10 13
		f 4 -63 60 -25 -62
		mu 0 4 25 144 121 34
		f 4 -64 -65 61 -47
		mu 0 4 35 22 25 34
		f 4 -67 63 -23 -66
		mu 0 4 23 22 35 36
		f 4 -69 65 27 35
		mu 0 4 142 23 36 37
		f 4 -71 -36 33 -70
		mu 0 4 26 28 119 38
		f 4 -73 69 26 50
		mu 0 4 27 26 38 39
		f 4 -75 -51 48 -74
		mu 0 4 31 27 39 40
		f 4 -61 -76 73 -32
		mu 0 4 33 24 31 40
		f 4 208 217 -78 -206
		mu 0 4 41 42 43 44
		f 4 77 219 218 -83
		mu 0 4 44 43 123 46
		f 4 78 223 222 -85
		mu 0 4 47 48 49 50
		f 4 198 197 142 162
		mu 0 4 52 51 104 105
		f 4 -172 173 172 -90
		mu 0 4 53 54 130 56
		f 4 -86 91 92 184
		mu 0 4 57 58 59 60
		f 4 -84 93 94 150
		mu 0 4 138 62 63 139
		f 4 -208 210 209 -94
		mu 0 4 62 65 66 63
		f 4 169 97 -168 170
		mu 0 4 120 68 69 131
		f 4 205 99 -204 206
		mu 0 4 41 44 71 72
		f 4 82 154 -103 -100
		mu 0 4 44 46 137 71
		f 4 84 188 -104 -102
		mu 0 4 47 50 74 75
		f 4 -173 175 174 -106
		mu 0 4 56 130 129 77
		f 4 -93 107 108 182
		mu 0 4 60 59 78 79
		f 4 -95 109 110 148
		mu 0 4 139 63 80 140
		f 4 -210 212 211 -110
		mu 0 4 63 66 82 80
		f 4 167 113 -166 168
		mu 0 4 131 69 83 132
		f 4 203 115 -202 204
		mu 0 4 72 71 85 86
		f 4 102 156 -119 -116
		mu 0 4 71 137 136 85
		f 4 103 190 -120 -118
		mu 0 4 75 74 88 89
		f 4 -175 177 176 -122
		mu 0 4 77 129 128 91
		f 4 -109 123 124 180
		mu 0 4 79 78 92 93
		f 4 -111 125 126 146
		mu 0 4 140 80 94 141
		f 4 -212 214 213 -126
		mu 0 4 80 82 96 94
		f 4 165 129 -164 166
		mu 0 4 132 83 97 133
		f 4 201 131 -200 202
		mu 0 4 86 85 99 100
		f 4 118 158 -135 -132
		mu 0 4 85 136 135 99
		f 4 119 192 -136 -134
		mu 0 4 89 88 102 103
		f 4 163 137 -162 164
		mu 0 4 133 97 156 154
		f 4 199 139 -198 200
		mu 0 4 100 99 104 51
		f 4 134 160 -143 -140
		mu 0 4 99 135 134 104
		f 4 135 194 -144 -142
		mu 0 4 103 102 151 153
		f 4 -146 -147 144 -124
		mu 0 4 78 81 95 92
		f 4 -148 -149 145 -108
		mu 0 4 59 64 81 78
		f 4 -150 -151 147 -92
		mu 0 4 58 61 64 59
		f 4 -219 221 -79 -152
		mu 0 4 124 45 48 47
		f 4 -155 151 101 -154
		mu 0 4 73 124 47 75
		f 4 -157 153 117 -156
		mu 0 4 87 73 75 89
		f 4 -159 155 133 -158
		mu 0 4 101 87 89 103
		f 4 -161 157 141 -160
		mu 0 4 155 101 103 153
		f 4 196 -163 159 143
		mu 0 4 106 52 105 107
		f 4 130 -165 -139 -137
		mu 0 4 108 98 127 152
		f 4 114 -167 -131 -129
		mu 0 4 110 84 98 108
		f 4 98 -169 -115 -113
		mu 0 4 111 70 84 110
		f 4 86 -171 -99 -97
		mu 0 4 112 67 70 111
		f 4 -174 -88 88 90
		mu 0 4 55 122 113 114
		f 4 -176 -91 104 106
		mu 0 4 76 55 114 115
		f 4 -178 -107 120 122
		mu 0 4 90 76 115 116
		f 4 -180 -181 178 -121
		mu 0 4 115 79 93 116
		f 4 -182 -183 179 -105
		mu 0 4 114 60 79 115
		f 4 -184 -185 181 -89
		mu 0 4 113 57 60 114
		f 4 -223 225 -80 -186
		mu 0 4 50 49 117 112
		f 4 -189 185 96 -188
		mu 0 4 74 50 112 111
		f 4 -191 187 112 -190
		mu 0 4 88 74 111 110
		f 4 -193 189 128 -192
		mu 0 4 102 88 110 108
		f 4 -195 191 136 -194
		mu 0 4 151 102 108 152
		f 4 138 -196 -197 193
		mu 0 4 109 125 52 106
		f 4 161 140 -199 195
		mu 0 4 125 126 51 52
		f 4 132 -201 -141 -138
		mu 0 4 97 100 51 156
		f 4 116 -203 -133 -130
		mu 0 4 83 86 100 97
		f 4 100 -205 -117 -114
		mu 0 4 69 72 86 83
		f 4 80 -207 -101 -98
		mu 0 4 68 41 72 69
		f 4 76 227 -209 -81
		mu 0 4 68 118 42 41
		f 4 -211 -82 89 95
		mu 0 4 66 65 53 56
		f 4 -213 -96 105 111
		mu 0 4 82 66 56 77
		f 4 -215 -112 121 127
		mu 0 4 96 82 77 91
		f 4 215 207 -217 -218
		mu 0 4 42 65 62 43
		f 4 -220 216 83 152
		mu 0 4 123 43 62 138
		f 4 -222 -153 149 -221
		mu 0 4 48 45 61 58
		f 4 -224 220 85 186
		mu 0 4 49 48 58 57
		f 4 -226 -187 183 -225
		mu 0 4 117 49 57 113
		f 4 -228 226 81 -216
		mu 0 4 42 118 53 65
		f 4 46 230 -227 -230
		mu 0 4 35 34 53 118
		f 4 24 231 171 -231
		mu 0 4 34 121 54 53
		f 4 31 232 87 -232
		mu 0 4 33 40 113 122
		f 4 -49 228 224 -233
		mu 0 4 40 39 117 113
		f 4 -27 233 79 -229
		mu 0 4 39 38 112 117
		f 4 -34 234 -87 -234
		mu 0 4 38 119 67 112
		f 4 -28 235 -170 -235
		mu 0 4 37 36 68 120
		f 4 22 229 -77 -236
		mu 0 4 36 35 118 68;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 2 
		51 0 
		104 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pSphere1";
	rename -uid "45BC5475-7A41-1F10-6F06-EC818E63A9F7";
	setAttr ".t" -type "double3" 4.3990649484391486 20.586923599243164 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 1.7146653928109161 1.7146653928109161 1.7146653928109161 ;
	setAttr ".rp" -type "double3" -5.3898650860791732e-16 2.4273794393243411 0 ;
	setAttr ".rpt" -type "double3" -2.4273794393243406 -2.4273794393243411 0 ;
	setAttr ".sp" -type "double3" -2.2204460046018959e-16 0.99999997989214051 0 ;
	setAttr ".spt" -type "double3" -3.1694190814772928e-16 1.4273794594322076 0 ;
createNode transform -n "transform2" -p "pSphere1";
	rename -uid "99FB8EA1-354F-0DAB-5FAC-B49BE5918126";
	setAttr ".v" no;
createNode mesh -n "pSphereShape1" -p "transform2";
	rename -uid "34595ED0-0A40-71CF-2ED5-529203B8088C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.8125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pSphere2";
	rename -uid "B4048217-CC43-B7C7-8E0D-5294ED164F0A";
	setAttr ".rp" -type "double3" 0.53607894235453291 11.604377974954652 5.1101010756227083e-08 ;
	setAttr ".sp" -type "double3" 0.53607894235453291 11.604377974954652 5.1101010756227083e-08 ;
createNode mesh -n "pSphere2Shape" -p "pSphere2";
	rename -uid "8428C43B-3148-181E-EA87-E497099E9777";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47113873973224529 0.49855879311021645 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "471AAF57-2E4C-C793-F9D2-159AAAF365A1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "4262ECE2-7E40-A1A5-AADB-D7BD8F15C601";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "BD0BF3D8-D94E-59D3-C8C4-9BAB6F577971";
createNode displayLayerManager -n "layerManager";
	rename -uid "2D41C295-9E45-3073-FE60-D18315B5C3D0";
createNode displayLayer -n "defaultLayer";
	rename -uid "485B418A-AF4E-ED4C-52C4-9AA63326A8C4";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "62925A0F-7A4B-B622-C5AF-FEBB0500B66C";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "85E4B1C8-8D4E-84D5-3D24-27A6A58AA0A6";
	setAttr ".g" yes;
createNode lambert -n "HammerMatte";
	rename -uid "CA51E0B9-EF4A-AE4C-3D04-5B99C802E6B0";
	setAttr ".c" -type "float3" 0.6506024 0.6506024 0.6506024 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "E502BA27-3D4D-54D8-B3B6-05B02AADD0FC";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 5 ".gn";
createNode materialInfo -n "materialInfo1";
	rename -uid "964FFB6A-B24E-3395-296E-7399AD333222";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "DD33F7BF-664D-4002-B961-5FB09F3C4929";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 281\n            -height 449\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 280\n            -height 448\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 281\n            -height 448\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"flat\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 568\n            -height 941\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"<function selCom at 0x7f29c5c04aa0>\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n"
		+ "                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n"
		+ "                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n"
		+ "\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"flat\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 568\\n    -height 941\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"flat\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 568\\n    -height 941\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "23F78331-A54C-E0E2-0363-96876C194C25";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polySphere -n "polySphere1";
	rename -uid "128629F8-4F47-5BA9-0E21-B1A4A82C0317";
	setAttr ".sa" 8;
	setAttr ".sh" 8;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "4B409F36-D942-C19B-FAAA-42AFA937690D";
	setAttr ".dc" -type "componentList" 2 "f[32:47]" "f[56:63]";
createNode polyUnite -n "polyUnite1";
	rename -uid "AF984922-C44C-6AF1-0185-C0AA0B407BE1";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId1";
	rename -uid "ACA1FFDC-F24B-9F51-EA3F-28A8ED91E571";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "8525F4FB-024D-FAE8-8C5D-A9A70844DE40";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:39]";
createNode groupId -n "groupId2";
	rename -uid "AAE17154-F141-BECD-B4DA-B5B029B33098";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "1FE3099A-2E44-389D-CDF3-97B6739109C9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	rename -uid "46CEB8FE-1D41-7A5F-34DD-0198B100DC03";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "31A15B48-7A44-26FC-7FAA-84958C67CA4A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "D815ECBB-664E-61FE-58AE-40A59C3036FD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:155]";
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "928EA47B-EB43-6CAD-92E4-D88A03058D64";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "A0E2D331-064B-8070-BD53-288127FED3CE";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[106]" -type "float3" 0.19527674 0.061876297 0.061876416 ;
	setAttr ".tk[107]" -type "float3" 0.19527674 0.061876297 -0.061876416 ;
	setAttr ".tk[108]" -type "float3" 0.19527674 -0.061876297 0.061876416 ;
	setAttr ".tk[109]" -type "float3" 0.19527674 -0.061876297 -0.061876297 ;
	setAttr ".tk[118]" -type "float3" 0.19527674 0.11167145 0 ;
	setAttr ".tk[135]" -type "float3" 0.19527674 -0.11167145 0 ;
	setAttr ".tk[136]" -type "float3" 0.19527674 0 -0.036241651 ;
	setAttr ".tk[154]" -type "float3" 0.19527674 0 0.03624177 ;
createNode polySphProj -n "polySphProj1";
	rename -uid "AA2E7026-D54E-EE00-37A6-0E8E9EE04D0F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "f[0:39]" "f[96:99]" "f[108]" "f[123:124]" "f[141]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 3.7938040056179121 20.588332492148179 0.0012158693077332517 ;
	setAttr ".ro" -type "double3" -165.67368909715842 92.152538901200458 -76.300078495428579 ;
	setAttr ".ps" -type "double2" 360 140.68200903355319 ;
	setAttr ".r" 3.7141106991491548;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "99DCBB2D-2347-8351-C323-5EA755482D32";
	setAttr ".uopa" yes;
	setAttr -s 202 ".uvtk[0:201]" -type "float2" 0.19537048 0.58398068 0.089244962
		 0.58728606 0.08739686 0.44552749 0.1930102 0.44216627 -0.01892614 0.44713068 0.7152003
		 0.58777082 0.71679872 0.44601637 0.60864526 0.58465207 0.61101955 0.4428525 0.50438547
		 0.58140099 0.50613832 0.43951195 0.40173563 0.57988197 0.40190569 0.43793672 0.29923818
		 0.58093554 0.29773507 0.43903011 0.086610556 0.30651331 0.1919869 0.30305958 -0.019003805
		 0.30815345 0.7174769 0.30701399 0.61204523 0.30376601 0.50690925 0.30031788 0.40198091
		 0.29868513 0.29707232 0.29981935 0.086028814 0.1707893 0.19122235 0.16723406 -0.019061025
		 0.17247248 0.71797794 0.17130321 0.61281002 0.16796237 0.50748956 0.16440064 0.40203783
		 0.16270906 0.29657254 0.16388464 0.085418701 0.038294852 0.19041358 0.03464821 -0.019120689
		 0.040015727 0.71850288 0.038820505 0.61361748 0.035396248 0.50810784 0.031730674
		 0.4020988 0.029984199 0.29603961 0.031198464 0.39202771 0.72331887 0.61572403 -0.15051386
		 0.72012341 -0.16636804 0.083659947 -0.15941101 0.18829767 -0.15128699 0.29433057
		 -0.17428926 0.40226099 -0.15615293 0.50994581 -0.16622123 -0.019273218 -0.14577386
		 -0.4541921 -0.2309348 -0.4371393 -0.23061365 -0.43369228 -0.23072952 -0.43073258
		 -0.23250026 -0.45123532 -0.1727635 -0.4541921 -0.1727635 -0.4541921 -0.2068755 -0.45123532
		 -0.2068755 0.15318327 -0.011770587 0.1561401 -0.011770587 0.15614013 0.022341486
		 0.15318321 0.022341486 -0.45024669 -0.1727635 -0.4541921 -0.1727635 -0.45714891 -0.1727635
		 -0.45813751 -0.1727635 -0.45813751 -0.2068755 -0.45714891 -0.2068755 -0.45024669
		 -0.2068755 -0.4541921 -0.20767543 -0.45230097 -0.20767543 -0.45635927 -0.20767543
		 -0.45608327 -0.20767543 0.15424882 -0.012570482 0.1561401 -0.012570482 -0.45202497
		 -0.20767543 -0.4541921 -0.22810453 -0.45257244 -0.22810453 -0.45596698 -0.22810453
		 -0.4558118 -0.22810453 0.15452038 -0.032999676 0.15614013 -0.032999676 -0.45241725
		 -0.22810453 0.16008539 -0.011770587 0.15909679 -0.011770587 0.15803115 -0.012570482
		 0.15830718 -0.012570482 0.15775971 -0.032999676 0.15791489 -0.032999676 0.15397285
		 -0.012570482 0.15436523 -0.032999676 0.1521946 -0.011770587 0.15219466 0.022341486
		 0.15614013 0.022341486 0.16008548 0.022341486 0.15909688 0.022341486 -0.45613021
		 -0.22931951 -0.455946 -0.22931951 -0.4541921 -0.22931951 -0.45243824 -0.22931951
		 -0.452254 -0.22931951 0.15420203 -0.034214538 0.15438621 -0.034214538 0.15614013
		 -0.034214538 0.15789391 -0.034214538 0.15807809 -0.034214538 -0.45133972 -0.23368913
		 -0.4541921 -0.23368913 -0.4541921 -0.23644352 -0.45133972 -0.23622584 -0.4541921
		 -0.23712033 -0.45133972 -0.23684913 0.15328763 -0.041120928 0.15614013 -0.041338604
		 0.15614013 -0.038584273 0.15328763 -0.038584273 -0.43492755 -0.23492438 -0.43912244
		 -0.23368913 -0.4391225 -0.23734862 -0.43616283 -0.23911929 -0.45704451 -0.23115247
		 -0.45704451 -0.23052925 -0.45998392 -0.23128819 -0.45998392 -0.23176175 0.15899245
		 -0.038584273 0.15899245 -0.041120928 0.16193183 -0.040511649 0.16193183 -0.038584273
		 -0.45704451 -0.23684913 -0.45704451 -0.23622584 -0.45998392 -0.23561656 -0.45998392
		 -0.23609012 -0.45704451 -0.23368913 -0.45998392 -0.23368913 -0.45133972 -0.23052925
		 -0.45133972 -0.23115247 -0.44840032 -0.23176175 -0.44840032 -0.23128819 -0.44840032
		 -0.23561656 -0.44840032 -0.23368913 -0.44840032 -0.23609012 0.15034817 -0.038584273
		 0.15034817 -0.040511649 -0.46271476 -0.23128819 -0.46271476 -0.23176175 0.16466276
		 -0.040511649 0.16466276 -0.038584273 -0.46271476 -0.23561656 -0.46271476 -0.23609012
		 -0.46271476 -0.23368913 -0.44566941 -0.23176175 -0.44566941 -0.23128819 -0.44566941
		 -0.23561656 -0.44566941 -0.23368913 -0.44566941 -0.23609012 0.14761733 -0.038584273
		 0.14761733 -0.040511649 0.15614013 -0.035829943 0.16466276 -0.036656898 0.16466276
		 -0.036183279 0.16193183 -0.036656898 0.15899245 -0.036047619 0.15899245 -0.035424333
		 0.16193183 -0.036183279 -0.44432324 -0.23002976 -0.44432324 -0.22913057 -0.44432324
		 -0.23734862 -0.44432324 -0.23368913 -0.44432324 -0.23824781 0.14627109 -0.038584273
		 0.14627109 -0.042243641 -0.43912247 -0.23002976 -0.43912247 -0.22913057 -0.43912247
		 -0.23824781 0.14107035 -0.038584273 0.14107035 -0.042243641 0.16466276 -0.040985268
		 0.15328763 -0.035424333 0.16193183 -0.040985268 0.15899245 -0.041744214 0.15328763
		 -0.041744214 0.15614013 -0.042015355 0.15034817 -0.040985268 0.14761733 -0.040985268
		 0.14627109 -0.043142777 0.14107035 -0.043142777 -0.4307327 -0.23615968 -0.4327158
		 -0.23923516 0.14627109 -0.034924846 0.14627109 -0.03402571 0.14107035 -0.03402571
		 0.14107035 -0.034924846 0.14761733 -0.036656898 0.14761733 -0.036183279 0.15034817
		 -0.036656898 0.15034817 -0.036183279 0.15328763 -0.036047619 -0.12691887 0.58777082
		 -0.12532063 0.44601637 -0.12464245 0.30701399 -0.12414141 0.17130321 -0.018742021
		 0.58887869 -0.12199588 -0.16636804 -0.12361641 0.038820505;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cme" no;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId3.id" "HammermeshShape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "HammermeshShape.iog.og[0].gco";
connectAttr "groupId4.id" "HammermeshShape.ciog.cog[0].cgid";
connectAttr "groupId1.id" "pSphereShape1.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pSphereShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "pSphereShape1.i";
connectAttr "groupId2.id" "pSphereShape1.ciog.cog[0].cgid";
connectAttr "polyTweakUV1.out" "pSphere2Shape.i";
connectAttr "groupId5.id" "pSphere2Shape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pSphere2Shape.iog.og[0].gco";
connectAttr "polyTweakUV1.uvtk[0]" "pSphere2Shape.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "HammerMatte.oc" "lambert2SG.ss";
connectAttr "pSphereShape1.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pSphereShape1.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "HammermeshShape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "HammermeshShape.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "pSphere2Shape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "groupId1.msg" "lambert2SG.gn" -na;
connectAttr "groupId2.msg" "lambert2SG.gn" -na;
connectAttr "groupId3.msg" "lambert2SG.gn" -na;
connectAttr "groupId4.msg" "lambert2SG.gn" -na;
connectAttr "groupId5.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "HammerMatte.msg" "materialInfo1.m";
connectAttr "polySphere1.out" "deleteComponent1.ig";
connectAttr "pSphereShape1.o" "polyUnite1.ip[0]";
connectAttr "HammermeshShape.o" "polyUnite1.ip[1]";
connectAttr "pSphereShape1.wm" "polyUnite1.im[0]";
connectAttr "HammermeshShape.wm" "polyUnite1.im[1]";
connectAttr "deleteComponent1.og" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyUnite1.out" "groupParts2.ig";
connectAttr "groupId5.id" "groupParts2.gi";
connectAttr "polyTweak1.out" "polyMergeVert1.ip";
connectAttr "pSphere2Shape.wm" "polyMergeVert1.mp";
connectAttr "groupParts2.og" "polyTweak1.ip";
connectAttr "polyMergeVert1.out" "polySphProj1.ip";
connectAttr "pSphere2Shape.wm" "polySphProj1.mp";
connectAttr "polySphProj1.out" "polyTweakUV1.ip";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "HammerMatte.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of HammerWithUVs.ma
