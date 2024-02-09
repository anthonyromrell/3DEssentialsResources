//Maya ASCII 2023 scene
//Name: HammerWithUVs.ma
//Last modified: Sat, Jul 01, 2023 12:12:26 AM
//Codeset: UTF-8
requires maya "2023";
requires "stereoCamera" "10.0";
requires "mtoa" "5.1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202202161415-df43006fd3";
fileInfo "osv" "Mac OS X 10.16";
fileInfo "UUID" "3F5F2BCD-7C43-821A-029F-3CB48DC21B0A";
createNode transform -s -n "persp";
	rename -uid "E7B6D13F-8A4A-2750-0CA7-779A5DC97415";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -15.244304178401851 23.467982316616897 21.880040849250229 ;
	setAttr ".r" -type "double3" -23.738352729615581 -35.799999999996537 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "D850AFD6-9347-DEB1-00BC-B8A2B3ABA417";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 29.470354127910205;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.53607892990112305 11.604378461837769 5.9604644775390625e-08 ;
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
createNode mesh -n "polySurfaceShape1" -p "pSphere2";
	rename -uid "914899E6-ED46-1621-3AF8-78BA5AF94F44";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:155]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47113873973224529 0.49855879311021645 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 212 ".uvst[0].uvsp[0:211]" -type "float2" 0.31892306 0.58053899
		 0.28451979 0.58161086 0.28392076 0.53565586 0.31815785 0.53456634 0.24945331 0.53617555
		 0.48743999 0.58176792 0.48795798 0.53581423 0.45289731 0.58075666 0.45366719 0.53478873
		 0.41909876 0.57970273 0.41966695 0.53370553 0.38582191 0.57921034 0.38587692 0.53319478
		 0.35259452 0.57955188 0.35210744 0.53354961 0.28366596 0.49059072 0.31782621 0.48947114
		 0.24942809 0.49112245 0.48817793 0.49075264 0.4539997 0.48970026 0.41991687 0.48858222
		 0.38590145 0.48805279 0.35189244 0.48842031 0.28347731 0.44659215 0.31757849 0.44543958
		 0.24940968 0.44713765 0.48834038 0.44675869 0.45424765 0.44567561 0.42010528 0.44452119
		 0.38592002 0.44397277 0.35173044 0.44435382 0.28327954 0.40364027 0.31731623 0.40245843
		 0.24939024 0.40419817 0.48851043 0.40381074 0.45450944 0.40270084 0.42030543 0.40151262
		 0.3859396 0.40094638 0.3515577 0.40133989 0.38267493 0.62570935 0.45519194 0.34243301
		 0.48903593 0.33729362 0.2827093 0.33954898 0.31663007 0.34218258 0.35100362 0.33472589
		 0.38599238 0.34060487 0.42090112 0.33734104 0.24934077 0.3439697 0.1624269 0.15818959
		 0.48742291 0.16431004 0.55311662 0.16210175 0.60952318 0.12835521 0.62127936 1 0.56465304
		 1 0.56465304 0.34671152 0.62127936 0.34671152 0.79471707 0.11584622 0.85134339 0.11584628
		 0.85134321 0.76913482 0.79471707 0.76913482 0.6402126 1 0.56465304 1 0.50802666 1
		 0.48909354 1 0.48909354 0.34671152 0.50802666 0.34671152 0.6402126 0.34671152 0.1624269
		 0.60147262 0.19846877 0.60147262 0.52314931 0.33139268 0.12638506 0.60147262 0.81512564
		 0.10052735 0.19896302 0.29516596 0.20372902 0.60147262 0.1624269 0.212129 0.19329499
		 0.212129 0.12860137 0.212129 0.13155887 0.212129 0.59910518 0.26344198 0.59910518
		 0.29516596 0.19625248 0.212129 0.92690295 0.11584637 0.90796983 0.11584637 0.88756138
		 0.10052735 0.19896302 0.33761364 0.59910518 0.32689029 0.59910518 0.32992986 0.80983973
		 0.10052735 0.59910518 0.26040226 0.77578396 0.11584622 0.77578378 0.76913482 0.85134321
		 0.76913482 0.92690283 0.76913482 0.90796965 0.76913482 0.12549001 0.18897527 0.12900096
		 0.18897527 0.1624269 0.18897527 0.19585289 0.18897527 0.1993638 0.18897527 0.6229012
		 0.25720459 0.6229012 0.26081294 0.6229012 0.29516596 0.6229012 0.32951918 0.6229012
		 0.33312756 0.21678837 0.1056968 0.1624269 0.1056968 0.1624269 0.053203762 0.21678837
		 0.057352543 0.1624269 0.040305793 0.21678837 0.045473874 0.75817454 0.23929691 0.76243836
		 0.29516596 0.70848948 0.29516596 0.70848948 0.23929691 0.52957463 0.08215493 0.44962758
		 0.1056968 0.44962671 0.035954893 0.50603288 0.0022082329 0.10806558 0.15404081 0.10806558
		 0.16591936 0.052045316 0.15145516 0.052045316 0.14242941 0.70848948 0.35103518 0.75817454
		 0.35103518 0.74624109 0.40860921 0.70848948 0.40860924 0.10806558 0.045473874 0.10806558
		 0.057352543 0.052045316 0.068964064 0.052045316 0.05993849 0.10806558 0.1056968 0.052045316
		 0.1056968 0.21678837 0.16591936 0.21678837 0.15404081 0.27280846 0.14242941 0.27280846
		 0.15145516 0.27280846 0.068964064 0.27280846 0.1056968 0.27280846 0.05993849 0.70848948
		 0.18172318 0.74624109 0.18172318 0 0.15145516 0 0.14242941 0.74624109 0.46209785
		 0.70848948 0.46209785 0 0.068964064 0 0.05993849 0 0.1056968 0.32485381 0.14242941
		 0.32485381 0.15145516 0.32485381 0.068964064 0.32485381 0.1056968 0.32485381 0.05993849
		 0.70848948 0.12823421 0.74624109 0.12823421 0.65454078 0.29516596 0.67073786 0.46209785
		 0.66146189 0.46209785 0.67073786 0.40860924 0.65880442 0.35103518 0.64659655 0.35103518
		 0.66146189 0.40860924 0.35050973 0.17543852 0.35050973 0.1925748 0.35050973 0.035955012
		 0.35050973 0.1056968 0.35050973 0.018818796 0.7084893 0.10186678 0.78016555 0.10186678
		 0.44962716 0.17543852 0.44962716 0.1925748 0.44962716 0.018818796 0.7084893 2.3841858e-07
		 0.78016555 2.3841858e-07 0.75551695 0.46209785 0.64659655 0.23929691 0.75551695 0.40860921
		 0.77038258 0.35103518 0.77038258 0.23929691 0.77569413 0.29516596 0.75551695 0.18172318
		 0.75551695 0.12823421 0.79777718 0.10186678 0.79777718 2.3841858e-07 0.60952133 0.058613241
		 0.5717265 0 0.63681334 0.10186678 0.61920172 0.10186678 0.61920172 2.3841858e-07
		 0.63681334 2.3841858e-07 0.67073786 0.12823421 0.66146189 0.12823421 0.67073786 0.18172318
		 0.66146189 0.18172318 0.65880442 0.23929691 0.21444428 0.58176792 0.21496248 0.53581423
		 0.21518242 0.49075264 0.21534485 0.44675869 0.24951315 0.58212703 0.21604031 0.33729362
		 0.21551496 0.40381074 0.85134339 0.10052735 0.56465304 0.33139268 0.52843523 0.33139268
		 0.60087085 0.33139268 0.60615683 0.33139268 0.12112483 0.60147262 0.19896302 0.33220762
		 0.19896302 0.25271842 0.19896302 0.25812462 0.89284718 0.10052735;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 154 ".vt[0:153]"  5.27049494 21.050909042 -0.46398512 5.27049494 20.5869236 -0.656174
		 5.27049494 20.12293816 -0.46398512 5.27049494 19.93074989 0 5.27049494 20.12293816 0.46398512
		 5.27049494 20.5869236 0.65617406 5.27049494 21.050909042 0.46398512 5.27049494 21.24309731 0
		 4.89880228 21.44425583 -0.85733259 4.89880228 20.5869236 -1.21245146 4.89880228 19.72959137 -0.85733259
		 4.89880228 19.37447166 0 4.89880228 19.72959137 0.85733259 4.89880228 20.5869236 1.21245146
		 4.89880228 21.44425583 0.85733265 4.89880228 21.79937553 0 4.34252501 21.70708275 -1.12015903
		 4.34252501 20.5869236 -1.584144 4.34252501 19.46676445 -1.12015903 4.34252501 19.002779007 0
		 4.34252501 19.46676445 1.12015903 4.34252501 20.5869236 1.58414412 4.34252501 21.70708275 1.12015915
		 4.34252501 22.17106819 0 3.68635082 21.79937553 -1.21245146 3.68635082 20.5869236 -1.71466517
		 3.68635082 19.37447166 -1.21245146 3.68635082 18.87225914 0 3.68635082 19.37447166 1.21245146
		 3.68635082 20.5869236 1.71466529 3.68635082 21.79937553 1.21245158 3.68635082 22.30158997 0
		 3.03017664 21.70708275 -1.12015903 3.03017664 20.5869236 -1.584144 3.03017664 19.46676445 -1.12015903
		 3.03017664 19.002779007 0 3.03017664 19.46676445 1.12015903 3.03017664 20.5869236 1.58414412
		 3.03017664 21.70708275 1.12015915 3.03017664 22.17106819 0 5.40101624 20.5869236 0
		 -0.84935993 0.90716696 0.84935993 0.84935993 0.90716696 0.84935993 -0.84935993 11.92577744 0.84935993
		 0.84935993 11.92577744 0.84935993 -0.84935993 11.92577744 -0.84935993 0.84935993 11.92577744 -0.84935993
		 -0.84935993 0.90716696 -0.84935993 0.84935993 0.90716696 -0.84935993 -0.54324526 12.1841526 0.54324526
		 0.54324526 12.1841526 0.54324526 0.54324526 12.1841526 -0.54324526 -0.54324526 12.1841526 -0.54324526
		 -0.50381625 19.17545891 0.50381625 0.50381625 19.17545891 0.50381625 0.50381625 19.17545891 -0.50381625
		 -0.50381625 19.17545891 -0.50381625 1.13334513 11.92577744 0 0.6225304 12.1841526 0
		 0.55673498 19.17545891 0 -0.55673498 19.17545891 0 -0.6225304 12.1841526 0 -1.13334513 11.92577744 0
		 -1.13334513 0.90716696 0 1.13334513 0.90716696 0 0 11.92577744 1.12646925 0 12.1841526 0.72048253
		 0 19.17545891 0.66818959 0 19.17545891 -0.66818959 0 12.1841526 -0.72048253 0 11.92577744 -1.12646925
		 0 0.90716696 -1.12646925 0 0.90716696 0 0 0.90716696 1.12646925 0.50983983 18.78302956 0
		 0.46526194 18.78302956 0.4146736 0 18.78302956 0.54996353 -0.46526194 18.78302956 0.4146736
		 -0.50983983 18.78302956 0 -0.46526194 18.78302956 -0.4146736 0 18.78302956 -0.54996353
		 0.46526194 18.78302956 -0.4146736 -0.81936902 19.76755333 0.81936902 0.81936902 19.76755333 0.81936902
		 -0.81936902 21.40629768 0.81936902 0.81936902 21.40629768 0.81936902 -0.81936902 21.40629768 -0.81936902
		 0.81936902 21.40629768 -0.81936902 -0.81936902 19.76755333 -0.81936902 0.81936902 19.76755333 -0.81936902
		 1.66373813 19.96435165 -0.62257248 1.66373813 19.96435165 0.62257248 1.66373813 21.20949936 -0.62257248
		 1.66373813 21.20949936 0.62257248 -1.66373813 19.96435165 -0.62257248 -1.66373813 19.96435165 0.62257248
		 -1.66373813 21.20949936 0.62257248 -1.66373813 21.20949936 -0.62257248 2.44819832 19.96435165 -0.62257248
		 2.44819832 19.96435165 0.62257248 2.44819832 21.20949936 -0.62257248 2.44819832 21.20949936 0.62257248
		 -2.44819832 19.96435165 -0.62257248 -2.44819832 19.96435165 0.62257248 -2.44819832 21.20949936 0.62257248
		 -2.44819832 21.20949936 -0.62257248 -2.8348999 19.40488815 -1.18203545 -2.8348999 19.40488815 1.18203545
		 -2.8348999 21.76895905 1.18203545 -2.8348999 21.76895905 -1.18203545 -4.32885838 19.40488815 -1.18203545
		 -4.32885838 19.40488815 1.18203545 -4.32885838 21.76895905 1.18203545 -4.32885838 21.76895905 -1.18203545
		 2.44819832 21.36247063 0 1.66373813 21.36247063 0 0.81936902 21.60762405 0 -0.81936902 21.60762405 0
		 -1.66373813 21.36247063 0 -2.44819832 21.36247063 0 -2.8348999 22.059396744 0 -4.32885838 22.059396744 0
		 -4.32885838 19.11445045 0 -2.8348999 19.11445045 0 -2.44819832 19.81137848 0 -1.66373813 19.81137848 0
		 -0.81936902 19.56622696 0 0.81936902 19.56622696 0 1.66373813 19.81137848 0 2.44819832 19.81137848 0
		 2.44819832 20.58692551 -0.81527287 1.66373813 20.58692551 -0.81527287 0.81936902 20.58692551 -1.072982192
		 -0.81936902 20.58692551 -1.072982192 -1.66373813 20.58692551 -0.81527287 -2.44819832 20.58692551 -0.81527287
		 -2.8348999 20.5869236 -1.54790235 -4.32885838 20.5869236 -1.54790235 -4.32885838 20.5869236 0
		 -4.32885838 20.5869236 1.54790235 -2.8348999 20.5869236 1.54790235 -2.44819832 20.58692551 0.81527287
		 -1.66373813 20.58692551 0.81527287 -0.81936902 20.58692551 1.072982192 0.81936902 20.58692551 1.072982192
		 1.66373813 20.58692551 0.81527287 2.44819832 20.58692551 0.81527287 0 20.58692551 1.16506219
		 0 21.47661209 0.88968462 0 21.69521713 0 0 21.47661209 -0.88968462 0 20.58692551 -1.16506219
		 0 19.69723892 -0.88968462 0 19.69723892 0.88968462;
	setAttr -s 308 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 0 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0 0 8 0 1 9 0
		 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0
		 14 22 0 15 23 0 16 24 0 17 25 0 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0
		 25 33 0 26 34 0 27 35 0 28 36 0 29 37 0 30 38 0 31 39 0 40 0 0 40 1 0 40 2 0 40 3 0
		 40 4 0 40 5 0 40 6 0 40 7 0 41 73 0 43 65 1 45 70 1 47 71 0 41 43 0 42 44 0 43 62 1
		 44 57 1 45 47 0 46 48 0 47 63 0 48 64 0 43 49 0 44 50 0 49 66 0 46 51 0 50 58 0 45 52 0
		 52 69 0 49 61 0 49 77 0 50 75 0 53 67 0 51 81 0 54 59 0 52 79 0 56 68 0 53 60 0 57 46 1
		 58 51 0 57 58 1 59 55 0 58 74 1 60 56 0 61 52 0 60 78 1 62 45 1 61 62 1 63 41 0 62 63 1
		 64 42 0 63 72 1 64 57 1 65 44 1 66 50 0 65 66 1 67 54 0 66 76 1 68 55 0 69 51 0 68 80 1
		 70 46 1 69 70 1 71 48 0 70 71 1 72 64 1 71 72 1 73 42 0 72 73 1 73 65 1 74 59 1 75 54 0
		 74 75 1 76 67 1 75 76 1 77 53 0 76 77 1 78 61 1 77 78 1 79 56 0 78 79 1 80 69 1 79 80 1
		 81 55 0 80 81 1 81 74 1 82 153 0 84 148 0 86 150 0 88 152 0 82 143 1 83 144 1 84 117 1
		 85 116 1 86 133 1 87 132 1;
	setAttr ".ed[166:307]" 88 126 0 89 127 0 89 90 0 83 91 0 90 128 1 87 92 0 92 131 1
		 85 93 0 93 115 1 91 145 1 88 94 0 82 95 0 94 125 1 84 96 0 95 142 1 86 97 0 96 118 1
		 97 134 1 90 98 0 91 99 0 98 129 1 92 100 0 100 130 1 93 101 0 101 114 1 99 146 1
		 94 102 0 95 103 0 102 124 1 96 104 0 103 141 1 97 105 0 104 119 1 105 135 1 98 34 0
		 99 36 0 100 32 0 101 38 0 102 106 0 103 107 0 106 123 0 104 108 0 107 140 0 105 109 0
		 108 120 0 109 136 0 106 110 0 107 111 0 110 122 0 108 112 0 111 139 0 109 113 0 112 121 0
		 113 137 0 114 100 1 39 114 1 115 92 1 114 115 1 116 87 1 115 116 1 117 86 1 116 149 1
		 118 97 1 117 118 1 119 105 1 118 119 1 120 109 0 119 120 1 121 113 0 120 121 1 122 111 0
		 121 138 1 123 107 0 122 123 1 124 103 1 123 124 1 125 95 1 124 125 1 126 82 0 125 126 1
		 127 83 0 128 91 1 127 128 1 129 99 1 128 129 1 129 35 1 130 98 1 33 130 1 131 90 1
		 130 131 1 132 89 1 131 132 1 133 88 1 132 151 1 134 94 1 133 134 1 135 102 1 134 135 1
		 136 106 0 135 136 1 137 110 0 136 137 1 138 122 1 137 138 1 139 112 0 138 139 1 140 108 0
		 139 140 1 141 104 1 140 141 1 142 96 1 141 142 1 143 84 1 142 143 1 144 85 1 143 147 1
		 145 93 1 144 145 1 146 101 1 145 146 1 146 37 1 147 144 1 148 85 0 147 148 1 149 117 1
		 148 149 1 150 87 0 149 150 1 151 133 1 150 151 1 152 89 0 151 152 1 153 83 0 153 147 1
		 68 152 0 67 153 0 54 83 0 59 127 0 55 89 0 56 88 0 60 126 0 53 82 0;
	setAttr -s 156 -ch 616 ".fc[0:155]" -type "polyFaces" 
		f 4 0 41 -9 -41
		mu 0 4 0 1 2 3
		f 4 1 42 -10 -42
		mu 0 4 1 199 4 2
		f 4 2 43 -11 -43
		mu 0 4 199 195 196 4
		f 4 3 44 -12 -44
		mu 0 4 5 7 8 6
		f 4 4 45 -13 -45
		mu 0 4 7 9 10 8
		f 4 5 46 -14 -46
		mu 0 4 9 11 12 10
		f 4 6 47 -15 -47
		mu 0 4 11 13 14 12
		f 4 7 40 -16 -48
		mu 0 4 13 0 3 14
		f 4 8 49 -17 -49
		mu 0 4 3 2 15 16
		f 4 9 50 -18 -50
		mu 0 4 2 4 17 15
		f 4 10 51 -19 -51
		mu 0 4 4 196 197 17
		f 4 11 52 -20 -52
		mu 0 4 6 8 19 18
		f 4 12 53 -21 -53
		mu 0 4 8 10 20 19
		f 4 13 54 -22 -54
		mu 0 4 10 12 21 20
		f 4 14 55 -23 -55
		mu 0 4 12 14 22 21
		f 4 15 48 -24 -56
		mu 0 4 14 3 16 22
		f 4 16 57 -25 -57
		mu 0 4 16 15 23 24
		f 4 17 58 -26 -58
		mu 0 4 15 17 25 23
		f 4 18 59 -27 -59
		mu 0 4 17 197 198 25
		f 4 19 60 -28 -60
		mu 0 4 18 19 27 26
		f 4 20 61 -29 -61
		mu 0 4 19 20 28 27
		f 4 21 62 -30 -62
		mu 0 4 20 21 29 28
		f 4 22 63 -31 -63
		mu 0 4 21 22 30 29
		f 4 23 56 -32 -64
		mu 0 4 22 16 24 30
		f 4 24 65 -33 -65
		mu 0 4 24 23 31 32
		f 4 25 66 -34 -66
		mu 0 4 23 25 33 31
		f 4 26 67 -35 -67
		mu 0 4 25 198 201 33
		f 4 27 68 -36 -68
		mu 0 4 26 27 35 34
		f 4 28 69 -37 -69
		mu 0 4 27 28 36 35
		f 4 29 70 -38 -70
		mu 0 4 28 29 37 36
		f 4 30 71 -39 -71
		mu 0 4 29 30 38 37
		f 4 31 64 -40 -72
		mu 0 4 30 24 32 38
		f 3 -1 -73 73
		mu 0 3 1 0 39
		f 3 -2 -74 74
		mu 0 3 199 1 39
		f 3 -3 -75 75
		mu 0 3 195 199 39
		f 3 -4 -76 76
		mu 0 3 7 5 39
		f 3 -5 -77 77
		mu 0 3 9 7 39
		f 3 -6 -78 78
		mu 0 3 11 9 39
		f 3 -7 -79 79
		mu 0 3 13 11 39
		f 3 -8 -80 72
		mu 0 3 0 13 39
		f 4 80 139 -82 -85
		mu 0 4 52 53 54 55
		f 4 82 134 -84 -89
		mu 0 4 56 57 58 59
		f 4 121 138 -81 -119
		mu 0 4 60 61 53 52
		f 4 -121 122 -88 -86
		mu 0 4 62 63 64 65
		f 4 118 84 86 119
		mu 0 4 60 52 55 66
		f 4 81 125 -95 -93
		mu 0 4 55 54 203 205
		f 4 87 110 -97 -94
		mu 0 4 65 64 69 204
		f 4 -83 97 98 132
		mu 0 4 57 56 71 202
		f 4 -87 92 99 117
		mu 0 4 66 55 205 206
		f 4 94 127 146 -101
		mu 0 4 68 67 74 75
		f 4 96 112 142 -102
		mu 0 4 70 207 76 77
		f 4 -99 105 152 151
		mu 0 4 72 210 78 79
		f 4 -100 100 148 147
		mu 0 4 73 68 75 80
		f 4 108 95 -110 -111
		mu 0 4 81 82 83 211
		f 4 155 -113 109 103
		mu 0 4 85 86 84 208
		f 4 -115 -148 150 -106
		mu 0 4 210 209 88 78
		f 4 -117 -118 114 -98
		mu 0 4 56 89 87 71
		f 4 90 -120 116 88
		mu 0 4 59 90 89 56
		f 4 83 136 -122 -91
		mu 0 4 59 58 91 90
		f 4 -123 -92 -90 -109
		mu 0 4 81 92 93 82
		f 4 123 93 -125 -126
		mu 0 4 54 65 204 203
		f 4 -128 124 101 144
		mu 0 4 74 67 70 77
		f 4 -130 -152 154 -104
		mu 0 4 208 72 79 85
		f 4 -132 -133 129 -96
		mu 0 4 82 57 202 83
		f 4 -135 131 89 -134
		mu 0 4 58 57 82 93
		f 4 -137 133 91 -136
		mu 0 4 91 58 93 92
		f 4 -139 135 120 -138
		mu 0 4 53 61 63 62
		f 4 -140 137 85 -124
		mu 0 4 54 53 62 65
		f 4 -143 140 -105 -142
		mu 0 4 77 76 94 95
		f 4 -144 -145 141 -127
		mu 0 4 96 74 77 95
		f 4 -147 143 -103 -146
		mu 0 4 75 74 96 97
		f 4 -149 145 107 115
		mu 0 4 80 75 97 98
		f 4 -151 -116 113 -150
		mu 0 4 78 88 99 100
		f 4 -153 149 106 130
		mu 0 4 79 78 100 101
		f 4 -155 -131 128 -154
		mu 0 4 85 79 101 102
		f 4 -141 -156 153 -112
		mu 0 4 103 86 85 102
		f 4 281 289 -158 -279
		mu 0 4 104 105 106 107
		f 4 157 291 290 -163
		mu 0 4 107 106 108 109
		f 4 158 295 294 -165
		mu 0 4 110 111 112 113
		f 4 271 270 218 237
		mu 0 4 114 115 116 117
		f 4 -247 248 247 -170
		mu 0 4 118 119 120 121
		f 4 -166 171 172 257
		mu 0 4 122 123 124 125
		f 4 -164 173 174 225
		mu 0 4 126 127 128 129
		f 4 -281 283 282 -174
		mu 0 4 127 130 131 128
		f 4 244 177 -243 245
		mu 0 4 132 133 134 135
		f 4 278 179 -277 279
		mu 0 4 104 107 136 137
		f 4 162 229 -183 -180
		mu 0 4 107 109 138 136
		f 4 164 261 -184 -182
		mu 0 4 110 113 139 140
		f 4 -248 250 249 -186
		mu 0 4 121 120 141 142
		f 4 -173 187 188 255
		mu 0 4 125 124 143 144
		f 4 -175 189 190 223
		mu 0 4 129 128 145 146
		f 4 -283 285 284 -190
		mu 0 4 128 131 147 145
		f 4 242 193 -241 243
		mu 0 4 135 134 148 149
		f 4 276 195 -275 277
		mu 0 4 137 136 150 151
		f 4 182 231 -199 -196
		mu 0 4 136 138 152 150
		f 4 183 263 -200 -198
		mu 0 4 140 139 153 154
		f 4 -250 251 35 -202
		mu 0 4 40 41 34 35
		f 4 -189 202 32 253
		mu 0 4 42 43 32 31
		f 4 -191 203 38 221
		mu 0 4 44 45 37 38
		f 4 -285 286 37 -204
		mu 0 4 45 46 36 37
		f 4 240 205 -239 241
		mu 0 4 149 148 162 163
		f 4 274 207 -273 275
		mu 0 4 151 150 164 165
		f 4 198 233 -211 -208
		mu 0 4 150 152 166 164
		f 4 199 265 -212 -210
		mu 0 4 154 153 167 168
		f 4 238 213 -237 239
		mu 0 4 163 162 169 170
		f 4 272 215 -271 273
		mu 0 4 165 164 116 115
		f 4 210 235 -219 -216
		mu 0 4 164 166 171 116
		f 4 211 267 -220 -218
		mu 0 4 168 167 172 173
		f 4 -221 -222 39 -203
		mu 0 4 43 44 38 32
		f 4 -223 -224 220 -188
		mu 0 4 124 176 174 143
		f 4 -225 -226 222 -172
		mu 0 4 123 177 176 124
		f 4 -291 293 -159 -227
		mu 0 4 178 179 111 110
		f 4 -230 226 181 -229
		mu 0 4 180 178 110 140
		f 4 -232 228 197 -231
		mu 0 4 181 180 140 154
		f 4 -234 230 209 -233
		mu 0 4 182 181 154 168
		f 4 -236 232 217 -235
		mu 0 4 183 182 168 173
		f 4 269 -238 234 219
		mu 0 4 184 114 117 185
		f 4 206 -240 -215 -213
		mu 0 4 186 187 188 189
		f 4 194 -242 -207 -205
		mu 0 4 190 191 187 186
		f 4 178 -244 -195 -193
		mu 0 4 192 193 191 190
		f 4 166 -246 -179 -177
		mu 0 4 194 175 193 192
		f 4 -249 -168 168 170
		mu 0 4 161 160 159 158
		f 4 -251 -171 184 186
		mu 0 4 157 161 158 156
		f 4 -252 -187 200 34
		mu 0 4 201 200 47 33
		f 4 -253 -254 33 -201
		mu 0 4 47 42 31 33
		f 4 -255 -256 252 -185
		mu 0 4 158 125 144 156
		f 4 -257 -258 254 -169
		mu 0 4 159 122 125 158
		f 4 -295 297 -160 -259
		mu 0 4 113 112 155 194
		f 4 -262 258 176 -261
		mu 0 4 139 113 194 192
		f 4 -264 260 192 -263
		mu 0 4 153 139 192 190
		f 4 -266 262 204 -265
		mu 0 4 167 153 190 186
		f 4 -268 264 212 -267
		mu 0 4 172 167 186 189
		f 4 214 -269 -270 266
		mu 0 4 51 50 114 184
		f 4 236 216 -272 268
		mu 0 4 50 49 115 114
		f 4 208 -274 -217 -214
		mu 0 4 162 165 115 169
		f 4 196 -276 -209 -206
		mu 0 4 148 151 165 162
		f 4 180 -278 -197 -194
		mu 0 4 134 137 151 148
		f 4 160 -280 -181 -178
		mu 0 4 133 104 137 134
		f 4 156 299 -282 -161
		mu 0 4 133 48 105 104
		f 4 -284 -162 169 175
		mu 0 4 131 130 118 121
		f 4 -286 -176 185 191
		mu 0 4 147 131 121 142
		f 4 -287 -192 201 36
		mu 0 4 36 46 40 35
		f 4 287 280 -289 -290
		mu 0 4 105 130 127 106
		f 4 -292 288 163 227
		mu 0 4 108 106 127 126
		f 4 -294 -228 224 -293
		mu 0 4 111 179 177 123
		f 4 -296 292 165 259
		mu 0 4 112 111 123 122
		f 4 -298 -260 256 -297
		mu 0 4 155 112 122 159
		f 4 -300 298 161 -288
		mu 0 4 105 48 118 130
		f 4 126 302 -299 -302
		mu 0 4 96 95 118 48
		f 4 104 303 246 -303
		mu 0 4 95 94 119 118
		f 4 111 304 167 -304
		mu 0 4 103 102 159 160
		f 4 -129 300 296 -305
		mu 0 4 102 101 155 159
		f 4 -107 305 159 -301
		mu 0 4 101 100 194 155
		f 4 -114 306 -167 -306
		mu 0 4 100 99 175 194
		f 4 -108 307 -245 -307
		mu 0 4 98 97 133 132
		f 4 102 301 -157 -308
		mu 0 4 97 96 48 133;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "C37AB171-C543-669C-29FE-0C9B3467B808";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "F063BBAE-9547-BF85-810C-139EA02D98D8";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "6670E6D2-0043-9680-6626-ABABF3E5C2A0";
createNode displayLayerManager -n "layerManager";
	rename -uid "4E815178-AC4B-8692-82F5-D9BB3A4B2286";
createNode displayLayer -n "defaultLayer";
	rename -uid "485B418A-AF4E-ED4C-52C4-9AA63326A8C4";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "EA060D40-C943-492A-D1EC-CAB8DF70CEA9";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "85E4B1C8-8D4E-84D5-3D24-27A6A58AA0A6";
	setAttr ".g" yes;
createNode lambert -n "HammerMatte";
	rename -uid "CA51E0B9-EF4A-AE4C-3D04-5B99C802E6B0";
	setAttr ".c" -type "float3" 0.6506024 0.6506024 0.6506024 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "E502BA27-3D4D-54D8-B3B6-05B02AADD0FC";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "964FFB6A-B24E-3395-296E-7399AD333222";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "DD33F7BF-664D-4002-B961-5FB09F3C4929";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"flat\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1662\n            -height 1520\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n"
		+ "                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n"
		+ "                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n"
		+ "                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n"
		+ "                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n"
		+ "\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n"
		+ "            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n"
		+ "            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"<function selCom at 0x7f29c5c04aa0>\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"flat\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1662\\n    -height 1520\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"flat\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1662\\n    -height 1520\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "23F78331-A54C-E0E2-0363-96876C194C25";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "45CC8832-5B4F-70FB-3078-E1A68A51BC3E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode groupId -n "groupId1";
	rename -uid "85C925C5-D248-7F11-C88E-B596C9929F4B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "6DE871D2-6A48-B724-673E-1CB44F577EB2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:155]";
createNode polySplitRing -n "polySplitRing1";
	rename -uid "9CFD2F06-984D-2632-12C1-05BB389CB030";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[84:85]" "e[88:89]" "e[119]" "e[122]" "e[134]" "e[139]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.041756320744752884;
	setAttr ".re" 84;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "8954B30A-3D42-D5E2-A223-41B4F5575D7E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[88:89]" "e[119]" "e[134]" "e[308]" "e[317]" "e[319]" "e[321]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.95521295070648193;
	setAttr ".dr" no;
	setAttr ".re" 308;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "F728453C-8746-01DF-6834-A4A3CCF5B293";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[212:213]" "e[215]" "e[217]" "e[235]" "e[239]" "e[267]" "e[273]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.10695777088403702;
	setAttr ".re" 273;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "D8A758EC-F742-BED0-3441-1981914B8121";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[212:213]" "e[215]" "e[217]" "e[235]" "e[267]" "e[340]" "e[351]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.84856331348419189;
	setAttr ".dr" no;
	setAttr ".re" 340;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySmoothFace -n "polySmoothFace1";
	rename -uid "8F052C8D-5148-5F64-69DC-B6B2991BC2FF";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "11A0F57E-E543-AF69-C103-66A4923EFD62";
	setAttr ".uopa" yes;
	setAttr -s 875 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.20410517 0.35198677 0.21454912 0.36567056
		 0.23305818 0.38729018 0.28336528 0.41231406 0.12485206 0.40947902 0.16663116 0.3855533
		 0.18315649 0.36504245 0.19204378 0.35190606 0.19778311 0.34736949 0.19735968 0.36578381
		 0.19848105 0.38608855 0.20710161 0.41877526 0.22811025 0.46351993 0.1792638 0.45797056
		 0.19790795 0.41523308 0.2044397 0.38438976 0.20408687 0.36521369 0.20045719 0.35879838
		 0.18647325 0.37800571 0.17731228 0.4021374 0.17407078 0.43988684 0.17583048 0.49060106
		 0.23015097 0.48249781 0.22939247 0.43477011 0.2241531 0.39946538 0.21365625 0.37696162
		 0.19983166 0.36954135 0.17766878 0.38868412 0.16066152 0.41458002 0.14861664 0.45283526
		 0.13557181 0.49843782 0.26824725 0.48839438 0.25305623 0.44653225 0.23922166 0.41116977
		 0.22102129 0.38727644 0.19914514 0.37953186 0.17023703 0.39969882 0.14674088 0.42593914
		 0.12960598 0.46217453 0.11023471 0.49336481 0.29083753 0.48213398 0.26998812 0.45500791
		 0.25142545 0.42192584 0.22701031 0.39799428 0.19846636 0.38994896 0.17168611 0.33906233
		 0.31797129 -0.30178535 0.33981115 -0.30143219 0.31837571 -0.2756235 0.33063507 -0.27495515
		 -0.14703625 -0.017040282 -0.159401 -0.014920712 -0.15547001 -0.043139994 -0.17686504
		 -0.04155916 0.32119489 -0.32421693 -0.19714957 -0.45263875 0.32682228 -0.32369831
		 -0.11912928 -0.51598763 -0.15455383 -0.063805699 -0.1060661 -0.13931394 -0.14872038
		 -0.065417334 -0.042592958 -0.069982201 0.16484228 -0.0053558648 0.23374474 -0.06883204
		 -0.50433624 0.2232489 -0.44074327 0.28379378 0.31337917 -0.28028929 -0.14206421 -0.019704275
		 0.30116951 -0.3303543 -0.12884063 -0.070029937 -0.13693011 -0.14081229 -0.10939312
		 -0.54675817 0.23003685 -0.097659551 -0.53053284 0.20828158 0.14554977 0.018756568
		 -0.41389859 0.27570772 0.34672236 -0.33139268 -0.20372902 -0.42157239 -0.011492208
		 -0.065322846 -0.17408764 -0.07313633 0.33579904 -0.28152108 -0.16402471 -0.023791507
		 0.32099962 -0.28493702 -0.15991533 -0.027132273 0.33614421 -0.28429574 -0.17337662
		 -0.024212658 0.32450837 -0.27441955 0.3240115 -0.32226846 -0.15856619 -0.48435318
		 0.20106626 -0.037039906 -0.47223464 0.25529802 -0.15167731 -0.062893286 -0.074358352
		 -0.10508323 -0.15326011 -0.014959767 -0.1661396 -0.046294868 0.32902086 -0.25801533
		 -0.16722232 0.0016130805 0.32886803 -0.30641466 0.16719082 -0.11814071 -0.50300074
		 0.15178388 0.16008507 -0.13979626 0.12987635 -0.1137512 0.098702878 -0.08780022 0.090196624
		 -0.018042132 -0.40268022 0.21376011 -0.37968215 0.21056771 -0.40571517 0.18397325
		 -0.43180311 0.15638444 0.1831004 0.050156549 0.29749808 -0.047447525 0.27533627 0.1426262
		 0.39047951 0.054983608 -0.54860604 0.44121897 -0.63641286 0.33346248 -0.45598805
		 0.34591377 -0.55376667 0.24330732 -0.61798471 0.20845142 0.37878352 -0.08499071 -0.67482364
		 0.28184277 0.45187733 -0.00024332106 -0.41482183 0.41951442 0.14044195 0.11781716
		 0.22120804 0.18147469 -0.49276015 0.50013608 -0.65993148 0.16877523 0.11377361 0.47272038
		 0.44644788 -0.1310026 0.28285381 0.46497205 -0.72089797 0.23660615 0.1620163 0.41383439
		 0.51397759 -0.041769471 0.23365638 0.41191873 -0.36617535 0.47142756 0.091607362
		 0.16171187 0.18221325 0.22621402 -0.45293882 0.56187236 -0.30331126 0.49722615 0.060970604
		 0.17931719 0.16695872 0.28582379 -0.43878335 0.60330862 -0.20409337 0.60431212 -0.11824331
		 0.44520986 -0.03605634 0.25808626 -0.052120954 0.30944335 0.083148748 0.38294202
		 -0.36297691 0.72634953 0.017671108 0.51808506 0.54990381 -0.025139462 0.19792995
		 0.41091874 -0.72322607 0.2726827 0.48899063 0.015123412 -0.68278682 0.3180362 0.43424562
		 0.07405553 -0.65319484 0.37769336 0.31964248 0.16277878 -0.56433702 0.48515445 0.25862971
		 0.19036537 -0.5073064 0.53847402 0.21921661 0.22455639 -0.47339708 0.60510403 0.21909425
		 0.29622081 -0.48589134 0.6573118 0.067545414 0.45915321 0.14361566 0.39581907 -0.3871797
		 0.78735423 -0.097032517 0.2499429 -0.10240769 0.3686735 -0.17667598 0.5448221 0.0040574074
		 0.14689896 -0.279008 0.44261009 0.047075421 0.15181357 -0.35765833 0.43337899 0.10361993
		 0.11349159 -0.39589223 0.38378805 0.14513864 0.06077449 -0.41895235 0.31099439 0.26763454
		 -0.090348937 -0.57033831 0.2102558 0.34691554 -0.11134815 -0.62109876 0.17529038
		 0.4122895 -0.15145452 -0.66146189 0.13439855 0.10377643 0.49900776 0.29322538 0.48755711
		 -0.688133 0.20179084 0.13322005 0.44503435 -0.64489883 0.24449787 -0.5969075 0.28975546
		 -0.50385523 0.39660871 -0.45386821 0.45957673 -0.40883166 0.51666814 -0.37144807
		 0.55012327 -0.27710766 0.66599721 -0.061103582 0.50153548 -0.017311811 0.41463086
		 0.026597232 0.32647631 0.11381751 0.23191923 0.13680223 0.19458516 0.18054309 0.14952745
		 0.23071094 0.099488333 0.34687552 0.0066170394 0.41465461 -0.041125968 0.47927207
		 -0.084123246 0.26280379 0.44060943 0.28514466 0.052667111 0.33237913 0.10241421 0.37983912
		 0.12400492 -0.61371243 0.43432802 -0.59632361 0.38680956 -0.55070245 0.33951965 -0.50360763
		 0.29133227 0.23703238 -0.00046338141 0.32536602 -0.29600835 0.35021716 -0.36284202
		 -0.18563837 -0.10532236 -0.16111863 -0.037441313 -0.16425478 -0.038766265 -0.16758019
		 -0.035323083 0.30711317 -0.36181349 -0.1432451 -0.10121971 0.33150494 -0.29551572
		 0.32843834 -0.2976231 0.3216145 -0.27997008 0.3462401 -0.21055387 -0.17648369 0.047403961
		 -0.15174425 -0.021304131 -0.15532094 -0.019701675 -0.15886474 -0.01933755 -0.13405681
		 0.051461726 0.30395299 -0.20905401 0.32874244 -0.27925044 0.3251819 -0.27892059 0.04119125
		 0.30371517 0.100016 0.35752988 0.15398329 0.37247488 -0.41061851 0.77557015 -0.37459692
		 0.70429784 -0.29961637 0.64401072 -0.22936249 0.58318061 -0.091284811 0.22706589
		 -0.19942254 0.52885866 -0.019523084 0.2461195 0.093729347 0.25303835 0.1497879 0.30906299
		 0.21659738 0.31732249 -0.46519935 0.68258911 -0.42310533 0.6325953 -0.35030535 0.5763126
		 -0.27898958 0.52002686 -0.25583923 0.45093977;
	setAttr ".uvtk[250:499]" -0.015109718 0.17008033 0.037559986 0.19617081 0.20662084
		 0.36595392 0.21745199 0.3886525 0.23894531 0.42110485 0.16784748 0.41765195 0.18714839
		 0.38686043 0.19603437 0.36534899 0.19962361 0.35421985 0.20189139 0.35432208 0.18890896
		 0.3817901 0.18773064 0.41107988 0.1942337 0.45321554 0.2112188 0.44758767 0.21544605
		 0.40787148 0.21251857 0.38036811 0.20481816 0.36619496 0.19564605 0.36656529 0.17436773
		 0.39421922 0.16368866 0.42665416 0.15734509 0.47077173 0.2464031 0.4633742 0.23789299
		 0.4223339 0.22558749 0.39215785 0.20879748 0.37635434 0.19028905 0.37693614 0.16260341
		 0.40420479 0.14506391 0.4372479 0.13071388 0.47784507 0.27091694 0.46919617 0.25474918
		 0.43208885 0.23579562 0.40164375 0.21182746 0.38536817 0.18583789 0.38611534 0.19916824
		 0.35130024 0.21042764 0.36462229 0.23102567 0.38179553 0.15510142 0.38019991 0.1742734
		 0.36382079 0.18408445 0.35108978 0.18919346 0.34428406 0.19317591 0.34429467 0.32096696
		 -0.30619711 -0.15789402 -0.046800137 0.32492363 -0.29090142 0.33595854 -0.29443091
		 0.32143986 -0.2946434 0.32261044 -0.27729163 0.31588417 -0.28092057 -0.15109736 -0.018263444
		 0.33301139 -0.28180411 -0.033130124 -0.26168954 0.024770901 -0.31618854 -0.24905849
		 0.054845899 -0.053744942 -0.2361692 -0.1444276 -0.02065134 -0.30367634 0.0058190525
		 -0.22350399 0.072784573 -0.16128314 -0.023567855 -0.15932679 -0.036899745 -0.16294146
		 -0.031921983 -0.17297006 -0.034379184 0.32626438 -0.27696162 0.0030493736 -0.29077175
		 -0.2781966 0.022649318 -0.1548326 -0.017224573 -0.17395055 -0.045929432 -0.17011511
		 -0.030667365 0.33270925 -0.29062426 0.33683199 -0.30596459 0.22029358 -0.092604101
		 0.20425822 -0.066511616 0.16933084 -0.03560394 0.14527702 -0.010315374 -0.41943324
		 0.26868069 -0.44484186 0.25640702 -0.4758091 0.22558817 -0.50188076 0.20527586 0.28137016
		 0.10182662 0.32599646 0.1353811 -0.55307311 0.3912988 0.042978346 0.38786858 0.32429567
		 -0.082105055 -0.63987803 0.28747603 0.44022104 0.037972599 0.40134621 0.0072727799
		 0.14455977 0.08300966 0.2269862 0.14506476 0.26707411 0.17116483 -0.50181425 0.44970873
		 0.39777416 -0.12020718 -0.68312782 0.24147609 0.49997884 -0.013192952 0.46574759
		 -0.041655455 0.096900493 0.13718614 0.17871344 0.18992752 0.21765414 0.2079542 -0.45105839
		 0.5119608 0.28453499 0.47374845 0.15277824 0.41901347 0.21495467 0.40013593 0.24394941
		 0.41605258 0.050006509 0.16003403 0.14884582 0.23865119 0.19600827 0.2632426 -0.41896501
		 0.56186765 -0.061426044 0.24411899 0.059731066 0.34395543 0.11690268 0.3794651 -0.32879031
		 0.69075668 0.18138987 0.40104964 -0.70168453 0.27581808 -0.66361725 0.3264358 -0.58402777
		 0.43595943 -0.53019685 0.48975614 -0.48019901 0.550677 -0.46273184 0.60855293 -0.38470986
		 0.74910241 0.010783911 0.4759666 -0.20042765 0.56878197 -0.32142505 0.46274465 -0.3817445
		 0.43019581 -0.42247927 0.36741659 -0.58787608 0.21004429 -0.63956606 0.1731427 0.11414018
		 0.48313335 0.1298053 0.45073062 -0.65276289 0.20528182 -0.60268927 0.24588516 -0.50244111
		 0.3428044 -0.45612437 0.40598199 -0.40886182 0.4686799 -0.358033 0.51044309 -0.24912316
		 0.62744999 -0.077184588 0.44152755 -0.045375526 0.3522605 -0.00206393 0.28375459
		 0.097417444 0.19122915 0.13534713 0.15701884 0.18321717 0.10374115 0.23290564 0.049349517
		 0.35989332 -0.042550623 0.42970723 -0.086431742 0.2678287 0.44490606 0.33893695 0.05748108
		 0.38332918 0.092067614 -0.62741625 0.38227695 -0.59750497 0.33782184 -0.55005896
		 0.28984612 0.29105699 0.0018211305 0.24175797 -0.040355623 0.25775379 -0.073719867
		 -0.53634334 0.22028428 -0.50700986 0.25114802 -0.46640062 0.29351419 -0.43472642
		 0.30515414 0.1591922 0.027716517 0.1943737 0.00018043816 0.33345425 -0.28789362 -0.16624027
		 -0.029517084 -0.15645462 -0.028776675 -0.16318613 -0.027809381 -0.15338814 -0.026628524
		 0.32047194 -0.28674343 0.33029664 -0.28733185 0.32358539 -0.28771538 0.32549757 -0.27851787
		 -0.15423042 -0.020466708 -0.1480819 -0.016037948 -0.15901411 -0.014910772 -0.15264636
		 -0.017300546 0.32372445 -0.27762401 0.33005327 -0.27468589 0.3190887 -0.27505809
		 0.096956909 0.30906299 0.15459925 0.34278226 -0.42112795 0.69849187 -0.36481038 0.64066911
		 -0.28546825 0.5801037 -0.23727307 0.52142686 -0.021657258 0.20707539 0.037007332
		 0.2472418 0.1347568 0.27248126 0.18710423 0.30612037 -0.45763096 0.6400212 -0.40171134
		 0.58805203 -0.32307303 0.53171325 -0.27585796 0.47853735 0.02568993 0.16814172 0.078596056
		 0.20957133 0.20981848 0.35819668 0.21098167 0.3764177 0.19729584 0.37434864 0.20368716
		 0.35902941 0.22418949 0.37631273 0.22641248 0.40441757 0.20179901 0.40088135 0.24927941
		 0.40129387 0.25649172 0.44120896 0.15146762 0.4370501 0.21574108 0.43931836 0.15265459
		 0.39890784 0.17932397 0.40181088 0.19041935 0.43473327 0.17578641 0.37517911 0.19259825
		 0.37531173 0.20210969 0.39833754 0.18826577 0.35792953 0.19828281 0.35874867 0.20478994
		 0.373308 0.19548267 0.34887731 0.20068818 0.3531267 0.20241454 0.36043638 0.20146111
		 0.34887809 0.19864047 0.36068159 0.18731642 0.39464468 0.18129644 0.38839921 0.19165218
		 0.37213147 0.18967547 0.43051034 0.1750645 0.41960153 0.20092535 0.47968256 0.20588085
		 0.47280145 0.17469874 0.46352202 0.21458435 0.42613328 0.22995728 0.45695359 0.21489769
		 0.39242774 0.22733912 0.41580376 0.20916918 0.37130928 0.21941265 0.38663951 0.20016378
		 0.36430299 0.20692551 0.37150788 0.19286659 0.37198964 0.16841859 0.40871012 0.16800684
		 0.39930201 0.18180704 0.38346675 0.16033587 0.44722021 0.15346479 0.43245509 0.15378621
		 0.4964062 0.25120509 0.48723584 0.14227644 0.47556019 0.2422632 0.44145957 0.26046818
		 0.46744919 0.23226616 0.40564051 0.24725097 0.42767051 0.21760571 0.38222766 0.23116699
		 0.39696777 0.19948822 0.37455928 0.21048221 0.38072836 0.18787882 0.38140136 0.15338385
		 0.4196966;
	setAttr ".uvtk[500:749]" 0.1577113 0.41062766 0.17367861 0.39319542 0.13803351
		 0.45735985 0.13744038 0.4431904 0.12062094 0.49777916 0.28191486 0.48702678 0.12100625
		 0.48039758 0.26267049 0.45057049 0.27933568 0.47130615 0.24567309 0.41596848 0.2613886
		 0.43769652 0.22426996 0.39162597 0.23989969 0.4078657 0.19879594 0.38390034 0.21324575
		 0.39117289 0.18373561 0.39199725 0.19241315 0.34619761 0.19938144 0.35542333 0.21292642
		 0.36937326 0.22336411 0.38033658 0.15265524 0.37870681 0.16729715 0.3682937 0.17950636
		 0.35498929 0.18539923 0.34611607 0.18870372 0.34303319 0.32107264 -0.30545938 0.32887679
		 -0.30776113 0.32511348 -0.29732913 0.31664228 -0.30200094 -0.16090536 -0.038561761
		 -0.16590208 -0.047272027 -0.1584444 -0.046142161 -0.1538046 -0.043531597 0.33203059
		 -0.26737899 -0.1707077 -0.0087361932 0.32886314 -0.28807491 0.32086158 -0.29585844
		 0.33657217 -0.29553664 0.32442516 -0.28388739 -0.16150773 -0.023723125 0.32206675
		 -0.29302043 0.34132475 -0.30159372 0.33497047 -0.29393011 0.33207536 -0.28469485
		 -0.17121863 -0.027132988 0.31973833 -0.2747013 0.32443798 -0.27671772 0.3233797 -0.32281587
		 -0.1780334 -0.46785462 0.32382429 -0.27874649 0.32289165 -0.2774635 0.30209428 -0.28570712
		 -0.13057846 -0.025175981 0.31445724 -0.32635373 -0.11446127 -0.53068209 0.32505834
		 -0.27812225 -0.1484651 -0.01567585 -0.15222597 -0.020118318 -0.15097874 -0.063732967
		 -0.057828978 -0.087694898 -0.15297759 -0.017300479 0.32619518 -0.27835852 0.3335129
		 -0.32710975 -0.20050752 -0.43782151 0.34676373 -0.2869066 -0.17489082 -0.02903042
		 -0.015093222 -0.27623558 0.11251341 -0.10001165 -0.047235504 -0.24857198 0.028635874
		 -0.3298189 -0.31734481 0.0052674413 0.1660073 -0.15121642 0.017517254 -0.30385545
		 -0.23592576 0.067463905 -0.39193904 0.19912046 -0.26362938 0.038692355 0.092052907
		 -0.076450169 -0.056552708 -0.22243983 -0.20975594 0.074392885 -0.15162998 -0.017161667
		 -0.15362948 -0.018110938 -0.14217478 -0.066250004 -0.12080333 -0.14025036 -0.44323963
		 0.15150893 -0.2913107 0.010396183 -0.027757645 -0.067734018 -0.16096038 -0.068582624
		 -0.36830294 0.21471262 -0.1546793 -0.020220108 -0.15895116 -0.037669837 -0.17061746
		 -0.035713971 -0.16659147 -0.028310537 -0.17373717 -0.035524428 -0.17819709 -0.041832983
		 -0.15817332 -0.032623887 0.32927465 -0.27434656 0.32464617 -0.32254288 -0.13890104
		 -0.50083321 0.14690857 -0.12752314 -0.09087418 -0.12226413 -0.15235722 -0.062888838
		 -0.41951123 0.16847876 -0.15804082 -0.014584795 -0.16766435 -0.03746593 -0.17386174
		 -0.045210004 -0.16333675 -0.0069761872 0.32576108 -0.26694018 0.33666962 -0.30521631
		 0.3317613 -0.29707712 0.22000921 -0.10585024 -0.51509738 0.20147157 0.23558676 -0.082624003
		 0.21656056 -0.080199562 0.18722035 -0.051013723 0.22025302 -0.053945467 0.18152729
		 -0.019919887 0.15425199 -0.022201434 0.15312231 0.0064608306 0.13933009 0.0023303032
		 -0.40670633 0.26623809 -0.42781818 0.28363341 -0.43138915 0.26683438 -0.45534346
		 0.27228811 -0.460289 0.24142471 -0.48943192 0.23795477 -0.48949885 0.21237656 -0.51706773
		 0.21350932 0.25727594 0.075728044 0.30968788 0.0801185 0.30376971 0.1230829 0.25383496
		 0.12327671 0.35491374 0.11492931 0.35029382 0.14349332 -0.58893424 0.46029714 0.29653662
		 0.15396559 -0.57370991 0.41370901 -0.57586861 0.36409256 -0.52761579 0.36719337 -0.52855235
		 0.41972482 -0.00048780441 0.36728075 0.052689731 0.35538894 0.075089276 0.41333616
		 0.10799241 0.38916299 0.029208541 0.43260068 0.28724307 -0.071470559 0.30807373 -0.098712146
		 -0.59359503 0.19361049 0.36292884 -0.099987581 0.34112453 -0.064698458 -0.61864901
		 0.31233934 -0.65532768 0.30703384 -0.66135228 0.26374939 -0.6209957 0.26662633 0.41152093
		 0.066496275 0.42085233 0.027176283 0.46968624 0.010229498 0.46099034 0.044147238
		 -0.66842145 0.34722912 0.36940256 0.03335581 0.38056034 -0.017352819 0.43383846 -0.018515475
		 0.15828261 0.053144276 0.16315651 0.087762311 0.12254384 0.11237748 0.12619838 0.085297152
		 -0.40927804 0.34918097 0.24728173 0.16173793 0.20169502 0.16730475 0.20511389 0.12444435
		 0.28795338 0.1772036 -0.53516865 0.51064754 0.23995072 0.18860258 -0.47892094 0.42786375
		 -0.47515815 0.48068196 -0.52051258 0.46997532 0.3808229 -0.13132477 -0.64122576 0.15606549
		 0.43031591 -0.14085028 0.2884554 0.47939575 0.4135071 -0.10632107 -0.69587851 0.25868934
		 -0.70425212 0.21946195 0.14701274 0.42804205 -0.66762823 0.22323933 0.48290431 -0.023873027
		 0.53112787 -0.033902183 0.21679488 0.40927345 0.51805353 -0.0053396448 -0.70331246
		 0.29396003 0.44758219 -0.063729376 0.4968836 -0.062678508 0.24876606 0.4248434 0.11567527
		 0.14375883 0.070967615 0.15324175 0.077850282 0.13368317 -0.37578356 0.411134 0.19866478
		 0.20272735 0.16031659 0.21239966 0.15699765 0.17358772 0.23652121 0.20881885 -0.48892894
		 0.56943607 0.20270801 0.23095664 -0.42983228 0.49030775 -0.43274081 0.54011768 -0.4688358
		 0.53180867 0.29388398 0.48296314 0.10506222 0.494398 0.2768923 0.4597047 0.16626027
		 0.40702781 0.13969311 0.43323499 0.23019212 0.40516579 0.19812274 0.39756826 0.25737995
		 0.42892236 0.073440135 0.17223242 0.035263538 0.16400665 0.024965554 0.14992881 -0.31776902
		 0.43744385 0.17301083 0.25745696 0.14128703 0.26206243 0.12306005 0.21466269 0.21982265
		 0.26067528 -0.47935072 0.63188243 0.19209516 0.29338834 -0.38873163 0.53609663 -0.40800431
		 0.57767171 -0.44442308 0.58590454 -0.049578488 0.23271215 -0.031626582 0.257447 -0.06105274
		 0.25278738 -0.083746195 0.33481619 -0.094899178 0.23930025 -0.18725097 0.53616333
		 0.071368545 0.33315247 0.087925345 0.36891338 0.029771656 0.31525847 0.12926441 0.36798474
		 0.14964175 0.38477877 -0.39827639 0.78227663 -0.34008005 0.6751731 -0.28817204 0.6591773
		 -0.32050645 0.70206052 -0.013841867 0.50946772 -0.36340573 0.71986806 0.17886627
		 0.41028357 -0.72249508 0.25382265 -0.68149 0.29969633 -0.64616376 0.35453063 -0.60688406
		 0.40936998 -0.55854338 0.46243274 -0.50281948 0.51882362;
	setAttr ".uvtk[750:874]" -0.46669203 0.58214688 -0.46089888 0.6280247 -0.39608741
		 0.73386037 -0.37489617 0.75126427 0.049036205 0.49281055 -0.034252346 0.46185336
		 -0.21180946 0.55346817 -0.19182047 0.57988107 -0.11001617 0.41462186 -0.21808288
		 0.59806615 -0.35634536 0.45068043 -0.2893436 0.47122911 -0.33302349 0.48639733 -0.40316096
		 0.40164837 -0.39163205 0.44899696 -0.43489394 0.33327687 -0.43677056 0.38594022 -0.55972499
		 0.22080207 -0.58950192 0.227025 -0.61588246 0.19247094 -0.64213866 0.1889874 -0.66033554
		 0.15254191 0.10851485 0.48901176 0.12127839 0.46723706 0.12169757 0.45935589 -0.67369729
		 0.18473932 -0.62921661 0.2255469 -0.57554007 0.26701304 -0.52582824 0.31502631 -0.48094285
		 0.31776515 -0.47938475 0.37325054 -0.43261084 0.43855852 -0.3853409 0.4932186 -0.33382124
		 0.52279735 -0.26052102 0.61267203 -0.23963258 0.62927175 -0.094026446 0.47990912
		 -0.063711584 0.39602336 -0.020438433 0.31818709 -0.010782748 0.29325119 0.010021299
		 0.27232426 0.11334676 0.17640549 0.086519271 0.20296663 0.15950024 0.13173983 0.20735407
		 0.075479552 0.21056876 0.02376163 0.26068649 0.024931863 0.32419661 -0.020495936
		 0.39578491 -0.064500853 0.46231025 -0.10723834 0.27464992 0.45317948 0.31511697 0.029793829
		 0.36114654 0.079903953 0.40768275 0.099124938 -0.63337052 0.40665334 -0.61696953
		 0.36006862 -0.57363945 0.31395662 -0.52765566 0.26761806 0.26620716 -0.022866473
		 0.25881416 -0.05744192 0.21739176 -0.020665422 0.24832545 -0.09223216 -0.54865336
		 0.20879096 -0.52418053 0.23406807 -0.48621857 0.27165535 -0.449523 0.30835524 -0.41821867
		 0.29317096 0.14519805 0.037967846 0.17508152 0.017082587 0.32382798 -0.28782761 0.33108199
		 -0.28085262 0.34874541 -0.28795069 -0.18147773 -0.029916316 -0.16124326 -0.022488773
		 -0.15666175 -0.029156625 -0.15170884 -0.020370111 -0.15982622 -0.028328508 -0.15891957
		 -0.019358501 -0.16295838 -0.027250171 -0.13815635 -0.026013762 0.30523276 -0.28641757
		 -0.14933294 -0.019484609 0.31922099 -0.27970374 0.33005697 -0.28707546 0.32693958
		 -0.2875261 0.32878757 -0.27894479 0.32157314 -0.27931178 0.31739092 -0.27605611 0.34009653
		 -0.28230894 -0.16837215 -0.024677366 -0.14634985 -0.017517984 -0.15355444 -0.015273944
		 -0.16063619 -0.015291534 -0.1383357 -0.020451352 0.30945492 -0.28106439 0.33168632
		 -0.27534002 0.32457972 -0.2747902 0.12247467 0.28448308 0.12554476 0.33312944 0.067120314
		 0.27854556 0.17735636 0.31783068 0.18719712 0.34488717 -0.43795976 0.73098028 -0.44597611
		 0.65990508 -0.39897457 0.66936499 -0.38965914 0.60525894 -0.3247683 0.61042583 -0.31075323
		 0.54747397 -0.2540704 0.551117 -0.26328132 0.49167907 -0.22717234 0.48815081 -0.055053502
		 0.19907665 0.0093944073 0.18083075 0.0080830753 0.22124094 0.064975679 0.22189584
		 0.16097909 0.29764059 0.10662517 0.24054262 0.2176072 0.30445907 -0.47783452 0.6694988
		 -0.43454599 0.61431396 -0.36281285 0.55977523 -0.29098263 0.50551188 -0.26971599
		 0.44645783 -0.0056848526 0.15615231 0.05236581 0.18412083;
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
select -ne :standardSurface1;
	setAttr ".b" 0.80000001192092896;
	setAttr ".bc" -type "float3" 1 1 1 ;
	setAttr ".s" 0.20000000298023224;
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
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya-legacy/config.ocio";
	setAttr ".vtn" -type "string" "sRGB gamma (legacy)";
	setAttr ".vn" -type "string" "sRGB gamma";
	setAttr ".dn" -type "string" "legacy";
	setAttr ".wsn" -type "string" "scene-linear Rec 709/sRGB";
	setAttr ".ovt" no;
	setAttr ".povt" no;
	setAttr ".otn" -type "string" "sRGB gamma (legacy)";
	setAttr ".potn" -type "string" "sRGB gamma (legacy)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyTweakUV1.out" "pSphere2Shape.i";
connectAttr "groupId1.id" "pSphere2Shape.iog.og[0].gid";
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
connectAttr "pSphere2Shape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "groupId1.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "HammerMatte.msg" "materialInfo1.m";
connectAttr "groupParts1.og" "polySoftEdge1.ip";
connectAttr "pSphere2Shape.wm" "polySoftEdge1.mp";
connectAttr "polySurfaceShape1.o" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polySoftEdge1.out" "polySplitRing1.ip";
connectAttr "pSphere2Shape.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pSphere2Shape.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "pSphere2Shape.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "pSphere2Shape.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySmoothFace1.ip";
connectAttr "polySmoothFace1.out" "polyTweakUV1.ip";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "HammerMatte.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of HammerWithUVs.ma
