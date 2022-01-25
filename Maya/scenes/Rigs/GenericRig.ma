//Maya ASCII 2022 scene
//Name: GenericRig.ma
//Last modified: Tue, Jan 25, 2022 11:54:20 AM
//Codeset: UTF-8
file -rdi 1 -ns "GenericMesh2_2" -rfn "GenericMesh2_2RN" -op "v=0;" -typ "mayaAscii"
		 "/Users/anthonyromrell/GitRepos/3DEssentianlsResources/Maya//scenes/Models/GenericMesh2.2.ma";
file -r -ns "GenericMesh2_2" -dr 1 -rfn "GenericMesh2_2RN" -op "v=0;" -typ "mayaAscii"
		 "/Users/anthonyromrell/GitRepos/3DEssentianlsResources/Maya//scenes/Models/GenericMesh2.2.ma";
requires maya "2022";
requires "stereoCamera" "10.0";
requires "mtoa" "4.2.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202102181415-29bfc1879c";
fileInfo "osv" "Mac OS X 10.16";
fileInfo "UUID" "E1418739-0A45-AEDE-7A02-729BF67FF7F5";
createNode transform -s -n "persp";
	rename -uid "8CED092E-A547-7A2C-CCEF-86BDC3B9B019";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.3310475641471822 38.236404749057783 29.86356217456138 ;
	setAttr ".r" -type "double3" -16.538352729602732 -6.9999999999997655 -4.0055501149795358e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "B1A5702D-6A4F-F27C-38DE-F8BB4184A498";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 39.822208718601679;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "6E984EE3-C441-E7DC-128D-F3BFDE67374D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "382B8E6A-6E48-42F7-3380-1AA3542CE29B";
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
	rename -uid "FFE92B9D-1943-475A-EE70-C093C118B696";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "C8C8C280-144A-7732-3183-AB9206B79778";
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
	rename -uid "9CF67B22-7B4B-3AA3-81D9-84BE1372E663";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "FC5FE46D-C046-23E5-45E0-1DAB40E65258";
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
createNode transform -n "group";
	rename -uid "BB755869-924F-0E0F-EA1F-8BB1ACC89D7C";
	setAttr ".rp" -type "double3" 3.7357378523950047e-07 16.091660034147182 0.018031695964497274 ;
	setAttr ".sp" -type "double3" 3.7357378523950047e-07 16.091660034147182 0.018031695964497274 ;
createNode joint -n "pasted__Pelvis_J" -p "group";
	rename -uid "CB9F6A0B-D14E-AB20-A05F-7EBC4D690AB3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0 19 -1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 19 -1 1;
createNode joint -n "pasted__Hips_J" -p "pasted__Pelvis_J";
	rename -uid "9CC67D4F-2945-C307-8A5D-D28B9A1DE638";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 19 -1 1;
	setAttr ".radi" 1.5;
createNode joint -n "pasted__L_Hip_J" -p "pasted__Hips_J";
	rename -uid "705736EB-D847-F6EF-1B12-F28710245507";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.8402045409403147 -0.99553915562718132 0.20670166203449025 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999943 -7.4999999999999929 -89.999999999999972 ;
	setAttr ".bps" -type "matrix" 4.4408920985006262e-16 -0.99144486137381038 0.13052619222005146 0
		 7.7715611723760958e-16 0.13052619222005157 0.99144486137381027 0 -0.99999999999999989 -2.7755575615628914e-16 8.8817841970012523e-16 0
		 1.8402045409403147 18.004460844372819 -0.79329833796550975 1;
	setAttr ".radi" 0.86357439283171944;
createNode joint -n "pasted__L_Knee_J" -p "pasted__L_Hip_J";
	rename -uid "6B159856-E642-2959-E221-3A85170F74AC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 8.0291049280799083 -4.4408920985006262e-16 1.7828194316571248e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -9.2119119457986364e-15 -12.000000000000002 ;
	setAttr ".bps" -type "matrix" 2.7280495276237406e-16 -0.99691733373312796 -0.078459095727845068 0
		 -9.7496940988015275e-16 0.078459095727844957 -0.99691733373312807 0 0.99999999999999989 2.8716422420099927e-16 -1.0102655818772041e-15 0
		 1.8402045409403165 10.044046021996856 0.25471015523201046 1;
	setAttr ".radi" 0.89073501174840408;
createNode joint -n "pasted__L_Ankle_J" -p "pasted__L_Knee_J";
	rename -uid "58E42241-6840-1424-9471-278FBC7B155D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 8.7433878833134102 -5.8286708792820718e-16 -1.3719052369001168e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999999999997 1.5363480137391217e-14 -71.221041466840973 ;
	setAttr ".bps" -type "matrix" 1.010890226816025e-15 -0.39520818300708932 0.91859158067349778 0
		 6.2213123930199801e-16 0.91859158067349778 0.39520818300708938 0 -0.99999999999999989 2.3326740893476499e-16 1.2341723152267489e-15 0
		 1.8402045409403176 1.3276110855695133 -0.43128815169055645 1;
	setAttr ".radi" 0.58166958751189557;
createNode joint -n "pasted__L_Ball_J" -p "pasted__L_Ankle_J";
	rename -uid "D7A6FE3E-2144-1E5C-6022-69B7A8B930BB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 2.5789453585633129 1.1379786002407851e-15 6.915269523937272e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1.010890226816025e-15 -0.39520818300708932 0.91859158067349778 0
		 6.2213123930199801e-16 0.91859158067349778 0.39520818300708938 0 -0.99999999999999989 2.3326740893476499e-16 1.2341723152267489e-15 0
		 1.8402045409403196 0.30839077633714118 1.937709341702698 1;
	setAttr ".radi" 0.58166958751189557;
createNode joint -n "pasted__R_Hip_J" -p "pasted__Hips_J";
	rename -uid "55AC6008-3247-22F2-71A2-F38ECB9118D3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -1.8402 -0.99549999999999983 0.20670200000000005 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90.000000000000057 7.4999999999999831 89.999999999999986 ;
	setAttr ".bps" -type "matrix" 3.3306690738754696e-16 0.99144486137381038 -0.13052619222005124 0
		 6.6613381477509392e-16 -0.13052619222005113 -0.99144486137381038 0 -0.99999999999999989 2.2204460492503131e-16 -6.6613381477509392e-16 0
		 -1.8402000000000001 18.0045 -0.79329799999999995 1;
	setAttr ".radi" 0.86357439283171944;
createNode joint -n "pasted__R_Knee_J" -p "pasted__R_Hip_J";
	rename -uid "F4B1C3F5-6C45-5DDB-763F-038590D6B547";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -8.0291893126223659 1.1606889073645377e-05 -2.886579864025407e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999879258172 4.8995548888961134e-15 -11.999999999999988 ;
	setAttr ".bps" -type "matrix" 1.8729158860418403e-16 0.99691733373312785 0.078459095727844985 0
		 -2.1073425182170297e-08 -0.078459095727845068 0.99691733373312763 0 0.99999999999999967 -1.6534020491707547e-09 2.1008462792763957e-08 0
		 -1.8401999999999998 10.044000000000004 0.25470999999999944 1;
	setAttr ".radi" 0.89073501174840408;
createNode joint -n "pasted__R_Ankle_J" -p "pasted__R_Knee_J";
	rename -uid "E81F7FFC-2D48-06CF-6FEC-5B9A54CC4C62";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -8.7433430613292167 -3.2196950265905855e-06 -6.6391336872584361e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999918127145 1.1431444280990678e-06 -71.221041466840987 ;
	setAttr ".bps" -type "matrix" 1.9951635107046533e-08 0.39520818300708915 -0.91859158067349767 0
		 2.1073424455675743e-08 -0.91859158067349778 -0.39520818300708888 0 -0.99999999999999956 -1.1472820843491369e-08 -2.6655793781092406e-08 0
		 -1.8402000000000001 1.3276099999999964 -0.43128800000000012 1;
	setAttr ".radi" 0.58166958751189557;
createNode joint -n "pasted__R_Ball_J" -p "pasted__R_Ankle_J";
	rename -uid "D8EAF76A-0142-0DED-5D54-8AB0179F768F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -2.5789453065086549 -1.4028649690800421e-06 -5.1454205118872665e-08 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.2074182697257329e-06 -9.2408083461079661e-22 2.4089967518581986e-14 ;
	setAttr ".bps" -type "matrix" 1.9951635107046533e-08 0.39520818300708915 -0.91859158067349767 0
		 2.1073424455675743e-08 -0.91859158067349778 -0.39520818300708888 0 -0.99999999999999956 -1.1472820843491369e-08 -2.6655793781092406e-08 0
		 -1.8402000000000003 0.3083910000000003 1.9377099999999998 1;
	setAttr ".radi" 0.58166958751189557;
createNode joint -n "pasted__Spine_J_0" -p "pasted__Pelvis_J";
	rename -uid "F1131B14-CA47-F27A-2394-A8A601E5ACFD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 -8.8817841970012523e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.999999999999972 0 89.999999999999972 ;
	setAttr ".bps" -type "matrix" 4.4408920985006262e-16 1 0 0 -4.4408920985006262e-16 0 -1 0
		 -1 4.4408920985006262e-16 4.4408920985006262e-16 0 0 19.000000000000004 -1.0000000000000009 1;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "pasted__Spine_J_" -p "pasted__Spine_J_0";
	rename -uid "D9FE12B0-1648-B2B2-BB4E-03967BFDA31E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.9999999999999996 4.4408920985006242e-16 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 4.4408920985006262e-16 1 0 0 -4.4408920985006262e-16 0 -1 0
		 -1 4.4408920985006262e-16 4.4408920985006262e-16 0 8.8817841970012484e-16 21.000000000000004 -1.0000000000000013 1;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "pasted__Spine_J_2" -p "pasted__Spine_J_";
	rename -uid "A2FA78FA-8340-D8E3-D739-58B37AF9E7DD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 2.0000000000000004 4.4408920985006262e-16 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.999999999999986 ;
	setAttr ".bps" -type "matrix" 4.4408920985006281e-16 2.2204460492503131e-16 1.0000000000000002 0
		 4.4408920985006262e-16 1.0000000000000002 -2.2204460492503131e-16 0 -1 4.4408920985006262e-16 4.4408920985006262e-16 0
		 1.7763568394002501e-15 23.000000000000004 -1.0000000000000018 1;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "pasted__L_clav_J" -p "pasted__Spine_J_2";
	rename -uid "2236DC54-BC4D-3C8F-6237-CA99BB333A30";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.0000000000000016 4.6821134575042578 -0.64347144627002906 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.2722218725854062e-14 89.999999999999972 0 ;
	setAttr ".bps" -type "matrix" 1 -4.4408920985006252e-16 9.8607613152626476e-32 0
		 4.4408920985006262e-16 1.0000000000000002 -2.2204460492503131e-16 0 1.9721522630525295e-31 2.2204460492503151e-16 1.0000000000000002 0
		 0.64347144627003339 27.682113457504261 -1.3322676295501878e-15 1;
	setAttr ".radi" 0.5;
createNode joint -n "pasted__L_shold_J" -p "pasted__L_clav_J";
	rename -uid "3D6EB913-2640-9E1C-CE18-679541C3159E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 2.2949513515430233 0.35343815675432211 -1.4613037448113766 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 2.5 -29.999999999999996 ;
	setAttr ".bps" -type "matrix" 0.86520113949555344 -0.49952411079092934 -0.043619387365335889 0
		 0.50000000000000033 0.86602540378443871 -1.9229626863835636e-16 0 0.037775497555894939 -0.021809693682667795 0.99904822158185802 0
		 2.9384227978130566 28.035551614258583 -1.4613037448113781 1;
	setAttr ".radi" 0.70573616322721433;
createNode joint -n "pasted__L_Elbow_J" -p "pasted__L_shold_J";
	rename -uid "6FF20D2A-6542-3FE4-A526-DCB1D79199EF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 4.9775658223928119 -4.4408920985006262e-16 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -7.4999999999999991 0 ;
	setAttr ".bps" -type "matrix" 0.86272991566282053 -0.49809734904587322 0.087155742747658332 0
		 0.50000000000000033 0.86602540378443871 -1.9229626863835636e-16 0 -0.075479087305173317 0.043577871373829354 0.99619469809174577 0
		 7.2450184192614389 25.549137472924492 -1.678422116554787 1;
	setAttr ".radi" 0.69482708697035411;
createNode joint -n "pasted__L_Wrist_J" -p "pasted__L_Elbow_J";
	rename -uid "4A66EAF5-5E45-4DAE-EA92-2D817F0BA39E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 4.7666570147601792 1.0436096431476471e-14 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 5 0 ;
	setAttr ".bps" -type "matrix" 0.86602540378443826 -0.50000000000000044 1.3877787807814457e-16 0
		 0.50000000000000033 0.86602540378443871 -1.9229626863835636e-16 0 -2.7755575615628914e-17 2.2898349882893854e-16 1.0000000000000002 0
		 11.357356023599085 23.174878250061539 -1.2629805840100279 1;
	setAttr ".radi" 0.5;
createNode joint -n "pasted__L_Thumb_J_0" -p "pasted__L_Wrist_J";
	rename -uid "723BE43D-904A-5ACC-819C-0FB9A16A59D5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.53750258263396811 -0.10946226051496666 0.6084685454224682 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 40.000000000000014 -45 -5.0000000000000018 ;
	setAttr ".bps" -type "matrix" 0.579227965339569 -0.40557978767263902 0.70710678118654779 0
		 0.067064482466485872 0.88820853385240317 0.4545194776720437 0 -0.8124021906421014 -0.21584864193036313 0.54167522041970184 0
		 11.768115784502362 22.811329860382923 -0.65451203858755946 1;
	setAttr ".radi" 0.15;
createNode joint -n "pasted__L_Thumb_J_1" -p "pasted__L_Thumb_J_0";
	rename -uid "5B11A4C8-9F45-478C-8992-749DB9932ABF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.76393022983293535 1.0658141036401503e-14 1.7763568394002505e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.579227965339569 -0.40557978767263902 0.70710678118654779 0
		 0.067064482466485872 0.88820853385240317 0.4545194776720437 0 -0.8124021906421014 -0.21584864193036313 0.54167522041970184 0
		 12.210605537189881 22.501495199970581 -0.11433179271928695 1;
	setAttr ".radi" 0.15;
createNode joint -n "pasted__L_Middle_J_2" -p "pasted__L_Thumb_J_1";
	rename -uid "19AC57CB-E144-A2C2-EB3A-FBB42AED0736";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.4750463823552904 -3.5527136788005009e-15 -8.8817841970012523e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.579227965339569 -0.40557978767263902 0.70710678118654779 0
		 0.067064482466485872 0.88820853385240317 0.4545194776720437 0 -0.8124021906421014 -0.21584864193036313 0.54167522041970184 0
		 12.485765686683466 22.308825989080265 0.22157672562227004 1;
	setAttr ".radi" 0.15;
createNode joint -n "pasted__L_Index_J_0" -p "pasted__L_Wrist_J";
	rename -uid "970659C0-1F44-B872-B375-DCA1DA39E368";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 1.921459460994225 -0.017707674693227204 0.54970049636802565 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.7723066812161064e-31 -4.9999999999999973 -6.380747754391478e-15 ;
	setAttr ".bps" -type "matrix" 0.86272991566282053 -0.49809734904587322 0.087155742747658277 0
		 0.50000000000000033 0.86602540378443871 -1.9229626863835636e-16 0 -0.075479087305173276 0.043577871373829333 0.99619469809174577 0
		 13.012534891815424 22.19881322343814 -0.7132800876420019 1;
	setAttr ".radi" 0.15;
createNode joint -n "pasted__L_Index_J_1" -p "pasted__L_Index_J_0";
	rename -uid "4DD4804E-8E4C-28DC-437B-CDB0DB2F6722";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.76393022983293146 1.0167214292700066e-14 -8.5001450322863548e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.86272991566282053 -0.49809734904587322 0.087155742747658277 0
		 0.50000000000000033 0.86602540378443871 -1.9229626863835636e-16 0 -0.075479087305173276 0.043577871373829333 0.99619469809174577 0
		 13.671600354571472 21.818301601102362 -0.64669918105352353 1;
	setAttr ".radi" 0.15;
createNode joint -n "pasted__L_Middle_J_2" -p "pasted__L_Index_J_1";
	rename -uid "5D523340-3248-8093-493F-099B4B9CF384";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.47504638235529167 -1.3947176746853529e-15 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.86272991566282053 -0.49809734904587322 0.087155742747658277 0
		 0.50000000000000033 0.86602540378443871 -1.9229626863835636e-16 0 -0.075479087305173276 0.043577871373829333 0.99619469809174577 0
		 14.08143707995678 21.581682257377359 -0.60529616075976 1;
	setAttr ".radi" 0.15;
createNode joint -n "pasted__L_Middle_J_0" -p "pasted__L_Wrist_J";
	rename -uid "084C5CC8-6D43-FF07-B995-B29CBF9871F9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 1.9236102911411863 0.031939370711022264 0.11124062906160215 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.8278125961003172e-32 1.5902773407317584e-15 3.1805546814635152e-15 ;
	setAttr ".bps" -type "matrix" 0.86602540378443826 -0.50000000000000044 1.3877787807814457e-16 0
		 0.50000000000000033 0.86602540378443871 -1.9229626863835636e-16 0 -2.7755575615628914e-17 2.2898349882893854e-16 1.0000000000000002 0
		 13.039221088064043 22.24073341090758 -1.1517399549484255 1;
	setAttr ".radi" 0.15;
createNode joint -n "pasted__L_Middle_J_1" -p "pasted__L_Middle_J_0";
	rename -uid "B72A9F77-C745-522C-604F-4C81C9D36B58";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.8993748404807359 1.642956604097634e-14 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.86602540378443826 -0.50000000000000044 1.3877787807814457e-16 0
		 0.50000000000000033 0.86602540378443871 -1.9229626863835636e-16 0 -2.7755575615628914e-17 2.2898349882893854e-16 1.0000000000000002 0
		 13.818102547444944 21.791045990667225 -1.1517399549484253 1;
	setAttr ".radi" 0.15;
createNode joint -n "pasted__L_Middle_J_2" -p "pasted__L_Middle_J_1";
	rename -uid "55DEA582-3C48-B9BC-2310-CEB9BBFD9C55";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.47504638235529167 -1.3947176746853529e-15 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.86602540378443826 -0.50000000000000044 1.3877787807814457e-16 0
		 0.50000000000000033 0.86602540378443871 -1.9229626863835636e-16 0 -2.7755575615628914e-17 2.2898349882893854e-16 1.0000000000000002 0
		 14.229504782540522 21.553522799489578 -1.1517399549484253 1;
	setAttr ".radi" 0.15;
createNode joint -n "pasted__L_Ring_J_2" -p "pasted__L_Wrist_J";
	rename -uid "4B3F5D75-744F-641C-1026-C7A547D52182";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 1.8415343474002914 -0.017707674693227204 -0.33952876508678842 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.7723066812161064e-31 5 -6.390067780186279e-15 ;
	setAttr ".bps" -type "matrix" 0.86272991566282053 -0.49809734904587322 -0.087155742747658041 0
		 0.50000000000000033 0.86602540378443871 -1.9229626863835636e-16 0 0.075479087305173262 -0.043577871373828896 0.99619469809174577 0
		 12.94331771304272 22.238775780235105 -1.6025093490968161 1;
	setAttr ".radi" 0.15;
createNode joint -n "pasted__L_Ring_J_1" -p "|group|pasted__Pelvis_J|pasted__Spine_J_0|pasted__Spine_J_|pasted__Spine_J_2|pasted__L_clav_J|pasted__L_shold_J|pasted__L_Elbow_J|pasted__L_Wrist_J|pasted__L_Ring_J_2";
	rename -uid "C81A4CFF-E144-84EA-88FE-18A790582FEE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.76679238543552253 1.1842957170493662e-14 3.9985376121265404e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.86272991566282053 -0.49809734904587322 -0.087155742747658041 0
		 0.50000000000000033 0.86602540378443871 -1.9229626863835636e-16 0 0.075479087305173262 -0.043577871373828896 0.99619469809174577 0
		 13.604852443060407 21.856838525781122 -1.6693397089826971 1;
	setAttr ".radi" 0.15;
createNode joint -n "pasted__L_Ring_J_2" -p "pasted__L_Ring_J_1";
	rename -uid "6F3540A6-3F43-C5E3-7E36-3E8D72FD5264";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.47504638235529167 -1.3947176746853529e-15 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.86272991566282053 -0.49809734904587322 -0.087155742747658041 0
		 0.50000000000000033 0.86602540378443871 -1.9229626863835636e-16 0 0.075479087305173262 -0.043577871373828896 0.99619469809174577 0
		 14.014689168445715 21.620219182056118 -1.7107427292764605 1;
	setAttr ".radi" 0.15;
createNode joint -n "pasted__L_Pinky_J_0" -p "pasted__L_Wrist_J";
	rename -uid "4DDAC2F7-F24A-3991-2342-41A72E1100CB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 1.6766811994397348 -0.20945463487023019 -0.65828899702492105 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.7417672317600264e-31 14.999999999999996 -6.5997771014257389e-15 ;
	setAttr ".bps" -type "matrix" 0.83651630373780761 -0.48296291314453466 -0.25881904510252063 0
		 0.50000000000000033 0.86602540378443871 -1.9229626863835636e-16 0 0.22414386804201319 -0.12940952255126023 0.96592582628906853 0
		 12.704677218926543 22.155144615603657 -1.9212695810349487 1;
	setAttr ".radi" 0.15;
createNode joint -n "pasted__L_Pinky_J_1" -p "pasted__L_Pinky_J_0";
	rename -uid "5338EE08-0046-1515-AA11-8D8068755A9D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.6579200782485003 1.1590078594450387e-14 6.6873589998905913e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.83651630373780761 -0.48296291314453466 -0.25881904510252063 0
		 0.50000000000000033 0.86602540378443871 -1.9229626863835636e-16 0 0.22414386804201319 -0.12940952255126023 0.96592582628906853 0
		 13.255038090937873 21.83739361799649 -2.0915518274410005 1;
	setAttr ".radi" 0.15;
createNode joint -n "pasted__L_Pinky_J_2" -p "pasted__L_Pinky_J_1";
	rename -uid "69577DEE-C54E-8AF9-CB48-82B42AF60D9F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.37605465512398045 -2.7821408934381589e-15 5.5511151231257827e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.83651630373780761 -0.48296291314453466 -0.25881904510252063 0
		 0.50000000000000033 0.86602540378443871 -1.9229626863835636e-16 0 0.22414386804201319 -0.12940952255126023 0.96592582628906853 0
		 13.56961394104558 21.655773166256246 -2.1888819341865466 1;
	setAttr ".radi" 0.15;
createNode joint -n "pasted__Neck_J_0" -p "pasted__Spine_J_2";
	rename -uid "AFB1554E-AB4D-A5AA-ADE5-70B1841F76C8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.030241907484341857 6.1772209094362154 2.2564394698707626e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.5032861004500542e-14 1.3702232622085696e-14 79 ;
	setAttr ".bps" -type "matrix" 5.206662562536696e-16 0.9816271834476642 0.19080899537654467 0
		 -3.5119382427556171e-16 0.19080899537654467 -0.9816271834476642 0 -1 4.4408920985006262e-16 4.4408920985006262e-16 0
		 2.2765846270693817e-15 29.177220909436222 -0.96975809251566125 1;
	setAttr ".radi" 0.51802165059670269;
createNode joint -n "pasted__Neck_J_1" -p "pasted__Neck_J_0";
	rename -uid "7B0099F7-6047-B26E-DA4F-54B2DAC46059";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 1.3484185782029192 2.2204460492503131e-16 2.9940907047063953e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.3800490660589114e-15 -1.2411477817127579e-14 -12.000000000000002 ;
	setAttr ".bps" -type "matrix" 5.8230575114746688e-16 0.92050485345244071 0.39073112848927372 0
		 -2.3526679491821722e-16 0.39073112848927372 -0.92050485345244071 0 -1 4.4408920985006262e-16 4.4408920985006262e-16 0
		 2.6792516095745519e-15 30.500865240466059 -0.71246769826169376 1;
	setAttr ".radi" 0.54905132932882117;
createNode joint -n "pasted__Head_J" -p "pasted__Neck_J_1";
	rename -uid "2EFF7A25-144C-B1CF-70B4-4EBC2997D323";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 1.9483257003572128 0 4.2204855952787472e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -67 ;
	setAttr ".bps" -type "matrix" 4.4408920985006281e-16 1.6653345369377348e-16 1.0000000000000004 0
		 4.4408920985006262e-16 1.0000000000000004 -1.6653345369377348e-16 0 -1 4.4408920985006262e-16 4.4408920985006262e-16 0
		 3.3917243104730987e-15 32.294308503750997 0.048803801303534566 1;
	setAttr ".radi" 0.54905132932882117;
createNode joint -n "pasted__R_clav_J" -p "pasted__Spine_J_2";
	rename -uid "BE5C3FA4-3142-D57D-C666-08A4CA767166";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.0000000000000009 4.6820999999999948 0.64347100000000435 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999999999994 89.999999999999943 0 ;
	setAttr ".bps" -type "matrix" 1 -4.4408920985006232e-16 5.5511151231257847e-16 0
		 -4.4408920985006301e-16 -1.0000000000000002 1.2326877045398921e-15 0 4.4408920985006193e-16 -1.2326877045398925e-15 -1.0000000000000002 0
		 -0.64347100000000002 27.682099999999998 -1.5543122344752192e-15 1;
	setAttr ".radi" 0.5;
createNode joint -n "pasted__R_shold_J" -p "pasted__R_clav_J";
	rename -uid "45FE80B4-9147-5557-5FFA-C9801EC4E46B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -2.2949490000000003 -0.35350000000000037 1.4612999999999965 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.0364993689466167e-13 2.5000000000000013 -30.000000000000036 ;
	setAttr ".bps" -type "matrix" 0.86520113949555355 0.49952411079092923 0.043619387365335889 0
		 0.50000000000000022 -0.86602540378443882 1.3468293466965388e-15 0 0.037775497555895411 0.021809693682666786 -0.99904822158185802 0
		 -2.9384199999999998 28.035599999999999 -1.4613 1;
	setAttr ".radi" 0.70573616322721433;
createNode joint -n "pasted__R_Elbow_J" -p "pasted__R_shold_J";
	rename -uid "45F09C07-1842-3D73-CAA6-7EBAA03B6BEF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -4.9776125702179561 7.2166510001636652e-05 -4.1124631766642494e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.207418270995149e-06 -7.5000000000000151 -1.9367545243798489e-14 ;
	setAttr ".bps" -type "matrix" 0.86272991566282076 0.49809734904587299 -0.08715574274765861 0
		 0.49999999840939724 -0.86602540470277356 -2.0993232189156145e-08 0 -0.075479097841885209 -0.043577853123709681 -0.99619469809174555 0
		 -7.2450200000000002 25.549100000000003 -1.67842 1;
	setAttr ".radi" 0.69482708697035411;
createNode joint -n "pasted__R_Wrist_J" -p "pasted__R_Elbow_J";
	rename -uid "C8952AC8-6544-E986-0768-989CD0D70745";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -4.7666639584452701 -7.2486334936172625e-05 2.1458940884233613e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.4916150409686983e-07 4.999999999999992 -1.0563542258783257e-07 ;
	setAttr ".bps" -type "matrix" 0.86602540470277345 0.49999999840939752 -5.8286708792820718e-16 0
		 0.49999999840939724 -0.86602540470277356 -2.0993232189156145e-08 0 -1.049661664531687e-08 1.8180672141376863e-08 -1 0
		 -11.357399999999998 23.174899999999997 -1.2629799999999998 1;
	setAttr ".radi" 0.5;
createNode joint -n "pasted__R_Thumb_J_0" -p "pasted__R_Wrist_J";
	rename -uid "B0A389A6-F14D-C000-47C1-728403BD186B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -0.53747663313308824 0.1095368250294797 -0.60846800229953146 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 39.999998305423539 -45.000000104832949 -4.9999989069869333 ;
	setAttr ".bps" -type "matrix" 0.57922796533956888 0.40557978767263902 -0.70710678118654779 0
		 0.067064482466486067 -0.88820853385240317 -0.45451947767204354 0 -0.8124021906421014 0.21584864193036282 -0.54167522041970206 0
		 -11.7681 22.811299999999996 -0.65451199999999998 1;
	setAttr ".radi" 0.15;
createNode joint -n "pasted__R_Thumb_J_1" -p "pasted__R_Thumb_J_0";
	rename -uid "0E505B09-4D49-2837-EE8B-5FB28C9C24B0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.76392193394508956 -3.1361152831976824e-05 1.5939522791441618e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.2074182697257333e-06 7.0622500768802573e-31 -6.7025178170128838e-23 ;
	setAttr ".bps" -type "matrix" 0.57922796533956888 0.40557978767263902 -0.70710678118654779 0
		 0.067064465346390018 -0.88820852930373295 -0.45451948908699513 0 -0.81240219205537945 0.21584866064795802 -0.54167521084142012 0
		 -12.210600000000001 22.5015 -0.11433200000000221 1;
	setAttr ".radi" 0.15;
createNode joint -n "pasted__R_Middle_J_2" -p "pasted__R_Thumb_J_1";
	rename -uid "D9977651-1E42-30F2-E5B9-E9BD5ED0FFA4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.47508229290756043 2.4455673774070874e-05 2.5467948244539684e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.7075472925031875e-06 -9.4787917401119296e-23 9.4787914576219279e-23 ;
	setAttr ".bps" -type "matrix" 0.57922796533956888 0.40557978767263902 -0.70710678118654779 0
		 0.067064441134917954 -0.8882085228709411 -0.45451950523017415 0 -0.81240219405405589 0.21584868711863486 -0.54167519729568359 0
		 -12.485799999999999 22.308800000000002 0.22157700000000341 1;
	setAttr ".radi" 0.15;
createNode joint -n "pasted__R_Index_J_0" -p "pasted__R_Wrist_J";
	rename -uid "C29519E7-9648-26C4-F1C6-1C93A3175797";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -1.9214086457709751 0.017777388623002821 -0.54970000037320343 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.1225914644596071e-16 -4.999999999999992 -1.860379305476716e-14 ;
	setAttr ".bps" -type "matrix" 0.86272991566282076 0.49809734904587299 -0.08715574274765861 0
		 0.49999999840939724 -0.86602540470277356 -2.0993232189156145e-08 0 -0.075479097841885195 -0.043577853123709674 -0.99619469809174555 0
		 -13.012499999999999 22.198799999999999 -0.71328000000000003 1;
	setAttr ".radi" 0.15;
createNode joint -n "pasted__R_Index_J_1" -p "pasted__R_Index_J_0";
	rename -uid "91C9DAD6-114E-701E-9F6E-DFA4C1B93A7F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.7639542452332001 -2.7333859982547892e-05 2.007307511098233e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.7075472925031873e-06 -4.5727484705360768e-22 -4.5024260776010547e-22 ;
	setAttr ".bps" -type "matrix" 0.86272991566282076 0.49809734904587299 -0.08715574274765861 0
		 0.49999999615994462 -0.86602540600149447 -5.0682147742599126e-08 0 -0.07547911274304632 -0.043577827314141344 -0.99619469809174443 0
		 -13.6716 21.818300000000001 -0.64669899999999969 1;
	setAttr ".radi" 0.15;
createNode joint -n "pasted__R_Middle_J_2" -p "pasted__R_Index_J_1";
	rename -uid "DC86E756-8440-7233-E89D-47ADA612E012";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.47500506143985932 1.6105352109718751e-06 -3.594740466184021e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.0783246591999747e-06 -1.0365496419669336e-21 -8.1168641990016013e-22 ;
	setAttr ".bps" -type "matrix" 0.86272991566282076 0.49809734904587299 -0.08715574274765861 0
		 0.4999999921046851 -0.86602540834279484 -1.0420460141302849e-07 0 -0.075479139606496382 -0.043577780785280247 -0.99619469809174022 0
		 -14.081400000000002 21.581700000000005 -0.60529599999999972 1;
	setAttr ".radi" 0.15;
createNode joint -n "pasted__R_Middle_J_0" -p "pasted__R_Wrist_J";
	rename -uid "7B103BF3-6248-EAA7-752F-3A8B2306A84A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -1.9235815241431835 -0.031859066586882534 -0.11123999933117368 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.5377364625159377e-07 -1.5681005703312116e-15 -3.1052146630606307e-22 ;
	setAttr ".bps" -type "matrix" 0.86602540470277345 0.49999999840939752 -5.8286708792820718e-16 0
		 0.49999999840939724 -0.86602540470277356 -2.0993232189156145e-08 0 -1.049661664531687e-08 1.8180672141376863e-08 -1 0
		 -13.039199999999999 22.2407 -1.1517400000000002 1;
	setAttr ".radi" 0.15;
createNode joint -n "pasted__R_Middle_J_1" -p "pasted__R_Middle_J_0";
	rename -uid "260D917A-2C46-8967-EDAA-CE85806C1173";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.899397187007698 1.6257337591696341e-06 -3.3750779948604759e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.5377364625159377e-07 -1.5681005703312116e-15 -3.1052146630606307e-22 ;
	setAttr ".bps" -type "matrix" 0.86602540470277345 0.49999999840939752 -5.8286708792820718e-16 0
		 0.49999999840939724 -0.86602540470277356 -2.0993232189156145e-08 0 -1.049661664531687e-08 1.8180672141376863e-08 -1 0
		 -13.818099999999999 21.790999999999997 -1.15174 1;
	setAttr ".radi" 0.15;
createNode joint -n "pasted__R_Middle_J_2" -p "pasted__R_Middle_J_1";
	rename -uid "E94F0387-0C48-8C25-21FB-14A73C507C65";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.47503285111695104 -1.8965728717290631e-05 3.9834802123550617e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.5377364625159377e-07 -1.5681005703312116e-15 -3.1052146630606307e-22 ;
	setAttr ".bps" -type "matrix" 0.86602540470277345 0.49999999840939752 -5.8286708792820718e-16 0
		 0.49999999840939724 -0.86602540470277356 -2.0993232189156145e-08 0 -1.049661664531687e-08 1.8180672141376863e-08 -1 0
		 -14.229499999999998 21.553499999999996 -1.15174 1;
	setAttr ".radi" 0.15;
createNode joint -n "pasted__R_Ring_J_2" -p "pasted__R_Wrist_J";
	rename -uid "F01EFEF2-EA45-F801-8C69-85ABD88D8D8C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -1.8414796878291662 0.017736390992631357 0.33952999962765729 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -9.1891823528884186e-09 4.9999999999999885 -2.1046687819233819e-07 ;
	setAttr ".bps" -type "matrix" 0.86272991749250161 0.49809734587677301 0.087155742747657403 0
		 0.49999999840939724 -0.86602540470277356 -2.0993232189156145e-08 0 0.075479076928537475 0.043577889346688048 -0.99619469809174555 0
		 -12.943300000000001 22.238800000000001 -1.6025100000000001 1;
	setAttr ".radi" 0.15;
createNode joint -n "pasted__R_Ring_J_1" -p "|group|pasted__Pelvis_J|pasted__Spine_J_0|pasted__Spine_J_|pasted__Spine_J_2|pasted__R_clav_J|pasted__R_shold_J|pasted__R_Elbow_J|pasted__R_Wrist_J|pasted__R_Ring_J_2";
	rename -uid "3C9E21BA-FB4F-D719-FF86-28A96657B9C1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.76687991782579479 2.170705177917398e-05 -8.0193528846361772e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.2074182697257333e-06 -4.4183803873177543e-15 -6.6653810028563857e-22 ;
	setAttr ".bps" -type "matrix" 0.86272991749250161 0.49809734587677301 0.087155742747657403 0
		 0.49999999999999972 -0.86602540378443804 -4.1986465703070449e-08 0 0.075479066391825361 0.04357790759680881 -0.99619469809174488 0
		 -13.604900000000004 21.8568 -1.6693399999999996 1;
	setAttr ".radi" 0.15;
createNode joint -n "pasted__R_Ring_J_2" -p "pasted__R_Ring_J_1";
	rename -uid "E9CC81F0-0B46-F60F-0582-42B314A9BF01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.47500479997262179 1.6122736390400405e-06 6.0615622388127122e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.4148365394514671e-06 -8.8367607973567854e-15 -1.2251110709635992e-21 ;
	setAttr ".bps" -type "matrix" 0.86272991749250161 0.49809734587677301 0.087155742747657403 0
		 0.50000000318120408 -0.86602540194776578 -8.3972932730898998e-08 0 0.075479045318401036 0.043577944097050271 -0.99619469809174221 0
		 -14.014700000000001 21.620200000000001 -1.7107399999999999 1;
	setAttr ".radi" 0.15;
createNode joint -n "pasted__R_Pinky_J_0" -p "pasted__R_Wrist_J";
	rename -uid "04362086-7146-1649-F513-DE8F82547737";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -1.6766960261339521 0.20952272367853908 0.65828999560144208 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.9748837684204283e-07 15.000000000000012 -4.2752906660343995e-07 ;
	setAttr ".bps" -type "matrix" 0.83651630734157545 0.48296290690262589 0.25881904510252041 0
		 0.49999999840939724 -0.86602540470277356 -2.0993232189156145e-08 0 0.224143858140743 0.12940953970076302 -0.96592582628906831 0
		 -12.704700000000003 22.155099999999997 -1.92127 1;
	setAttr ".radi" 0.15;
createNode joint -n "pasted__R_Pinky_J_1" -p "pasted__R_Pinky_J_0";
	rename -uid "E41F77DC-E740-954F-82FD-998BB0407314";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.65784394645309063 -1.3724475891763177e-05 1.8073802719786869e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.2074182697257331e-06 -8.7025100176066176e-15 -1.9223361009934427e-22 ;
	setAttr ".bps" -type "matrix" 0.83651630734157545 0.48296290690262589 0.25881904510252041 0
		 0.49999999840939724 -0.86602540470277356 -2.0993232189156145e-08 0 0.224143858140743 0.12940953970076302 -0.96592582628906831 0
		 -13.255000000000003 21.837399999999995 -2.0915500000000007 1;
	setAttr ".radi" 0.15;
createNode joint -n "pasted__R_Pinky_J_2" -p "pasted__R_Pinky_J_1";
	rename -uid "FE4AC7A0-4D42-4480-27D1-978DF692C840";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.37606495184299993 -2.9783962308016498e-05 -2.869508019642808e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.2074182697257331e-06 -8.7025100176066176e-15 -1.9223361009934427e-22 ;
	setAttr ".bps" -type "matrix" 0.83651630734157545 0.48296290690262589 0.25881904510252041 0
		 0.49999999840939724 -0.86602540470277356 -2.0993232189156145e-08 0 0.224143858140743 0.12940953970076302 -0.96592582628906831 0
		 -13.569600000000001 21.655800000000003 -2.188880000000001 1;
	setAttr ".radi" 0.15;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "AA66A035-DC4D-34D5-F744-0A8B2F17A726";
	setAttr -s 26 ".lnk";
	setAttr -s 26 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "F746AB82-DC41-BDC2-1524-DDAE2301708C";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "EF02C5C7-4A47-1302-929B-9E83C209356E";
createNode displayLayerManager -n "layerManager";
	rename -uid "35454F32-5B49-56FB-7D65-72ACF8B341F1";
createNode displayLayer -n "defaultLayer";
	rename -uid "D57B6A3E-F646-770E-1054-C2907B146BE6";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "796CAB5B-5C4C-1097-D2E3-0580264442DD";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "407BCB39-3546-A4BB-9178-E49939BA7325";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "FDDD01BD-C044-5AC7-93E3-8F89392AAD02";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1319\n            -height 779\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n"
		+ "                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n"
		+ "                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 779\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 779\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "045BD6D7-334D-DE43-5A84-2EB400720FEA";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode reference -n "GenericMesh2_2RN";
	rename -uid "DF601E48-C54F-8DB6-DDA7-BA8715C9DFE7";
	setAttr ".ed" -type "dataReferenceEdits" 
		"GenericMesh2_2RN"
		"GenericMesh2_2RN" 0
		"GenericMesh2_2RN" 4
		2 "|GenericMesh2_2:GenericMesh2|GenericMesh2_2:GenericMesh2Shape" "uvPivot" 
		" -type \"double2\" 0.51226294040679932 0.85552150011062622"
		2 "|GenericMesh2_2:GenericMesh2|GenericMesh2_2:GenericMesh2Shape" "pnts" 
		" -s 2"
		2 "|GenericMesh2_2:GenericMesh2|GenericMesh2_2:GenericMesh2Shape" "pnts[2400]" 
		" -type \"float3\" 1.1920929000000001e-07 0 0"
		2 "|GenericMesh2_2:GenericMesh2|GenericMesh2_2:GenericMesh2Shape" "pnts[2799]" 
		" -type \"float3\" -1.1920929000000001e-07 0 0";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode objectSet -s -n "lightEditorRoot";
	rename -uid "57B64A79-8646-F19A-E461-8C8C4A136995";
	addAttr -ci true -sn "isolate" -ln "isolate" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "wasEnabled" -ln "wasEnabled" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "childIndex" -ln "childIndex" -dv -1 -at "long";
	addAttr -ci true -sn "lightGroup" -ln "lightGroup" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "visibility" -ln "visibility" -dv 1 -min 0 -max 1 -at "bool";
lockNode -l 1 ;
createNode timeEditor -s -n "timeEditor";
	rename -uid "D8783340-0C48-F4E4-32D7-82AC3EE813DB";
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 26 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 30 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 3 ".dsm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
select -ne :initialParticleSE;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".wsn" -type "string" "ACEScg";
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off ".eeaa";
	setAttr -k off ".engm";
	setAttr -k off ".mes";
	setAttr -k off ".emb";
	setAttr -k off ".mbbf";
	setAttr -k off ".mbs";
	setAttr -k off ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off ".twa";
	setAttr -k off ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
connectAttr "pasted__Pelvis_J.s" "pasted__Hips_J.is";
connectAttr "pasted__Hips_J.s" "pasted__L_Hip_J.is";
connectAttr "pasted__L_Hip_J.s" "pasted__L_Knee_J.is";
connectAttr "pasted__L_Knee_J.s" "pasted__L_Ankle_J.is";
connectAttr "pasted__L_Ankle_J.s" "pasted__L_Ball_J.is";
connectAttr "pasted__Hips_J.s" "pasted__R_Hip_J.is";
connectAttr "pasted__R_Hip_J.s" "pasted__R_Knee_J.is";
connectAttr "pasted__R_Knee_J.s" "pasted__R_Ankle_J.is";
connectAttr "pasted__R_Ankle_J.s" "pasted__R_Ball_J.is";
connectAttr "pasted__Pelvis_J.s" "pasted__Spine_J_0.is";
connectAttr "pasted__Spine_J_0.s" "pasted__Spine_J_.is";
connectAttr "pasted__Spine_J_.s" "pasted__Spine_J_2.is";
connectAttr "pasted__Spine_J_2.s" "pasted__L_clav_J.is";
connectAttr "pasted__L_clav_J.s" "pasted__L_shold_J.is";
connectAttr "pasted__L_shold_J.s" "pasted__L_Elbow_J.is";
connectAttr "pasted__L_Elbow_J.s" "pasted__L_Wrist_J.is";
connectAttr "pasted__L_Wrist_J.s" "pasted__L_Thumb_J_0.is";
connectAttr "pasted__L_Thumb_J_0.s" "pasted__L_Thumb_J_1.is";
connectAttr "pasted__L_Thumb_J_1.s" "|group|pasted__Pelvis_J|pasted__Spine_J_0|pasted__Spine_J_|pasted__Spine_J_2|pasted__L_clav_J|pasted__L_shold_J|pasted__L_Elbow_J|pasted__L_Wrist_J|pasted__L_Thumb_J_0|pasted__L_Thumb_J_1|pasted__L_Middle_J_2.is"
		;
connectAttr "pasted__L_Wrist_J.s" "pasted__L_Index_J_0.is";
connectAttr "pasted__L_Index_J_0.s" "pasted__L_Index_J_1.is";
connectAttr "pasted__L_Index_J_1.s" "|group|pasted__Pelvis_J|pasted__Spine_J_0|pasted__Spine_J_|pasted__Spine_J_2|pasted__L_clav_J|pasted__L_shold_J|pasted__L_Elbow_J|pasted__L_Wrist_J|pasted__L_Index_J_0|pasted__L_Index_J_1|pasted__L_Middle_J_2.is"
		;
connectAttr "pasted__L_Wrist_J.s" "pasted__L_Middle_J_0.is";
connectAttr "pasted__L_Middle_J_0.s" "pasted__L_Middle_J_1.is";
connectAttr "pasted__L_Middle_J_1.s" "|group|pasted__Pelvis_J|pasted__Spine_J_0|pasted__Spine_J_|pasted__Spine_J_2|pasted__L_clav_J|pasted__L_shold_J|pasted__L_Elbow_J|pasted__L_Wrist_J|pasted__L_Middle_J_0|pasted__L_Middle_J_1|pasted__L_Middle_J_2.is"
		;
connectAttr "pasted__L_Wrist_J.s" "|group|pasted__Pelvis_J|pasted__Spine_J_0|pasted__Spine_J_|pasted__Spine_J_2|pasted__L_clav_J|pasted__L_shold_J|pasted__L_Elbow_J|pasted__L_Wrist_J|pasted__L_Ring_J_2.is"
		;
connectAttr "|group|pasted__Pelvis_J|pasted__Spine_J_0|pasted__Spine_J_|pasted__Spine_J_2|pasted__L_clav_J|pasted__L_shold_J|pasted__L_Elbow_J|pasted__L_Wrist_J|pasted__L_Ring_J_2.s" "pasted__L_Ring_J_1.is"
		;
connectAttr "pasted__L_Ring_J_1.s" "|group|pasted__Pelvis_J|pasted__Spine_J_0|pasted__Spine_J_|pasted__Spine_J_2|pasted__L_clav_J|pasted__L_shold_J|pasted__L_Elbow_J|pasted__L_Wrist_J|pasted__L_Ring_J_2|pasted__L_Ring_J_1|pasted__L_Ring_J_2.is"
		;
connectAttr "pasted__L_Wrist_J.s" "pasted__L_Pinky_J_0.is";
connectAttr "pasted__L_Pinky_J_0.s" "pasted__L_Pinky_J_1.is";
connectAttr "pasted__L_Pinky_J_1.s" "pasted__L_Pinky_J_2.is";
connectAttr "pasted__Spine_J_2.s" "pasted__Neck_J_0.is";
connectAttr "pasted__Neck_J_0.s" "pasted__Neck_J_1.is";
connectAttr "pasted__Neck_J_1.s" "pasted__Head_J.is";
connectAttr "pasted__Spine_J_2.s" "pasted__R_clav_J.is";
connectAttr "pasted__R_clav_J.s" "pasted__R_shold_J.is";
connectAttr "pasted__R_shold_J.s" "pasted__R_Elbow_J.is";
connectAttr "pasted__R_Elbow_J.s" "pasted__R_Wrist_J.is";
connectAttr "pasted__R_Wrist_J.s" "pasted__R_Thumb_J_0.is";
connectAttr "pasted__R_Thumb_J_0.s" "pasted__R_Thumb_J_1.is";
connectAttr "pasted__R_Thumb_J_1.s" "|group|pasted__Pelvis_J|pasted__Spine_J_0|pasted__Spine_J_|pasted__Spine_J_2|pasted__R_clav_J|pasted__R_shold_J|pasted__R_Elbow_J|pasted__R_Wrist_J|pasted__R_Thumb_J_0|pasted__R_Thumb_J_1|pasted__R_Middle_J_2.is"
		;
connectAttr "pasted__R_Wrist_J.s" "pasted__R_Index_J_0.is";
connectAttr "pasted__R_Index_J_0.s" "pasted__R_Index_J_1.is";
connectAttr "pasted__R_Index_J_1.s" "|group|pasted__Pelvis_J|pasted__Spine_J_0|pasted__Spine_J_|pasted__Spine_J_2|pasted__R_clav_J|pasted__R_shold_J|pasted__R_Elbow_J|pasted__R_Wrist_J|pasted__R_Index_J_0|pasted__R_Index_J_1|pasted__R_Middle_J_2.is"
		;
connectAttr "pasted__R_Wrist_J.s" "pasted__R_Middle_J_0.is";
connectAttr "pasted__R_Middle_J_0.s" "pasted__R_Middle_J_1.is";
connectAttr "pasted__R_Middle_J_1.s" "|group|pasted__Pelvis_J|pasted__Spine_J_0|pasted__Spine_J_|pasted__Spine_J_2|pasted__R_clav_J|pasted__R_shold_J|pasted__R_Elbow_J|pasted__R_Wrist_J|pasted__R_Middle_J_0|pasted__R_Middle_J_1|pasted__R_Middle_J_2.is"
		;
connectAttr "pasted__R_Wrist_J.s" "|group|pasted__Pelvis_J|pasted__Spine_J_0|pasted__Spine_J_|pasted__Spine_J_2|pasted__R_clav_J|pasted__R_shold_J|pasted__R_Elbow_J|pasted__R_Wrist_J|pasted__R_Ring_J_2.is"
		;
connectAttr "|group|pasted__Pelvis_J|pasted__Spine_J_0|pasted__Spine_J_|pasted__Spine_J_2|pasted__R_clav_J|pasted__R_shold_J|pasted__R_Elbow_J|pasted__R_Wrist_J|pasted__R_Ring_J_2.s" "pasted__R_Ring_J_1.is"
		;
connectAttr "pasted__R_Ring_J_1.s" "|group|pasted__Pelvis_J|pasted__Spine_J_0|pasted__Spine_J_|pasted__Spine_J_2|pasted__R_clav_J|pasted__R_shold_J|pasted__R_Elbow_J|pasted__R_Wrist_J|pasted__R_Ring_J_2|pasted__R_Ring_J_1|pasted__R_Ring_J_2.is"
		;
connectAttr "pasted__R_Wrist_J.s" "pasted__R_Pinky_J_0.is";
connectAttr "pasted__R_Pinky_J_0.s" "pasted__R_Pinky_J_1.is";
connectAttr "pasted__R_Pinky_J_1.s" "pasted__R_Pinky_J_2.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of GenericRig.ma
