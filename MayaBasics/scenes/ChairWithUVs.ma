//Maya ASCII 2020 scene
//Name: ChairWithUVs.ma
//Last modified: Tue, Jun 07, 2022 11:59:13 AM
//Codeset: UTF-8
requires maya "2020";
requires "mtoa" "4.0.3";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2020";
fileInfo "version" "2020";
fileInfo "cutIdentifier" "202004291615-7bd99f0972";
fileInfo "osv" "Mac OS X 10.16";
fileInfo "UUID" "3D6EB443-DF48-32D0-905F-8D81CE5F951B";
createNode transform -s -n "persp";
	rename -uid "9BF60D59-4A42-C2F7-0794-4E8660FE2332";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.0899472237271741 9.4021916460805421 11.138692901486255 ;
	setAttr ".r" -type "double3" -15.93835272560252 1056.1999999998593 -1.3035634765770633e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "8CC16F39-DF46-6ED6-BE06-209B5B594DED";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 14.028936624386947;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 4.1517839444440394 0.048639900903977296 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "9F8DB3BB-7D48-DC1E-0AE2-BDA2869205E8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "A934C751-D944-26AF-844E-70BD05209DCD";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "7D66B970-7F48-023A-662F-ABB3DFC9694F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "B2E9CE5A-F440-E397-E430-C98B9B5A2DB2";
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
	rename -uid "738EF0FD-AD41-32A6-68FB-8983CA56F16C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "0AF2818C-5A43-81A5-BCCE-D1A160B33BA0";
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
createNode transform -n "ChairSeat";
	rename -uid "0FB6C40B-E64E-4075-C283-C2A60C835F12";
	setAttr ".rp" -type "double3" 0 3.9543117573247386 0 ;
	setAttr ".sp" -type "double3" 0 3.9543117573247386 0 ;
createNode mesh -n "ChairSeatShape" -p "ChairSeat";
	rename -uid "4684D2F1-BE46-1D5F-79EA-338D1523CBBB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.30364423470966728 0.47068479205622804 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.00049950054 0.52414626
		 0.52483982 0.43741399 0.55381799 0.46004933 0.049461197 0.46618247 0.57338786 0.52491319
		 0.019990316 0.45913374 0.46633509 0.90083486 0.54501796 0.52520043 0.11178997 0.001032879
		 0.028705619 0.52414536 0.55057812 0.3786234 0.52500612 0.4659715 0.046952762 0.83590388
		 0.073076531 0.075445324 0.52841979 0.83300167 0.074491441 0.82962364 0.10929393 0.9045471
		 0.50086844 0.82671607 0.04950371 0.43772608 0.4996931 0.074767992 0.023510663 0.37913615
		 0.46065673 0.00046629066 0.49332219 0.91129965 0.4665162 0.92934632 0.10958828 0.93304771
		 0.082116917 0.91473407;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -2.48026514 3.8051002 2.28641319 2.48026514 3.8051002 2.28641319
		 -2.48026514 4.10352325 2.28641319 2.48026514 4.10352325 2.28641319 -1.82399106 4.10352325 -2.28641319
		 1.82399106 4.10352325 -2.28641319 -1.82399106 3.8051002 -2.28641319 1.82399106 3.8051002 -2.28641319
		 2.7519877 4.10352325 1.67201769 -2.7519877 4.10352325 1.67201769 -2.7519877 3.8051002 1.67201769
		 2.7519877 3.8051002 1.67201769 2.23032475 4.10352325 -1.50801098 -2.23032475 4.10352325 -1.50801098
		 -2.23032475 3.8051002 -1.50801098 2.23032475 3.8051002 -1.50801098;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 14 0 7 15 0 8 12 0 9 13 0 8 9 1 10 0 0 9 10 1 11 1 0 10 11 1
		 11 8 1 12 5 0 13 4 0 12 13 1 14 10 0 13 14 1 15 11 0 14 15 1 15 12 1;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 18 1 11 3
		f 4 1 7 14 -7
		mu 0 4 3 11 7 9
		f 4 2 9 -4 -9
		mu 0 4 16 6 23 24
		f 4 18 17 -1 -16
		mu 0 4 20 10 1 18
		f 4 -18 19 -8 -6
		mu 0 4 2 4 7 11
		f 4 15 4 6 16
		mu 0 4 0 5 3 9
		f 4 -15 12 22 -14
		mu 0 4 9 7 17 15
		f 4 23 -17 13 24
		mu 0 4 12 0 9 15
		f 4 26 25 -19 -24
		mu 0 4 13 19 10 20
		f 4 -20 -26 27 -13
		mu 0 4 7 4 14 17
		f 4 -23 20 -3 -22
		mu 0 4 15 17 6 16
		f 4 10 -25 21 8
		mu 0 4 25 12 15 16
		f 4 3 11 -27 -11
		mu 0 4 8 21 19 13
		f 4 -28 -12 -10 -21
		mu 0 4 17 14 22 6;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 10 
		1 0 
		3 0 
		6 0 
		7 0 
		9 0 
		11 0 
		15 0 
		16 0 
		17 0 
		18 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "ChairTop" -p "ChairSeat";
	rename -uid "23675E6B-5744-22DB-79CF-1AA4E4020B8A";
	setAttr ".rp" -type "double3" 0 7.9878077595187289 -1.9888957762822779 ;
	setAttr ".sp" -type "double3" 0 7.9878077595187289 -1.9888957762822779 ;
createNode mesh -n "ChairTopShape" -p "ChairTop";
	rename -uid "32DDF963-3E43-382D-C897-34A5998A8AA8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.17665678262710571 2.4741059541702271 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 118 ".uvst[0].uvsp[0:117]" -type "float2" 0.65968049 0.42998725
		 0.66351652 0.40139857 0.70494139 0.40741506 0.69927305 0.43581724 0.71051544 0.42914039
		 0.71229416 0.42003325 0.57934403 0.40320912 0.62950724 0.48157236 0.62402576 0.46854514
		 0.59075987 0.39477828 0.63252026 0.39832112 0.62910712 0.42669663 0.65895212 0.054671101
		 0.62799382 0.058626611 0.58606136 0.063422292 0.65307862 0.012653707 0.71307927 0.064873837
		 0.64445972 0.001403385 0.57692522 0.074156739 0.73008019 0.063282691 0.63186765 0.086807169
		 0.73768568 0.074552417 0.66326654 0.083212048 0.70563549 0.077514678 0.70912474 0.10695191
		 0.59302586 0.11933442 0.63526446 0.11495157 0.66677493 0.11173115 0.72007221 0.12559828
		 0.71959835 0.11676053 0.58355588 0.12967038 0.73712915 0.12492834 0.63804406 0.14319295
		 0.74413127 0.13653058 0.66954154 0.14061536 0.71193516 0.13738558 0.71400255 0.1670249
		 0.59785497 0.17440999 0.64014304 0.17146367 0.67162579 0.16952762 0.72404778 0.18626204
		 0.72398955 0.17741297 0.58789915 0.18429232 0.74110633 0.1865277 0.64156044 0.19983128
		 0.74756122 0.19845638 0.67300779 0.19864267 0.71537161 0.19758789 0.71606052 0.22729816
		 0.59997123 0.22930667 0.64227217 0.22818995 0.67371231 0.22768915 0.72518831 0.24701841
		 0.72554296 0.23818111 0.58953345 0.23870844 0.7422089 0.24814974 0.6422978 0.25661057
		 0.74809891 0.26037779 0.67369968 0.25686777 0.71599609 0.25788575 0.71528542 0.28757781
		 0.59935409 0.28420424 0.64162153 0.28498664 0.67301065 0.28591946 0.72346044 0.30771264
		 0.72423512 0.2989125 0.58847111 0.29312918 0.74040359 0.30969888 0.64027309 0.31339258
		 0.74569744 0.32220107 0.67160177 0.31504196 0.71376383 0.31809312 0.7116214 0.34767354
		 0.59612429 0.3392266 0.63825792 0.34172693 0.66954064 0.34396848 0.71877742 0.36816818
		 0.71998835 0.35943183 0.58486825 0.34775069 0.73556554 0.37102506 0.63564193 0.37006187
		 0.74017042 0.38378409 0.66679907 0.37286255 0.70859647 0.37801853 0.71172875 0.055705987
		 0.62719554 0.0038182358 0.62203014 0.016976969 0.70000637 0.048739247 0.64679712
		 0.48354769 0.57836252 0.41266316 0.58774328 0.42311701 0.65509784 0.47208455 0.58411139
		 0.35707343 0.73639774 0.36137283 0.59370387 0.36698496 0.74340564 0.34968439 0.58811718
		 0.30242226 0.7407406 0.30000919 0.59812349 0.31181559 0.74715662 0.28797174 0.58962429
		 0.24799411 0.74209064 0.23844482 0.60007489 0.25688741 0.74793059 0.22609031 0.58843994
		 0.19357343 0.74054611 0.17682375 0.5993278 0.20199621 0.74581337 0.16416381 0.58451629
		 0.13896805 0.73612845 0.11522019 0.59581685 0.14703007 0.74080259 0.10221331 0.5781495
		 0.083565883 0.7291109 0.053826194 0.58973449 0.0916133 0.72742623 0.43207207 0.72871435
		 0.42246628 0.73630786 0.41111118;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 84 ".vt[0:83]"  -1.94904852 7.81485558 -1.77462578 1.94904852 7.81485558 -1.77462578
		 -1.94904852 8.24292755 -1.88527322 1.94904852 8.24292755 -1.88527322 -1.94904852 8.16075897 -2.20316553
		 1.94904852 8.16075897 -2.20316553 -1.94904852 7.73268747 -2.09251833 1.94904852 7.73268747 -2.09251833
		 1.64919496 8.24292755 -1.88527322 1.64919496 8.16075897 -2.20316553 1.64919496 7.73268747 -2.09251833
		 1.64919496 7.81485558 -1.77462578 1.34934139 8.24292755 -1.88527322 1.34934139 8.16075897 -2.20316553
		 1.34934139 7.73268747 -2.09251833 1.34934139 7.81485558 -1.77462578 1.04948771 8.24292755 -1.88527322
		 1.04948771 8.16075897 -2.20316553 1.04948771 7.73268747 -2.09251833 1.04948771 7.81485558 -1.77462578
		 0.74963403 8.24292755 -1.88527322 0.74963403 8.16075897 -2.20316553 0.74963403 7.73268747 -2.09251833
		 0.74963403 7.81485558 -1.77462578 0.44978043 8.24292755 -1.88527322 0.44978043 8.16075897 -2.20316553
		 0.44978043 7.73268747 -2.09251833 0.44978043 7.81485558 -1.77462578 0.14992681 8.24292755 -1.88527322
		 0.14992681 8.16075897 -2.20316553 0.14992681 7.73268747 -2.09251833 0.14992681 7.81485558 -1.77462578
		 -0.1499268 8.24292755 -1.88527322 -0.1499268 8.16075897 -2.20316553 -0.1499268 7.73268747 -2.09251833
		 -0.1499268 7.81485558 -1.77462578 -0.44978046 8.24292755 -1.88527322 -0.44978046 8.16075897 -2.20316553
		 -0.44978046 7.73268747 -2.09251833 -0.44978046 7.81485558 -1.77462578 -0.74963403 8.24292755 -1.88527322
		 -0.74963403 8.16075897 -2.20316553 -0.74963403 7.73268747 -2.09251833 -0.74963403 7.81485558 -1.77462578
		 -1.049487591 8.24292755 -1.88527322 -1.049487591 8.16075897 -2.20316553 -1.049487591 7.73268747 -2.09251833
		 -1.049487591 7.81485558 -1.77462578 -1.34934127 8.24292755 -1.88527322 -1.34934127 8.16075897 -2.20316553
		 -1.34934127 7.73268747 -2.09251833 -1.34934127 7.81485558 -1.77462578 -1.64919496 8.24292755 -1.88527322
		 -1.64919496 8.16075897 -2.20316553 -1.64919496 7.73268747 -2.09251833 -1.64919496 7.81485558 -1.77462578
		 -1.8490485 8.30356789 -1.97624373 -1.74919498 8.30356789 -1.97624373 -1.74919498 8.25788689 -2.15297508
		 -1.8490485 8.25788689 -2.15297508 1.74919498 8.30356789 -1.97624373 1.8490485 8.30356789 -1.97624373
		 1.8490485 8.25788689 -2.15297508 1.74919498 8.25788689 -2.15297508 1.14948773 8.30356789 -1.97624373
		 1.24934137 8.30356789 -1.97624373 1.24934137 8.25788689 -2.15297508 1.14948773 8.25788689 -2.15297508
		 0.54978043 8.30356789 -1.97624373 0.649634 8.30356789 -1.97624373 0.649634 8.25788689 -2.15297508
		 0.54978043 8.25788689 -2.15297508 -0.049926795 8.30356789 -1.97624373 0.04992681 8.30356789 -1.97624373
		 0.04992681 8.25788689 -2.15297508 -0.049926795 8.25788689 -2.15297508 -0.649634 8.30356789 -1.97624373
		 -0.54978049 8.30356789 -1.97624373 -0.54978049 8.25788689 -2.15297508 -0.649634 8.25788689 -2.15297508
		 -1.24934125 8.30356789 -1.97624373 -1.14948761 8.30356789 -1.97624373 -1.14948761 8.25788689 -2.15297508
		 -1.24934125 8.25788689 -2.15297508;
	setAttr -s 164 ".ed[0:163]"  0 55 0 2 52 0 4 53 0 6 54 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 3 0 9 5 0 8 9 0 10 7 0 9 10 1 11 1 0 10 11 1 11 8 1
		 12 8 0 13 9 0 12 13 0 14 10 0 13 14 1 15 11 0 14 15 1 15 12 1 16 12 0 17 13 0 16 17 0
		 18 14 0 17 18 1 19 15 0 18 19 1 19 16 1 20 16 0 21 17 0 20 21 0 22 18 0 21 22 1 23 19 0
		 22 23 1 23 20 1 24 20 0 25 21 0 24 25 0 26 22 0 25 26 1 27 23 0 26 27 1 27 24 1 28 24 0
		 29 25 0 28 29 0 30 26 0 29 30 1 31 27 0 30 31 1 31 28 1 32 28 0 33 29 0 32 33 0 34 30 0
		 33 34 1 35 31 0 34 35 1 35 32 1 36 32 0 37 33 0 36 37 0 38 34 0 37 38 1 39 35 0 38 39 1
		 39 36 1 40 36 0 41 37 0 40 41 0 42 38 0 41 42 1 43 39 0 42 43 1 43 40 1 44 40 0 45 41 0
		 44 45 0 46 42 0 45 46 1 47 43 0 46 47 1 47 44 1 48 44 0 49 45 0 48 49 0 50 46 0 49 50 1
		 51 47 0 50 51 1 51 48 1 52 48 0 53 49 0 52 53 0 54 50 0 53 54 1 55 51 0 54 55 1 55 52 1
		 2 56 0 52 57 0 56 57 0 53 58 0 57 58 0 4 59 0 59 58 0 56 59 0 8 60 0 3 61 0 60 61 0
		 5 62 0 61 62 0 9 63 0 63 62 0 60 63 0 16 64 0 12 65 0 64 65 0 13 66 0 65 66 0 17 67 0
		 67 66 0 64 67 0 24 68 0 20 69 0 68 69 0 21 70 0 69 70 0 25 71 0 71 70 0 68 71 0 32 72 0
		 28 73 0 72 73 0 29 74 0 73 74 0 33 75 0 75 74 0 72 75 0 40 76 0 36 77 0 76 77 0 37 78 0
		 77 78 0 41 79 0 79 78 0 76 79 0 48 80 0 44 81 0 80 81 0 45 82 0 81 82 0 49 83 0 83 82 0
		 80 83 0;
	setAttr -s 82 -ch 328 ".fc[0:81]" -type "polyFaces" 
		f 4 0 107 -2 -5
		mu 0 4 0 1 2 3
		f 4 110 112 -115 -116
		mu 0 4 4 5 116 115
		f 4 2 104 -4 -9
		mu 0 4 90 9 10 11
		f 4 3 106 -1 -11
		mu 0 4 11 10 1 0
		f 4 -12 -10 -8 -6
		mu 0 4 12 13 86 15
		f 4 10 4 6 8
		mu 0 4 11 0 91 8
		f 4 118 120 -123 -124
		mu 0 4 16 84 113 19
		f 4 -17 13 9 -16
		mu 0 4 20 114 14 13
		f 4 -19 15 11 -18
		mu 0 4 22 20 13 12
		f 4 -20 17 5 -13
		mu 0 4 23 22 12 87
		f 4 20 14 -22 -23
		mu 0 4 24 23 21 111
		f 4 -25 21 16 -24
		mu 0 4 26 25 114 20
		f 4 -27 23 18 -26
		mu 0 4 27 26 20 22
		f 4 -28 25 19 -21
		mu 0 4 24 27 22 23
		f 4 126 128 -131 -132
		mu 0 4 28 29 109 31
		f 4 -33 29 24 -32
		mu 0 4 32 110 25 26
		f 4 -35 31 26 -34
		mu 0 4 34 32 26 27
		f 4 -36 33 27 -29
		mu 0 4 35 34 27 24
		f 4 36 30 -38 -39
		mu 0 4 36 35 33 107
		f 4 -41 37 32 -40
		mu 0 4 38 37 110 32
		f 4 -43 39 34 -42
		mu 0 4 39 38 32 34
		f 4 -44 41 35 -37
		mu 0 4 36 39 34 35
		f 4 134 136 -139 -140
		mu 0 4 40 41 105 43
		f 4 -49 45 40 -48
		mu 0 4 44 106 37 38
		f 4 -51 47 42 -50
		mu 0 4 46 44 38 39
		f 4 -52 49 43 -45
		mu 0 4 47 46 39 36
		f 4 52 46 -54 -55
		mu 0 4 48 47 45 103
		f 4 -57 53 48 -56
		mu 0 4 50 49 106 44
		f 4 -59 55 50 -58
		mu 0 4 51 50 44 46
		f 4 -60 57 51 -53
		mu 0 4 48 51 46 47
		f 4 142 144 -147 -148
		mu 0 4 52 53 101 55
		f 4 -65 61 56 -64
		mu 0 4 56 102 49 50
		f 4 -67 63 58 -66
		mu 0 4 58 56 50 51
		f 4 -68 65 59 -61
		mu 0 4 59 58 51 48
		f 4 68 62 -70 -71
		mu 0 4 60 59 57 99
		f 4 -73 69 64 -72
		mu 0 4 62 61 102 56
		f 4 -75 71 66 -74
		mu 0 4 63 62 56 58
		f 4 -76 73 67 -69
		mu 0 4 60 63 58 59
		f 4 150 152 -155 -156
		mu 0 4 64 65 97 67
		f 4 -81 77 72 -80
		mu 0 4 68 98 61 62
		f 4 -83 79 74 -82
		mu 0 4 70 68 62 63
		f 4 -84 81 75 -77
		mu 0 4 71 70 63 60
		f 4 84 78 -86 -87
		mu 0 4 72 71 69 95
		f 4 -89 85 80 -88
		mu 0 4 74 73 98 68
		f 4 -91 87 82 -90
		mu 0 4 75 74 68 70
		f 4 -92 89 83 -85
		mu 0 4 72 75 70 71
		f 4 158 160 -163 -164
		mu 0 4 76 77 93 79
		f 4 -97 93 88 -96
		mu 0 4 80 94 73 74
		f 4 -99 95 90 -98
		mu 0 4 82 80 74 75
		f 4 -100 97 91 -93
		mu 0 4 83 82 75 72
		f 4 100 94 -102 -103
		mu 0 4 2 83 81 117
		f 4 -105 101 96 -104
		mu 0 4 10 9 94 80
		f 4 -107 103 98 -106
		mu 0 4 1 10 80 82
		f 4 -108 105 99 -101
		mu 0 4 2 1 82 83
		f 4 1 109 -111 -109
		mu 0 4 3 2 5 4
		f 4 102 111 -113 -110
		mu 0 4 2 117 116 5
		f 4 -3 113 114 -112
		mu 0 4 9 90 89 6
		f 4 -7 108 115 -114
		mu 0 4 8 91 88 7
		f 4 12 117 -119 -117
		mu 0 4 23 87 84 16
		f 4 7 119 -121 -118
		mu 0 4 15 86 85 17
		f 4 -14 121 122 -120
		mu 0 4 14 114 112 18
		f 4 -15 116 123 -122
		mu 0 4 21 23 16 19
		f 4 28 125 -127 -125
		mu 0 4 35 24 29 28
		f 4 22 127 -129 -126
		mu 0 4 24 111 109 29
		f 4 -30 129 130 -128
		mu 0 4 25 110 108 30
		f 4 -31 124 131 -130
		mu 0 4 33 35 28 31
		f 4 44 133 -135 -133
		mu 0 4 47 36 41 40
		f 4 38 135 -137 -134
		mu 0 4 36 107 105 41
		f 4 -46 137 138 -136
		mu 0 4 37 106 104 42
		f 4 -47 132 139 -138
		mu 0 4 45 47 40 43
		f 4 60 141 -143 -141
		mu 0 4 59 48 53 52
		f 4 54 143 -145 -142
		mu 0 4 48 103 101 53
		f 4 -62 145 146 -144
		mu 0 4 49 102 100 54
		f 4 -63 140 147 -146
		mu 0 4 57 59 52 55
		f 4 76 149 -151 -149
		mu 0 4 71 60 65 64
		f 4 70 151 -153 -150
		mu 0 4 60 99 97 65
		f 4 -78 153 154 -152
		mu 0 4 61 98 96 66
		f 4 -79 148 155 -154
		mu 0 4 69 71 64 67
		f 4 92 157 -159 -157
		mu 0 4 83 72 77 76
		f 4 86 159 -161 -158
		mu 0 4 72 95 93 77
		f 4 -94 161 162 -160
		mu 0 4 73 94 92 78
		f 4 -95 156 163 -162
		mu 0 4 81 83 76 79;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 42 
		0 0 
		2 0 
		4 0 
		5 0 
		10 0 
		11 0 
		12 0 
		13 0 
		16 0 
		20 0 
		23 0 
		24 0 
		26 0 
		28 0 
		29 0 
		32 0 
		35 0 
		36 0 
		38 0 
		40 0 
		41 0 
		44 0 
		47 0 
		48 0 
		50 0 
		52 0 
		53 0 
		56 0 
		59 0 
		60 0 
		62 0 
		64 0 
		65 0 
		68 0 
		71 0 
		72 0 
		74 0 
		76 0 
		77 0 
		80 0 
		83 0 
		84 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Back4" -p "ChairSeat";
	rename -uid "38C5390F-D048-2BB7-B450-C784739B1D6D";
	setAttr ".t" -type "double3" 0.75000000000000011 4.603523023172329 -1.9566853744884141 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
	setAttr ".rp" -type "double3" 0 -0.4999997687777995 0 ;
	setAttr ".sp" -type "double3" 0 -0.4999997687777995 0 ;
createNode mesh -n "BackShape1" -p "Back4";
	rename -uid "944A2A5B-BE43-703F-87A9-8A9575396ACE";
	setAttr -k off ".v";
	setAttr -s 5 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.21879468858242035 0.5010810624808073 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 29 ".uvst[0].uvsp[0:28]" -type "float2" 0.77258682 0.021457072
		 0.820755 0.019613488 0.81920856 0.072824731 0.77983373 0.073910952 0.77246314 0.38460234
		 0.82391542 0.38460764 0.84420693 0.38472208 0.89473605 0.38459286 0.87820637 0.072465196
		 0.83870667 0.071421579 0.83890736 0.017679222 0.7539106 0.021400243 0.77407491 0.34549263
		 0.82231462 0.34567344 0.89260691 0.34530005 0.84312922 0.34596235 0.87846214 0.18708614
		 0.78143561 0.18790683 0.83948481 0.18781859 0.82022989 0.18799053 0.76085985 0.0735664
		 0.76240581 0.18763688 0.75300694 0.34558967 0.77177036 0.0030412741 0.88691199 0.020754078
		 0.77241474 0.40318817 0.7520169 0.38474399 0.81995815 0.00095594942 0.82387966 0.40329966;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -0.25856268 -0.50000048 0.10008979 0.25856268 -0.50000048 0.10008979
		 -0.25856268 3.30421352 0.10008979 0.25856268 3.30421352 0.10008979 -0.25856268 3.30421352 -0.10008967
		 0.25856268 3.30421352 -0.10008967 -0.25856268 -0.50000048 -0.10008967 0.25856268 -0.50000048 -0.10008967
		 0.25856268 2.91454506 0.19010079 -0.25856268 2.91454506 0.19010079 -0.25856268 2.91454506 -0.032949924
		 0.25856268 2.91454506 -0.032949924 -0.20330334 1.25447655 0.22638106 -0.20330334 1.25447655 0.026201487
		 0.20330334 1.25447655 0.026201487 0.20330334 1.25447655 0.22638106 0.20566916 0.054152012 0.17630959
		 -0.20566916 0.054152012 0.17630959 -0.20566916 0.054152012 -0.023869991 0.20566916 0.054152012 -0.023869991;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 17 0 1 16 0 2 4 0
		 3 5 0 4 10 0 5 11 0 6 0 0 7 1 0 8 3 0 9 2 0 8 9 1 10 13 0 9 10 1 11 14 0 10 11 1
		 11 8 1 12 9 0 13 18 0 12 13 1 14 19 0 13 14 1 15 8 0 14 15 1 15 12 1 16 15 0 17 12 0
		 16 17 1 18 6 0 17 18 1 19 7 0 18 19 1 19 16 1;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 30 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 28 25
		f 4 34 33 -4 -32
		mu 0 4 8 9 10 24
		f 4 3 11 -1 -11
		mu 0 4 23 27 1 0
		f 4 -12 -34 35 -6
		mu 0 4 1 10 9 2
		f 4 10 4 32 31
		mu 0 4 11 0 3 20
		f 4 -15 12 -2 -14
		mu 0 4 12 13 5 4
		f 4 -17 13 6 8
		mu 0 4 22 12 4 26
		f 4 2 9 -19 -9
		mu 0 4 7 6 15 14
		f 4 -20 -10 -8 -13
		mu 0 4 13 15 6 5
		f 4 -23 20 16 15
		mu 0 4 21 17 12 22
		f 4 18 17 -25 -16
		mu 0 4 14 15 18 16
		f 4 -27 -18 19 -26
		mu 0 4 19 18 15 13
		f 4 -28 25 14 -21
		mu 0 4 17 19 13 12
		f 4 -31 28 27 -30
		mu 0 4 3 2 19 17
		f 4 -33 29 22 21
		mu 0 4 20 3 17 21
		f 4 24 23 -35 -22
		mu 0 4 16 18 9 8
		f 4 -36 -24 26 -29
		mu 0 4 2 9 18 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Leg1" -p "ChairSeat";
	rename -uid "B01E6A4F-D54C-41F6-277C-67B10B0B1A5D";
	setAttr ".t" -type "double3" -1.7 0.9501881301462165 -1.8698055580453974 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 0.24917591329412631 0.24917591329412631 0.24917591329412631 ;
	setAttr ".rp" -type "double3" -4.4262533779382525e-16 -0.95018813014621617 0 ;
	setAttr ".rpt" -type "double3" 8.8525067558765051e-16 0 2.5077110683554934e-31 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-15 -3.8133225542736269 0 ;
	setAttr ".spt" -type "double3" 1.3337315016064253e-15 2.8631344241274053 0 ;
createNode mesh -n "LegShape" -p "Leg1";
	rename -uid "CA8CF1E0-7B4C-93CC-E80F-B7B63AC0ED49";
	setAttr -k off ".v";
	setAttr -s 4 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.76661920547485352 0.097208224236965179 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 39 ".uvst[0].uvsp[0:38]" -type "float2" 0.92282063 0.41888291
		 0.94272369 0.41170338 0.95100749 0.44383451 0.9303987 0.44466332 0.96498412 0.41331673
		 0.97193819 0.44238606 0.9822275 0.40723595 0.99950051 0.44025287 0.843714 0.41302747
		 0.83662122 0.44206333 0.8659817 0.4115206 0.85754478 0.44361171 0.88585025 0.41879496
		 0.87814933 0.44453886 0.90433055 0.42087078 0.90427178 0.44553882 0.9043839 0.39845517
		 0.90352476 0.76023227 0.89318472 0.76009643 0.87724203 0.75982797 0.86153311 0.75989747
		 0.95542091 0.76018643 0.94551766 0.76009607 0.92980927 0.75995183 0.91386539 0.76014501
		 0.90346849 0.78629792 0.88933563 0.78629792 0.87432444 0.78629792 0.85899496 0.78629792
		 0.84270149 0.78629792 0.94794005 0.78629792 0.93260062 0.78629792 0.9175967 0.78629792
		 0.85162944 0.75994056 0.9642511 0.78629792 0.8090694 0.43979821 0.95937717 0.39072159
		 0.84942913 0.39045942 0.8265 0.40686432;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 33 ".vt[0:32]"  0.70710659 -3.81332231 -0.70710659 0 -3.81332231 -0.99999905
		 -0.70710659 -3.81332231 -0.70710659 -0.99999905 -3.81332231 0 -0.70710659 -3.81332231 0.70710659
		 0 -3.81332231 1 0.70710659 -3.81332231 0.70710659 1 -3.81332231 0 0.70710659 11.49130058 -0.70710659
		 0 11.49130058 -0.99999905 -0.70710659 11.49130058 -0.70710659 -0.99999905 11.49130058 0
		 -0.70710659 11.49130058 0.70710659 0 11.49130058 1 0.70710659 11.49130058 0.70710659
		 1 11.49130058 0 0 -3.81332231 0 1.26992369 -2.62423992 0 0.81891298 -2.62423992 1.08883667
		 0 -2.62423992 1.53984737 -0.81891346 -2.62423992 1.08883667 -1.26992321 -2.62423992 0
		 -0.81891346 -2.62423992 -1.088835716 0 -2.62423992 -1.53984737 0.81891298 -2.62423992 -1.088835716
		 0.77172232 10.50007629 0 0.61524487 10.50007629 0.37776947 0 10.50007629 0.53424644
		 -0.61524487 10.50007629 0.37776947 -0.77172184 10.50007629 0 -0.61524487 10.50007629 -0.37776947
		 0 10.50007629 -0.53424549 0.61524487 10.50007629 -0.37776947;
	setAttr -s 64 ".ed[0:63]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 24 0 1 23 0 2 22 0
		 3 21 0 4 20 0 5 19 0 6 18 0 7 17 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 17 25 0 18 26 0 17 18 1 19 27 0 18 19 1 20 28 0 19 20 1 21 29 0 20 21 1 22 30 0
		 21 22 1 23 31 0 22 23 1 24 32 0 23 24 1 24 17 1 25 15 0 26 14 0 25 26 1 27 13 0 26 27 1
		 28 12 0 27 28 1 29 11 0 28 29 1 30 10 0 29 30 1 31 9 0 30 31 1 32 8 0 31 32 1 32 25 1;
	setAttr -s 32 -ch 120 ".fc[0:31]" -type "polyFaces" 
		f 4 0 17 46 -17
		mu 0 4 0 1 2 3
		f 4 1 18 44 -18
		mu 0 4 1 4 5 2
		f 4 2 19 42 -19
		mu 0 4 4 6 7 5
		f 4 3 20 40 -20
		mu 0 4 38 8 9 35
		f 4 4 21 38 -21
		mu 0 4 8 10 11 9
		f 4 5 22 36 -22
		mu 0 4 10 12 13 11
		f 4 6 23 34 -23
		mu 0 4 12 14 15 13
		f 4 7 16 47 -24
		mu 0 4 14 0 3 15
		f 3 -1 -25 25
		mu 0 3 1 0 16
		f 3 -2 -26 26
		mu 0 3 4 1 36
		f 3 -3 -27 27
		mu 0 3 6 4 36
		f 3 -4 -28 28
		mu 0 3 8 38 37
		f 3 -5 -29 29
		mu 0 3 10 8 37
		f 3 -6 -30 30
		mu 0 3 12 10 16
		f 3 -7 -31 31
		mu 0 3 14 12 16
		f 3 -8 -32 24
		mu 0 3 0 14 16
		f 4 -35 32 50 -34
		mu 0 4 13 15 17 18
		f 4 -37 33 52 -36
		mu 0 4 11 13 18 19
		f 4 -39 35 54 -38
		mu 0 4 9 11 19 20
		f 4 -41 37 56 -40
		mu 0 4 35 9 20 33
		f 4 -43 39 58 -42
		mu 0 4 5 7 21 22
		f 4 -45 41 60 -44
		mu 0 4 2 5 22 23
		f 4 -47 43 62 -46
		mu 0 4 3 2 23 24
		f 4 -48 45 63 -33
		mu 0 4 15 3 24 17
		f 4 -51 48 -15 -50
		mu 0 4 18 17 25 26
		f 4 -53 49 -14 -52
		mu 0 4 19 18 26 27
		f 4 -55 51 -13 -54
		mu 0 4 20 19 27 28
		f 4 -57 53 -12 -56
		mu 0 4 33 20 28 29
		f 4 -59 55 -11 -58
		mu 0 4 22 21 34 30
		f 4 -61 57 -10 -60
		mu 0 4 23 22 30 31
		f 4 -63 59 -9 -62
		mu 0 4 24 23 31 32
		f 4 -64 61 -16 -49
		mu 0 4 17 24 32 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bw" 3;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Leg2" -p "ChairSeat";
	rename -uid "EA87DE7C-D441-018E-50F9-31825921C459";
	setAttr ".t" -type "double3" 1.7 0.95018813014621661 -1.8698055580453974 ;
	setAttr ".s" -type "double3" 0.24917591329412631 0.24917591329412631 0.24917591329412631 ;
	setAttr ".rp" -type "double3" 0 -0.95018813014621606 0 ;
	setAttr ".sp" -type "double3" 0 -3.8133225542736269 0 ;
	setAttr ".spt" -type "double3" 0 2.8631344241274053 0 ;
createNode transform -n "Leg3" -p "ChairSeat";
	rename -uid "C4859673-7344-9B43-2670-CEB057A67D5A";
	setAttr ".t" -type "double3" 2 0.95018813014621617 2 ;
	setAttr ".r" -type "double3" 0 -85.000000000000014 0 ;
	setAttr ".s" -type "double3" 0.24917591329412636 0.24917591329412631 0.24917591329412636 ;
	setAttr ".rp" -type "double3" -4.4262533779382516e-16 -0.95018813014621661 0 ;
	setAttr ".rpt" -type "double3" 4.040479977194714e-16 0 -4.4094101475127658e-16 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-15 -3.8133225542736278 0 ;
	setAttr ".spt" -type "double3" 1.3337315016064253e-15 2.8631344241274062 0 ;
createNode transform -n "Leg" -p "ChairSeat";
	rename -uid "C253A46C-A14C-393B-A4CC-238DAAA17ADD";
	setAttr ".t" -type "double3" -2 0.95018813014621706 2 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 0.24917591329412642 0.24917591329412631 0.24917591329412642 ;
	setAttr ".rp" -type "double3" 0 -0.95018813014621639 0 ;
	setAttr ".sp" -type "double3" 0 -3.813322554273626 0 ;
	setAttr ".spt" -type "double3" 0 2.8631344241274048 0 ;
createNode transform -n "Back3" -p "ChairSeat";
	rename -uid "B45BFAF1-1244-BD24-4C52-02BE7D3629B2";
	setAttr ".t" -type "double3" 1.1102230246251565e-16 4.6035230231723299 -1.9566853744884143 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".rp" -type "double3" 0 -0.4999997687777995 6.6613381477509392e-16 ;
	setAttr ".sp" -type "double3" 0 -0.4999997687777995 6.6613381477509392e-16 ;
createNode transform -n "Back2" -p "ChairSeat";
	rename -uid "B1445BF1-CD47-E968-E285-F89EBFB173DE";
	setAttr ".t" -type "double3" -0.75 4.6035230231723308 -1.9566853744884145 ;
	setAttr ".rp" -type "double3" 0 -0.4999997687777995 0 ;
	setAttr ".sp" -type "double3" 0 -0.4999997687777995 0 ;
createNode transform -n "Back1" -p "ChairSeat";
	rename -uid "C3937370-4944-28D2-DB89-67B7B79D95CC";
	setAttr ".t" -type "double3" -1.5 4.6035230231723308 -1.9566853744884145 ;
	setAttr ".rp" -type "double3" 0 -0.4999997687777995 0 ;
	setAttr ".sp" -type "double3" 0 -0.4999997687777995 0 ;
createNode transform -n "Back5" -p "ChairSeat";
	rename -uid "A481D256-FC44-62B2-76E2-48AF58D14AFA";
	setAttr ".t" -type "double3" 1.5 4.6035230231723281 -1.9566853744884138 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 1 ;
	setAttr ".rp" -type "double3" 0 -0.4999997687777995 6.6613381477509392e-16 ;
	setAttr ".sp" -type "double3" 0 -0.4999997687777995 6.6613381477509392e-16 ;
parent -s -nc -r -add "|ChairSeat|Back4|BackShape1" "Back1" ;
parent -s -nc -r -add "|ChairSeat|Back4|BackShape1" "Back5" ;
parent -s -nc -r -add "|ChairSeat|Back4|BackShape1" "Back2" ;
parent -s -nc -r -add "|ChairSeat|Back4|BackShape1" "Back3" ;
parent -s -nc -r -add "|ChairSeat|Leg1|LegShape" "Leg3" ;
parent -s -nc -r -add "|ChairSeat|Leg1|LegShape" "Leg" ;
parent -s -nc -r -add "|ChairSeat|Leg1|LegShape" "Leg2" ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "197FCE86-594B-6D6D-B538-F0A4A8C7346D";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "FD88CA12-4F42-2D9F-57DC-D0B64CDA865E";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "77A94234-A84C-4E3F-4AFF-F2951631F4D2";
createNode displayLayerManager -n "layerManager";
	rename -uid "9A5C4B1C-ED45-5E28-4243-3197D56F2528";
createNode displayLayer -n "defaultLayer";
	rename -uid "E8AC972D-5344-9C6E-A7C3-6E958C4CB2A2";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "7D668984-094C-3BA1-7D21-F7AF265C1078";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "29AAA75F-FD44-157E-9B80-BBBFF6E5D5FA";
	setAttr ".g" yes;
createNode lambert -n "ChairMatte";
	rename -uid "8560B3FC-2743-A307-FB5C-278571595815";
	setAttr ".c" -type "float3" 0.19185999 0.26499999 0.20598333 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "0E8E485A-3F4D-99A7-CFFC-0891A4203204";
	setAttr ".ihi" 0;
	setAttr -s 11 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "8C05F443-384B-6047-1299-1FACF7FDE66D";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "8D04A55D-594C-5408-5989-A891CA811FB9";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 264\n            -height 449\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 264\n            -height 448\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 264\n            -height 448\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 535\n            -height 941\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 535\\n    -height 941\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 535\\n    -height 941\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "6D062D6D-DC4E-8801-DEE0-119B39F3781B";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
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
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "ChairMatte.oc" "lambert2SG.ss";
connectAttr "ChairSeatShape.iog" "lambert2SG.dsm" -na;
connectAttr "|ChairSeat|Leg|LegShape.iog" "lambert2SG.dsm" -na;
connectAttr "|ChairSeat|Leg1|LegShape.iog" "lambert2SG.dsm" -na;
connectAttr "|ChairSeat|Leg2|LegShape.iog" "lambert2SG.dsm" -na;
connectAttr "|ChairSeat|Leg3|LegShape.iog" "lambert2SG.dsm" -na;
connectAttr "|ChairSeat|Back1|BackShape1.iog" "lambert2SG.dsm" -na;
connectAttr "|ChairSeat|Back2|BackShape1.iog" "lambert2SG.dsm" -na;
connectAttr "|ChairSeat|Back3|BackShape1.iog" "lambert2SG.dsm" -na;
connectAttr "|ChairSeat|Back4|BackShape1.iog" "lambert2SG.dsm" -na;
connectAttr "|ChairSeat|Back5|BackShape1.iog" "lambert2SG.dsm" -na;
connectAttr "ChairTopShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "ChairMatte.msg" "materialInfo1.m";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "ChairMatte.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of ChairWithUVs.ma
