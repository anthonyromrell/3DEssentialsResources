//Maya ASCII 2022 scene
//Name: GenericRig.ma
//Last modified: Thu, Jan 27, 2022 04:23:03 PM
//Codeset: UTF-8
file -rdi 1 -pm "GenericMesh2_2PM" -ap -pt "original" -ns "GenericMesh2_2" -rfn
		 "GenericMesh2_2RN" -op "v=0;" -typ "mayaAscii" "/Users/anthonyromrell/GitRepos/3DEssentianlsResources/Maya//scenes/Models/GenericMesh2.2.ma";
file -rdi 1 -pm "GenericMesh2_2PM" -pt "Cartoon" -ns "GenericMesh2_2" -dr 1
		 -rfn "GenericMesh2_2GenericMesh2_2PM1RN" -typ "mayaAscii" "/Users/anthonyromrell/GitRepos/3DEssentianlsResources/Maya//scenes/Models/Cartoon1.ma";
file -r -pm "GenericMesh2_2PM" -ap -pt "original" -ns "GenericMesh2_2" -dr 1 -rfn
		 "GenericMesh2_2RN" -op "v=0;" -typ "mayaAscii" "/Users/anthonyromrell/GitRepos/3DEssentianlsResources/Maya//scenes/Models/GenericMesh2.2.ma";
file -r -pm "GenericMesh2_2PM" -pt "Cartoon" -ns "GenericMesh2_2" -dr 1 -rfn "GenericMesh2_2GenericMesh2_2PM1RN"
		 -typ "mayaAscii" "/Users/anthonyromrell/GitRepos/3DEssentianlsResources/Maya//scenes/Models/Cartoon1.ma";
requires maya "2022";
requires "stereoCamera" "10.0";
requires "mtoa" "4.2.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202102181415-29bfc1879c";
fileInfo "osv" "Mac OS X 10.16";
fileInfo "UUID" "DDC5FCF0-1F40-EEB4-6AAA-0F9D0DC7D406";
createNode transform -s -n "persp";
	rename -uid "8CED092E-A547-7A2C-CCEF-86BDC3B9B019";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -23.460898861832604 39.094645762343639 34.715630692846013 ;
	setAttr ".r" -type "double3" -18.33835272961305 -29.80000000000533 9.1630597562849774e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "B1A5702D-6A4F-F27C-38DE-F8BB4184A498";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 43.179159323501523;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -13.539930845489533 21.894308097632333 -1.6957010674163024 ;
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
createNode joint -n "Pelvis_J";
	rename -uid "CB9F6A0B-D14E-AB20-A05F-7EBC4D690AB3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0 19 -1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 19 -1 1;
createNode joint -n "Hips_J" -p "Pelvis_J";
	rename -uid "9CC67D4F-2945-C307-8A5D-D28B9A1DE638";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 19 -1 1;
	setAttr ".radi" 1.5;
createNode joint -n "L_Hip_J" -p "Hips_J";
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
createNode joint -n "L_Knee_J" -p "L_Hip_J";
	rename -uid "6B159856-E642-2959-E221-3A85170F74AC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 8.0291049280799083 -4.4408920985006262e-16 1.7828194316571248e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -9.2119119457986364e-15 -12.000000000000002 ;
	setAttr ".bps" -type "matrix" 2.7280495276237396e-16 -0.99691733373312785 -0.078459095727845124 0
		 -9.7496940988015275e-16 0.078459095727844985 -0.99691733373312807 0 0.99999999999999989 2.8716422420099927e-16 -1.0102655818772041e-15 0
		 1.8402045409403165 10.044046021996856 0.25471015523201046 1;
	setAttr ".radi" 0.89073501174840408;
createNode joint -n "L_Ankle_J" -p "L_Knee_J";
	rename -uid "58E42241-6840-1424-9471-278FBC7B155D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 8.7433878833134102 -5.8286708792820718e-16 -1.3719052369001168e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999999999997 1.5363480137391217e-14 -71.221041466840973 ;
	setAttr ".bps" -type "matrix" 1.010890226816025e-15 -0.39520818300708932 0.91859158067349778 0
		 6.2213123930199821e-16 0.91859158067349767 0.39520818300708943 0 -0.99999999999999989 2.332674089347649e-16 1.2341723152267489e-15 0
		 1.8402045409403176 1.3276110855695151 -0.43128815169055701 1;
	setAttr ".radi" 0.58166958751189557;
createNode joint -n "L_Ball_J" -p "L_Ankle_J";
	rename -uid "D7A6FE3E-2144-1E5C-6022-69B7A8B930BB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 2.5789453585633129 1.1379786002407851e-15 6.915269523937272e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1.010890226816025e-15 -0.39520818300708932 0.91859158067349778 0
		 6.2213123930199821e-16 0.91859158067349767 0.39520818300708943 0 -0.99999999999999989 2.332674089347649e-16 1.2341723152267489e-15 0
		 1.8402045409403196 0.30839077633714296 1.9377093417026976 1;
	setAttr ".radi" 0.58166958751189557;
createNode joint -n "R_Hip_J" -p "Hips_J";
	rename -uid "55AC6008-3247-22F2-71A2-F38ECB9118D3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -1.8402 -0.99549999999999983 0.20670200000000005 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90.000000000000057 7.4999999999999831 89.999999999999986 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 0.99144486137381049 -0.1305261922200513 0
		 8.3266726846886741e-16 -0.13052619222005157 -0.99144486137381049 0 -1 2.2204460492503131e-16 -8.8817841970012523e-16 0
		 -1.8402000000000001 18.0045 -0.79329799999999995 1;
	setAttr ".radi" 0.86357439283171944;
createNode joint -n "R_Knee_J" -p "R_Hip_J";
	rename -uid "F4B1C3F5-6C45-5DDB-763F-038590D6B547";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -8.0291893126223659 1.1606889073645377e-05 -2.886579864025407e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999879258172 4.8995548888961134e-15 -11.999999999999988 ;
	setAttr ".bps" -type "matrix" 4.4071137887337988e-17 0.99691733373312807 0.078459095727845013 0
		 -2.1073425321981767e-08 -0.078459095727844708 0.99691733373312774 0 0.99999999999999978 -1.6534020491707464e-09 2.1008463014808568e-08 0
		 -1.8401999999999989 10.044000000000004 0.25470999999999988 1;
	setAttr ".radi" 0.89073501174840408;
createNode joint -n "R_Ankle_J" -p "R_Knee_J";
	rename -uid "E81F7FFC-2D48-06CF-6FEC-5B9A54CC4C62";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -8.7433430613292167 -3.2196950265905855e-06 -6.6391336872584361e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999918127145 1.1431444280990678e-06 -71.221041466840987 ;
	setAttr ".bps" -type "matrix" 1.9951635193310245e-08 0.39520818300708882 -0.91859158067349755 0
		 2.1073424192190832e-08 -0.91859158067349789 -0.39520818300708871 0 -0.99999999999999967 -1.1472820435554772e-08 -2.6655793827629322e-08 0
		 -1.8401999999999978 1.3276099999999946 -0.43128799999999989 1;
	setAttr ".radi" 0.58166958751189557;
createNode joint -n "R_Ball_J" -p "R_Ankle_J";
	rename -uid "D8EAF76A-0142-0DED-5D54-8AB0179F768F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -2.5789453065086549 -1.4028649690800421e-06 -5.1454205118872665e-08 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.2074182697257329e-06 -9.2408083461079661e-22 2.4089967518581986e-14 ;
	setAttr ".bps" -type "matrix" 1.9951635193310245e-08 0.39520818300708882 -0.91859158067349755 0
		 2.1073424192190832e-08 -0.91859158067349789 -0.39520818300708871 0 -0.99999999999999967 -1.1472820435554772e-08 -2.6655793827629322e-08 0
		 -1.8401999999999983 0.30839099999999942 1.9377099999999996 1;
	setAttr ".radi" 0.58166958751189557;
createNode joint -n "Spine_J_0" -p "Pelvis_J";
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
createNode joint -n "Spine_J_" -p "Spine_J_0";
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
createNode joint -n "Spine_J_2" -p "Spine_J_";
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
createNode joint -n "L_clav_J" -p "Spine_J_2";
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
createNode joint -n "L_shold_J" -p "L_clav_J";
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
createNode joint -n "L_Elbow_J" -p "L_shold_J";
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
createNode joint -n "L_Wrist_J" -p "L_Elbow_J";
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
createNode joint -n "L_Thumb_J_0" -p "L_Wrist_J";
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
createNode joint -n "L_Thumb_J_1" -p "L_Thumb_J_0";
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
createNode joint -n "L_Thumb_J_2" -p "L_Thumb_J_1";
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
createNode joint -n "L_Index_J_0" -p "L_Wrist_J";
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
createNode joint -n "L_Index_J_1" -p "L_Index_J_0";
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
createNode joint -n "L_Index_J_2" -p "L_Index_J_1";
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
createNode joint -n "L_Middle_J_0" -p "L_Wrist_J";
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
createNode joint -n "L_Middle_J_1" -p "L_Middle_J_0";
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
createNode joint -n "L_Middle_J_2" -p "L_Middle_J_1";
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
createNode joint -n "L_Ring_J_0" -p "L_Wrist_J";
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
createNode joint -n "L_Ring_J_1" -p "L_Ring_J_0";
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
createNode joint -n "L_Ring_J_2" -p "L_Ring_J_1";
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
createNode joint -n "L_Pinky_J_0" -p "L_Wrist_J";
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
createNode joint -n "L_Pinky_J_1" -p "L_Pinky_J_0";
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
createNode joint -n "L_Pinky_J_2" -p "L_Pinky_J_1";
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
createNode joint -n "Neck_J_0" -p "Spine_J_2";
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
createNode joint -n "Neck_J_1" -p "Neck_J_0";
	rename -uid "7B0099F7-6047-B26E-DA4F-54B2DAC46059";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 1.3484185782029192 2.2204460492503131e-16 2.9940907047063953e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.3800490660589114e-15 -1.2411477817127579e-14 -12.000000000000002 ;
	setAttr ".bps" -type "matrix" 5.8230575114746678e-16 0.9205048534524406 0.39073112848927372 0
		 -2.3526679491821717e-16 0.39073112848927372 -0.9205048534524406 0 -1 4.4408920985006262e-16 4.4408920985006262e-16 0
		 2.6792516095745519e-15 30.500865240466059 -0.71246769826169376 1;
	setAttr ".radi" 0.54905132932882117;
createNode joint -n "Head_J" -p "Neck_J_1";
	rename -uid "2EFF7A25-144C-B1CF-70B4-4EBC2997D323";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 1.9483257003572128 0 4.2204855952787472e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -67 ;
	setAttr ".bps" -type "matrix" 4.4408920985006271e-16 1.1102230246251565e-16 1.0000000000000002 0
		 4.4408920985006262e-16 1.0000000000000002 -1.1102230246251565e-16 0 -1 4.4408920985006262e-16 4.4408920985006262e-16 0
		 3.3917243104730983e-15 32.294308503750997 0.048803801303534566 1;
	setAttr ".radi" 0.54905132932882117;
createNode joint -n "R_clav_J" -p "Spine_J_2";
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
createNode joint -n "R_shold_J" -p "R_clav_J";
	rename -uid "45FE80B4-9147-5557-5FFA-C9801EC4E46B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -2.2949490000000003 -0.35350000000000037 1.4612999999999965 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.0364993689466167e-13 2.5000000000000013 -30.000000000000036 ;
	setAttr ".bps" -type "matrix" 0.86520113949555355 0.49952411079092923 0.043619387365335889 0
		 0.50000000000000022 -0.86602540378443882 1.3468293466965388e-15 0 0.037775497555895411 0.021809693682666793 -0.99904822158185802 0
		 -2.9384199999999998 28.035599999999999 -1.4613 1;
	setAttr ".radi" 0.70573616322721433;
createNode joint -n "R_Elbow_J" -p "R_shold_J";
	rename -uid "45F09C07-1842-3D73-CAA6-7EBAA03B6BEF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -4.9776125702179561 7.2166510001636652e-05 -4.1124631766642494e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.207418270995149e-06 -7.5000000000000151 -1.9367545243798489e-14 ;
	setAttr ".bps" -type "matrix" 0.86272991566282076 0.49809734904587299 -0.08715574274765861 0
		 0.49999999840939724 -0.86602540470277356 -2.0993232189156145e-08 0 -0.075479097841885209 -0.043577853123709674 -0.99619469809174555 0
		 -7.2450200000000002 25.549100000000003 -1.67842 1;
	setAttr ".radi" 0.69482708697035411;
createNode joint -n "R_Wrist_J" -p "R_Elbow_J";
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
createNode joint -n "R_Thumb_J_0" -p "R_Wrist_J";
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
createNode joint -n "R_Thumb_J_1" -p "R_Thumb_J_0";
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
createNode joint -n "R_Thumb_J_2" -p "R_Thumb_J_1";
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
createNode joint -n "R_Index_J_0" -p "R_Wrist_J";
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
createNode joint -n "R_Index_J_1" -p "R_Index_J_0";
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
createNode joint -n "R_Index_J_2" -p "R_Index_J_1";
	rename -uid "DC86E756-8440-7233-E89D-47ADA612E012";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.47500506143985932 1.6105352109718751e-06 -3.594740466184021e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.0783246591999747e-06 -1.0365496419669336e-21 -8.1168641990016013e-22 ;
	setAttr ".bps" -type "matrix" 0.86272991566282076 0.49809734904587299 -0.08715574274765861 0
		 0.4999999921046851 -0.86602540834279484 -1.0420460141302851e-07 0 -0.075479139606496382 -0.043577780785280247 -0.99619469809174022 0
		 -14.081400000000002 21.581700000000005 -0.60529599999999972 1;
	setAttr ".radi" 0.15;
createNode joint -n "R_Middle_J_0" -p "R_Wrist_J";
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
createNode joint -n "R_Middle_J_1" -p "R_Middle_J_0";
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
createNode joint -n "R_Middle_J_2" -p "R_Middle_J_1";
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
createNode joint -n "R_Ring_J_0" -p "R_Wrist_J";
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
createNode joint -n "R_Ring_J_1" -p "R_Ring_J_0";
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
createNode joint -n "R_Ring_J_2" -p "R_Ring_J_1";
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
createNode joint -n "R_Pinky_J_0" -p "R_Wrist_J";
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
createNode joint -n "R_Pinky_J_1" -p "R_Pinky_J_0";
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
createNode joint -n "R_Pinky_J_2" -p "R_Pinky_J_1";
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
createNode transform -n "Pelvis_J_GRP";
	rename -uid "FC52B56B-DD4E-F012-741D-25B9246AE6FD";
	setAttr ".rp" -type "double3" 0 19 -1 ;
	setAttr ".sp" -type "double3" 0 19 -1 ;
createNode transform -n "Pelvis_J_CTRL" -p "Pelvis_J_GRP";
	rename -uid "9FE5B2A1-994B-6723-6E9D-C28225CE6821";
	setAttr ".rp" -type "double3" 0 19 -1 ;
	setAttr ".sp" -type "double3" 0 19 -1 ;
createNode nurbsCurve -n "Pelvis_J_CTRLShape" -p "Pelvis_J_CTRL";
	rename -uid "29DB47C2-3040-6512-97C0-169803C34D70";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Hips_J_GRP" -p "Pelvis_J_CTRL";
	rename -uid "24E1DB28-8D4E-4C60-255D-E3A8A7B09570";
	setAttr ".rp" -type "double3" 0 19 -1 ;
	setAttr ".sp" -type "double3" 0 19 -1 ;
createNode transform -n "Hips_J_CTRL" -p "Hips_J_GRP";
	rename -uid "340BFB75-354D-8E40-7658-65802DC98CE7";
	setAttr ".rp" -type "double3" 0 19 -1 ;
	setAttr ".sp" -type "double3" 0 19 -1 ;
createNode nurbsCurve -n "Hips_J_CTRLShape" -p "Hips_J_CTRL";
	rename -uid "E2D704EF-AB45-2FFA-9D71-468758A4FEBC";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "L_Hip_J_GRP" -p "Hips_J_CTRL";
	rename -uid "C069D8C7-8440-8E50-9DAF-59A3AAC034D2";
	setAttr ".rp" -type "double3" -17.953976397308544 1.5635421562787093 -1.8402045409403218 ;
	setAttr ".rpt" -type "double3" 19.794180938248857 16.440918688094115 1.04690620297481 ;
	setAttr ".sp" -type "double3" -17.953976397308544 1.5635421562787093 -1.8402045409403218 ;
createNode transform -n "L_Hip_J_CTRL" -p "L_Hip_J_GRP";
	rename -uid "063D94C8-A34B-D802-5659-8F953B478B5E";
	setAttr ".rp" -type "double3" -17.953976397308541 1.5635421562787106 -1.8402045409403236 ;
	setAttr ".sp" -type "double3" -17.953976397308541 1.5635421562787106 -1.8402045409403236 ;
createNode nurbsCurve -n "L_Hip_J_CTRLShape" -p "L_Hip_J_CTRL";
	rename -uid "F62306F3-A649-C136-F427-80A41B578263";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "L_Knee_J_GRP" -p "L_Hip_J_CTRL";
	rename -uid "24D9069E-C94B-0FA5-7950-EFBE1CB9445E";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -10.033067908594138 0.53412179950608307 1.8402045409403223 ;
	setAttr ".rpt" -type "double3" 0.10819643936550646 1.0294203567726277 -3.6804090818806445 ;
	setAttr ".sp" -type "double3" -10.033067908594136 0.53412179950608296 1.8402045409403218 ;
	setAttr ".spt" -type "double3" -1.7763568394002509e-15 1.1102230246251568e-16 4.4408920985006271e-16 ;
createNode transform -n "L_Knee_J_CTRL" -p "L_Knee_J_GRP";
	rename -uid "1DF7F7BD-3D4A-3631-1408-6C995A4653E7";
	setAttr ".rp" -type "double3" -10.033067908594136 0.53412179950608385 1.8402045409403218 ;
	setAttr ".sp" -type "double3" -10.033067908594136 0.53412179950608385 1.8402045409403218 ;
createNode nurbsCurve -n "L_Knee_J_CTRLShape" -p "L_Knee_J_CTRL";
	rename -uid "5F7412BB-9247-48A4-6E7F-3DBFE0E994AA";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "L_Ankle_J_GRP" -p "L_Knee_J_CTRL";
	rename -uid "7FE52CD9-C04E-3900-BCF0-4ABCFDFEEB94";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999967 ;
	setAttr ".rp" -type "double3" -0.92086042985517313 1.0490837588308461 -1.8402045409403198 ;
	setAttr ".rpt" -type "double3" -0.36881959542555237 -0.51496195932476352 3.6804090818806405 ;
	setAttr ".sp" -type "double3" -0.92086042985517313 1.0490837588308464 -1.8402045409403205 ;
	setAttr ".spt" -type "double3" 0 -2.2204460492503128e-16 8.8817841970012494e-16 ;
createNode transform -n "L_Ankle_J_CTRL" -p "L_Ankle_J_GRP";
	rename -uid "A55CBD44-E94B-252D-D623-20B7AD4A9573";
	setAttr ".rp" -type "double3" -0.92086042985517336 1.0490837588308466 -1.8402045409403205 ;
	setAttr ".sp" -type "double3" -0.92086042985517336 1.0490837588308466 -1.8402045409403205 ;
createNode nurbsCurve -n "L_Ankle_J_CTRLShape" -p "L_Ankle_J_CTRL";
	rename -uid "8114B0A6-294E-1968-B347-4CA6602EB5C0";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "L_Ball_J_GRP" -p "L_Ankle_J_CTRL";
	rename -uid "FBFDC1A1-6B45-6F02-7626-0A8217737ACD";
	setAttr ".s" -type "double3" 1.0000000000000004 1 0.99999999999999967 ;
	setAttr ".rp" -type "double3" 1.6580849287081387 1.0490837588308481 -1.84020454094032 ;
	setAttr ".sp" -type "double3" 1.6580849287081381 1.0490837588308481 -1.8402045409403207 ;
	setAttr ".spt" -type "double3" 6.6613381477509422e-16 0 8.8817841970012494e-16 ;
createNode transform -n "L_Ball_J_CTRL" -p "L_Ball_J_GRP";
	rename -uid "284A2405-C64A-DF3F-936D-ACB20B9C3A3F";
	setAttr ".rp" -type "double3" 1.6580849287081381 1.0490837588308484 -1.8402045409403209 ;
	setAttr ".sp" -type "double3" 1.6580849287081381 1.0490837588308484 -1.8402045409403209 ;
createNode nurbsCurve -n "L_Ball_J_CTRLShape" -p "L_Ball_J_CTRL";
	rename -uid "115DBC3B-5243-045F-8C4D-41B9380F7CA9";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "R_Hip_J_GRP" -p "Hips_J_CTRL";
	rename -uid "BB38E4E3-E949-C368-3959-2A8E6590DB16";
	setAttr ".rp" -type "double3" 17.954015173840553 -1.5635476021877937 1.8402000000000027 ;
	setAttr ".rpt" -type "double3" -19.794215173840552 19.5680476021878 -2.6334980000000043 ;
	setAttr ".sp" -type "double3" 17.954015173840553 -1.5635476021877937 1.8402000000000027 ;
createNode transform -n "R_Hip_J_CTRL" -p "R_Hip_J_GRP";
	rename -uid "60C724CC-6B43-1C19-8C6B-858D3E2EF085";
	setAttr ".rp" -type "double3" 17.954015173840549 -1.5635476021877941 1.8402000000000034 ;
	setAttr ".sp" -type "double3" 17.954015173840549 -1.5635476021877941 1.8402000000000034 ;
createNode nurbsCurve -n "R_Hip_J_CTRLShape" -p "R_Hip_J_CTRL";
	rename -uid "AC9130F5-B440-BC3D-05BD-ABAEDD9921C4";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "R_Knee_J_GRP" -p "R_Hip_J_CTRL";
	rename -uid "7E1A43A5-514D-7DF5-435C-5BB20370BFE9";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 10.033022016288372 -0.53411830463599208 -1.8402000112557027 ;
	setAttr ".rpt" -type "double3" -0.10819615507019469 -1.0294176906627275 3.6804000112557032 ;
	setAttr ".sp" -type "double3" 10.033022016288372 -0.53411830463599219 -1.8402000112557029 ;
	setAttr ".spt" -type "double3" 0 1.1102230246251563e-16 4.4408920985006257e-16 ;
createNode transform -n "R_Knee_J_CTRL" -p "R_Knee_J_GRP";
	rename -uid "BCAAE467-484F-80E6-41CD-D6928080BAFD";
	setAttr ".rp" -type "double3" 10.033022016288374 -0.53411830463599197 -1.8402000112557031 ;
	setAttr ".sp" -type "double3" 10.033022016288374 -0.53411830463599197 -1.8402000112557031 ;
createNode nurbsCurve -n "R_Knee_J_CTRLShape" -p "R_Knee_J_CTRL";
	rename -uid "8DE7E0B3-4047-4A19-F5D1-5D926497518F";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "R_Ankle_J_GRP" -p "R_Knee_J_CTRL";
	rename -uid "1AD2AC22-C946-1319-CDD5-4FA35D44CA15";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0.92085982477254902 -1.0490828603644877 1.8401999962648905 ;
	setAttr ".rpt" -type "double3" 0.3688191301866085 0.51496133603346927 -3.6804000075206602 ;
	setAttr ".sp" -type "double3" 0.92085982477254902 -1.0490828603644879 1.8401999962648901 ;
	setAttr ".spt" -type "double3" 0 2.2204460492503128e-16 4.4408920985006271e-16 ;
createNode transform -n "R_Ankle_J_CTRL" -p "R_Ankle_J_GRP";
	rename -uid "F699F847-7F45-395D-5341-FBAFAEBCDD80";
	setAttr ".rp" -type "double3" 0.92085982477254891 -1.0490828603644882 1.8401999962648896 ;
	setAttr ".sp" -type "double3" 0.92085982477254891 -1.0490828603644882 1.8401999962648896 ;
createNode nurbsCurve -n "R_Ankle_J_CTRLShape" -p "R_Ankle_J_CTRL";
	rename -uid "181CB62E-994A-D19F-EF14-4697CD53FE48";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "R_Ball_J_GRP" -p "R_Ankle_J_CTRL";
	rename -uid "8CBA20A6-F043-EE3C-C36F-0885EEE2C64D";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -1.6580854817361064 -1.0490842632294575 1.8401999448106847 ;
	setAttr ".sp" -type "double3" -1.6580854817361068 -1.0490842632294577 1.8401999448106843 ;
	setAttr ".spt" -type "double3" 4.4408920985006252e-16 2.2204460492503128e-16 4.4408920985006271e-16 ;
createNode transform -n "R_Ball_J_CTRL" -p "R_Ball_J_GRP";
	rename -uid "D13CCDDF-1049-58D9-2C91-D694C956DC5F";
	setAttr ".rp" -type "double3" -1.6580854817361068 -1.0490842632294575 1.8401999448106843 ;
	setAttr ".sp" -type "double3" -1.6580854817361068 -1.0490842632294575 1.8401999448106843 ;
createNode nurbsCurve -n "R_Ball_J_CTRLShape" -p "R_Ball_J_CTRL";
	rename -uid "2D4D3A2C-4949-54A9-BD38-08A2D37AE28A";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Spine_J_0_GRP" -p "Pelvis_J_CTRL";
	rename -uid "1189E801-5844-88C0-E566-60948EE71247";
	setAttr ".rp" -type "double3" 19.000000000000004 1.0000000000000009 7.9936057773011287e-15 ;
	setAttr ".rpt" -type "double3" -19.000000000000004 18.000000000000004 -1.0000000000000089 ;
	setAttr ".sp" -type "double3" 19.000000000000004 1.0000000000000009 7.9936057773011287e-15 ;
createNode transform -n "Spine_J_0_CTRL" -p "Spine_J_0_GRP";
	rename -uid "EC741A10-CA4D-5EBF-57EF-6AA71B3B4B52";
	setAttr ".rp" -type "double3" 19.000000000000004 1.0000000000000009 7.9936057773011287e-15 ;
	setAttr ".sp" -type "double3" 19.000000000000004 1.0000000000000009 7.9936057773011287e-15 ;
createNode nurbsCurve -n "Spine_J_0_CTRLShape" -p "Spine_J_0_CTRL";
	rename -uid "6F21CFE5-3A4E-C7D5-9256-1FBDC3A491E5";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Spine_J__GRP" -p "Spine_J_0_CTRL";
	rename -uid "12F3E800-A74A-47CC-3492-1DA71234B3D0";
	setAttr ".rp" -type "double3" 21.000000000000004 1.0000000000000013 7.9936057773011287e-15 ;
	setAttr ".sp" -type "double3" 21.000000000000004 1.0000000000000013 7.9936057773011287e-15 ;
createNode transform -n "Spine_J__CTRL" -p "Spine_J__GRP";
	rename -uid "CD8ABD7B-494A-DDD6-EB46-14A5836993DB";
	setAttr ".rp" -type "double3" 21.000000000000004 1.0000000000000013 7.9936057773011287e-15 ;
	setAttr ".sp" -type "double3" 21.000000000000004 1.0000000000000013 7.9936057773011287e-15 ;
createNode nurbsCurve -n "Spine_J__CTRLShape" -p "Spine_J__CTRL";
	rename -uid "B7B87B49-C143-F9D0-96FC-CEBAD345D24E";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Spine_J_2_GRP" -p "Spine_J__CTRL";
	rename -uid "704A775B-EF46-C114-75FE-26915C4AD8CE";
	setAttr ".rp" -type "double3" -0.99999999999999645 23 7.9936057773011271e-15 ;
	setAttr ".rpt" -type "double3" 24 -22.000000000000007 0 ;
	setAttr ".sp" -type "double3" -0.99999999999999645 23 7.9936057773011271e-15 ;
createNode transform -n "Spine_J_2_CTRL" -p "Spine_J_2_GRP";
	rename -uid "7FFB2B7F-4646-38D3-CD21-7A853FA6028F";
	setAttr ".rp" -type "double3" -1.0000000000000053 23 7.9936057773011271e-15 ;
	setAttr ".sp" -type "double3" -1.0000000000000053 23 7.9936057773011271e-15 ;
createNode nurbsCurve -n "Spine_J_2_CTRLShape" -p "Spine_J_2_CTRL";
	rename -uid "A30AC28F-3A4F-8EA0-DD23-E9BAD89EDCD7";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "L_clav_J_GRP" -p "Spine_J_2_CTRL";
	rename -uid "4CC539F4-824C-0FA6-C71F-0391F0C2C09D";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr ".rp" -type "double3" 0.64347144627002106 27.682113457504254 -4.0673878803900101e-15 ;
	setAttr ".rpt" -type "double3" -0.64347144627002484 0 -0.64347144627001696 ;
	setAttr ".sp" -type "double3" 0.64347144627002106 27.682113457504261 -4.0673878803900109e-15 ;
	setAttr ".spt" -type "double3" 0 -7.1054273576010003e-15 7.8886090522101163e-31 ;
createNode transform -n "L_clav_J_CTRL" -p "L_clav_J_GRP";
	rename -uid "B5EB78B7-5649-A689-1EBE-3690E8238B44";
	setAttr ".rp" -type "double3" 0.64347144627002106 27.682113457504261 -4.0742587509193585e-15 ;
	setAttr ".sp" -type "double3" 0.64347144627002106 27.682113457504261 -4.0742587509193585e-15 ;
createNode nurbsCurve -n "L_clav_J_CTRLShape" -p "L_clav_J_CTRL";
	rename -uid "17AB0B29-9C41-9A39-0630-1A83305DDD63";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "L_shold_J_GRP" -p "L_clav_J_CTRL";
	rename -uid "12C105E4-D847-4EFC-723B-B29F81A56B05";
	setAttr ".rp" -type "double3" -11.398366063554809 25.748711305964292 -1.9603593171593545 ;
	setAttr ".rpt" -type "double3" 14.336788861367854 2.286840308294301 0.49905557234797365 ;
	setAttr ".sp" -type "double3" -11.398366063554809 25.748711305964292 -1.9603593171593545 ;
createNode transform -n "L_shold_J_CTRL" -p "L_shold_J_GRP";
	rename -uid "F76DF9BB-A249-442C-D405-21B5EDE5DBC9";
	setAttr ".rp" -type "double3" -11.398366063554807 25.748711305964292 -1.9603593171593547 ;
	setAttr ".sp" -type "double3" -11.398366063554807 25.748711305964292 -1.9603593171593547 ;
createNode nurbsCurve -n "L_shold_J_CTRLShape" -p "L_shold_J_CTRL";
	rename -uid "9A27A577-D945-40E6-0D9F-AB992C99BDC2";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "L_Elbow_J_GRP" -p "L_shold_J_CTRL";
	rename -uid "094FC2A3-2844-CDFA-3161-6B9612E14D93";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -6.6217476420596926 25.748711305964296 -1.105505564959451 ;
	setAttr ".rpt" -type "double3" 0.200947400897699 0 -0.85485375219990478 ;
	setAttr ".sp" -type "double3" -6.6217476420596908 25.748711305964289 -1.1055055649594507 ;
	setAttr ".spt" -type "double3" -1.7763568394002509e-15 7.1054273576010034e-15 -2.2204460492503136e-16 ;
createNode transform -n "L_Elbow_J_CTRL" -p "L_Elbow_J_GRP";
	rename -uid "747E6095-6E4D-7E17-B1D5-0EBB0B44A93C";
	setAttr ".rp" -type "double3" -6.6217476420596908 25.748711305964289 -1.1055055649594505 ;
	setAttr ".sp" -type "double3" -6.6217476420596908 25.748711305964289 -1.1055055649594505 ;
createNode nurbsCurve -n "L_Elbow_J_CTRLShape" -p "L_Elbow_J_CTRL";
	rename -uid "A63DC850-3844-BF19-4E3F-AC849635E960";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "L_Wrist_J_GRP" -p "L_Elbow_J_CTRL";
	rename -uid "4F9364EA-3149-81F5-C526-3D9CFBDADCE1";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".rp" -type "double3" -1.7516802887697522 25.748711305964292 -1.2629805840100317 ;
	setAttr ".rpt" -type "double3" -0.10341033852975803 0 0.15747501905058184 ;
	setAttr ".sp" -type "double3" -1.7516802887697522 25.748711305964296 -1.2629805840100317 ;
	setAttr ".spt" -type "double3" 0 -7.1054273576010011e-15 0 ;
createNode transform -n "L_Wrist_J_CTRL" -p "L_Wrist_J_GRP";
	rename -uid "9C79ED15-D844-75D9-B238-4F875553510C";
	setAttr ".rp" -type "double3" -1.7516802887697525 25.748711305964299 -1.2629805840100317 ;
	setAttr ".sp" -type "double3" -1.7516802887697525 25.748711305964299 -1.2629805840100317 ;
createNode nurbsCurve -n "L_Wrist_J_CTRLShape" -p "L_Wrist_J_CTRL";
	rename -uid "25F071AD-FD45-0E19-DA92-AE8B2AF53E2F";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "L_Thumb_J_0_GRP" -p "L_Wrist_J_CTRL";
	rename -uid "8CEE2EDC-4D47-F388-796B-39B043FB6F7F";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
	setAttr ".rp" -type "double3" -2.8982024604203636 20.7529519752987 -14.838770566818072 ;
	setAttr ".rpt" -type "double3" 1.6840247542845765 4.8862970701506203 14.184258528230508 ;
	setAttr ".sp" -type "double3" -2.8982024604203636 20.752951975298704 -14.838770566818075 ;
	setAttr ".spt" -type "double3" 0 -3.5527136788005005e-15 3.5527136788005001e-15 ;
createNode transform -n "L_Thumb_J_0_CTRL" -p "L_Thumb_J_0_GRP";
	rename -uid "5F731D08-8C43-5CCB-41FA-CB90A7B68A08";
	setAttr ".rp" -type "double3" -2.8982024604203613 20.752951975298711 -14.838770566818077 ;
	setAttr ".sp" -type "double3" -2.8982024604203613 20.752951975298711 -14.838770566818077 ;
createNode nurbsCurve -n "L_Thumb_J_0_CTRLShape" -p "L_Thumb_J_0_CTRL";
	rename -uid "8A5A3019-BD4E-0D41-BCB8-B592461BED32";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "L_Thumb_J_1_GRP" -p "L_Thumb_J_0_CTRL";
	rename -uid "5A931186-DD46-19E8-777E-65A0164C0340";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999978 ;
	setAttr ".rp" -type "double3" -2.1342722305874284 20.752951975298721 -14.83877056681807 ;
	setAttr ".sp" -type "double3" -2.1342722305874289 20.752951975298728 -14.838770566818074 ;
	setAttr ".spt" -type "double3" 4.4408920985006252e-16 -1.0658141036401501e-14 3.5527136788005001e-15 ;
createNode transform -n "L_Thumb_J_1_CTRL" -p "L_Thumb_J_1_GRP";
	rename -uid "A6159C2E-004C-BF4F-934A-6F87537E8BF3";
	setAttr ".rp" -type "double3" -2.1342722305874289 20.752951975298732 -14.838770566818074 ;
	setAttr ".sp" -type "double3" -2.1342722305874289 20.752951975298732 -14.838770566818074 ;
createNode nurbsCurve -n "L_Thumb_J_1_CTRLShape" -p "L_Thumb_J_1_CTRL";
	rename -uid "0E87C0A7-4546-BBA3-0853-E7A72B067991";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "L_Thumb_J_2_GRP" -p "L_Thumb_J_1_CTRL";
	rename -uid "2ACA98A2-1741-064F-C943-F88BD2C5785C";
	setAttr ".rp" -type "double3" -1.6592258482321378 20.752951975298728 -14.838770566818084 ;
	setAttr ".sp" -type "double3" -1.6592258482321378 20.752951975298728 -14.838770566818084 ;
createNode transform -n "L_Thumb_J_2_CTRL" -p "L_Thumb_J_2_GRP";
	rename -uid "E132A20E-0148-40C9-4C49-868870169330";
	setAttr ".rp" -type "double3" -1.6592258482321378 20.752951975298728 -14.838770566818084 ;
	setAttr ".sp" -type "double3" -1.6592258482321378 20.752951975298728 -14.838770566818084 ;
createNode nurbsCurve -n "L_Thumb_J_2_CTRLShape" -p "L_Thumb_J_2_CTRL";
	rename -uid "82ACE13D-B54B-CA87-DF55-B2A7F331ACB3";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "L_Index_J_0_GRP" -p "L_Wrist_J_CTRL";
	rename -uid "2890A2F9-A449-7831-FA76-1C8027005DC9";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
	setAttr ".rp" -type "double3" 0.10696665539087014 25.731003631271061 -0.72536307142168832 ;
	setAttr ".rpt" -type "double3" 0.062812516833601353 0 0.012082983779682421 ;
	setAttr ".sp" -type "double3" 0.10696665539087014 25.731003631271065 -0.72536307142168843 ;
	setAttr ".spt" -type "double3" 0 -7.1054273576010011e-15 1.1102230246251563e-16 ;
createNode transform -n "L_Index_J_0_CTRL" -p "L_Index_J_0_GRP";
	rename -uid "313C193A-204F-3BF6-F840-AFBC01CBC562";
	setAttr ".rp" -type "double3" 0.10696665539087014 25.731003631271069 -0.72536307142168854 ;
	setAttr ".sp" -type "double3" 0.10696665539087014 25.731003631271069 -0.72536307142168854 ;
createNode nurbsCurve -n "L_Index_J_0_CTRLShape" -p "L_Index_J_0_CTRL";
	rename -uid "F40B5C7E-4547-9531-112A-E8BCCB1BF877";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "L_Index_J_1_GRP" -p "L_Index_J_0_CTRL";
	rename -uid "FB9AB5E8-B447-B9B5-2B99-3CB1583C30AC";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999978 ;
	setAttr ".rp" -type "double3" 0.87089688522380138 25.731003631271086 -0.72536307142168843 ;
	setAttr ".sp" -type "double3" 0.8708968852238016 25.731003631271093 -0.72536307142168854 ;
	setAttr ".spt" -type "double3" -2.2204460492503126e-16 -1.0658141036401501e-14 1.1102230246251563e-16 ;
createNode transform -n "L_Index_J_1_CTRL" -p "L_Index_J_1_GRP";
	rename -uid "065C771C-C54D-E776-93F8-A4A5657A059D";
	setAttr ".rp" -type "double3" 0.8708968852238016 25.731003631271097 -0.72536307142168854 ;
	setAttr ".sp" -type "double3" 0.8708968852238016 25.731003631271097 -0.72536307142168854 ;
createNode nurbsCurve -n "L_Index_J_1_CTRLShape" -p "L_Index_J_1_CTRL";
	rename -uid "5C0CDC1F-8F4A-E53A-EFA4-CAAE23F9C752";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "L_Index_J_2_GRP" -p "L_Index_J_1_CTRL";
	rename -uid "B48DB0C3-2041-7D8B-3E5E-5689BA057E7A";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 1.3459432675790965 25.731003631271093 -0.72536307142168899 ;
	setAttr ".sp" -type "double3" 1.3459432675790959 25.731003631271083 -0.72536307142168888 ;
	setAttr ".spt" -type "double3" 6.6613381477509422e-16 1.0658141036401508e-14 -1.1102230246251568e-16 ;
createNode transform -n "L_Index_J_2_CTRL" -p "L_Index_J_2_GRP";
	rename -uid "59044AFB-2F4A-804A-5D7A-9D8EF24B0EFF";
	setAttr ".rp" -type "double3" 1.3459432675790959 25.731003631271083 -0.72536307142168888 ;
	setAttr ".sp" -type "double3" 1.3459432675790959 25.731003631271083 -0.72536307142168888 ;
createNode nurbsCurve -n "L_Index_J_2_CTRLShape" -p "L_Index_J_2_CTRL";
	rename -uid "2D3735E5-7547-6819-3B3B-9E9B14C6C9A1";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "L_Middle_J_0_GRP" -p "L_Wrist_J_CTRL";
	rename -uid "5A2049F4-4041-B789-4375-7F8582A3DDEF";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
	setAttr ".rp" -type "double3" 0.1719300023714336 25.780650676675322 -1.1517399549484295 ;
	setAttr ".sp" -type "double3" 0.1719300023714336 25.780650676675325 -1.1517399549484297 ;
	setAttr ".spt" -type "double3" 0 -7.1054273576010011e-15 2.2204460492503126e-16 ;
createNode transform -n "L_Middle_J_0_CTRL" -p "L_Middle_J_0_GRP";
	rename -uid "1A17E916-2649-4415-6054-5CA7366B9E42";
	setAttr ".rp" -type "double3" 0.1719300023714336 25.780650676675329 -1.1517399549484297 ;
	setAttr ".sp" -type "double3" 0.1719300023714336 25.780650676675329 -1.1517399549484297 ;
createNode nurbsCurve -n "L_Middle_J_0_CTRLShape" -p "L_Middle_J_0_CTRL";
	rename -uid "00A0BD4E-4B45-004A-B087-D3BED1326F19";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "L_Middle_J_1_GRP" -p "L_Middle_J_0_CTRL";
	rename -uid "EEDF328B-C54A-813E-3F78-CFA8142FD4F5";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".rp" -type "double3" 1.0713048428521708 25.780650676675336 -1.1517399549484295 ;
	setAttr ".sp" -type "double3" 1.0713048428521708 25.780650676675339 -1.1517399549484295 ;
	setAttr ".spt" -type "double3" 0 -7.1054273576010011e-15 0 ;
createNode transform -n "L_Middle_J_1_CTRL" -p "L_Middle_J_1_GRP";
	rename -uid "EB1111A5-204A-DAB7-FA07-F2BEE50742CA";
	setAttr ".rp" -type "double3" 1.0713048428521708 25.780650676675343 -1.1517399549484295 ;
	setAttr ".sp" -type "double3" 1.0713048428521708 25.780650676675343 -1.1517399549484295 ;
createNode nurbsCurve -n "L_Middle_J_1_CTRLShape" -p "L_Middle_J_1_CTRL";
	rename -uid "61D38B69-1546-CC05-AEE4-6380C0287F2D";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "L_Middle_J_2_GRP" -p "L_Middle_J_1_CTRL";
	rename -uid "1434305A-9241-F849-67B7-90A91E880EE8";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".rp" -type "double3" 1.5463512252074656 25.780650676675336 -1.1517399549484297 ;
	setAttr ".sp" -type "double3" 1.5463512252074656 25.780650676675339 -1.1517399549484297 ;
	setAttr ".spt" -type "double3" 0 -7.1054273576010011e-15 0 ;
createNode transform -n "L_Middle_J_2_CTRL" -p "L_Middle_J_2_GRP";
	rename -uid "D5F8EB4F-CF44-B8F0-A9FA-3AAE2126954F";
	setAttr ".rp" -type "double3" 1.5463512252074656 25.780650676675343 -1.1517399549484297 ;
	setAttr ".sp" -type "double3" 1.5463512252074656 25.780650676675343 -1.1517399549484297 ;
createNode nurbsCurve -n "L_Middle_J_2_CTRLShape" -p "L_Middle_J_2_CTRL";
	rename -uid "9A7A631F-9743-E585-E097-DF9AECD09072";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "L_Ring_J_0_GRP" -p "L_Wrist_J_CTRL";
	rename -uid "6F05C9C2-0D48-B3F7-972C-8A91DCE6A70C";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
	setAttr ".rp" -type "double3" 0.22918002939037077 25.731003631271058 -1.5885800199938691 ;
	setAttr ".rpt" -type "double3" -0.13932597075982828 0 -0.013929329102950179 ;
	setAttr ".sp" -type "double3" 0.22918002939037077 25.731003631271061 -1.5885800199938696 ;
	setAttr ".spt" -type "double3" 0 -7.1054273576010011e-15 4.4408920985006252e-16 ;
createNode transform -n "L_Ring_J_0_CTRL" -p "L_Ring_J_0_GRP";
	rename -uid "777838DA-B642-2C8D-3C08-2D960AF03802";
	setAttr ".rp" -type "double3" 0.22918002939037077 25.731003631271065 -1.5885800199938698 ;
	setAttr ".sp" -type "double3" 0.22918002939037077 25.731003631271065 -1.5885800199938698 ;
createNode nurbsCurve -n "L_Ring_J_0_CTRLShape" -p "L_Ring_J_0_CTRL";
	rename -uid "77B3F314-A74C-A879-7A14-06B5AEFB2B0F";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "L_Ring_J_1_GRP" -p "L_Ring_J_0_CTRL";
	rename -uid "EB104F28-3B46-C8D9-12FA-DBBCB0B2AABB";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999978 ;
	setAttr ".rp" -type "double3" 0.99597241482589305 25.731003631271083 -1.5885800199938691 ;
	setAttr ".sp" -type "double3" 0.99597241482589327 25.73100363127109 -1.5885800199938696 ;
	setAttr ".spt" -type "double3" -2.2204460492503126e-16 -1.0658141036401501e-14 4.4408920985006252e-16 ;
createNode transform -n "L_Ring_J_1_CTRL" -p "L_Ring_J_1_GRP";
	rename -uid "6F6383F2-414F-974A-7E03-9ABAAC582325";
	setAttr ".rp" -type "double3" 0.99597241482589327 25.731003631271093 -1.5885800199938696 ;
	setAttr ".sp" -type "double3" 0.99597241482589327 25.731003631271093 -1.5885800199938696 ;
createNode nurbsCurve -n "L_Ring_J_1_CTRLShape" -p "L_Ring_J_1_CTRL";
	rename -uid "3575E540-C448-0E73-75EC-B6B3CE57E3D6";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "L_Ring_J_2_GRP" -p "L_Ring_J_1_CTRL";
	rename -uid "4A112A1C-E849-F655-3692-F6AA4D97EC9E";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 1.4710187971811881 25.731003631271093 -1.5885800199938702 ;
	setAttr ".sp" -type "double3" 1.4710187971811874 25.731003631271086 -1.5885800199938698 ;
	setAttr ".spt" -type "double3" 6.6613381477509422e-16 7.1054273576010034e-15 -4.4408920985006271e-16 ;
createNode transform -n "L_Ring_J_2_CTRL" -p "L_Ring_J_2_GRP";
	rename -uid "7EE71360-0E48-6F9D-E3B3-A7BDA96821C3";
	setAttr ".rp" -type "double3" 1.4710187971811874 25.731003631271086 -1.5885800199938698 ;
	setAttr ".sp" -type "double3" 1.4710187971811874 25.731003631271086 -1.5885800199938698 ;
createNode nurbsCurve -n "L_Ring_J_2_CTRLShape" -p "L_Ring_J_2_CTRL";
	rename -uid "E6F37BE9-DD44-5EA3-E59B-3F821D828231";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "L_Pinky_J_0_GRP" -p "L_Wrist_J_CTRL";
	rename -uid "58A0C002-0B4F-9594-8310-17B0034A67E9";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
	setAttr ".rp" -type "double3" 0.42481760101596289 25.539256671094062 -1.8752151002691917 ;
	setAttr ".rpt" -type "double3" -0.49981669034597898 0 -0.046054480765760533 ;
	setAttr ".sp" -type "double3" 0.42481760101596289 25.539256671094066 -1.8752151002691921 ;
	setAttr ".spt" -type "double3" 0 -7.1054273576010011e-15 4.4408920985006252e-16 ;
createNode transform -n "L_Pinky_J_0_CTRL" -p "L_Pinky_J_0_GRP";
	rename -uid "B36B116E-DE49-CCAF-B83F-088A12BA81DD";
	setAttr ".rp" -type "double3" 0.42481760101596289 25.539256671094069 -1.8752151002691921 ;
	setAttr ".sp" -type "double3" 0.42481760101596289 25.539256671094069 -1.8752151002691921 ;
createNode nurbsCurve -n "L_Pinky_J_0_CTRLShape" -p "L_Pinky_J_0_CTRL";
	rename -uid "32962CC7-2242-17CE-77A4-3898F5899B91";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "L_Pinky_J_1_GRP" -p "L_Pinky_J_0_CTRL";
	rename -uid "9E0B7248-2742-80DB-D0EB-2685AE63AB5F";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".rp" -type "double3" 1.0827376792644627 25.539256671094083 -1.8752151002691919 ;
	setAttr ".sp" -type "double3" 1.0827376792644627 25.539256671094087 -1.8752151002691919 ;
	setAttr ".spt" -type "double3" 0 -7.1054273576010011e-15 0 ;
createNode transform -n "L_Pinky_J_1_CTRL" -p "L_Pinky_J_1_GRP";
	rename -uid "C713F6D0-EB45-7E52-12BB-AC9A787C7B66";
	setAttr ".rp" -type "double3" 1.0827376792644627 25.53925667109409 -1.8752151002691919 ;
	setAttr ".sp" -type "double3" 1.0827376792644627 25.53925667109409 -1.8752151002691919 ;
createNode nurbsCurve -n "L_Pinky_J_1_CTRLShape" -p "L_Pinky_J_1_CTRL";
	rename -uid "8C1584D8-AB42-FA3C-0A13-A8BF6D2FA1A5";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "L_Pinky_J_2_GRP" -p "L_Pinky_J_1_CTRL";
	rename -uid "9B18BE33-054C-28D2-F445-A1BA72E8D221";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".rp" -type "double3" 1.4587923343884459 25.539256671094087 -1.875215100269191 ;
	setAttr ".sp" -type "double3" 1.4587923343884457 25.53925667109408 -1.875215100269191 ;
	setAttr ".spt" -type "double3" 2.2204460492503136e-16 7.1054273576010034e-15 0 ;
createNode transform -n "L_Pinky_J_2_CTRL" -p "L_Pinky_J_2_GRP";
	rename -uid "F29CCDD6-B14C-EDC5-3FB5-B1816183B013";
	setAttr ".rp" -type "double3" 1.4587923343884457 25.53925667109408 -1.875215100269191 ;
	setAttr ".sp" -type "double3" 1.4587923343884457 25.53925667109408 -1.875215100269191 ;
createNode nurbsCurve -n "L_Pinky_J_2_CTRLShape" -p "L_Pinky_J_2_CTRL";
	rename -uid "1BD8573C-D94D-9CF1-357F-CCB729937C75";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Neck_J_0_GRP" -p "Spine_J_2_CTRL";
	rename -uid "CD0390DB-7947-1881-6975-C59D20779B99";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr ".rp" -type "double3" 28.456114614768978 6.5192171145907736 1.0250045247171893e-14 ;
	setAttr ".rpt" -type "double3" -29.425872707284643 22.658003794845449 0 ;
	setAttr ".sp" -type "double3" 28.456114614768978 6.5192171145907754 1.0250045247171894e-14 ;
	setAttr ".spt" -type "double3" 0 -1.7763568394002501e-15 -1.5777218104420233e-30 ;
createNode transform -n "Neck_J_0_CTRL" -p "Neck_J_0_GRP";
	rename -uid "FC08EC19-504B-2A65-3944-6593016E6982";
	setAttr ".rp" -type "double3" 28.456114614768975 6.5192171145907745 1.0250045247171894e-14 ;
	setAttr ".sp" -type "double3" 28.456114614768975 6.5192171145907745 1.0250045247171894e-14 ;
createNode nurbsCurve -n "Neck_J_0_CTRLShape" -p "Neck_J_0_CTRL";
	rename -uid "8E264248-454C-35D9-B006-DEAE351808B1";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Neck_J_1_GRP" -p "Neck_J_0_CTRL";
	rename -uid "D1313E86-C34B-6B71-7783-7E95CEDD8C8F";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 27.797811180593879 12.573467469484546 1.0549454317642529e-14 ;
	setAttr ".rpt" -type "double3" 2.0067220123780083 -6.0542503548937727 0 ;
	setAttr ".sp" -type "double3" 27.797811180593868 12.573467469484546 1.0549454317642527e-14 ;
	setAttr ".spt" -type "double3" 1.0658141036401508e-14 0 1.5777218104420243e-30 ;
createNode transform -n "Neck_J_1_CTRL" -p "Neck_J_1_GRP";
	rename -uid "662668CC-DE46-A6AB-2DCF-B39D5360191C";
	setAttr ".rp" -type "double3" 27.797811180593865 12.573467469484545 1.0549454317642527e-14 ;
	setAttr ".sp" -type "double3" 27.797811180593865 12.573467469484545 1.0549454317642527e-14 ;
createNode nurbsCurve -n "Neck_J_1_CTRLShape" -p "Neck_J_1_CTRL";
	rename -uid "1DB05DB2-AE45-DC88-80C4-2591B5C01EDF";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Head_J_GRP" -p "Neck_J_1_CTRL";
	rename -uid "796AE7A3-D04F-3D92-5FD8-22B73A79568E";
	setAttr ".s" -type "double3" 1 0.99999999999999933 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 0.048803801303526115 32.294308503750976 1.0971502877170405e-14 ;
	setAttr ".rpt" -type "double3" 29.697333079647557 -19.720841034266435 0 ;
	setAttr ".sp" -type "double3" 0.048803801303526115 32.294308503750997 1.0971502877170407e-14 ;
	setAttr ".spt" -type "double3" 0 -2.1316282072802993e-14 -3.1554436208840469e-30 ;
createNode transform -n "Head_J_CTRL" -p "Head_J_GRP";
	rename -uid "B5268793-0C46-40CA-55A4-3F8162B4D4BC";
	setAttr ".rp" -type "double3" 0.048803801303524234 32.294308503751004 1.0971502877170408e-14 ;
	setAttr ".sp" -type "double3" 0.048803801303524234 32.294308503751004 1.0971502877170408e-14 ;
createNode nurbsCurve -n "Head_J_CTRLShape" -p "Head_J_CTRL";
	rename -uid "47B2D506-D940-7BA1-D3EC-2F9151A1992E";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "R_clav_J_GRP" -p "Spine_J_2_CTRL";
	rename -uid "FB698B0E-F94D-7438-D755-7FA57F5F5214";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr ".rp" -type "double3" -0.64347100000001234 -27.682099999999991 -2.4044486034306558e-14 ;
	setAttr ".rpt" -type "double3" 0.64347100000000779 55.364199999999983 0.64347100000003632 ;
	setAttr ".sp" -type "double3" -0.64347100000001234 -27.6821 -2.4044486034306565e-14 ;
	setAttr ".spt" -type "double3" 0 7.1054273576010003e-15 6.3108872417680937e-30 ;
createNode transform -n "R_clav_J_CTRL" -p "R_clav_J_GRP";
	rename -uid "685A5828-1848-1D40-0432-6CB2C93ECE2F";
	setAttr ".rp" -type "double3" -0.64347100000001245 -27.6821 -2.4021206433837013e-14 ;
	setAttr ".sp" -type "double3" -0.64347100000001245 -27.6821 -2.4021206433837013e-14 ;
createNode nurbsCurve -n "R_clav_J_CTRLShape" -p "R_clav_J_CTRL";
	rename -uid "678C93C8-664B-36B7-E442-2D8BCB709E60";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "R_shold_J_GRP" -p "R_clav_J_CTRL";
	rename -uid "A3F8A28A-F648-DCC2-BD8D-08ADD58461D1";
	setAttr ".rp" -type "double3" 11.398392817416683 -25.748751810339009 1.9603567368791563 ;
	setAttr ".rpt" -type "double3" -14.336812817416693 -2.2868481896609887 -0.4990567368791835 ;
	setAttr ".sp" -type "double3" 11.398392817416683 -25.748751810339009 1.9603567368791563 ;
createNode transform -n "R_shold_J_CTRL" -p "R_shold_J_GRP";
	rename -uid "BBA81722-1745-31D6-4932-14899F26E847";
	setAttr ".rp" -type "double3" 11.398392817416683 -25.748751810339016 1.9603567368791563 ;
	setAttr ".sp" -type "double3" 11.398392817416683 -25.748751810339016 1.9603567368791563 ;
createNode nurbsCurve -n "R_shold_J_CTRLShape" -p "R_shold_J_CTRL";
	rename -uid "686A4079-2246-338D-D23B-DF8338A57C49";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "R_Elbow_J_GRP" -p "R_shold_J_CTRL";
	rename -uid "210423C3-1740-B153-DC09-199B68405FCF";
	setAttr ".rp" -type "double3" 6.6217274286749861 -25.748679620532226 1.1055057513745992 ;
	setAttr ".rpt" -type "double3" -0.20094718147626156 -2.3296788968762039e-08 0.85485057425823896 ;
	setAttr ".sp" -type "double3" 6.6217274286749861 -25.748679620532226 1.1055057513745992 ;
createNode transform -n "R_Elbow_J_CTRL" -p "R_Elbow_J_GRP";
	rename -uid "7CECBDD6-9F40-FB4F-31CE-CB8E752F3692";
	setAttr ".rp" -type "double3" 6.621727428674987 -25.748679620532222 1.1055057513745994 ;
	setAttr ".sp" -type "double3" 6.621727428674987 -25.748679620532222 1.1055057513745994 ;
createNode nurbsCurve -n "R_Elbow_J_CTRLShape" -p "R_Elbow_J_CTRL";
	rename -uid "241E874B-9741-4BA9-2449-A2A0703FEF37";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "R_Wrist_J_GRP" -p "R_Elbow_J_CTRL";
	rename -uid "6B121E42-5045-4579-3EA8-D3913E0454FD";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
	setAttr ".rp" -type "double3" 1.7516530317666668 -25.748752106867151 1.2629805405495396 ;
	setAttr ".rpt" -type "double3" 0.10341043846305244 0 -0.15747264328085236 ;
	setAttr ".sp" -type "double3" 1.7516530317666672 -25.748752106867158 1.2629805405495398 ;
	setAttr ".spt" -type "double3" -4.4408920985006252e-16 7.1054273576010003e-15 -2.2204460492503126e-16 ;
createNode transform -n "R_Wrist_J_CTRL" -p "R_Wrist_J_GRP";
	rename -uid "D4D15732-DE42-A4F0-D150-848A52AA8C2B";
	setAttr ".rp" -type "double3" 1.751653031766667 -25.748752106867158 1.26298054054954 ;
	setAttr ".sp" -type "double3" 1.751653031766667 -25.748752106867158 1.26298054054954 ;
createNode nurbsCurve -n "R_Wrist_J_CTRLShape" -p "R_Wrist_J_CTRL";
	rename -uid "C4BE515B-3C43-D934-541D-D29E7577C6C1";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "R_Thumb_J_0_GRP" -p "R_Wrist_J_CTRL";
	rename -uid "9D8F7411-0241-178C-A061-E5A2A21C374B";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 2.8981994651922602 -20.75292441201109 14.838751277228752 ;
	setAttr ".rpt" -type "double3" -1.6840230665586873 -4.8862908698265972 -14.184238738978745 ;
	setAttr ".sp" -type "double3" 2.8981994651922598 -20.752924412011087 14.838751277228749 ;
	setAttr ".spt" -type "double3" 4.4408920985006271e-16 -3.5527136788005017e-15 3.5527136788005017e-15 ;
createNode transform -n "R_Thumb_J_0_CTRL" -p "R_Thumb_J_0_GRP";
	rename -uid "15EAB6C0-EA43-90C6-DDC1-EF8E118851D5";
	setAttr ".rp" -type "double3" 2.8981994651922625 -20.752924412011087 14.838751277228749 ;
	setAttr ".sp" -type "double3" 2.8981994651922625 -20.752924412011087 14.838751277228749 ;
createNode nurbsCurve -n "R_Thumb_J_0_CTRLShape" -p "R_Thumb_J_0_CTRL";
	rename -uid "AD3E84BC-9D40-96A9-8520-56B57B8FAF1B";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "R_Thumb_J_1_GRP" -p "R_Thumb_J_0_CTRL";
	rename -uid "E87EC1B3-3A47-D2BB-7335-B9A1E432F837";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 2.1342775312471765 -20.752955460460285 14.838767654087379 ;
	setAttr ".rpt" -type "double3" 0 -3.127036405391377e-07 -4.3733583813877154e-07 ;
	setAttr ".sp" -type "double3" 2.134277531247176 -20.752955460460285 14.838767654087381 ;
	setAttr ".spt" -type "double3" 4.4408920985006271e-16 0 -3.5527136788005005e-15 ;
createNode transform -n "R_Thumb_J_1_CTRL" -p "R_Thumb_J_1_GRP";
	rename -uid "EF4E28C1-634A-828A-1044-49B843737317";
	setAttr ".rp" -type "double3" 2.134277531247176 -20.752955460460285 14.838767654087382 ;
	setAttr ".sp" -type "double3" 2.134277531247176 -20.752955460460285 14.838767654087382 ;
createNode nurbsCurve -n "R_Thumb_J_1_CTRLShape" -p "R_Thumb_J_1_CTRL";
	rename -uid "919AD214-2B4E-C957-7911-4FA57694833E";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "R_Thumb_J_2_GRP" -p "R_Thumb_J_1_CTRL";
	rename -uid "B8228E47-9047-081E-4EB7-BF9E8FB9F5BC";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".rp" -type "double3" 1.6591952383396105 -20.752930562555999 14.838793740521163 ;
	setAttr ".rpt" -type "double3" 0 -4.4223050712536278e-07 -6.1848553375546956e-07 ;
	setAttr ".sp" -type "double3" 1.65919523833961 -20.752930562555999 14.838793740521163 ;
	setAttr ".spt" -type "double3" 4.4408920985006271e-16 0 0 ;
createNode transform -n "R_Thumb_J_2_CTRL" -p "R_Thumb_J_2_GRP";
	rename -uid "90C835FB-C54A-5936-203F-0AB622562A37";
	setAttr ".rp" -type "double3" 1.65919523833961 -20.752930562555996 14.838793740521162 ;
	setAttr ".sp" -type "double3" 1.65919523833961 -20.752930562555996 14.838793740521162 ;
createNode nurbsCurve -n "R_Thumb_J_2_CTRLShape" -p "R_Thumb_J_2_CTRL";
	rename -uid "BA6281B6-424D-474E-0E56-2FB3B464F2FF";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "R_Index_J_0_GRP" -p "R_Wrist_J_CTRL";
	rename -uid "25432CC9-A34A-EFE2-430C-DB905E87A049";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -0.10694314737588113 -25.730974718244166 0.7253614689998128 ;
	setAttr ".rpt" -type "double3" -0.062812466628426836 0 -0.012080928823476417 ;
	setAttr ".sp" -type "double3" -0.10694314737588111 -25.730974718244159 0.72536146899981269 ;
	setAttr ".spt" -type "double3" -2.775557561562892e-17 -7.1054273576010034e-15 1.1102230246251568e-16 ;
createNode transform -n "R_Index_J_0_CTRL" -p "R_Index_J_0_GRP";
	rename -uid "34B3022A-FC45-E325-1192-66B89B958E30";
	setAttr ".rp" -type "double3" -0.10694314737588109 -25.730974718244159 0.7253614689998128 ;
	setAttr ".sp" -type "double3" -0.10694314737588109 -25.730974718244159 0.7253614689998128 ;
createNode nurbsCurve -n "R_Index_J_0_CTRLShape" -p "R_Index_J_0_CTRL";
	rename -uid "ECE831E6-2545-5C4D-EB80-AFB7B504D62D";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "R_Index_J_1_GRP" -p "R_Index_J_0_CTRL";
	rename -uid "4D6CEE44-EC4C-0FCF-E66F-91A87D75F1BA";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
	setAttr ".rp" -type "double3" -0.87089739260908694 -25.731002030486607 0.7253642431509425 ;
	setAttr ".rpt" -type "double3" 0 -2.161752682731131e-08 -7.6684361813882536e-07 ;
	setAttr ".sp" -type "double3" -0.87089739260908705 -25.731002030486611 0.72536424315094261 ;
	setAttr ".spt" -type "double3" 2.2204460492503128e-16 7.1054273576010011e-15 -1.1102230246251563e-16 ;
createNode transform -n "R_Index_J_1_CTRL" -p "R_Index_J_1_GRP";
	rename -uid "49C90230-E048-E9B2-2EAE-48AE5B8C691C";
	setAttr ".rp" -type "double3" -0.87089739260908716 -25.731002030486614 0.72536424315094261 ;
	setAttr ".sp" -type "double3" -0.87089739260908716 -25.731002030486614 0.72536424315094261 ;
createNode nurbsCurve -n "R_Index_J_1_CTRLShape" -p "R_Index_J_1_CTRL";
	rename -uid "E4EB1F33-3A41-0614-BC7E-C0983A52E5C4";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "R_Index_J_2_GRP" -p "R_Index_J_1_CTRL";
	rename -uid "8FA413BC-0F4E-8705-300B-F491CE505102";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".rp" -type "double3" -1.3459024540489428 -25.731000380979985 0.72536203085738082 ;
	setAttr ".rpt" -type "double3" 0 -3.8971415091061179e-08 -1.3824469047140534e-06 ;
	setAttr ".sp" -type "double3" -1.3459024540489426 -25.731000380979985 0.72536203085738082 ;
	setAttr ".spt" -type "double3" -2.2204460492503136e-16 0 0 ;
createNode transform -n "R_Index_J_2_CTRL" -p "R_Index_J_2_GRP";
	rename -uid "0B33185A-664C-1EF8-3F55-D49361BF8A81";
	setAttr ".rp" -type "double3" -1.3459024540489426 -25.731000380979989 0.72536203085738093 ;
	setAttr ".sp" -type "double3" -1.3459024540489426 -25.731000380979989 0.72536203085738093 ;
createNode nurbsCurve -n "R_Index_J_2_CTRLShape" -p "R_Index_J_2_CTRL";
	rename -uid "EE255B77-9C41-9445-8F67-8C8B39F0085C";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "R_Middle_J_0_GRP" -p "R_Wrist_J_CTRL";
	rename -uid "AFB509EB-0049-99A4-6897-C19B62FC0FA6";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -0.17192849237651414 -25.780611173454048 1.1517405412183668 ;
	setAttr ".sp" -type "double3" -0.17192849237651411 -25.780611173454041 1.1517405412183666 ;
	setAttr ".spt" -type "double3" -2.775557561562892e-17 -7.1054273576010034e-15 2.2204460492503136e-16 ;
createNode transform -n "R_Middle_J_0_CTRL" -p "R_Middle_J_0_GRP";
	rename -uid "35DAAC7A-D049-DE1B-3D18-15ADE0DC6763";
	setAttr ".rp" -type "double3" -0.17192849237651411 -25.780611173454041 1.1517405412183666 ;
	setAttr ".sp" -type "double3" -0.17192849237651411 -25.780611173454041 1.1517405412183666 ;
createNode nurbsCurve -n "R_Middle_J_0_CTRLShape" -p "R_Middle_J_0_CTRL";
	rename -uid "AF0D1D87-E147-62BB-B776-0EB67032052C";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "R_Middle_J_1_GRP" -p "R_Middle_J_0_CTRL";
	rename -uid "265D7AF2-384B-AD15-6E6E-A083F8403937";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999989 ;
	setAttr ".rp" -type "double3" -1.0713256793842107 -25.780609547720278 1.1517405412183321 ;
	setAttr ".sp" -type "double3" -1.071325679384211 -25.780609547720282 1.1517405412183324 ;
	setAttr ".spt" -type "double3" 2.2204460492503126e-16 7.1054273576010011e-15 -2.2204460492503128e-16 ;
createNode transform -n "R_Middle_J_1_CTRL" -p "R_Middle_J_1_GRP";
	rename -uid "31AFEB0C-684B-B7DB-79EF-B090CE5581BB";
	setAttr ".rp" -type "double3" -1.071325679384211 -25.780609547720285 1.1517405412183324 ;
	setAttr ".sp" -type "double3" -1.071325679384211 -25.780609547720285 1.1517405412183324 ;
createNode nurbsCurve -n "R_Middle_J_1_CTRLShape" -p "R_Middle_J_1_CTRL";
	rename -uid "59610CA5-E849-6099-5643-5CA07D12A08B";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "R_Middle_J_2_GRP" -p "R_Middle_J_1_CTRL";
	rename -uid "5A88EE62-F249-AA1F-2292-218719C1793A";
	setAttr ".rp" -type "double3" -1.546358530501168 -25.780628513448999 1.1517405412187314 ;
	setAttr ".sp" -type "double3" -1.546358530501168 -25.780628513448999 1.1517405412187314 ;
createNode transform -n "R_Middle_J_2_CTRL" -p "R_Middle_J_2_GRP";
	rename -uid "44367773-A846-50CB-E288-608A3C6DBBB2";
	setAttr ".rp" -type "double3" -1.546358530501168 -25.780628513448999 1.1517405412187314 ;
	setAttr ".sp" -type "double3" -1.546358530501168 -25.780628513448999 1.1517405412187314 ;
createNode nurbsCurve -n "R_Middle_J_2_CTRLShape" -p "R_Middle_J_2_CTRL";
	rename -uid "D07C4FE8-9C44-49E5-7DEC-D1869F7E767D";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "R_Ring_J_0_GRP" -p "R_Wrist_J_CTRL";
	rename -uid "D8F37E31-0248-3B46-5803-BB9F06309504";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -0.22915283490686864 -25.731015715874541 1.5885835948329983 ;
	setAttr ".rpt" -type "double3" 0.13932617884436757 0 0.013926945344199979 ;
	setAttr ".sp" -type "double3" -0.22915283490686858 -25.731015715874534 1.5885835948329978 ;
	setAttr ".spt" -type "double3" -5.5511151231257839e-17 -7.1054273576010034e-15 4.4408920985006271e-16 ;
createNode transform -n "R_Ring_J_0_CTRL" -p "R_Ring_J_0_GRP";
	rename -uid "E2D05F53-BB4F-AEF1-6AE6-AE8E50F8CF68";
	setAttr ".rp" -type "double3" -0.22915283490686858 -25.731015715874534 1.5885835948329978 ;
	setAttr ".sp" -type "double3" -0.22915283490686858 -25.731015715874534 1.5885835948329978 ;
createNode nurbsCurve -n "R_Ring_J_0_CTRLShape" -p "R_Ring_J_0_CTRL";
	rename -uid "93AB10DE-4946-422A-42DC-589CC70F3D70";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "R_Ring_J_1_GRP" -p "R_Ring_J_0_CTRL";
	rename -uid "66093782-BA40-D137-9C2C-70B59B3FDEFD";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".rp" -type "double3" -0.99603275273266467 -25.730993975346014 1.5885761177202657 ;
	setAttr ".rpt" -type "double3" 0 -3.3476734169360681e-08 -5.4224015281815255e-07 ;
	setAttr ".sp" -type "double3" -0.99603275273266467 -25.730993975346014 1.588576117720266 ;
	setAttr ".spt" -type "double3" 0 0 -4.4408920985006257e-16 ;
createNode transform -n "R_Ring_J_1_CTRL" -p "R_Ring_J_1_GRP";
	rename -uid "3638E507-3C42-46EC-E854-ABABA8285DB5";
	setAttr ".rp" -type "double3" -0.99603275273266467 -25.73099397534601 1.588576117720266 ;
	setAttr ".sp" -type "double3" -0.99603275273266467 -25.73099397534601 1.588576117720266 ;
createNode nurbsCurve -n "R_Ring_J_1_CTRLShape" -p "R_Ring_J_1_CTRL";
	rename -uid "88A703A1-D249-3C1F-1BE0-9584DC608770";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "R_Ring_J_2_GRP" -p "R_Ring_J_1_CTRL";
	rename -uid "18AEBC91-F74D-F39E-9491-428C7775F707";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr ".rp" -type "double3" -1.4710375527052844 -25.730992296118856 1.5885778083567252 ;
	setAttr ".rpt" -type "double3" 0 -6.6953523845436881e-08 -1.0844802357709287e-06 ;
	setAttr ".sp" -type "double3" -1.4710375527052846 -25.73099229611886 1.5885778083567252 ;
	setAttr ".spt" -type "double3" 2.2204460492503128e-16 7.1054273576010011e-15 0 ;
createNode transform -n "R_Ring_J_2_CTRL" -p "R_Ring_J_2_GRP";
	rename -uid "E28D31BF-7848-A927-926A-5CB5B306730D";
	setAttr ".rp" -type "double3" -1.4710375527052846 -25.730992296118867 1.5885778083567255 ;
	setAttr ".sp" -type "double3" -1.4710375527052846 -25.730992296118867 1.5885778083567255 ;
createNode nurbsCurve -n "R_Ring_J_2_CTRLShape" -p "R_Ring_J_2_CTRL";
	rename -uid "19FA4C42-824E-6A30-CFBA-29AB2DDD36E9";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "R_Pinky_J_0_GRP" -p "R_Wrist_J_CTRL";
	rename -uid "A1ECE30D-C54E-8D81-DE59-8DB21E8B469B";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -0.42485849794827574 -25.539229383188626 1.8752051307780826 ;
	setAttr ".rpt" -type "double3" 0.49981550358098636 0 0.046065405372901241 ;
	setAttr ".sp" -type "double3" -0.42485849794827563 -25.539229383188619 1.8752051307780822 ;
	setAttr ".spt" -type "double3" -1.1102230246251568e-16 -7.1054273576010034e-15 4.4408920985006271e-16 ;
createNode transform -n "R_Pinky_J_0_CTRL" -p "R_Pinky_J_0_GRP";
	rename -uid "363B0F8F-1D4C-235B-903C-30A4B53581C8";
	setAttr ".rp" -type "double3" -0.42485849794827563 -25.539229383188619 1.8752051307780822 ;
	setAttr ".sp" -type "double3" -0.42485849794827563 -25.539229383188619 1.8752051307780822 ;
createNode nurbsCurve -n "R_Pinky_J_0_CTRLShape" -p "R_Pinky_J_0_CTRL";
	rename -uid "33F70EDD-CC45-7869-ADB4-AD9A27A7C6F1";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "R_Pinky_J_1_GRP" -p "R_Pinky_J_0_CTRL";
	rename -uid "EE37A792-C349-19B5-17E2-7391CDC01941";
	setAttr ".rp" -type "double3" -1.0827024444013655 -25.539243107664507 1.8752232045808019 ;
	setAttr ".sp" -type "double3" -1.0827024444013655 -25.539243107664507 1.8752232045808019 ;
createNode transform -n "R_Pinky_J_1_CTRL" -p "R_Pinky_J_1_GRP";
	rename -uid "0F815D91-A844-184A-1A5C-05A83318C00E";
	setAttr ".rp" -type "double3" -1.0827024444013655 -25.539243107664507 1.8752232045808019 ;
	setAttr ".sp" -type "double3" -1.0827024444013655 -25.539243107664507 1.8752232045808019 ;
createNode nurbsCurve -n "R_Pinky_J_1_CTRLShape" -p "R_Pinky_J_1_CTRL";
	rename -uid "715813D1-4149-B6BF-7BE6-C18A43BF8E2A";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "R_Pinky_J_2_GRP" -p "R_Pinky_J_1_CTRL";
	rename -uid "8F6BBD35-A14E-44ED-7114-8991EDF8403D";
	setAttr ".rp" -type "double3" -1.4587673962443681 -25.539272891626819 1.875220335072781 ;
	setAttr ".sp" -type "double3" -1.4587673962443681 -25.539272891626819 1.875220335072781 ;
createNode transform -n "R_Pinky_J_2_CTRL" -p "R_Pinky_J_2_GRP";
	rename -uid "E1A78624-7341-0C58-EF27-129E827056B0";
	setAttr ".rp" -type "double3" -1.4587673962443681 -25.539272891626819 1.875220335072781 ;
	setAttr ".sp" -type "double3" -1.4587673962443681 -25.539272891626819 1.875220335072781 ;
createNode nurbsCurve -n "R_Pinky_J_2_CTRLShape" -p "R_Pinky_J_2_CTRL";
	rename -uid "E6F41475-B247-D243-A3DD-97A2E9F946EB";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode fosterParent -n "GenericMesh2_2RNfosterParent1";
	rename -uid "BB295C5E-9448-8231-E56A-EFB966FCDCD4";
createNode mesh -n "GenericMesh2ShapeDeformed" -p "GenericMesh2_2RNfosterParent1";
	rename -uid "E6B5C872-1C47-2838-69EB-9DBAA4FA04A4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "DDDA5F17-6343-64A4-1327-C69FBBE21AE2";
	setAttr -s 98 ".lnk";
	setAttr -s 98 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "A90D3996-384A-7DA4-16E1-479575C2DE1C";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "C012E31D-2142-A3A7-896E-458A1D90B2C7";
createNode displayLayerManager -n "layerManager";
	rename -uid "953DECF6-F04F-F3FA-F65B-FDBE48241D21";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "D57B6A3E-F646-770E-1054-C2907B146BE6";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "7FA22735-904D-94F0-93CA-E8A7205F0E87";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "407BCB39-3546-A4BB-9178-E49939BA7325";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "FDDD01BD-C044-5AC7-93E3-8F89392AAD02";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 100\n            -height 30\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 100\n            -height 30\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 100\n            -height 30\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1920\n            -height 968\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n"
		+ "                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"persp\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n"
		+ "                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n"
		+ "                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1920\\n    -height 968\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1920\\n    -height 968\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "045BD6D7-334D-DE43-5A84-2EB400720FEA";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode reference -n "GenericMesh2_2RN";
	rename -uid "DF601E48-C54F-8DB6-DDA7-BA8715C9DFE7";
	setAttr -s 657 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[257]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[260]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[263]" 0;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[266]" 0;
	setAttr ".phl[267]" 0;
	setAttr ".phl[268]" 0;
	setAttr ".phl[269]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[272]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".phl[275]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[277]" 0;
	setAttr ".phl[278]" 0;
	setAttr ".phl[279]" 0;
	setAttr ".phl[280]" 0;
	setAttr ".phl[281]" 0;
	setAttr ".phl[282]" 0;
	setAttr ".phl[283]" 0;
	setAttr ".phl[284]" 0;
	setAttr ".phl[285]" 0;
	setAttr ".phl[286]" 0;
	setAttr ".phl[287]" 0;
	setAttr ".phl[288]" 0;
	setAttr ".phl[289]" 0;
	setAttr ".phl[290]" 0;
	setAttr ".phl[291]" 0;
	setAttr ".phl[292]" 0;
	setAttr ".phl[293]" 0;
	setAttr ".phl[294]" 0;
	setAttr ".phl[295]" 0;
	setAttr ".phl[296]" 0;
	setAttr ".phl[297]" 0;
	setAttr ".phl[298]" 0;
	setAttr ".phl[299]" 0;
	setAttr ".phl[300]" 0;
	setAttr ".phl[301]" 0;
	setAttr ".phl[302]" 0;
	setAttr ".phl[303]" 0;
	setAttr ".phl[304]" 0;
	setAttr ".phl[305]" 0;
	setAttr ".phl[306]" 0;
	setAttr ".phl[307]" 0;
	setAttr ".phl[308]" 0;
	setAttr ".phl[309]" 0;
	setAttr ".phl[310]" 0;
	setAttr ".phl[311]" 0;
	setAttr ".phl[312]" 0;
	setAttr ".phl[313]" 0;
	setAttr ".phl[314]" 0;
	setAttr ".phl[315]" 0;
	setAttr ".phl[316]" 0;
	setAttr ".phl[317]" 0;
	setAttr ".phl[318]" 0;
	setAttr ".phl[319]" 0;
	setAttr ".phl[320]" 0;
	setAttr ".phl[321]" 0;
	setAttr ".phl[322]" 0;
	setAttr ".phl[323]" 0;
	setAttr ".phl[324]" 0;
	setAttr ".phl[325]" 0;
	setAttr ".phl[326]" 0;
	setAttr ".phl[327]" 0;
	setAttr ".phl[328]" 0;
	setAttr ".phl[329]" 0;
	setAttr ".phl[330]" 0;
	setAttr ".phl[331]" 0;
	setAttr ".phl[332]" 0;
	setAttr ".phl[333]" 0;
	setAttr ".phl[334]" 0;
	setAttr ".phl[335]" 0;
	setAttr ".phl[336]" 0;
	setAttr ".phl[337]" 0;
	setAttr ".phl[338]" 0;
	setAttr ".phl[339]" 0;
	setAttr ".phl[340]" 0;
	setAttr ".phl[341]" 0;
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[344]" 0;
	setAttr ".phl[345]" 0;
	setAttr ".phl[346]" 0;
	setAttr ".phl[347]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[350]" 0;
	setAttr ".phl[351]" 0;
	setAttr ".phl[352]" 0;
	setAttr ".phl[353]" 0;
	setAttr ".phl[354]" 0;
	setAttr ".phl[355]" 0;
	setAttr ".phl[356]" 0;
	setAttr ".phl[357]" 0;
	setAttr ".phl[358]" 0;
	setAttr ".phl[359]" 0;
	setAttr ".phl[360]" 0;
	setAttr ".phl[361]" 0;
	setAttr ".phl[362]" 0;
	setAttr ".phl[363]" 0;
	setAttr ".phl[364]" 0;
	setAttr ".phl[365]" 0;
	setAttr ".phl[366]" 0;
	setAttr ".phl[367]" 0;
	setAttr ".phl[368]" 0;
	setAttr ".phl[369]" 0;
	setAttr ".phl[370]" 0;
	setAttr ".phl[371]" 0;
	setAttr ".phl[372]" 0;
	setAttr ".phl[373]" 0;
	setAttr ".phl[374]" 0;
	setAttr ".phl[375]" 0;
	setAttr ".phl[376]" 0;
	setAttr ".phl[377]" 0;
	setAttr ".phl[378]" 0;
	setAttr ".phl[379]" 0;
	setAttr ".phl[380]" 0;
	setAttr ".phl[381]" 0;
	setAttr ".phl[382]" 0;
	setAttr ".phl[383]" 0;
	setAttr ".phl[384]" 0;
	setAttr ".phl[385]" 0;
	setAttr ".phl[386]" 0;
	setAttr ".phl[387]" 0;
	setAttr ".phl[388]" 0;
	setAttr ".phl[389]" 0;
	setAttr ".phl[390]" 0;
	setAttr ".phl[391]" 0;
	setAttr ".phl[392]" 0;
	setAttr ".phl[393]" 0;
	setAttr ".phl[394]" 0;
	setAttr ".phl[395]" 0;
	setAttr ".phl[396]" 0;
	setAttr ".phl[397]" 0;
	setAttr ".phl[398]" 0;
	setAttr ".phl[399]" 0;
	setAttr ".phl[400]" 0;
	setAttr ".phl[401]" 0;
	setAttr ".phl[402]" 0;
	setAttr ".phl[403]" 0;
	setAttr ".phl[404]" 0;
	setAttr ".phl[405]" 0;
	setAttr ".phl[406]" 0;
	setAttr ".phl[407]" 0;
	setAttr ".phl[408]" 0;
	setAttr ".phl[409]" 0;
	setAttr ".phl[410]" 0;
	setAttr ".phl[411]" 0;
	setAttr ".phl[412]" 0;
	setAttr ".phl[413]" 0;
	setAttr ".phl[414]" 0;
	setAttr ".phl[415]" 0;
	setAttr ".phl[416]" 0;
	setAttr ".phl[417]" 0;
	setAttr ".phl[418]" 0;
	setAttr ".phl[419]" 0;
	setAttr ".phl[420]" 0;
	setAttr ".phl[421]" 0;
	setAttr ".phl[422]" 0;
	setAttr ".phl[423]" 0;
	setAttr ".phl[424]" 0;
	setAttr ".phl[425]" 0;
	setAttr ".phl[426]" 0;
	setAttr ".phl[427]" 0;
	setAttr ".phl[428]" 0;
	setAttr ".phl[429]" 0;
	setAttr ".phl[430]" 0;
	setAttr ".phl[431]" 0;
	setAttr ".phl[432]" 0;
	setAttr ".phl[433]" 0;
	setAttr ".phl[434]" 0;
	setAttr ".phl[435]" 0;
	setAttr ".phl[436]" 0;
	setAttr ".phl[437]" 0;
	setAttr ".phl[438]" 0;
	setAttr ".phl[439]" 0;
	setAttr ".phl[440]" 0;
	setAttr ".phl[441]" 0;
	setAttr ".phl[442]" 0;
	setAttr ".phl[443]" 0;
	setAttr ".phl[444]" 0;
	setAttr ".phl[445]" 0;
	setAttr ".phl[446]" 0;
	setAttr ".phl[447]" 0;
	setAttr ".phl[448]" 0;
	setAttr ".phl[449]" 0;
	setAttr ".phl[450]" 0;
	setAttr ".phl[451]" 0;
	setAttr ".phl[452]" 0;
	setAttr ".phl[453]" 0;
	setAttr ".phl[454]" 0;
	setAttr ".phl[455]" 0;
	setAttr ".phl[456]" 0;
	setAttr ".phl[457]" 0;
	setAttr ".phl[458]" 0;
	setAttr ".phl[459]" 0;
	setAttr ".phl[460]" 0;
	setAttr ".phl[461]" 0;
	setAttr ".phl[462]" 0;
	setAttr ".phl[463]" 0;
	setAttr ".phl[464]" 0;
	setAttr ".phl[465]" 0;
	setAttr ".phl[466]" 0;
	setAttr ".phl[467]" 0;
	setAttr ".phl[468]" 0;
	setAttr ".phl[469]" 0;
	setAttr ".phl[470]" 0;
	setAttr ".phl[471]" 0;
	setAttr ".phl[472]" 0;
	setAttr ".phl[473]" 0;
	setAttr ".phl[474]" 0;
	setAttr ".phl[475]" 0;
	setAttr ".phl[476]" 0;
	setAttr ".phl[477]" 0;
	setAttr ".phl[478]" 0;
	setAttr ".phl[479]" 0;
	setAttr ".phl[480]" 0;
	setAttr ".phl[481]" 0;
	setAttr ".phl[482]" 0;
	setAttr ".phl[483]" 0;
	setAttr ".phl[484]" 0;
	setAttr ".phl[485]" 0;
	setAttr ".phl[486]" 0;
	setAttr ".phl[487]" 0;
	setAttr ".phl[488]" 0;
	setAttr ".phl[489]" 0;
	setAttr ".phl[490]" 0;
	setAttr ".phl[491]" 0;
	setAttr ".phl[492]" 0;
	setAttr ".phl[493]" 0;
	setAttr ".phl[494]" 0;
	setAttr ".phl[495]" 0;
	setAttr ".phl[496]" 0;
	setAttr ".phl[497]" 0;
	setAttr ".phl[498]" 0;
	setAttr ".phl[499]" 0;
	setAttr ".phl[500]" 0;
	setAttr ".phl[501]" 0;
	setAttr ".phl[502]" 0;
	setAttr ".phl[503]" 0;
	setAttr ".phl[504]" 0;
	setAttr ".phl[505]" 0;
	setAttr ".phl[506]" 0;
	setAttr ".phl[507]" 0;
	setAttr ".phl[508]" 0;
	setAttr ".phl[509]" 0;
	setAttr ".phl[510]" 0;
	setAttr ".phl[511]" 0;
	setAttr ".phl[512]" 0;
	setAttr ".phl[513]" 0;
	setAttr ".phl[514]" 0;
	setAttr ".phl[515]" 0;
	setAttr ".phl[516]" 0;
	setAttr ".phl[517]" 0;
	setAttr ".phl[518]" 0;
	setAttr ".phl[519]" 0;
	setAttr ".phl[520]" 0;
	setAttr ".phl[521]" 0;
	setAttr ".phl[522]" 0;
	setAttr ".phl[523]" 0;
	setAttr ".phl[524]" 0;
	setAttr ".phl[525]" 0;
	setAttr ".phl[526]" 0;
	setAttr ".phl[527]" 0;
	setAttr ".phl[528]" 0;
	setAttr ".phl[529]" 0;
	setAttr ".phl[530]" 0;
	setAttr ".phl[531]" 0;
	setAttr ".phl[532]" 0;
	setAttr ".phl[533]" 0;
	setAttr ".phl[534]" 0;
	setAttr ".phl[535]" 0;
	setAttr ".phl[536]" 0;
	setAttr ".phl[537]" 0;
	setAttr ".phl[538]" 0;
	setAttr ".phl[539]" 0;
	setAttr ".phl[540]" 0;
	setAttr ".phl[541]" 0;
	setAttr ".phl[542]" 0;
	setAttr ".phl[543]" 0;
	setAttr ".phl[544]" 0;
	setAttr ".phl[545]" 0;
	setAttr ".phl[546]" 0;
	setAttr ".phl[547]" 0;
	setAttr ".phl[548]" 0;
	setAttr ".phl[549]" 0;
	setAttr ".phl[550]" 0;
	setAttr ".phl[551]" 0;
	setAttr ".phl[552]" 0;
	setAttr ".phl[553]" 0;
	setAttr ".phl[554]" 0;
	setAttr ".phl[555]" 0;
	setAttr ".phl[556]" 0;
	setAttr ".phl[557]" 0;
	setAttr ".phl[558]" 0;
	setAttr ".phl[559]" 0;
	setAttr ".phl[560]" 0;
	setAttr ".phl[561]" 0;
	setAttr ".phl[562]" 0;
	setAttr ".phl[563]" 0;
	setAttr ".phl[564]" 0;
	setAttr ".phl[565]" 0;
	setAttr ".phl[566]" 0;
	setAttr ".phl[567]" 0;
	setAttr ".phl[568]" 0;
	setAttr ".phl[569]" 0;
	setAttr ".phl[570]" 0;
	setAttr ".phl[571]" 0;
	setAttr ".phl[572]" 0;
	setAttr ".phl[573]" 0;
	setAttr ".phl[574]" 0;
	setAttr ".phl[575]" 0;
	setAttr ".phl[576]" 0;
	setAttr ".phl[577]" 0;
	setAttr ".phl[578]" 0;
	setAttr ".phl[579]" 0;
	setAttr ".phl[580]" 0;
	setAttr ".phl[581]" 0;
	setAttr ".phl[582]" 0;
	setAttr ".phl[583]" 0;
	setAttr ".phl[584]" 0;
	setAttr ".phl[585]" 0;
	setAttr ".phl[586]" 0;
	setAttr ".phl[587]" 0;
	setAttr ".phl[588]" 0;
	setAttr ".phl[589]" 0;
	setAttr ".phl[590]" 0;
	setAttr ".phl[591]" 0;
	setAttr ".phl[592]" 0;
	setAttr ".phl[593]" 0;
	setAttr ".phl[594]" 0;
	setAttr ".phl[595]" 0;
	setAttr ".phl[596]" 0;
	setAttr ".phl[597]" 0;
	setAttr ".phl[598]" 0;
	setAttr ".phl[599]" 0;
	setAttr ".phl[600]" 0;
	setAttr ".phl[601]" 0;
	setAttr ".phl[602]" 0;
	setAttr ".phl[603]" 0;
	setAttr ".phl[604]" 0;
	setAttr ".phl[605]" 0;
	setAttr ".phl[606]" 0;
	setAttr ".phl[607]" 0;
	setAttr ".phl[608]" 0;
	setAttr ".phl[609]" 0;
	setAttr ".phl[610]" 0;
	setAttr ".phl[611]" 0;
	setAttr ".phl[612]" 0;
	setAttr ".phl[613]" 0;
	setAttr ".phl[614]" 0;
	setAttr ".phl[615]" 0;
	setAttr ".phl[616]" 0;
	setAttr ".phl[617]" 0;
	setAttr ".phl[618]" 0;
	setAttr ".phl[619]" 0;
	setAttr ".phl[620]" 0;
	setAttr ".phl[621]" 0;
	setAttr ".phl[622]" 0;
	setAttr ".phl[623]" 0;
	setAttr ".phl[624]" 0;
	setAttr ".phl[625]" 0;
	setAttr ".phl[626]" 0;
	setAttr ".phl[627]" 0;
	setAttr ".phl[628]" 0;
	setAttr ".phl[629]" 0;
	setAttr ".phl[630]" 0;
	setAttr ".phl[631]" 0;
	setAttr ".phl[632]" 0;
	setAttr ".phl[633]" 0;
	setAttr ".phl[634]" 0;
	setAttr ".phl[635]" 0;
	setAttr ".phl[636]" 0;
	setAttr ".phl[637]" 0;
	setAttr ".phl[638]" 0;
	setAttr ".phl[639]" 0;
	setAttr ".phl[640]" 0;
	setAttr ".phl[641]" 0;
	setAttr ".phl[642]" 0;
	setAttr ".phl[643]" 0;
	setAttr ".phl[644]" 0;
	setAttr ".phl[645]" 0;
	setAttr ".phl[646]" 0;
	setAttr ".phl[647]" 0;
	setAttr ".phl[648]" 0;
	setAttr ".phl[649]" 0;
	setAttr ".phl[650]" 0;
	setAttr ".phl[651]" 0;
	setAttr ".phl[652]" 0;
	setAttr ".phl[653]" 0;
	setAttr ".phl[654]" 0;
	setAttr ".phl[655]" 0;
	setAttr ".phl[656]" 0;
	setAttr ".phl[657]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"GenericMesh2_2RN"
		"GenericMesh2_2RN" 0
		"GenericMesh2_2RN" 665
		0 "|GenericMesh2_2RNfosterParent1|GenericMesh2ShapeDeformed" "|GenericMesh2_2:GenericMesh2" 
		"-s -r "
		2 "|GenericMesh2_2:GenericMesh2|GenericMesh2_2:GenericMesh2Shape" "intermediateObject" 
		" 1"
		2 "|GenericMesh2_2:GenericMesh2|GenericMesh2_2:GenericMesh2Shape" "uvPivot" 
		" -type \"double2\" 0.51226294040679932 0.85552150011062622"
		2 "|GenericMesh2_2:GenericMesh2|GenericMesh2_2:GenericMesh2Shape" "pnts" 
		" -s 2"
		2 "|GenericMesh2_2:GenericMesh2|GenericMesh2_2:GenericMesh2Shape" "pnts[2400]" 
		" -type \"float3\" 1.1920929000000001e-07 0 0"
		2 "|GenericMesh2_2:GenericMesh2|GenericMesh2_2:GenericMesh2Shape" "pnts[2799]" 
		" -type \"float3\" -1.1920929000000001e-07 0 0"
		2 "|GenericMesh2_2:GenericMesh2|GenericMesh2_2:GenericMesh2Shape" "vertexColorSource" 
		" 2"
		2 "GenericMesh2_2:GenericMesh" "displayType" " 2"
		5 3 "GenericMesh2_2RN" "|GenericMesh2_2:group1.message" "GenericMesh2_2RN.placeHolderList[1]" 
		""
		5 3 "GenericMesh2_2RN" "|GenericMesh2_2:group2.message" "GenericMesh2_2RN.placeHolderList[2]" 
		""
		5 3 "GenericMesh2_2RN" "|GenericMesh2_2:group3.message" "GenericMesh2_2RN.placeHolderList[3]" 
		""
		5 3 "GenericMesh2_2RN" "|GenericMesh2_2:polySurface2.message" "GenericMesh2_2RN.placeHolderList[4]" 
		""
		5 3 "GenericMesh2_2RN" "|GenericMesh2_2:polySurface2|GenericMesh2_2:polySurfaceShape2.message" 
		"GenericMesh2_2RN.placeHolderList[5]" ""
		5 3 "GenericMesh2_2RN" "|GenericMesh2_2:polySurface2|GenericMesh2_2:transform2.message" 
		"GenericMesh2_2RN.placeHolderList[6]" ""
		5 3 "GenericMesh2_2RN" "|GenericMesh2_2:polySurface2|GenericMesh2_2:transform2|GenericMesh2_2:polySurface2Shape.message" 
		"GenericMesh2_2RN.placeHolderList[7]" ""
		5 3 "GenericMesh2_2RN" "|GenericMesh2_2:polySurface3.message" "GenericMesh2_2RN.placeHolderList[8]" 
		""
		5 3 "GenericMesh2_2RN" "|GenericMesh2_2:polySurface3|GenericMesh2_2:transform1.message" 
		"GenericMesh2_2RN.placeHolderList[9]" ""
		5 3 "GenericMesh2_2RN" "|GenericMesh2_2:polySurface3|GenericMesh2_2:transform1|GenericMesh2_2:polySurfaceShape3.message" 
		"GenericMesh2_2RN.placeHolderList[10]" ""
		5 3 "GenericMesh2_2RN" "|GenericMesh2_2:GenericMesh2.message" "GenericMesh2_2RN.placeHolderList[11]" 
		""
		5 3 "GenericMesh2_2RN" "|GenericMesh2_2:GenericMesh2|GenericMesh2_2:GenericMesh2Shape.worldMesh" 
		"GenericMesh2_2RN.placeHolderList[12]" ""
		5 3 "GenericMesh2_2RN" "|GenericMesh2_2:GenericMesh2|GenericMesh2_2:GenericMesh2Shape.message" 
		"GenericMesh2_2RN.placeHolderList[13]" ""
		5 3 "GenericMesh2_2RN" "|GenericMesh2_2:GenericMesh2|GenericMesh2_2:GenericMesh2ShapeOrig.message" 
		"GenericMesh2_2RN.placeHolderList[14]" ""
		5 3 "GenericMesh2_2RN" "|GenericMesh2_2:GenericMesh2|GenericMesh2_2:GenericMesh2ShapeOrig.outMesh" 
		"GenericMesh2_2RN.placeHolderList[15]" ""
		5 3 "GenericMesh2_2RN" "|GenericMesh2_2:GenericMesh2|GenericMesh2_2:GenericMesh2ShapeOrig.outMesh" 
		"GenericMesh2_2RN.placeHolderList[16]" ""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:layerManager.message" "GenericMesh2_2RN.placeHolderList[17]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:defaultLayer.message" "GenericMesh2_2RN.placeHolderList[18]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:GenericMesh_V10_1:AR__GenericMeshv3a_yellowDKSG.message" 
		"GenericMesh2_2RN.placeHolderList[19]" ""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:PATCH_003.message" "GenericMesh2_2RN.placeHolderList[20]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:GenericMesh_V10_1:AR__GenericMeshv3a_lambert8SG.message" 
		"GenericMesh2_2RN.placeHolderList[21]" ""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:PATCH_001.message" "GenericMesh2_2RN.placeHolderList[22]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:Green.message" "GenericMesh2_2RN.placeHolderList[23]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:GenericMesh_V10_1:AR__GenericMeshv3a_GenaricMesh_lambert2SG.message" 
		"GenericMesh2_2RN.placeHolderList[24]" ""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:PATCH_002.message" "GenericMesh2_2RN.placeHolderList[25]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:GenericMesh_V10_1:AR__GenericMeshv3a_lambert6SG.message" 
		"GenericMesh2_2RN.placeHolderList[26]" ""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:CYLINDER_001.message" "GenericMesh2_2RN.placeHolderList[27]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:GenericMesh_V10_1:AR__GenericMeshv3a_GenaricMesh2_lambert5SG.message" 
		"GenericMesh2_2RN.placeHolderList[28]" ""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:PATCH_005.message" "GenericMesh2_2RN.placeHolderList[29]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:GenericMesh_V10_1:PS_1:Quadra_defaultMat.message" 
		"GenericMesh2_2RN.placeHolderList[30]" ""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:PATCH_004.message" "GenericMesh2_2RN.placeHolderList[31]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:GenericMesh_V10_1:uiConfigurationScriptNode.message" 
		"GenericMesh2_2RN.placeHolderList[32]" ""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:GenericMesh_V10_1:sceneConfigurationScriptNode.message" 
		"GenericMesh2_2RN.placeHolderList[33]" ""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:GenericMesh_V10_1:cameraView1.message" 
		"GenericMesh2_2RN.placeHolderList[34]" ""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:GenericMesh.message" "GenericMesh2_2RN.placeHolderList[35]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:CYLINDER_002.message" "GenericMesh2_2RN.placeHolderList[36]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:lambert2SG.message" "GenericMesh2_2RN.placeHolderList[37]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:EX_001.message" "GenericMesh2_2RN.placeHolderList[38]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:lambert3SG.message" "GenericMesh2_2RN.placeHolderList[39]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:EX_002.message" "GenericMesh2_2RN.placeHolderList[40]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:lambert4SG.message" "GenericMesh2_2RN.placeHolderList[41]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:EX_003.message" "GenericMesh2_2RN.placeHolderList[42]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:lambert5SG.message" "GenericMesh2_2RN.placeHolderList[43]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:EX_004.message" "GenericMesh2_2RN.placeHolderList[44]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:lambert6SG.message" "GenericMesh2_2RN.placeHolderList[45]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:CUBE_001.message" "GenericMesh2_2RN.placeHolderList[46]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:lambert7SG.message" "GenericMesh2_2RN.placeHolderList[47]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:CUBE_002.message" "GenericMesh2_2RN.placeHolderList[48]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:lambert8SG.message" "GenericMesh2_2RN.placeHolderList[49]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:CUBE_003.message" "GenericMesh2_2RN.placeHolderList[50]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:lambert9SG.message" "GenericMesh2_2RN.placeHolderList[51]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:shapeEditorManager.message" "GenericMesh2_2RN.placeHolderList[52]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:poseInterpolatorManager.message" 
		"GenericMesh2_2RN.placeHolderList[53]" ""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge1.message" "GenericMesh2_2RN.placeHolderList[54]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert1.message" "GenericMesh2_2RN.placeHolderList[55]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak1.message" "GenericMesh2_2RN.placeHolderList[56]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge2.message" "GenericMesh2_2RN.placeHolderList[57]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert2.message" "GenericMesh2_2RN.placeHolderList[58]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak2.message" "GenericMesh2_2RN.placeHolderList[59]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge3.message" "GenericMesh2_2RN.placeHolderList[60]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert3.message" "GenericMesh2_2RN.placeHolderList[61]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak3.message" "GenericMesh2_2RN.placeHolderList[62]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge4.message" "GenericMesh2_2RN.placeHolderList[63]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak4.message" "GenericMesh2_2RN.placeHolderList[64]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert4.message" "GenericMesh2_2RN.placeHolderList[65]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak5.message" "GenericMesh2_2RN.placeHolderList[66]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge5.message" "GenericMesh2_2RN.placeHolderList[67]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert5.message" "GenericMesh2_2RN.placeHolderList[68]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak6.message" "GenericMesh2_2RN.placeHolderList[69]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge6.message" "GenericMesh2_2RN.placeHolderList[70]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert6.message" "GenericMesh2_2RN.placeHolderList[71]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak7.message" "GenericMesh2_2RN.placeHolderList[72]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert7.message" "GenericMesh2_2RN.placeHolderList[73]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak8.message" "GenericMesh2_2RN.placeHolderList[74]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert8.message" "GenericMesh2_2RN.placeHolderList[75]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak9.message" "GenericMesh2_2RN.placeHolderList[76]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge7.message" "GenericMesh2_2RN.placeHolderList[77]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak10.message" "GenericMesh2_2RN.placeHolderList[78]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert9.message" "GenericMesh2_2RN.placeHolderList[79]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak11.message" "GenericMesh2_2RN.placeHolderList[80]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge8.message" "GenericMesh2_2RN.placeHolderList[81]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak12.message" "GenericMesh2_2RN.placeHolderList[82]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert10.message" "GenericMesh2_2RN.placeHolderList[83]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak13.message" "GenericMesh2_2RN.placeHolderList[84]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge9.message" "GenericMesh2_2RN.placeHolderList[85]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert11.message" "GenericMesh2_2RN.placeHolderList[86]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak14.message" "GenericMesh2_2RN.placeHolderList[87]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert12.message" "GenericMesh2_2RN.placeHolderList[88]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak15.message" "GenericMesh2_2RN.placeHolderList[89]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge10.message" "GenericMesh2_2RN.placeHolderList[90]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak16.message" "GenericMesh2_2RN.placeHolderList[91]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert13.message" "GenericMesh2_2RN.placeHolderList[92]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak17.message" "GenericMesh2_2RN.placeHolderList[93]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent1.message" "GenericMesh2_2RN.placeHolderList[94]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak18.message" "GenericMesh2_2RN.placeHolderList[95]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent2.message" "GenericMesh2_2RN.placeHolderList[96]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge11.message" "GenericMesh2_2RN.placeHolderList[97]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert14.message" "GenericMesh2_2RN.placeHolderList[98]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak19.message" "GenericMesh2_2RN.placeHolderList[99]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge12.message" "GenericMesh2_2RN.placeHolderList[100]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak20.message" "GenericMesh2_2RN.placeHolderList[101]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert15.message" "GenericMesh2_2RN.placeHolderList[102]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak21.message" "GenericMesh2_2RN.placeHolderList[103]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge13.message" "GenericMesh2_2RN.placeHolderList[104]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert16.message" "GenericMesh2_2RN.placeHolderList[105]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak22.message" "GenericMesh2_2RN.placeHolderList[106]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge14.message" "GenericMesh2_2RN.placeHolderList[107]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak23.message" "GenericMesh2_2RN.placeHolderList[108]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert17.message" "GenericMesh2_2RN.placeHolderList[109]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak24.message" "GenericMesh2_2RN.placeHolderList[110]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge15.message" "GenericMesh2_2RN.placeHolderList[111]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert18.message" "GenericMesh2_2RN.placeHolderList[112]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak25.message" "GenericMesh2_2RN.placeHolderList[113]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge16.message" "GenericMesh2_2RN.placeHolderList[114]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert19.message" "GenericMesh2_2RN.placeHolderList[115]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak26.message" "GenericMesh2_2RN.placeHolderList[116]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert20.message" "GenericMesh2_2RN.placeHolderList[117]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak27.message" "GenericMesh2_2RN.placeHolderList[118]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge17.message" "GenericMesh2_2RN.placeHolderList[119]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert21.message" "GenericMesh2_2RN.placeHolderList[120]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak28.message" "GenericMesh2_2RN.placeHolderList[121]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyCreateFace1.message" "GenericMesh2_2RN.placeHolderList[122]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex1.message" "GenericMesh2_2RN.placeHolderList[123]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex2.message" "GenericMesh2_2RN.placeHolderList[124]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex3.message" "GenericMesh2_2RN.placeHolderList[125]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex4.message" "GenericMesh2_2RN.placeHolderList[126]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex5.message" "GenericMesh2_2RN.placeHolderList[127]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex6.message" "GenericMesh2_2RN.placeHolderList[128]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak29.message" "GenericMesh2_2RN.placeHolderList[129]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex7.message" "GenericMesh2_2RN.placeHolderList[130]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex8.message" "GenericMesh2_2RN.placeHolderList[131]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex9.message" "GenericMesh2_2RN.placeHolderList[132]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex10.message" "GenericMesh2_2RN.placeHolderList[133]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak30.message" "GenericMesh2_2RN.placeHolderList[134]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex11.message" "GenericMesh2_2RN.placeHolderList[135]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex12.message" "GenericMesh2_2RN.placeHolderList[136]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex13.message" "GenericMesh2_2RN.placeHolderList[137]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex14.message" "GenericMesh2_2RN.placeHolderList[138]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex15.message" "GenericMesh2_2RN.placeHolderList[139]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak31.message" "GenericMesh2_2RN.placeHolderList[140]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent3.message" "GenericMesh2_2RN.placeHolderList[141]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak32.message" "GenericMesh2_2RN.placeHolderList[142]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent4.message" "GenericMesh2_2RN.placeHolderList[143]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex16.message" "GenericMesh2_2RN.placeHolderList[144]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak33.message" "GenericMesh2_2RN.placeHolderList[145]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex17.message" "GenericMesh2_2RN.placeHolderList[146]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert22.message" "GenericMesh2_2RN.placeHolderList[147]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak34.message" "GenericMesh2_2RN.placeHolderList[148]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge18.message" "GenericMesh2_2RN.placeHolderList[149]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge19.message" "GenericMesh2_2RN.placeHolderList[150]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak35.message" "GenericMesh2_2RN.placeHolderList[151]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert23.message" "GenericMesh2_2RN.placeHolderList[152]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak36.message" "GenericMesh2_2RN.placeHolderList[153]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak37.message" "GenericMesh2_2RN.placeHolderList[154]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polySplit1.message" "GenericMesh2_2RN.placeHolderList[155]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak38.message" "GenericMesh2_2RN.placeHolderList[156]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polySplit2.message" "GenericMesh2_2RN.placeHolderList[157]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge20.message" "GenericMesh2_2RN.placeHolderList[158]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak39.message" "GenericMesh2_2RN.placeHolderList[159]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge21.message" "GenericMesh2_2RN.placeHolderList[160]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak40.message" "GenericMesh2_2RN.placeHolderList[161]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert24.message" "GenericMesh2_2RN.placeHolderList[162]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak41.message" "GenericMesh2_2RN.placeHolderList[163]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge22.message" "GenericMesh2_2RN.placeHolderList[164]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert25.message" "GenericMesh2_2RN.placeHolderList[165]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak42.message" "GenericMesh2_2RN.placeHolderList[166]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak43.message" "GenericMesh2_2RN.placeHolderList[167]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent5.message" "GenericMesh2_2RN.placeHolderList[168]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent6.message" "GenericMesh2_2RN.placeHolderList[169]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent7.message" "GenericMesh2_2RN.placeHolderList[170]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent8.message" "GenericMesh2_2RN.placeHolderList[171]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert26.message" "GenericMesh2_2RN.placeHolderList[172]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak44.message" "GenericMesh2_2RN.placeHolderList[173]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert27.message" "GenericMesh2_2RN.placeHolderList[174]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak45.message" "GenericMesh2_2RN.placeHolderList[175]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert28.message" "GenericMesh2_2RN.placeHolderList[176]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak46.message" "GenericMesh2_2RN.placeHolderList[177]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent9.message" "GenericMesh2_2RN.placeHolderList[178]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak47.message" "GenericMesh2_2RN.placeHolderList[179]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent10.message" "GenericMesh2_2RN.placeHolderList[180]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge23.message" "GenericMesh2_2RN.placeHolderList[181]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge24.message" "GenericMesh2_2RN.placeHolderList[182]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak48.message" "GenericMesh2_2RN.placeHolderList[183]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak49.message" "GenericMesh2_2RN.placeHolderList[184]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent11.message" "GenericMesh2_2RN.placeHolderList[185]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge25.message" "GenericMesh2_2RN.placeHolderList[186]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert29.message" "GenericMesh2_2RN.placeHolderList[187]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak50.message" "GenericMesh2_2RN.placeHolderList[188]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge26.message" "GenericMesh2_2RN.placeHolderList[189]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert30.message" "GenericMesh2_2RN.placeHolderList[190]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak51.message" "GenericMesh2_2RN.placeHolderList[191]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert31.message" "GenericMesh2_2RN.placeHolderList[192]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak52.message" "GenericMesh2_2RN.placeHolderList[193]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert32.message" "GenericMesh2_2RN.placeHolderList[194]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak53.message" "GenericMesh2_2RN.placeHolderList[195]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge27.message" "GenericMesh2_2RN.placeHolderList[196]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak54.message" "GenericMesh2_2RN.placeHolderList[197]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert33.message" "GenericMesh2_2RN.placeHolderList[198]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak55.message" "GenericMesh2_2RN.placeHolderList[199]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge28.message" "GenericMesh2_2RN.placeHolderList[200]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert34.message" "GenericMesh2_2RN.placeHolderList[201]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak56.message" "GenericMesh2_2RN.placeHolderList[202]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert35.message" "GenericMesh2_2RN.placeHolderList[203]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak57.message" "GenericMesh2_2RN.placeHolderList[204]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge29.message" "GenericMesh2_2RN.placeHolderList[205]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak58.message" "GenericMesh2_2RN.placeHolderList[206]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert36.message" "GenericMesh2_2RN.placeHolderList[207]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak59.message" "GenericMesh2_2RN.placeHolderList[208]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge30.message" "GenericMesh2_2RN.placeHolderList[209]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert37.message" "GenericMesh2_2RN.placeHolderList[210]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak60.message" "GenericMesh2_2RN.placeHolderList[211]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge31.message" "GenericMesh2_2RN.placeHolderList[212]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert38.message" "GenericMesh2_2RN.placeHolderList[213]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak61.message" "GenericMesh2_2RN.placeHolderList[214]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge32.message" "GenericMesh2_2RN.placeHolderList[215]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak62.message" "GenericMesh2_2RN.placeHolderList[216]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert39.message" "GenericMesh2_2RN.placeHolderList[217]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak63.message" "GenericMesh2_2RN.placeHolderList[218]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge33.message" "GenericMesh2_2RN.placeHolderList[219]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak64.message" "GenericMesh2_2RN.placeHolderList[220]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak65.message" "GenericMesh2_2RN.placeHolderList[221]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polySplit3.message" "GenericMesh2_2RN.placeHolderList[222]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge34.message" "GenericMesh2_2RN.placeHolderList[223]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak66.message" "GenericMesh2_2RN.placeHolderList[224]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge35.message" "GenericMesh2_2RN.placeHolderList[225]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak67.message" "GenericMesh2_2RN.placeHolderList[226]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert40.message" "GenericMesh2_2RN.placeHolderList[227]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak68.message" "GenericMesh2_2RN.placeHolderList[228]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert41.message" "GenericMesh2_2RN.placeHolderList[229]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak69.message" "GenericMesh2_2RN.placeHolderList[230]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge36.message" "GenericMesh2_2RN.placeHolderList[231]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak70.message" "GenericMesh2_2RN.placeHolderList[232]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert42.message" "GenericMesh2_2RN.placeHolderList[233]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak71.message" "GenericMesh2_2RN.placeHolderList[234]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert43.message" "GenericMesh2_2RN.placeHolderList[235]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak72.message" "GenericMesh2_2RN.placeHolderList[236]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge37.message" "GenericMesh2_2RN.placeHolderList[237]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert44.message" "GenericMesh2_2RN.placeHolderList[238]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak73.message" "GenericMesh2_2RN.placeHolderList[239]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge38.message" "GenericMesh2_2RN.placeHolderList[240]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert45.message" "GenericMesh2_2RN.placeHolderList[241]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak74.message" "GenericMesh2_2RN.placeHolderList[242]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge39.message" "GenericMesh2_2RN.placeHolderList[243]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak75.message" "GenericMesh2_2RN.placeHolderList[244]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert46.message" "GenericMesh2_2RN.placeHolderList[245]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak76.message" "GenericMesh2_2RN.placeHolderList[246]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge40.message" "GenericMesh2_2RN.placeHolderList[247]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak77.message" "GenericMesh2_2RN.placeHolderList[248]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge41.message" "GenericMesh2_2RN.placeHolderList[249]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak78.message" "GenericMesh2_2RN.placeHolderList[250]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert47.message" "GenericMesh2_2RN.placeHolderList[251]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak79.message" "GenericMesh2_2RN.placeHolderList[252]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge42.message" "GenericMesh2_2RN.placeHolderList[253]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert48.message" "GenericMesh2_2RN.placeHolderList[254]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak80.message" "GenericMesh2_2RN.placeHolderList[255]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge43.message" "GenericMesh2_2RN.placeHolderList[256]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert49.message" "GenericMesh2_2RN.placeHolderList[257]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak81.message" "GenericMesh2_2RN.placeHolderList[258]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge44.message" "GenericMesh2_2RN.placeHolderList[259]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak82.message" "GenericMesh2_2RN.placeHolderList[260]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert50.message" "GenericMesh2_2RN.placeHolderList[261]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak83.message" "GenericMesh2_2RN.placeHolderList[262]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge45.message" "GenericMesh2_2RN.placeHolderList[263]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak84.message" "GenericMesh2_2RN.placeHolderList[264]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge46.message" "GenericMesh2_2RN.placeHolderList[265]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak85.message" "GenericMesh2_2RN.placeHolderList[266]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert51.message" "GenericMesh2_2RN.placeHolderList[267]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak86.message" "GenericMesh2_2RN.placeHolderList[268]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge47.message" "GenericMesh2_2RN.placeHolderList[269]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak87.message" "GenericMesh2_2RN.placeHolderList[270]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge48.message" "GenericMesh2_2RN.placeHolderList[271]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak88.message" "GenericMesh2_2RN.placeHolderList[272]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert52.message" "GenericMesh2_2RN.placeHolderList[273]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak89.message" "GenericMesh2_2RN.placeHolderList[274]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge49.message" "GenericMesh2_2RN.placeHolderList[275]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak90.message" "GenericMesh2_2RN.placeHolderList[276]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert53.message" "GenericMesh2_2RN.placeHolderList[277]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak91.message" "GenericMesh2_2RN.placeHolderList[278]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge50.message" "GenericMesh2_2RN.placeHolderList[279]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak92.message" "GenericMesh2_2RN.placeHolderList[280]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge51.message" "GenericMesh2_2RN.placeHolderList[281]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak93.message" "GenericMesh2_2RN.placeHolderList[282]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge52.message" "GenericMesh2_2RN.placeHolderList[283]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak94.message" "GenericMesh2_2RN.placeHolderList[284]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert54.message" "GenericMesh2_2RN.placeHolderList[285]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak95.message" "GenericMesh2_2RN.placeHolderList[286]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge53.message" "GenericMesh2_2RN.placeHolderList[287]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge54.message" "GenericMesh2_2RN.placeHolderList[288]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak96.message" "GenericMesh2_2RN.placeHolderList[289]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert55.message" "GenericMesh2_2RN.placeHolderList[290]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak97.message" "GenericMesh2_2RN.placeHolderList[291]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge55.message" "GenericMesh2_2RN.placeHolderList[292]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak98.message" "GenericMesh2_2RN.placeHolderList[293]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert56.message" "GenericMesh2_2RN.placeHolderList[294]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak99.message" "GenericMesh2_2RN.placeHolderList[295]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge56.message" "GenericMesh2_2RN.placeHolderList[296]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak100.message" "GenericMesh2_2RN.placeHolderList[297]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert57.message" "GenericMesh2_2RN.placeHolderList[298]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak101.message" "GenericMesh2_2RN.placeHolderList[299]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge57.message" "GenericMesh2_2RN.placeHolderList[300]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert58.message" "GenericMesh2_2RN.placeHolderList[301]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak102.message" "GenericMesh2_2RN.placeHolderList[302]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge58.message" "GenericMesh2_2RN.placeHolderList[303]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak103.message" "GenericMesh2_2RN.placeHolderList[304]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge59.message" "GenericMesh2_2RN.placeHolderList[305]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak104.message" "GenericMesh2_2RN.placeHolderList[306]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge60.message" "GenericMesh2_2RN.placeHolderList[307]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak105.message" "GenericMesh2_2RN.placeHolderList[308]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert59.message" "GenericMesh2_2RN.placeHolderList[309]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak106.message" "GenericMesh2_2RN.placeHolderList[310]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert60.message" "GenericMesh2_2RN.placeHolderList[311]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak107.message" "GenericMesh2_2RN.placeHolderList[312]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak108.message" "GenericMesh2_2RN.placeHolderList[313]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent12.message" "GenericMesh2_2RN.placeHolderList[314]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge61.message" "GenericMesh2_2RN.placeHolderList[315]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert61.message" "GenericMesh2_2RN.placeHolderList[316]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak109.message" "GenericMesh2_2RN.placeHolderList[317]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge62.message" "GenericMesh2_2RN.placeHolderList[318]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak110.message" "GenericMesh2_2RN.placeHolderList[319]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert62.message" "GenericMesh2_2RN.placeHolderList[320]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak111.message" "GenericMesh2_2RN.placeHolderList[321]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak112.message" "GenericMesh2_2RN.placeHolderList[322]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polySplit4.message" "GenericMesh2_2RN.placeHolderList[323]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak113.message" "GenericMesh2_2RN.placeHolderList[324]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polySplit5.message" "GenericMesh2_2RN.placeHolderList[325]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak114.message" "GenericMesh2_2RN.placeHolderList[326]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polySplit6.message" "GenericMesh2_2RN.placeHolderList[327]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak115.message" "GenericMesh2_2RN.placeHolderList[328]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polySplit7.message" "GenericMesh2_2RN.placeHolderList[329]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert63.message" "GenericMesh2_2RN.placeHolderList[330]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak116.message" "GenericMesh2_2RN.placeHolderList[331]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex18.message" "GenericMesh2_2RN.placeHolderList[332]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak117.message" "GenericMesh2_2RN.placeHolderList[333]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex19.message" "GenericMesh2_2RN.placeHolderList[334]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge63.message" "GenericMesh2_2RN.placeHolderList[335]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak118.message" "GenericMesh2_2RN.placeHolderList[336]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge64.message" "GenericMesh2_2RN.placeHolderList[337]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak119.message" "GenericMesh2_2RN.placeHolderList[338]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge65.message" "GenericMesh2_2RN.placeHolderList[339]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak120.message" "GenericMesh2_2RN.placeHolderList[340]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge66.message" "GenericMesh2_2RN.placeHolderList[341]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak121.message" "GenericMesh2_2RN.placeHolderList[342]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge67.message" "GenericMesh2_2RN.placeHolderList[343]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak122.message" "GenericMesh2_2RN.placeHolderList[344]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge68.message" "GenericMesh2_2RN.placeHolderList[345]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak123.message" "GenericMesh2_2RN.placeHolderList[346]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak124.message" "GenericMesh2_2RN.placeHolderList[347]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polySplit8.message" "GenericMesh2_2RN.placeHolderList[348]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polySplit9.message" "GenericMesh2_2RN.placeHolderList[349]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge69.message" "GenericMesh2_2RN.placeHolderList[350]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak125.message" "GenericMesh2_2RN.placeHolderList[351]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge70.message" "GenericMesh2_2RN.placeHolderList[352]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak126.message" "GenericMesh2_2RN.placeHolderList[353]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak127.message" "GenericMesh2_2RN.placeHolderList[354]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polySplit10.message" "GenericMesh2_2RN.placeHolderList[355]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polySplit11.message" "GenericMesh2_2RN.placeHolderList[356]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge71.message" "GenericMesh2_2RN.placeHolderList[357]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak128.message" "GenericMesh2_2RN.placeHolderList[358]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert64.message" "GenericMesh2_2RN.placeHolderList[359]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak129.message" "GenericMesh2_2RN.placeHolderList[360]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex20.message" "GenericMesh2_2RN.placeHolderList[361]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak130.message" "GenericMesh2_2RN.placeHolderList[362]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex21.message" "GenericMesh2_2RN.placeHolderList[363]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge72.message" "GenericMesh2_2RN.placeHolderList[364]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert65.message" "GenericMesh2_2RN.placeHolderList[365]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak131.message" "GenericMesh2_2RN.placeHolderList[366]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert66.message" "GenericMesh2_2RN.placeHolderList[367]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak132.message" "GenericMesh2_2RN.placeHolderList[368]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge73.message" "GenericMesh2_2RN.placeHolderList[369]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak133.message" "GenericMesh2_2RN.placeHolderList[370]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert67.message" "GenericMesh2_2RN.placeHolderList[371]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak134.message" "GenericMesh2_2RN.placeHolderList[372]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge74.message" "GenericMesh2_2RN.placeHolderList[373]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak135.message" "GenericMesh2_2RN.placeHolderList[374]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polySplit12.message" "GenericMesh2_2RN.placeHolderList[375]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polySplit13.message" "GenericMesh2_2RN.placeHolderList[376]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak136.message" "GenericMesh2_2RN.placeHolderList[377]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polySplit14.message" "GenericMesh2_2RN.placeHolderList[378]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polySplit15.message" "GenericMesh2_2RN.placeHolderList[379]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert68.message" "GenericMesh2_2RN.placeHolderList[380]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak137.message" "GenericMesh2_2RN.placeHolderList[381]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge75.message" "GenericMesh2_2RN.placeHolderList[382]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak138.message" "GenericMesh2_2RN.placeHolderList[383]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert69.message" "GenericMesh2_2RN.placeHolderList[384]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak139.message" "GenericMesh2_2RN.placeHolderList[385]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge76.message" "GenericMesh2_2RN.placeHolderList[386]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak140.message" "GenericMesh2_2RN.placeHolderList[387]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge77.message" "GenericMesh2_2RN.placeHolderList[388]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak141.message" "GenericMesh2_2RN.placeHolderList[389]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert70.message" "GenericMesh2_2RN.placeHolderList[390]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak142.message" "GenericMesh2_2RN.placeHolderList[391]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge78.message" "GenericMesh2_2RN.placeHolderList[392]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak143.message" "GenericMesh2_2RN.placeHolderList[393]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert71.message" "GenericMesh2_2RN.placeHolderList[394]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak144.message" "GenericMesh2_2RN.placeHolderList[395]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge79.message" "GenericMesh2_2RN.placeHolderList[396]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak145.message" "GenericMesh2_2RN.placeHolderList[397]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge80.message" "GenericMesh2_2RN.placeHolderList[398]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak146.message" "GenericMesh2_2RN.placeHolderList[399]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert72.message" "GenericMesh2_2RN.placeHolderList[400]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak147.message" "GenericMesh2_2RN.placeHolderList[401]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge81.message" "GenericMesh2_2RN.placeHolderList[402]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak148.message" "GenericMesh2_2RN.placeHolderList[403]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert73.message" "GenericMesh2_2RN.placeHolderList[404]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak149.message" "GenericMesh2_2RN.placeHolderList[405]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge82.message" "GenericMesh2_2RN.placeHolderList[406]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak150.message" "GenericMesh2_2RN.placeHolderList[407]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert74.message" "GenericMesh2_2RN.placeHolderList[408]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak151.message" "GenericMesh2_2RN.placeHolderList[409]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge83.message" "GenericMesh2_2RN.placeHolderList[410]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak152.message" "GenericMesh2_2RN.placeHolderList[411]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert75.message" "GenericMesh2_2RN.placeHolderList[412]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak153.message" "GenericMesh2_2RN.placeHolderList[413]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge84.message" "GenericMesh2_2RN.placeHolderList[414]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak154.message" "GenericMesh2_2RN.placeHolderList[415]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert76.message" "GenericMesh2_2RN.placeHolderList[416]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak155.message" "GenericMesh2_2RN.placeHolderList[417]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge85.message" "GenericMesh2_2RN.placeHolderList[418]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak156.message" "GenericMesh2_2RN.placeHolderList[419]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert77.message" "GenericMesh2_2RN.placeHolderList[420]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak157.message" "GenericMesh2_2RN.placeHolderList[421]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge86.message" "GenericMesh2_2RN.placeHolderList[422]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert78.message" "GenericMesh2_2RN.placeHolderList[423]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak158.message" "GenericMesh2_2RN.placeHolderList[424]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge87.message" "GenericMesh2_2RN.placeHolderList[425]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak159.message" "GenericMesh2_2RN.placeHolderList[426]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert79.message" "GenericMesh2_2RN.placeHolderList[427]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak160.message" "GenericMesh2_2RN.placeHolderList[428]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge88.message" "GenericMesh2_2RN.placeHolderList[429]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert80.message" "GenericMesh2_2RN.placeHolderList[430]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak161.message" "GenericMesh2_2RN.placeHolderList[431]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert81.message" "GenericMesh2_2RN.placeHolderList[432]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak162.message" "GenericMesh2_2RN.placeHolderList[433]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert82.message" "GenericMesh2_2RN.placeHolderList[434]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak163.message" "GenericMesh2_2RN.placeHolderList[435]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert83.message" "GenericMesh2_2RN.placeHolderList[436]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak164.message" "GenericMesh2_2RN.placeHolderList[437]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak165.message" "GenericMesh2_2RN.placeHolderList[438]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polySplit16.message" "GenericMesh2_2RN.placeHolderList[439]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polySplit17.message" "GenericMesh2_2RN.placeHolderList[440]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge89.message" "GenericMesh2_2RN.placeHolderList[441]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert84.message" "GenericMesh2_2RN.placeHolderList[442]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak166.message" "GenericMesh2_2RN.placeHolderList[443]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge90.message" "GenericMesh2_2RN.placeHolderList[444]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert85.message" "GenericMesh2_2RN.placeHolderList[445]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak167.message" "GenericMesh2_2RN.placeHolderList[446]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert86.message" "GenericMesh2_2RN.placeHolderList[447]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak168.message" "GenericMesh2_2RN.placeHolderList[448]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak169.message" "GenericMesh2_2RN.placeHolderList[449]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent13.message" "GenericMesh2_2RN.placeHolderList[450]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent14.message" "GenericMesh2_2RN.placeHolderList[451]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex22.message" "GenericMesh2_2RN.placeHolderList[452]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex23.message" "GenericMesh2_2RN.placeHolderList[453]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent15.message" "GenericMesh2_2RN.placeHolderList[454]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex24.message" "GenericMesh2_2RN.placeHolderList[455]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex25.message" "GenericMesh2_2RN.placeHolderList[456]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent16.message" "GenericMesh2_2RN.placeHolderList[457]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent17.message" "GenericMesh2_2RN.placeHolderList[458]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent18.message" "GenericMesh2_2RN.placeHolderList[459]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex26.message" "GenericMesh2_2RN.placeHolderList[460]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak170.message" "GenericMesh2_2RN.placeHolderList[461]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex27.message" "GenericMesh2_2RN.placeHolderList[462]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent19.message" "GenericMesh2_2RN.placeHolderList[463]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent20.message" "GenericMesh2_2RN.placeHolderList[464]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert87.message" "GenericMesh2_2RN.placeHolderList[465]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak171.message" "GenericMesh2_2RN.placeHolderList[466]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert88.message" "GenericMesh2_2RN.placeHolderList[467]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak172.message" "GenericMesh2_2RN.placeHolderList[468]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert89.message" "GenericMesh2_2RN.placeHolderList[469]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak173.message" "GenericMesh2_2RN.placeHolderList[470]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex28.message" "GenericMesh2_2RN.placeHolderList[471]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak174.message" "GenericMesh2_2RN.placeHolderList[472]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex29.message" "GenericMesh2_2RN.placeHolderList[473]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak175.message" "GenericMesh2_2RN.placeHolderList[474]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent21.message" "GenericMesh2_2RN.placeHolderList[475]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert90.message" "GenericMesh2_2RN.placeHolderList[476]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak176.message" "GenericMesh2_2RN.placeHolderList[477]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak177.message" "GenericMesh2_2RN.placeHolderList[478]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent22.message" "GenericMesh2_2RN.placeHolderList[479]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent23.message" "GenericMesh2_2RN.placeHolderList[480]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent24.message" "GenericMesh2_2RN.placeHolderList[481]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak178.message" "GenericMesh2_2RN.placeHolderList[482]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent25.message" "GenericMesh2_2RN.placeHolderList[483]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent26.message" "GenericMesh2_2RN.placeHolderList[484]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent27.message" "GenericMesh2_2RN.placeHolderList[485]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent28.message" "GenericMesh2_2RN.placeHolderList[486]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert91.message" "GenericMesh2_2RN.placeHolderList[487]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak179.message" "GenericMesh2_2RN.placeHolderList[488]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert92.message" "GenericMesh2_2RN.placeHolderList[489]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak180.message" "GenericMesh2_2RN.placeHolderList[490]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert93.message" "GenericMesh2_2RN.placeHolderList[491]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak181.message" "GenericMesh2_2RN.placeHolderList[492]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert94.message" "GenericMesh2_2RN.placeHolderList[493]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak182.message" "GenericMesh2_2RN.placeHolderList[494]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert95.message" "GenericMesh2_2RN.placeHolderList[495]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak183.message" "GenericMesh2_2RN.placeHolderList[496]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak184.message" "GenericMesh2_2RN.placeHolderList[497]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polySplit18.message" "GenericMesh2_2RN.placeHolderList[498]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polySplit19.message" "GenericMesh2_2RN.placeHolderList[499]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex30.message" "GenericMesh2_2RN.placeHolderList[500]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak185.message" "GenericMesh2_2RN.placeHolderList[501]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex31.message" "GenericMesh2_2RN.placeHolderList[502]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert96.message" "GenericMesh2_2RN.placeHolderList[503]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak186.message" "GenericMesh2_2RN.placeHolderList[504]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex32.message" "GenericMesh2_2RN.placeHolderList[505]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak187.message" "GenericMesh2_2RN.placeHolderList[506]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyAppendVertex33.message" "GenericMesh2_2RN.placeHolderList[507]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak188.message" "GenericMesh2_2RN.placeHolderList[508]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent29.message" "GenericMesh2_2RN.placeHolderList[509]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak189.message" "GenericMesh2_2RN.placeHolderList[510]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent30.message" "GenericMesh2_2RN.placeHolderList[511]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent31.message" "GenericMesh2_2RN.placeHolderList[512]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent32.message" "GenericMesh2_2RN.placeHolderList[513]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyDelEdge1.message" "GenericMesh2_2RN.placeHolderList[514]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent33.message" "GenericMesh2_2RN.placeHolderList[515]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent34.message" "GenericMesh2_2RN.placeHolderList[516]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent35.message" "GenericMesh2_2RN.placeHolderList[517]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent36.message" "GenericMesh2_2RN.placeHolderList[518]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent37.message" "GenericMesh2_2RN.placeHolderList[519]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent38.message" "GenericMesh2_2RN.placeHolderList[520]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent39.message" "GenericMesh2_2RN.placeHolderList[521]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent40.message" "GenericMesh2_2RN.placeHolderList[522]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent41.message" "GenericMesh2_2RN.placeHolderList[523]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent42.message" "GenericMesh2_2RN.placeHolderList[524]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak190.message" "GenericMesh2_2RN.placeHolderList[525]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent43.message" "GenericMesh2_2RN.placeHolderList[526]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent44.message" "GenericMesh2_2RN.placeHolderList[527]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent45.message" "GenericMesh2_2RN.placeHolderList[528]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent46.message" "GenericMesh2_2RN.placeHolderList[529]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge91.message" "GenericMesh2_2RN.placeHolderList[530]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak191.message" "GenericMesh2_2RN.placeHolderList[531]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert97.message" "GenericMesh2_2RN.placeHolderList[532]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak192.message" "GenericMesh2_2RN.placeHolderList[533]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert98.message" "GenericMesh2_2RN.placeHolderList[534]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak193.message" "GenericMesh2_2RN.placeHolderList[535]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge92.message" "GenericMesh2_2RN.placeHolderList[536]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak194.message" "GenericMesh2_2RN.placeHolderList[537]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge93.message" "GenericMesh2_2RN.placeHolderList[538]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak195.message" "GenericMesh2_2RN.placeHolderList[539]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert99.message" "GenericMesh2_2RN.placeHolderList[540]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak196.message" "GenericMesh2_2RN.placeHolderList[541]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak197.message" "GenericMesh2_2RN.placeHolderList[542]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent47.message" "GenericMesh2_2RN.placeHolderList[543]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent48.message" "GenericMesh2_2RN.placeHolderList[544]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polySplit20.message" "GenericMesh2_2RN.placeHolderList[545]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polySplit21.message" "GenericMesh2_2RN.placeHolderList[546]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge94.message" "GenericMesh2_2RN.placeHolderList[547]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert100.message" "GenericMesh2_2RN.placeHolderList[548]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak198.message" "GenericMesh2_2RN.placeHolderList[549]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge95.message" "GenericMesh2_2RN.placeHolderList[550]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert101.message" "GenericMesh2_2RN.placeHolderList[551]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak199.message" "GenericMesh2_2RN.placeHolderList[552]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge96.message" "GenericMesh2_2RN.placeHolderList[553]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak200.message" "GenericMesh2_2RN.placeHolderList[554]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge97.message" "GenericMesh2_2RN.placeHolderList[555]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak201.message" "GenericMesh2_2RN.placeHolderList[556]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert102.message" "GenericMesh2_2RN.placeHolderList[557]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak202.message" "GenericMesh2_2RN.placeHolderList[558]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge98.message" "GenericMesh2_2RN.placeHolderList[559]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert103.message" "GenericMesh2_2RN.placeHolderList[560]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak203.message" "GenericMesh2_2RN.placeHolderList[561]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge99.message" "GenericMesh2_2RN.placeHolderList[562]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert104.message" "GenericMesh2_2RN.placeHolderList[563]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak204.message" "GenericMesh2_2RN.placeHolderList[564]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge100.message" "GenericMesh2_2RN.placeHolderList[565]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert105.message" "GenericMesh2_2RN.placeHolderList[566]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak205.message" "GenericMesh2_2RN.placeHolderList[567]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge101.message" "GenericMesh2_2RN.placeHolderList[568]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert106.message" "GenericMesh2_2RN.placeHolderList[569]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak206.message" "GenericMesh2_2RN.placeHolderList[570]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert107.message" "GenericMesh2_2RN.placeHolderList[571]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak207.message" "GenericMesh2_2RN.placeHolderList[572]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge102.message" "GenericMesh2_2RN.placeHolderList[573]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak208.message" "GenericMesh2_2RN.placeHolderList[574]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent49.message" "GenericMesh2_2RN.placeHolderList[575]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge103.message" "GenericMesh2_2RN.placeHolderList[576]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak209.message" "GenericMesh2_2RN.placeHolderList[577]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert108.message" "GenericMesh2_2RN.placeHolderList[578]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak210.message" "GenericMesh2_2RN.placeHolderList[579]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge104.message" "GenericMesh2_2RN.placeHolderList[580]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak211.message" "GenericMesh2_2RN.placeHolderList[581]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert109.message" "GenericMesh2_2RN.placeHolderList[582]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak212.message" "GenericMesh2_2RN.placeHolderList[583]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge105.message" "GenericMesh2_2RN.placeHolderList[584]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak213.message" "GenericMesh2_2RN.placeHolderList[585]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert110.message" "GenericMesh2_2RN.placeHolderList[586]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak214.message" "GenericMesh2_2RN.placeHolderList[587]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert111.message" "GenericMesh2_2RN.placeHolderList[588]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak215.message" "GenericMesh2_2RN.placeHolderList[589]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge106.message" "GenericMesh2_2RN.placeHolderList[590]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak216.message" "GenericMesh2_2RN.placeHolderList[591]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak217.message" "GenericMesh2_2RN.placeHolderList[592]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent50.message" "GenericMesh2_2RN.placeHolderList[593]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge107.message" "GenericMesh2_2RN.placeHolderList[594]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak218.message" "GenericMesh2_2RN.placeHolderList[595]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge108.message" "GenericMesh2_2RN.placeHolderList[596]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak219.message" "GenericMesh2_2RN.placeHolderList[597]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak220.message" "GenericMesh2_2RN.placeHolderList[598]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent51.message" "GenericMesh2_2RN.placeHolderList[599]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge109.message" "GenericMesh2_2RN.placeHolderList[600]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge110.message" "GenericMesh2_2RN.placeHolderList[601]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak221.message" "GenericMesh2_2RN.placeHolderList[602]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge111.message" "GenericMesh2_2RN.placeHolderList[603]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak222.message" "GenericMesh2_2RN.placeHolderList[604]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert112.message" "GenericMesh2_2RN.placeHolderList[605]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak223.message" "GenericMesh2_2RN.placeHolderList[606]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert113.message" "GenericMesh2_2RN.placeHolderList[607]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak224.message" "GenericMesh2_2RN.placeHolderList[608]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge112.message" "GenericMesh2_2RN.placeHolderList[609]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak225.message" "GenericMesh2_2RN.placeHolderList[610]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert114.message" "GenericMesh2_2RN.placeHolderList[611]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak226.message" "GenericMesh2_2RN.placeHolderList[612]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyExtrudeEdge113.message" "GenericMesh2_2RN.placeHolderList[613]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyMergeVert115.message" "GenericMesh2_2RN.placeHolderList[614]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak227.message" "GenericMesh2_2RN.placeHolderList[615]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak228.message" "GenericMesh2_2RN.placeHolderList[616]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent52.message" "GenericMesh2_2RN.placeHolderList[617]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent53.message" "GenericMesh2_2RN.placeHolderList[618]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak229.message" "GenericMesh2_2RN.placeHolderList[619]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent54.message" "GenericMesh2_2RN.placeHolderList[620]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent55.message" "GenericMesh2_2RN.placeHolderList[621]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak230.message" "GenericMesh2_2RN.placeHolderList[622]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent56.message" "GenericMesh2_2RN.placeHolderList[623]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent57.message" "GenericMesh2_2RN.placeHolderList[624]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweak231.message" "GenericMesh2_2RN.placeHolderList[625]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent58.message" "GenericMesh2_2RN.placeHolderList[626]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent59.message" "GenericMesh2_2RN.placeHolderList[627]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent60.message" "GenericMesh2_2RN.placeHolderList[628]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent61.message" "GenericMesh2_2RN.placeHolderList[629]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent62.message" "GenericMesh2_2RN.placeHolderList[630]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent63.message" "GenericMesh2_2RN.placeHolderList[631]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent64.message" "GenericMesh2_2RN.placeHolderList[632]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent65.message" "GenericMesh2_2RN.placeHolderList[633]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent66.message" "GenericMesh2_2RN.placeHolderList[634]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:deleteComponent67.message" "GenericMesh2_2RN.placeHolderList[635]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polySurface5_blinnSG.message" 
		"GenericMesh2_2RN.placeHolderList[636]" ""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polySurface5_blinn.message" "GenericMesh2_2RN.placeHolderList[637]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:lambert10.message" "GenericMesh2_2RN.placeHolderList[638]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:lambert10SG.message" "GenericMesh2_2RN.placeHolderList[639]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:NewHead:GenericMesh_V10_1:AR__GenericMeshv3a_lambert3SG.message" 
		"GenericMesh2_2RN.placeHolderList[640]" ""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:NewHead:Green.message" "GenericMesh2_2RN.placeHolderList[641]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:NewHead:GenericMesh_V10_1:AR__GenericMeshv3a_GenaricMesh2_lambert5SG.message" 
		"GenericMesh2_2RN.placeHolderList[642]" ""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:NewHead:Orange.message" "GenericMesh2_2RN.placeHolderList[643]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:NewHead:GenericMesh_V10_1:AR__GenericMeshv3a_yellowDKSG.message" 
		"GenericMesh2_2RN.placeHolderList[644]" ""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:NewHead:Yellow.message" "GenericMesh2_2RN.placeHolderList[645]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:NewHead:GenericMesh_V10_1:AR__GenericMeshv3a_lambert6SG.message" 
		"GenericMesh2_2RN.placeHolderList[646]" ""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:NewHead:Purple.message" "GenericMesh2_2RN.placeHolderList[647]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:NewHead:GenericMesh_V10_1:PS_1:Quadra_defaultMat.message" 
		"GenericMesh2_2RN.placeHolderList[648]" ""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:NewHead:White.message" "GenericMesh2_2RN.placeHolderList[649]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:NewHead:GenericMesh_V10_1:AR__GenericMeshv3a_GenaricMesh_lambert2SG.message" 
		"GenericMesh2_2RN.placeHolderList[650]" ""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:NewHead:Red.message" "GenericMesh2_2RN.placeHolderList[651]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:NewHead:GenericMesh_V10_1:AR__GenericMeshv3a_lambert8SG.message" 
		"GenericMesh2_2RN.placeHolderList[652]" ""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:NewHead:Blue.message" "GenericMesh2_2RN.placeHolderList[653]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:NewHead:GenericMesh_V10_1:AR__GenericMeshv3a_lambert4SG.message" 
		"GenericMesh2_2RN.placeHolderList[654]" ""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:NewHead:LtBlue.message" "GenericMesh2_2RN.placeHolderList[655]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polySoftEdge1.message" "GenericMesh2_2RN.placeHolderList[656]" 
		""
		5 3 "GenericMesh2_2RN" "GenericMesh2_2:polyTweakUV1.message" "GenericMesh2_2RN.placeHolderList[657]" 
		"";
	setAttr ".ptag" -type "string" "original";
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
createNode skinCluster -n "skinCluster1";
	rename -uid "BA38C8A3-844A-ED27-056B-48AB246659ED";
	setAttr -s 3149 ".wl";
	setAttr ".wl[0:99].w"
		5 3 0.95962431384431979 4 0.037820499953741572 5 0.0016877718444187437 
		7 0.00047076113951144069 8 0.00039665321800850818
		5 3 0.94317885668787405 4 0.053808509251474963 5 0.0014700106036796452 
		7 0.00084123953765858294 8 0.00070138391931278028
		5 3 0.94041332805030331 4 0.057427252302701438 5 0.0015356014596401119 
		7 0.00032918253511200768 8 0.00029463565224303575
		5 3 0.64842331467703107 4 0.34104867675609757 5 0.003547089332466836 
		7 0.0035874364953511441 8 0.0033934827390534701
		5 3 0.70156002322405209 4 0.29302097573508651 5 0.0025846367363441011 
		7 0.0014520313294186121 8 0.0013823329750987617
		5 3 0.6600393228286574 4 0.32403654392553977 5 0.0038707708086784818 
		7 0.0062724480015632772 8 0.0057809144355611894
		5 3 0.91600856382240148 4 0.081447731157069422 5 0.0016142980081944342 
		7 0.00048929501372714111 8 0.00044011199860750287
		5 3 0.85562424707564144 4 0.14085644724447607 5 0.0019530301249928747 
		7 0.00081779667896108676 8 0.00074847887592834506
		5 3 0.88482194150821025 4 0.10796115759274059 5 0.0021727820616823245 
		7 0.0027713538902023539 8 0.0022727649471644827
		5 3 0.81604397839004106 4 0.17417408966972606 5 0.0024800857985702121 
		7 0.0039342332808749176 8 0.0033676128607877682
		5 2 0.26178251505033689 3 0.72135340685758409 4 0.00013677412186331064 
		6 0.007771223697623386 7 0.0089560802725922109
		5 2 0.095143570342698908 3 0.83875358268274902 4 0.00074090920641638549 
		6 0.021013154886169498 7 0.044348782881966281
		5 2 0.17555148677371457 3 0.66528923471245804 4 0.0021742548004264131 
		6 0.054485349659990613 7 0.10249967405341028
		5 2 0.35941520926694565 3 0.57206261677436709 4 0.00055073602125810489 
		6 0.031824414683305463 7 0.036147023254123826
		5 2 0.38737869938374342 3 0.52573361119338291 4 0.0011076317386744048 
		6 0.040872118109652876 7 0.044907939574546384
		5 2 0.23579512919956824 3 0.61072261313393417 4 0.0039009837050749782 
		6 0.059274819063181536 7 0.090306454898241129
		5 2 0.26930182530189412 3 0.64094430259454471 4 0.0047106424467305025 
		6 0.036648878154916277 7 0.048394351501914408
		5 2 0.41106003168177707 3 0.53608894857887124 4 0.0013703962483580228 
		6 0.024939980972834862 7 0.026540642518158849
		5 2 0.40590510347812364 3 0.56794375328530755 4 0.001040581746056226 
		6 0.012214090497001687 7 0.012896470993510803
		5 2 0.25595001981714177 3 0.69614136498076362 4 0.0038698917614711698 
		6 0.019498053017179943 7 0.024540670423443559
		5 2 0.23377032070774689 3 0.73848450947585176 4 0.0028587272957389552 
		6 0.011195591084833782 7 0.013690851435828563
		5 2 0.39489930005318036 3 0.59087523362748784 4 0.00072377341224244779 
		6 0.0065898507634083127 7 0.0069118421436808811
		5 2 0.022155816218095804 3 0.97763806684773125 4 6.485514256757627e-06 
		6 9.4136676317031548e-05 7 0.00010549474359912355
		5 2 0.0034938612884859751 3 0.99619788028308076 4 1.6879355186170398e-05 
		6 0.000118323415156835 7 0.00017305565809028274
		5 2 0.01415817243524798 3 0.98253703439334794 4 7.7691275401861159e-05 
		6 0.001158403616827039 7 0.0020686982791752015
		5 2 0.028773361410279596 3 0.97093757753871957 4 4.9091435254286694e-06 
		6 0.00013382936410467897 7 0.00015032254337073991
		5 2 0.0021636870830158651 3 0.97273935359374197 4 0.0036531841703372394 
		7 0.019501722127048943 8 0.0019420530258561419
		5 3 0.99120691403662153 4 0.0035438443522186514 5 0.00061645357782399361 
		7 0.0036738163651766323 8 0.00095897166815914518
		5 3 0.97866189169521234 4 0.0096057531686293413 5 0.0013839350011596396 
		7 0.00794770515081503 8 0.0024007149841836477
		5 2 0.0059245848074885908 3 0.93488102782283455 4 0.010685505747691573 
		7 0.042991378536572755 8 0.0055175030854125737
		5 2 0.014607028273154301 3 0.86468179475380347 4 0.030370960127328352 
		7 0.075805949053541821 8 0.014534267792172163
		5 3 0.95093848107973156 4 0.024415724331555491 5 0.0031786459013305574 
		7 0.015832362811922657 8 0.0056347858754598008
		5 3 0.94356201517050231 4 0.032741109509202102 5 0.0040866948626856071 
		7 0.013723299817312551 8 0.0058868806402974563
		5 2 0.020490107061567404 3 0.8669758625728109 4 0.045564099956632208 
		7 0.051424850620971407 8 0.015545079788018012
		5 2 0.015540841566187092 3 0.92168324701158066 4 0.031220988693964336 
		7 0.023498778888653812 8 0.0080561438396140311
		5 3 0.96003384634964506 4 0.02557490752861016 5 0.0033043159972600189 
		7 0.0075265316627258416 8 0.0035603984617589382
		5 3 0.98199607385707632 4 0.011907347721973731 5 0.0016975509228741022 
		7 0.002974136983758873 8 0.0014248905143169838
		5 2 0.0088564707247897646 3 0.96050329363139642 4 0.016301691298319047 
		5 0.0038880150466600659 7 0.010450529298834686
		5 2 3.4389764162362232e-05 3 0.99983118509339064 4 4.6535743859089458e-05 
		5 1.6608356276097655e-05 7 7.1281042311730126e-05
		5 3 0.99984761927555199 4 8.2945671713814778e-05 5 1.8655485560163884e-05 
		7 3.7313410218286518e-05 8 1.3466156955790161e-05
		5 3 0.99808796728918181 4 0.00084066746707774683 5 0.0001786090963386856 
		7 0.00069649041851999136 8 0.00019626572888173014
		5 2 0.00044809632940412847 3 0.99618525346314635 4 0.00065490077410490359 
		7 0.0024186225622992675 8 0.00029312687104530495
		5 2 0.15585730110334173 3 0.83225715498942088 4 0.0012845752454750988 
		6 0.0047497821885526077 7 0.0058511864732097522
		5 2 0.034747684210714745 3 0.9630516371214809 4 0.00019024286313317992 
		6 0.00086833832599106408 7 0.0011420974786800076
		5 2 0.1863053428633184 3 0.81283460938729479 4 3.4653601624379047e-05 
		6 0.00040257763817457627 7 0.00042281650958783098
		5 2 0.34726883983281975 3 0.64660378878565095 4 0.00034172717133672676 
		6 0.0028223213582545376 7 0.0029633228519379976
		5 3 0.99289752772528739 4 0.0047165224292572677 5 0.0007778017368053723 
		7 0.0010884930325212141 8 0.00051965507612869465
		5 3 0.99866501094247007 4 0.00083369539043333699 5 0.00016803764260101217 
		7 0.00023185472860461754 8 0.00010140129589094455
		5 2 0.00057708851451945928 3 0.9976004920417807 4 0.00084038224061632903 
		5 0.00026875445983909324 7 0.00071328274324445229
		5 2 0.0035422255821868369 3 0.98519015338428273 4 0.005862816554729919 
		5 0.0016080695813851871 7 0.0037967348974153733
		5 3 0.99754644437799322 4 0.0021171582476766739 5 0.00017079605684040683 
		7 9.8086440817585812e-05 8 6.7514876672133953e-05
		5 3 0.98803432495788457 4 0.010641284517094908 5 0.00065319157157714468 
		7 0.00038818979469592288 8 0.00028300915874750866
		5 3 0.93864175380182724 4 0.054509073741739945 5 0.0023693373940278412 
		7 0.0025795859173540548 8 0.0019002491450508415
		5 3 0.97227964306504289 4 0.024827505204676983 5 0.0012108420288732152 
		7 0.00096916169088826388 8 0.00071284801051856971
		5 3 0.90943984670528299 4 0.07844546382048026 5 0.0031967005278498704 
		7 0.0051969513641436232 8 0.0037210375822433008
		5 3 0.91902983672666549 4 0.066904634476486965 5 0.0028930203336611222 
		7 0.0067336172557616071 8 0.0044388912074248459
		5 3 0.98519113734636621 4 0.011576121611067464 5 0.00077389013584536507 
		7 0.0015693622910092717 8 0.00088948861571177336
		5 3 0.96842142778058249 4 0.025884705260417452 5 0.001232667742199964 
		7 0.0027589620974635344 8 0.0017022371193366232
		5 3 0.99425373772706083 4 0.0044903597977716189 5 0.00040247584050404696 
		7 0.00054358925567055778 8 0.00030983737899298785
		5 3 0.99855292342210411 4 0.0011806389404459558 5 0.00011943896346044694 
		7 9.0602681874249241e-05 8 5.639599211529361e-05
		5 2 0.061888883224710214 3 0.86192565942860566 4 0.023884917534360738 
		6 0.015131458446092799 7 0.037169081366230643
		5 2 0.042225114305325412 3 0.91696330415926341 4 0.014628142371279461 
		6 0.0079364340725202754 7 0.018247005091611559
		5 2 0.0029369175579278127 3 0.99462140560711687 4 0.00070255354639923756 
		6 0.00048021503333557576 7 0.0012589082552205142
		5 2 0.01876679866147209 3 0.96578895852073221 4 0.0054662211321882467 
		6 0.0030011132996750935 7 0.0069769083859323022
		5 2 0.00026529328348815135 3 0.99941805928358252 4 5.8504918225585066e-05 
		6 5.8173987346410177e-05 7 0.00019996852735739698
		5 2 0.0027331328612749234 3 0.98880281870267539 4 0.00062351483327393242 
		6 0.0010897370602425227 7 0.0067507965425330965
		5 2 0.010998983240953462 3 0.92062834445075903 4 0.0031758891562851661 
		6 0.0062861442518475277 7 0.058910638900154834
		5 2 0.026639626865059288 3 0.8374730865926614 4 0.0088909772992360851 
		6 0.015512508543299582 7 0.11148380069974367
		5 2 0.055720561975200283 3 0.75109361826866849 4 0.022214979720410435 
		6 0.030263566051973431 7 0.14070727398374741
		5 2 0.074661559438316399 3 0.78865006079696554 4 0.03131722878014577 
		6 0.026853450585866905 7 0.078517700398705398
		5 0 0.043981926222623105 1 0.090980832895043287 2 0.62969346086815559 
		6 0.19136185379155507 10 0.043981926222622959
		5 0 0.021281536120620372 1 0.040268819780286333 2 0.62805921786640151 
		6 0.28910889011207136 10 0.021281536120620319
		5 0 0.014997417942531101 1 0.058725831780771107 2 0.88903160567348261 
		6 0.022247726660683968 10 0.014997417942531068
		5 0 0.013068155799392942 1 0.083523216827582014 2 0.8797696080016143 
		6 0.010570863572017813 10 0.013068155799392907
		5 0 0.019711904986688577 1 0.13181097969693101 2 0.81407009475903014 
		6 0.014695115570661887 10 0.019711904986688525
		5 0 0.030193399062858645 1 0.1121384870259369 2 0.78532825485145863 
		6 0.042146459996887327 10 0.030193399062858537
		5 1 8.6878032671094837e-05 2 0.49947712223072449 3 0.48879562025234147 
		6 0.0058270239144616095 7 0.0058133555698013494
		5 1 0.00027205623885477148 2 0.5195746270694358 3 0.445639252218125 
		6 0.017507953558009992 7 0.017006110915574343
		5 1 0.00075665214589066231 2 0.50770987437530146 3 0.43174272008813847 
		6 0.030507709094048353 7 0.029283044296621125
		5 1 0.00049459745395904846 2 0.53468879169936867 3 0.44483676426188701 
		6 0.010121506122359675 7 0.0098583404624256292
		5 1 0.00082127040949451905 2 0.54497182212542328 3 0.43652118740116563 
		6 0.0089750355843973423 7 0.0087106844795191568
		5 1 0.00033981847528793892 2 0.54901172200160187 3 0.44448004892695042 
		6 0.0031099582832197934 7 0.003058452312939912
		5 1 6.9196568155755332e-05 2 0.49259615008103763 3 0.50477204815632692 
		6 0.0012805103698970827 7 0.00128209482458261
		5 1 2.6275615412336517e-05 2 0.49483867760952754 3 0.50317657342099009 
		6 0.00097887477442562586 7 0.00097959857964452003
		5 0 0.0096217891915041324 1 0.097573134918005441 2 0.87754128079203308 
		6 0.0056420059069531431 10 0.0096217891915041116
		5 0 0.012797476240404273 1 0.12953271200585101 2 0.8375794139908308 
		6 0.007292921522509651 10 0.012797476240404242
		5 1 6.3980985985051506e-05 2 0.5030990544086944 3 0.49559075604100439 
		6 0.00062326997529366123 7 0.00062293858902250532
		5 1 0.00013909062064021858 2 0.53587226286580392 3 0.46159826642617874 
		6 0.0011995632869357974 7 0.0011908168004413401
		5 0 0.01580268228867707 1 0.040270947707272749 2 0.86335171718207815 
		6 0.064771970533295128 10 0.015802682288677018
		5 1 0.00019126163251120308 2 0.84139137622030402 3 0.15604873056418062 
		6 0.001242972684810854 7 0.0011256588981933618
		5 1 0.00079426088538527007 2 0.77774099197224389 3 0.21525930529599305 
		6 0.0032789111092902047 7 0.0029265307370876814
		5 1 0.0012389086762289306 2 0.75656440324754071 3 0.22543881168992058 
		6 0.0091090814308539114 7 0.0076487949554559934
		5 1 0.00094867481252469937 2 0.75494704070432928 3 0.23521115788780478 
		6 0.0047160835896947733 7 0.0041770430056465016
		5 1 0.0010087178385259469 2 0.74703553930737709 3 0.22542241442176289 
		6 0.014706541196088522 7 0.011826787236245447
		5 1 0.0012912194687784767 2 0.67685438283211607 3 0.23858506569395466 
		6 0.048578166884981941 7 0.034691165120168822
		5 1 0.00058611972164539824 2 0.75091881829061857 3 0.20400950245988103 
		6 0.025705881034759015 7 0.018779678493095992
		5 1 0.00070462523873195213 2 0.77286834593039766 3 0.16376125471691125 
		6 0.038486980982880892 7 0.024178793131078336
		5 1 0.00025969246316095475 2 0.75105301207663855 3 0.23934553839803246 
		6 0.0049544099000658464 7 0.0043873471621023634
		5 1 0.00042365571156540756 2 0.75837806497619398 3 0.23390211258302696 
		6 0.0038502901285641187 7 0.003445876600649597
		5 1 0.0037380824266728522 2 0.95338090981821777 3 0.034818298728056168 
		6 0.0050923868497981138 7 0.0029703221772550835;
	setAttr ".wl[100:199].w"
		5 1 0.0027304356209608355 2 0.95284432338081471 3 0.036709846936537116 
		6 0.0048230695843466849 7 0.0028923244773406895
		5 0 0.006150534255124772 1 0.025835455547382851 2 0.94247755615138917 
		3 0.015745690672685692 6 0.0097907633734173449
		5 0 0.0035563384286816809 1 0.015571758005266235 2 0.96672798687878703 
		3 0.0084769094542085192 6 0.0056670072330564803
		5 1 0.010538846686913402 2 0.95840054145554932 3 0.012962661001598985 
		6 0.014257623470249864 7 0.0038403273856883772
		5 1 0.0036693879792118389 2 0.92308386035635337 3 0.053643156988134141 
		6 0.01279364393596481 7 0.0068099507403359639
		5 1 0.0044006513350650783 2 0.9345470013515873 3 0.048595984143404915 
		6 0.0078735125322459392 7 0.0045828506376967794
		5 0 0.0041226256034728112 1 0.014946848975850816 2 0.9594820615460028 
		3 0.012798598434389855 6 0.0086498654402836512
		5 1 0.0032170115459645063 2 0.89814395559069293 3 0.058242291703286146 
		6 0.028176250332545255 7 0.012220490827511157
		5 1 0.0093924762573206061 2 0.92199069941380252 3 0.017201304429287821 
		6 0.043677759523215683 7 0.0077377603763733741
		5 1 0.007033229388437875 2 0.87050385627634863 3 0.014461976376049334 
		6 0.098800121776208061 7 0.0092008161829561889
		5 1 0.0027664340699127192 2 0.8481561397966586 3 0.054362094579505103 
		6 0.073639916663915631 7 0.021075414890007933
		5 1 0.026027955299502182 2 0.63623190978159205 3 0.043684886782982574 
		6 0.26086222414418891 7 0.033193023991734391
		5 1 0.0047635590545506284 2 0.73155596883317664 3 0.093942783111681083 
		6 0.12791117518869366 7 0.041826513811898031
		5 1 0.0030106817890266186 2 0.76823656877824298 3 0.057794114664633918 
		6 0.14007948023685748 7 0.030879154531238986
		5 1 0.011495313084814834 2 0.65445942203660379 3 0.021191096469730126 
		6 0.29495624783664798 7 0.017897920572203248
		5 1 0.026512257620061614 2 0.87553283422316219 3 0.032601500451448509 
		6 0.052535439036570909 7 0.012817968668756743
		5 1 0.0038619156622003918 2 0.87251429953874504 3 0.080783888951844116 
		6 0.02855200959272489 7 0.014287886254485627
		5 0 0.0075227428984089538 1 0.025068184855253292 2 0.92768039108690448 
		3 0.021777582378938263 6 0.01795109878049507
		5 1 0.0034894073174150013 2 0.91998107201497237 3 0.05994599538071789 
		6 0.010486715306606441 7 0.0060968099802884371
		5 0 0.013437331378067704 1 0.027931533101659172 2 0.78432827354259027 
		6 0.16086553059961531 10 0.013437331378067659
		5 2 0.00089884093170232871 3 0.99874663943547892 4 3.597954654961068e-05 
		6 0.00010000323300072352 7 0.00021853685326825954
		5 2 0.007387733271832982 3 0.98446486653760779 4 0.00030645723524726475 
		6 0.001810272280050723 7 0.0060306706752613565
		5 2 0.03990774630333864 3 0.84383473437434942 4 0.002115881366070097 
		6 0.019467913761852248 7 0.094673724194389644
		5 2 0.079034063245920383 3 0.70913070571304138 4 0.0054023652957722991 
		6 0.042676926741591743 7 0.16375593900367433
		5 2 0.13209508902407271 3 0.65273269660772182 4 0.011250061093110155 
		6 0.058467512453502866 7 0.14545464082159251
		5 2 0.16296258102527311 3 0.70984088115801558 4 0.014189749166225273 
		6 0.040100209504968738 7 0.072906579145517333
		5 2 0.15335619094241265 3 0.77309947751595887 4 0.012313534426627351 
		6 0.023302100196694053 7 0.037928696918307025
		5 2 0.13087303538446182 3 0.82512148331442814 4 0.0092972473692766663 
		6 0.013660079588143963 7 0.021048154343689448
		5 2 0.06869797286035155 3 0.91336201973253928 4 0.0038031248679182474 
		6 0.005475654891228518 7 0.0086612276479625314
		5 2 0.010956182989645701 3 0.98624532767735074 4 0.00045547998658501882 
		6 0.00084560683629089021 7 0.0014974025101277531
		5 0 0.10127459316257609 1 0.23389389330234134 2 0.45997704581240295 
		6 0.10357987456010379 10 0.10127459316257578
		5 0 0.070775462247067586 1 0.14276155110826541 2 0.51545552928473992 
		6 0.20023199511285986 10 0.070775462247067253
		5 0 0.047305776526765653 1 0.2238534465759765 2 0.6519102151196513 
		6 0.029624785250841102 10 0.047305776526765535
		5 0 0.030866269131065587 1 0.2834453511055971 2 0.64224463626415951 
		6 0.012577474368112152 10 0.030866269131065507
		5 0 0.023313152561520903 1 0.45261846102123765 2 0.49335928234831944 
		10 0.023313152561520868 11 0.0073959515074010747
		5 0 0.058441914425935146 1 0.37466849417763565 2 0.48789424786190255 
		6 0.020553429108591707 10 0.058441914425934986
		5 0 0.013887595149375636 1 0.33109272183539418 2 0.63703796406873803 
		6 0.0040941237971166104 10 0.013887595149375601
		5 0 0.013055360148181235 1 0.42302780893022884 2 0.54671192693953286 
		10 0.013055360148181207 11 0.0041495438338757908
		5 0 0.056926922375906415 1 0.16524345783364147 2 0.65674443561346696 
		6 0.064158261801078934 10 0.056926922375906221
		5 0 0.041755169935316451 1 0.097879854269359218 2 0.6888794093997731 
		6 0.12973039646023504 10 0.041755169935316257
		5 3 0.010514863837082247 4 0.88653602191024861 5 0.10173256077674328 
		8 0.00063932792622547964 9 0.00057722554970043166
		5 3 0.0080563196925983148 4 0.89040718329032342 5 0.10089335133766968 
		8 0.00033360577750500011 9 0.00030953990190367485
		5 3 0.03734906712721759 4 0.8356508295131132 5 0.12002272085125662 
		8 0.0038555081654742204 9 0.0031218743429382305
		5 3 0.32925333977298132 4 0.64392674504274405 5 0.023556599691071833 
		7 0.0015989380560367048 8 0.001664377437165989
		5 3 0.28265638972483625 4 0.7029190914798662 5 0.010968607583020106 
		7 0.0016785501085409835 8 0.0017773611037364442
		5 3 0.24520634669338992 4 0.73382951248662998 5 0.019202816682240689 
		7 0.0008584017905741726 8 0.00090292234716515959
		5 3 0.50538702512956513 4 0.48690123623088366 5 0.0062293360861181901 
		7 0.00074173510846382189 8 0.00074066744496924047
		5 3 0.40813199104730385 4 0.58240724375802677 5 0.0082233791113414858 
		7 0.00061476957068267281 8 0.00062261651264528255
		5 3 0.72393596191914633 4 0.27160986492443234 5 0.0035117748086259536 
		7 0.00047880262534660053 8 0.00046359572244883412
		5 3 0.69629979924711782 4 0.29978388762692748 5 0.0028788263469619337 
		7 0.00052616220373746488 8 0.00051132457525535427
		5 3 0.76511802524740125 4 0.22991262523334874 5 0.0025091047247916519 
		7 0.0012707498331179766 8 0.0011894949613404451
		5 3 0.44680398127109677 4 0.54620946076919352 5 0.0042167502672709632 
		7 0.0013775360020414251 8 0.0013922716903973593
		5 3 0.50773869116156856 4 0.48449152360985948 5 0.0032270739007522848 
		7 0.0022749577235798603 8 0.0022677536042398951
		5 3 0.68123859373369888 4 0.31075855834006066 5 0.0028312640862683302 
		7 0.0026623144833448058 8 0.0025092693566274213
		5 3 0.37665249894098596 4 0.61329201657136423 5 0.0057873743169315952 
		7 0.0020993119772428031 8 0.0021687981934755229
		5 3 0.47687914501856027 4 0.51375694124324267 5 0.004378983442043979 
		7 0.0024858776112167795 8 0.0024990526849363614
		5 3 0.46052383210685699 4 0.52921059905831258 5 0.0087016292534713175 
		7 0.00077980607122362831 8 0.00078413351013553452
		5 3 0.32519100444018778 4 0.65736476760927409 5 0.015750717043478753 
		7 0.00083393917350722835 8 0.0008595717335521543
		5 3 0.6643245226364427 4 0.33313643900574086 5 0.0016745018040134891 
		7 0.00043681251491130453 8 0.00042772403889165534
		5 3 0.50098422939752396 4 0.49512416952278698 5 0.0028440225266365927 
		7 0.00052388921100691912 8 0.00052368934204549157
		5 3 0.4928880938489768 4 0.49288809384897669 5 0.0050875573605465556 
		7 0.0045681274707499537 8 0.0045681274707499537
		5 3 0.49677841694589503 4 0.49677841694589481 5 0.0034396237257287359 
		7 0.0015017711912407353 8 0.0015017711912407353
		5 3 0.49051865383258253 4 0.49051865383258275 5 0.0049585416439361695 
		7 0.007002075345449262 8 0.007002075345449262
		5 3 0.49805394023414556 4 0.49500792651502484 5 0.002384972203405656 
		7 0.002277053380082039 8 0.0022761076673419329
		5 3 0.63136677261542284 4 0.36103802097111792 5 0.002318656099808697 
		7 0.0026932450267604753 8 0.0025833052868900817
		5 3 0.49499748949782119 4 0.49499748949782141 5 0.0037483453403204473 
		7 0.0031283378320185028 8 0.0031283378320185028
		5 3 0.49744960230159857 4 0.49744960230159879 5 0.0039331550740126517 
		7 0.00058382016139495901 8 0.00058382016139495901
		5 3 0.49843082142974565 4 0.49843082142974565 5 0.002005741717896537 
		7 0.00056630771130604157 8 0.00056630771130604157
		5 3 0.61396448961233063 4 0.38377241865512657 5 0.0013309581075350496 
		7 0.0004694675090104552 8 0.00046266611599728283
		5 3 0.49808378468964187 4 0.4980837846896421 5 0.0026161594851901162 
		7 0.00060813556776291393 8 0.00060813556776291393
		5 3 0.57758528923653296 4 0.4142824665321781 5 0.0023677038391328393 
		7 0.0029190697132245101 8 0.0028454706789316424
		5 3 0.49515248821858615 4 0.49515248821858604 5 0.0028919148007117306 
		7 0.0034015543810580785 8 0.0034015543810580785
		5 3 0.49391647385473092 4 0.49391647385473092 5 0.0039429026066428955 
		7 0.0041120748419476846 8 0.0041120748419476846
		5 3 0.051117286199536052 4 0.8993703200793226 5 0.04819860220362876 
		7 0.00060044454889196519 8 0.00071334696862064822
		5 3 0.051472500921770484 4 0.90486909459389042 5 0.041832313645949463 
		7 0.00082103256932685646 8 0.0010050582690628682
		5 3 0.085135800953286309 4 0.87277467870818115 5 0.037225852401848301 
		7 0.0021515490569544845 8 0.0027121188797298076
		5 3 0.49108323888351824 4 0.49108323888351801 5 0.0073353252000187639 
		7 0.0052490985164725321 8 0.0052490985164725321
		5 3 0.49039780300962993 4 0.49039780300962993 5 0.0062628960263318876 
		7 0.0064707489772041328 8 0.0064707489772041328
		5 3 0.496157404914358 4 0.49615740491435822 5 0.0047557789955899364 
		7 0.0014647055878468818 8 0.0014647055878468818
		5 3 0.17433596879342592 4 0.80010152461603701 5 0.02403555347753784 
		7 0.00073655744823303336 8 0.00079039566476617792
		5 3 0.39711535242986756 4 0.58292370997152887 5 0.01762412155042847 
		7 0.001157341568628275 8 0.0011794744795468187
		5 3 0.49549919698590716 4 0.49549919698590716 5 0.0069843100844450357 
		7 0.0010086479718703449 8 0.0010086479718703449
		5 3 0.43386370984477857 4 0.55013916563107901 5 0.0084377492821691401 
		7 0.0037401986427675403 8 0.0038191765992058044
		5 3 0.20237189338260964 4 0.78225835674029331 5 0.01101339647837664 
		7 0.002067317814152328 8 0.0022890355845680485
		5 3 0.49082312293187014 4 0.49082312293186992 5 0.0070080014241075701 
		7 0.0056728763560762053 8 0.0056728763560762053
		5 3 0.095694988992614791 4 0.85362216941589852 5 0.042471311395649899 
		7 0.0035466431716678053 8 0.0046648870241691722
		5 3 0.054979714392845068 4 0.86921594058872775 5 0.074245759305293063 
		8 0.00083561341473292565 9 0.00072297229840105072
		5 3 0.028457164157164261 4 0.72454686322628725 5 0.2448753007477068 
		8 0.0010895328044604566 9 0.0010311390643812049
		5 3 0.050847776734204125 4 0.80315447015521702 5 0.1324280348366744 
		8 0.0076868987882299728 9 0.0058828194856744686
		5 3 0.0018303194961613977 4 0.65392577579188949 5 0.34385893110582466 
		8 0.0001937385064438061 9 0.00019123509968062429
		5 3 0.0050735112591487773 4 0.56503316832690176 5 0.4289702296618827 
		8 0.00046349352737721274 9 0.00045959722468961268
		5 3 0.019814992840037272 4 0.71539810516420654 5 0.25456643615265556 
		8 0.0054017713092575107 9 0.0048186945338429881
		5 3 0.0094713373892525536 4 0.72406851590921617 5 0.26271646254931214 
		8 0.0019346260217318989 9 0.0018090581304872452
		5 3 0.0026934374188775723 4 0.67937184594440947 5 0.31713492446392383 
		8 0.00040439394699942155 9 0.00039539822578972799
		5 3 0.48745559353686474 4 0.48745559353686474 5 0.010851519285833945 
		7 0.007118646820218337 8 0.007118646820218337
		5 3 0.48556758555146379 4 0.48556758555146401 5 0.010097896606253154 
		7 0.0093834661454094762 8 0.0093834661454094762
		5 3 0.49357152372265767 4 0.49357152372265767 5 0.0081474116343003486 
		7 0.0023547704601921304 8 0.0023547704601921304
		5 3 0.17690768272600918 4 0.77729661002563188 5 0.043493873347154106 
		7 0.0011024266003501805 8 0.0011994073008545548
		5 3 0.37707280354616157 4 0.59306948603874809 5 0.026628208513110856 
		7 0.001593341740722079 8 0.0016361601612573272
		5 3 0.4898493908846977 4 0.49434201637871683 5 0.012450929819630205 
		7 0.0016783838478054854 8 0.0016792790691496583;
	setAttr ".wl[200:299].w"
		5 3 0.41214736093858478 4 0.56055543903071359 5 0.015238050093469813 
		7 0.0059256453798403521 8 0.0061335045573914799
		5 3 0.18790154868045295 4 0.78728452673526206 5 0.018524418819967067 
		7 0.0029372415107640926 8 0.0033522642535538422
		5 3 0.48492537663571622 4 0.48492537663571611 5 0.012215757189723734 
		7 0.0089667447694219519 8 0.0089667447694219519
		5 3 0.08731460567881548 4 0.84808737000050538 5 0.055239816710006502 
		7 0.0039545477525925552 8 0.005403659858080145
		5 3 0.07321226355585321 4 0.78703406612801252 5 0.13702487290550058 
		8 0.0014435712905789668 9 0.0012852261200547693
		5 3 0.047607699171895765 4 0.61868909160110286 5 0.32968107170880384 
		8 0.0020534691485992163 9 0.0019686683695983869
		5 3 0.04394710144825454 4 0.78699536621628463 5 0.15509116429306063 
		8 0.0078001109825904533 9 0.0061662570598098043
		5 3 0.022256576536519159 4 0.52481794880977217 5 0.44958972554560356 
		8 0.0016754367526566429 9 0.0016603123554486073
		5 3 0.016234906755752062 4 0.69070624974484141 5 0.28344762753634739 
		8 0.0050301856331225669 9 0.0045810303299366568
		5 3 0.0033211102625294981 4 0.52670035725620346 5 0.46746520666639374 
		8 0.0012604360107854005 9 0.0012528898040879506
		5 3 0.00083575739322029911 4 0.50505314885945862 5 0.4936828455934747 
		8 0.00021417456027040201 9 0.00021407359357603499
		5 3 0.12761456629666984 4 0.84550612335127728 5 0.023075387327955554 
		7 0.0017604664120418152 8 0.0020434566120554518
		5 3 0.071367961173776057 4 0.88705090454601254 5 0.038983615666245058 
		7 0.0011739774592584257 8 0.0014235411547078474
		5 3 0.16382843525648935 4 0.79443848468115674 5 0.038075109360880377 
		7 0.0017237112967281659 8 0.0019342594047453349
		5 3 0.35534759221002743 4 0.59773941429944333 5 0.033661947122686019 
		7 0.0064185008393415283 8 0.0068325455285018124
		5 3 0.12968998764133979 4 0.75508958375547774 5 0.11126406285650908 
		7 0.0018355864212714435 8 0.0021207793254019057
		5 3 0.31033796523797841 4 0.62947926000595444 5 0.054551098353295656 
		7 0.0027359873473577884 8 0.002895689055413752
		5 3 0.46807291830253117 4 0.4974404774542539 5 0.024166074101543117 
		7 0.0051440283984147293 8 0.0051765017432571104
		5 3 0.46475602436897656 4 0.48661082510378256 5 0.026512402042486394 
		7 0.011021619112641301 8 0.011099129372113214
		5 3 0.45337087941899362 4 0.50652829893217577 5 0.032572543590182773 
		7 0.0037456436713976175 8 0.0037826343872501673
		5 3 0.47501039699788683 4 0.47501039699788683 5 0.022228471526093453 
		7 0.01387536723906641 8 0.01387536723906641
		5 3 0.48010369080074361 4 0.4801036908007435 5 0.021582678518813792 
		7 0.0091049699398495741 8 0.0091049699398495741
		5 3 0.48247243755427988 4 0.4824724375542801 5 0.023763779039191593 
		7 0.0056456729261241817 8 0.0056456729261241817
		5 3 0.029904123544831022 4 0.9205718834483908 5 0.046991852349432317 
		8 0.0014253373214344548 9 0.0011068033359113976
		5 3 0.036902478353539131 4 0.83603146481266855 5 0.12511550031940624 
		8 0.0010279781817753829 9 0.00092257833261083434
		5 3 0.066918740671104177 4 0.70507982303917449 5 0.22402602753339232 
		8 0.0020693118032606684 9 0.0019060969530684492
		5 3 0.030310651266293048 4 0.59965741493729163 5 0.36668479764245498 
		8 0.001698214851565122 9 0.0016489213023952558
		5 3 0.0014798254734396086 4 0.90935606753135445 5 0.088897014762168561 
		8 0.00013710227825714546 9 0.00012998995478025535
		5 3 0.01309386329265113 4 0.56657519680004409 5 0.40620288391331993 
		8 0.0072067749476673023 9 0.0069212810463175501
		5 3 0.0042635639692946911 4 0.49739729343947758 5 0.49719343053501108 
		8 0.00057286001358870667 9 0.00057285204262796301
		5 3 0.013180965388549215 4 0.57465468160826716 5 0.39930312890046032 
		8 0.0065663838105019133 9 0.0062948402922214045
		5 3 0.00099933101834458085 4 0.50651890500133157 5 0.49215384913631832 
		8 0.00016400016294450815 9 0.00016391468106102903
		5 3 0.010673806590972688 4 0.49334166659610146 5 0.49334166659610135 
		8 0.0013214301084122661 9 0.0013214301084122661
		5 3 0.014710127044210517 4 0.50851896056295798 5 0.47403992770107173 
		8 0.0013680204939591472 9 0.001362964197800656
		5 3 0.0046599237127231078 4 0.51462160452966943 5 0.47968315524390998 
		8 0.00051824566906724374 9 0.00051707084463030212
		5 3 0.0033025079866332895 4 0.49784252477862234 5 0.49784252477862256 
		8 0.00050622122806092892 9 0.00050622122806092892
		5 3 0.015728906326130443 4 0.49306667269411347 5 0.48792385775193897 
		8 0.0016407789033554806 9 0.0016397843244616726
		5 3 0.021302197467308062 4 0.51879517009040721 5 0.45656036761334767 
		8 0.0016773902669860706 9 0.0016648745619508114
		5 3 0.049023409968504482 4 0.59120413542525407 5 0.35521622356283589 
		8 0.0023191312902446073 9 0.002237099753160882
		5 3 0.089125171872728781 4 0.71155831228015964 5 0.19520863214884224 
		8 0.0021541261068806186 9 0.0019537575913887019
		5 3 0.17693305756060729 4 0.7372878275020075 5 0.082135422242469808 
		7 0.0017276980068130403 8 0.0019159946881023198
		5 3 0.3547821931704162 4 0.60599724300711544 5 0.035245549985091024 
		7 0.0019525775515251843 8 0.0020224362858521903
		5 3 0.48123930583267033 4 0.49578702134702929 5 0.01829421939729137 
		7 0.002337315409467593 8 0.0023421380135413682
		5 3 0.49005696170203145 4 0.49005696170203145 5 0.012966266469224826 
		7 0.0034599050633561113 8 0.0034599050633561113
		5 3 0.48474551657607107 4 0.48474551657607129 5 0.014050104749984759 
		7 0.0082294310489363712 8 0.0082294310489363712
		5 3 0.48052435130160764 4 0.48052435130160753 5 0.0147328011782096 
		7 0.01210924810928761 8 0.01210924810928761
		5 3 0.47976249288497536 4 0.48261360069865999 5 0.016962994815189338 
		7 0.01032597166943185 8 0.010334939931743484
		5 3 0.39114855426224526 4 0.57488033238912595 5 0.020795959220352159 
		7 0.006437901075200694 8 0.0067372530530759199
		5 3 0.15910838013790132 4 0.81711129592802922 5 0.018908468031211392 
		7 0.0022680252913750295 8 0.0026038306114830206
		5 3 0.071969284980296769 4 0.86394750027297651 5 0.056606051215611998 
		7 0.0031421068357190547 8 0.0043350566953956598
		5 3 0.030599363980073919 4 0.81123027980423879 5 0.14926590271000684 
		8 0.0048886809657474432 9 0.0040157725399330079
		5 3 0.0087147937699411405 4 0.67317730333510561 5 0.31288655822080236 
		8 0.0026865244416955521 9 0.0025348202324554339
		5 3 0.00033881548237636174 4 0.4997597121733105 5 0.4997597121733105 
		8 7.0880085501330692e-05 9 7.0880085501330692e-05
		5 3 0.010082938203390391 4 0.49332142944849683 5 0.49332142944849683 
		8 0.001637101449808017 9 0.001637101449808017
		5 3 0.0047543881986906126 4 0.49677173097400629 5 0.49677173097400618 
		8 0.0008510749266484451 9 0.0008510749266484451
		5 3 0.0024704950810358821 4 0.49640532064502252 5 0.49640532064502252 
		8 0.0023594318144595241 9 0.0023594318144595241
		5 3 0.0044125956635151726 4 0.49264836902531289 5 0.49264836902531312 
		8 0.0051453331429293812 9 0.0051453331429293812
		5 3 0.0077248775725962575 4 0.48509600183034546 5 0.48509600183034546 
		8 0.011041559383356327 9 0.011041559383356327
		5 3 0.011438775862895607 4 0.47587348411505065 5 0.47587348411505087 
		8 0.018407127953501357 9 0.018407127953501357
		5 3 0.015345308220676243 4 0.4666318167008604 5 0.46663181670086062 
		8 0.025695529188801323 9 0.025695529188801323
		5 3 0.0030524675656955044 4 0.4959505472519562 5 0.49595054725195642 
		8 0.0025232189651959226 9 0.0025232189651959226
		5 3 0.0041982447983303058 4 0.49372421073918582 5 0.49372421073918571 
		8 0.0041766668616490601 9 0.0041766668616490601
		5 3 0.0075517156610617397 4 0.48682348315773882 5 0.48682348315773849 
		8 0.0094006590117305285 9 0.0094006590117305285
		5 3 0.011633706449446023 4 0.47731784258093479 5 0.47731784258093501 
		8 0.016865304194342068 9 0.016865304194342068
		5 3 0.014736083141659575 4 0.46987055349414436 5 0.46987055349414436 
		8 0.022761404935025917 9 0.022761404935025917
		5 3 0.0014873309474811303 4 0.49855120777229461 5 0.49855120777229461 
		8 0.00070512675396482442 9 0.00070512675396482442
		5 3 0.0031782870263102657 4 0.49624375263933396 5 0.49624375263933385 
		8 0.0021671038475109933 9 0.0021671038475109933
		5 3 0.0062688915091261514 4 0.49149342154745829 5 0.49149342154745829 
		8 0.0053721326979786332 9 0.0053721326979786332
		5 3 0.01028384597302711 4 0.48418565067285568 5 0.48418565067285568 
		8 0.010672426340630805 9 0.010672426340630805
		5 3 0.013628991233378112 4 0.47665958332825631 5 0.47665958332825631 
		8 0.016525921055054637 9 0.016525921055054637
		5 3 0.0012980667265011208 4 0.49866553829340932 5 0.49866553829340932 
		8 0.0006854283433401293 9 0.0006854283433401293
		5 3 0.0030311454378428707 4 0.49638923430612836 5 0.49638923430612858 
		8 0.0020951929749500938 9 0.0020951929749500938
		5 3 0.0059424131879613051 4 0.49200922504280004 5 0.49200922504279992 
		8 0.0050195683632193767 9 0.0050195683632193767
		5 3 0.0095945813553020374 4 0.48551935214779612 5 0.48551935214779635 
		8 0.0096833571745526901 9 0.0096833571745526901
		5 3 0.013852550818330854 4 0.47608872723153611 5 0.47608872723153611 
		8 0.016984997359298475 9 0.016984997359298475
		5 3 0.0017999761882920625 4 0.49739759465798433 5 0.49739759465798422 
		8 0.001702417247869642 9 0.001702417247869642
		5 3 0.0042643057902052028 4 0.49288285797578968 5 0.49288285797578968 
		8 0.0049849891291077275 9 0.0049849891291077275
		5 3 0.0032699916747420108 4 0.4957289722685338 5 0.49572897226853357 
		8 0.0026360318940953842 9 0.0026360318940953842
		5 3 0.00097158211336016557 4 0.49899100135938884 5 0.49899100135938884 
		8 0.00052320758393106022 9 0.00052320758393106022
		5 3 0.0072273423569782849 4 0.48634605365401179 5 0.48634605365401179 
		8 0.010040275167499075 9 0.010040275167499075
		5 3 0.0060413222372639516 4 0.49109433994487095 5 0.49109433994487095 
		8 0.005884998936497108 9 0.005884998936497108
		5 3 0.01046726251101127 4 0.4785180592594318 5 0.47851805925943169 
		8 0.016248309485062607 9 0.016248309485062607
		5 3 0.0092252231866241947 4 0.48498437768723468 5 0.48498437768723457 
		8 0.010403010719453295 9 0.010403010719453295
		5 3 0.013569130058542978 4 0.47121363228088398 5 0.47121363228088375 
		8 0.022001802689844672 9 0.022001802689844672
		5 3 0.012528635712873996 4 0.47766126469032277 5 0.47766126469032277 
		8 0.016074417453240192 9 0.016074417453240192
		5 3 0.0023417602708935303 4 0.4979754718215767 5 0.4979754718215767 
		8 0.00085364804297652645 9 0.00085364804297652645
		5 3 0.0031113285742126202 4 0.49723018391590229 5 0.49723018391590251 
		8 0.0012141517969912507 9 0.0012141517969912507
		5 3 0.0041590940028605168 4 0.49606414669660265 5 0.49606414669660287 
		8 0.0018563063019669313 9 0.0018563063019669313
		5 3 0.0058218625640724733 4 0.49412228299455052 5 0.49412228299455052 
		8 0.0029667857234132724 9 0.0029667857234132724
		5 3 0.0081365640834338299 4 0.49133478227020549 5 0.49133478227020549 
		8 0.0045969356880776642 9 0.0045969356880776642
		5 3 0.0023422938782925134 4 0.49806608655741458 5 0.49806608655741458 
		8 0.00076276650343917133 9 0.00076276650343917133
		5 3 0.0033696749594568929 4 0.49711634878593014 5 0.49711634878593014 
		8 0.0011988137343413668 9 0.0011988137343413668
		5 3 0.0045752156592959326 4 0.49581804053234413 5 0.49581804053234413 
		8 0.0018943516380078747 9 0.0018943516380078747
		5 3 0.0063943199976029715 4 0.49371528740353365 5 0.49371528740353354 
		8 0.0030875525976649409 9 0.0030875525976649409
		5 3 0.0081834621750399971 4 0.49153869377495119 5 0.49153869377495119 
		8 0.0043695751375288023 9 0.0043695751375288023
		5 3 0.0055059115325737868 4 0.49584605966670287 5 0.49584605966670309 
		8 0.0014009845670100774 9 0.0014009845670100774
		5 3 0.0056900771981673974 4 0.49539559142342604 5 0.49539559142342604 
		8 0.0017593699774902721 9 0.0017593699774902721
		5 3 0.0068863706706748786 4 0.49408352263535121 5 0.49408352263535121 
		8 0.002473292029311373 9 0.002473292029311373
		5 3 0.0086033886579844534 4 0.49208539116066724 5 0.49208539116066724 
		8 0.0036129145103405698 9 0.0036129145103405698
		5 3 0.0099054692418311073 4 0.49030217142210963 5 0.49030217142210952 
		8 0.0047450939569749105 9 0.0047450939569749105;
	setAttr ".wl[300:399].w"
		5 3 0.0057672179732607175 4 0.4954725934168428 5 0.4954725934168428 
		8 0.0016437975965268325 9 0.0016437975965268325
		5 3 0.0058892473183429772 4 0.49517545594654527 5 0.4951754559465455 
		8 0.0018799203942830717 9 0.0018799203942830717
		5 3 0.00707214705457377 4 0.49390568480636715 5 0.49390568480636693 
		8 0.0025582416663461108 9 0.0025582416663461108
		5 3 0.0085824555983057549 4 0.49214081447214247 5 0.49214081447214247 
		8 0.0035679577287046661 9 0.0035679577287046661
		5 3 0.010292325031642452 4 0.48980091392512465 5 0.48980091392512443 
		8 0.0050529235590542967 9 0.0050529235590542967
		5 3 0.001870659661036698 4 0.49837740778174017 5 0.49837740778174017 
		8 0.00068726238774157616 9 0.00068726238774157616
		5 3 0.0032481718031356333 4 0.4970695362098248 5 0.4970695362098248 
		8 0.001306377888607385 9 0.001306377888607385
		5 3 0.00524731837597697 4 0.49554312996224897 5 0.49554312996224897 
		8 0.0018332108497625429 9 0.0018332108497625429
		5 3 0.0049543355836186445 4 0.49615872764261915 5 0.49615872764261904 
		8 0.0013641045655716092 9 0.0013641045655716092
		5 3 0.0043594021509794755 4 0.49582499867836016 5 0.49582499867836005 
		8 0.0019953002461501603 9 0.0019953002461501603
		5 3 0.0063892759994721203 4 0.49427520613278714 5 0.49427520613278714 
		8 0.002530155867476804 9 0.002530155867476804
		5 3 0.00585275945718547 4 0.49405281155008324 5 0.49405281155008324 
		8 0.0030208087213239943 9 0.0030208087213239943
		5 3 0.0078050316821472471 4 0.49260089529890638 5 0.4926008952989066 
		8 0.0034965888600198146 9 0.0034965888600198146
		5 3 0.0076532552966773627 4 0.49188418449372157 5 0.49188418449372157 
		8 0.00428918785793972 9 0.00428918785793972
		5 3 0.0092079425719940097 4 0.49076869937802259 5 0.49076869937802259 
		8 0.004627329335980433 9 0.004627329335980433
		5 3 0.0021159125996425073 4 0.49770649788075322 5 0.49770649788075322 
		8 0.001235545819425519 9 0.001235545819425519
		5 3 0.0041901974718838841 4 0.49486546297364659 5 0.49486546297364647 
		8 0.0030394382904115678 9 0.0030394382904115678
		5 3 0.0074095190845184476 4 0.48988045026382299 5 0.48988045026382299 
		8 0.0064147901939177916 9 0.0064147901939177916
		5 3 0.011202802852417038 4 0.48354993763338583 5 0.48354993763338583 
		8 0.010848660940405701 9 0.010848660940405701
		5 3 0.0021779552041726372 4 0.49777718869719284 5 0.49777718869719306 
		8 0.0011338337007206906 9 0.0011338337007206906
		5 3 0.0042878170251236967 4 0.49506541192425885 5 0.49506541192425907 
		8 0.0027906795631791907 9 0.0027906795631791907
		5 3 0.0079471014317769352 4 0.48961176253452904 5 0.48961176253452904 
		8 0.0064146867495825073 9 0.0064146867495825073
		5 3 0.010908593087947081 4 0.48471548561156214 5 0.48471548561156214 
		8 0.0098302178444643392 9 0.0098302178444643392
		5 3 0.0031008691864934058 4 0.4971618171312992 5 0.49716181713129898 
		8 0.0012877482754542363 9 0.0012877482754542363
		5 3 0.0052098690431662334 4 0.49471326803866239 5 0.49471326803866217 
		8 0.0026817974397546295 9 0.0026817974397546295
		5 3 0.0087152551670175108 4 0.49002580682597319 5 0.49002580682597319 
		8 0.0056165655905180906 9 0.0056165655905180906
		5 3 0.011435364414191365 4 0.48565161450599753 5 0.48565161450599742 
		8 0.008630703286906842 9 0.008630703286906842
		5 3 0.0031528632979585338 4 0.4970652114119366 5 0.4970652114119366 
		8 0.0013583569390841523 9 0.0013583569390841523
		5 3 0.0051864043597830691 4 0.49471597460505062 5 0.49471597460505062 
		8 0.002690823215057861 9 0.002690823215057861
		5 3 0.0082217160559798861 4 0.49068581721958593 5 0.49068581721958571 
		8 0.005203324752424218 9 0.005203324752424218
		5 3 0.011787008522610472 4 0.48499926139299371 5 0.48499926139299393 
		8 0.009107234345700899 9 0.009107234345700899
		5 3 0.0022111210477801955 4 0.49754763350126507 5 0.4975476335012653 
		8 0.0013468059748446709 9 0.0013468059748446709
		5 3 0.0029871230650091317 4 0.4970640965208894 5 0.49706409652088918 
		8 0.0014423419466061942 9 0.0014423419466061942
		5 3 0.0041114989563878464 4 0.49492182752942121 5 0.49492182752942121 
		8 0.0030224229923848395 9 0.0030224229923848395
		5 3 0.0048737638548335804 4 0.49474240083267129 5 0.49474240083267129 
		8 0.0028207172399119271 9 0.0028207172399119271
		5 3 0.0069891461717227748 4 0.490459305194893 5 0.49045930519489289 
		8 0.0060461217192456854 9 0.0060461217192456854
		5 3 0.007684450567915539 4 0.49084768580340488 5 0.49084768580340477 
		8 0.0053100889126373833 9 0.0053100889126373833
		5 3 0.0099502197974338253 4 0.48561852882443141 5 0.48561852882443141 
		8 0.0094063612768517119 9 0.0094063612768517119
		5 3 0.010421879171423308 4 0.4865277499336419 5 0.4865277499336419 
		8 0.0082613104806464732 9 0.0082613104806464732
		5 3 0.0066360187694682778 4 0.49469689272504541 5 0.49469689272504541 
		8 0.0019850978902205374 9 0.0019850978902205374
		5 3 0.0071233623802809485 4 0.4941045223488843 5 0.49410452234888452 
		8 0.0023337964609750584 9 0.0023337964609750584
		5 3 0.0079942187936722538 4 0.49315529442733547 5 0.49315529442733547 
		8 0.0028475961758284126 9 0.0028475961758284126
		5 3 0.0095091996883487229 4 0.49162297752794709 5 0.49162297752794687 
		8 0.0036224226278787361 9 0.0036224226278787361
		5 3 0.0072433297809602216 4 0.49431839312854436 5 0.49431839312854436 
		8 0.0020599419809754532 9 0.0020599419809754532
		5 3 0.0078213571349278321 4 0.49363224814904372 5 0.49363224814904372 
		8 0.0024570732834923821 9 0.0024570732834923821
		5 3 0.0086899387618016473 4 0.4926584928956953 5 0.49265849289569519 
		8 0.0029965377234039492 9 0.0029965377234039492
		5 3 0.0097391702781741141 4 0.49154982886551629 5 0.49154982886551629 
		8 0.003580585995396633 9 0.003580585995396633
		5 3 0.010545331156567769 4 0.49252080273984999 5 0.49252080273984977 
		8 0.0022065316818662747 9 0.0022065316818662747
		5 3 0.010641048693390713 4 0.49187642230857836 5 0.49187642230857836 
		8 0.0028030533447263046 9 0.0028030533447263046
		5 3 0.01118152388938589 4 0.49116105645808944 5 0.49116105645808922 
		8 0.0032481815972177732 9 0.0032481815972177732
		5 3 0.011846699048240454 4 0.4902951739096636 5 0.4902951739096636 
		8 0.0037814765662161931 9 0.0037814765662161931
		5 3 0.012177741201510169 4 0.48970213468784857 5 0.48970213468784857 
		8 0.0042089947113963097 9 0.0042089947113963097
		5 3 0.0120975598718255 4 0.49142168322997548 5 0.49142168322997537 
		8 0.002529536834111831 9 0.002529536834111831
		5 3 0.011129112759391144 4 0.49147781017430187 5 0.49147781017430209 
		8 0.0029576334460024705 9 0.0029576334460024705
		5 3 0.011738138377065969 4 0.49069212590627154 5 0.49069212590627176 
		8 0.0034388049051953459 9 0.0034388049051953459
		5 3 0.012314215272785705 4 0.4899075193802509 5 0.4899075193802509 
		8 0.0039353729833562544 9 0.0039353729833562544
		5 3 0.012581502661872249 4 0.48928299684116833 5 0.48928299684116811 
		8 0.0044262518278957007 9 0.0044262518278957007
		5 3 0.0070468183685014375 4 0.49429478377597086 5 0.49429478377597086 
		8 0.0021818070397784236 9 0.0021818070397784236
		5 3 0.010144162702967247 4 0.49204565215824647 5 0.49204565215824647 
		8 0.0028822664902698907 9 0.0028822664902698907
		5 3 0.010645399319007582 4 0.49233632988466086 5 0.49233632988466064 
		8 0.0023409704558354904 9 0.0023409704558354904
		5 3 0.0076765068081127838 4 0.49357904255388152 5 0.49357904255388152 
		8 0.0025827040420620456 9 0.0025827040420620456
		5 3 0.010831110257843902 4 0.49122087695367839 5 0.49122087695367839 
		8 0.0033635679173996407 9 0.0033635679173996407
		5 3 0.0084375209424914343 4 0.49272304240136983 5 0.49272304240136983 
		8 0.0030581971273844354 9 0.0030581971273844354
		5 3 0.011405686256452613 4 0.490472661560866 5 0.490472661560866 
		8 0.0038244953109076718 9 0.0038244953109076718
		5 3 0.0095115459796373727 4 0.49161901791448881 5 0.49161901791448903 
		8 0.0036252090956923819 9 0.0036252090956923819
		5 3 0.011803587036988937 4 0.48986442474560316 5 0.48986442474560316 
		8 0.0042337817359024326 9 0.0042337817359024326
		5 3 0.0091170455547854544 4 0.4735185568928349 5 0.4735185568928349 
		8 0.021922920329772364 9 0.021922920329772364
		5 3 0.012236222826174993 4 0.45528752642178921 5 0.4552875264217891 
		8 0.038594362165123373 9 0.038594362165123373
		5 3 0.014985626033979982 4 0.43847389065813641 5 0.43847389065813619 
		8 0.054033296324873796 9 0.054033296324873796
		5 3 0.017162165033747862 4 0.42802962474067086 5 0.42802962474067108 
		8 0.063389292742455083 9 0.063389292742455083
		5 3 0.018661489399196457 4 0.42812094747681728 5 0.42812094747681728 
		8 0.062548307823584545 9 0.062548307823584545
		5 3 0.0042440765323957449 4 0.49288071468193967 5 0.49288071468193967 
		8 0.0049972470518624855 9 0.0049972470518624855
		5 3 0.0066818681925930679 4 0.48752704650615997 5 0.48752704650615997 
		8 0.009132019397543505 9 0.009132019397543505
		5 3 0.0098367853824179782 4 0.47951485399928889 5 0.47951485399928911 
		8 0.015566753309501953 9 0.015566753309501953
		5 3 0.013949520135656536 4 0.46596562116783768 5 0.46596562116783768 
		8 0.027059618764334045 9 0.027059618764334045
		5 3 0.00563170413056372 4 0.4867789936417628 5 0.48677899364176302 
		8 0.010405154292955198 9 0.010405154292955198
		5 3 0.010430701558297858 4 0.46453524797785556 5 0.46453524797785556 
		8 0.030249401242995574 9 0.030249401242995574
		5 3 0.0051234055792266442 4 0.48982407293437635 5 0.48982407293437635 
		8 0.0076142242760102929 9 0.0076142242760102929
		5 3 0.012980378137259194 4 0.45136116584605235 5 0.45136116584605257 
		8 0.042148645085317932 9 0.042148645085317932
		5 3 0.0075449818064945544 4 0.48336335490695825 5 0.48336335490695825 
		8 0.012864154189794426 9 0.012864154189794426
		5 3 0.01512500084665701 4 0.44142855899270289 5 0.44142855899270278 
		8 0.051008940583968661 9 0.051008940583968661
		5 3 0.010221268282890696 4 0.47547037668963887 5 0.4754703766896391 
		8 0.019418989168915615 9 0.019418989168915615
		5 3 0.016810819939107241 4 0.43710603268030024 5 0.43710603268030024 
		8 0.054488557350146072 9 0.054488557350146072
		5 3 0.01319221759870908 4 0.46542261114502448 5 0.4654226111450247 
		8 0.0279812800556208 9 0.0279812800556208
		5 3 0.0087580358868906572 4 0.47953154901015849 5 0.47953154901015826 
		8 0.016089433046396345 9 0.016089433046396345
		5 3 0.011382523054589189 4 0.46630163977204214 5 0.46630163977204203 
		8 0.028007098700663341 9 0.028007098700663341
		5 3 0.014166289082440307 4 0.45182265754810214 5 0.45182265754810191 
		8 0.041094197910677796 9 0.041094197910677796
		5 3 0.016790291257676029 4 0.4395778364119074 5 0.4395778364119074 
		8 0.052027017959254573 9 0.052027017959254573
		5 3 0.01826141784840182 4 0.43516351332823405 5 0.43516351332823427 
		8 0.055705777747564918 9 0.055705777747564918
		5 3 0.0053271750971168761 4 0.49097698577748083 5 0.49097698577748061 
		8 0.006359426673960852 9 0.006359426673960852
		5 3 0.0079729379293856477 4 0.48442816660523308 5 0.4844281666052333 
		8 0.011585364430073977 9 0.011585364430073977
		5 3 0.011316300894762651 4 0.47523919158703365 5 0.47523919158703365 
		8 0.019102657965585055 9 0.019102657965585055
		5 3 0.0143270101744149 4 0.46484566656233067 5 0.46484566656233089 
		8 0.027990828350461742 9 0.027990828350461742
		5 3 0.00072976317368432823 4 0.4994218694103838 5 0.49942186941038402 
		8 0.00021324900277394309 9 0.00021324900277394309
		5 3 0.00021657063448801453 4 0.4997968558578415 5 0.49979685585784139 
		8 9.4858824914562608e-05 9 9.4858824914562608e-05
		5 3 0.0010839846567796689 4 0.49921283694198654 5 0.49921283694198654 
		8 0.00024517072962357576 9 0.00024517072962357576
		5 3 0.00053937881688540651 4 0.49955416608622949 5 0.49955416608622938 
		8 0.00017614450532791586 9 0.00017614450532791586
		5 3 0.006664000148195447 4 0.48886881019650386 5 0.48886881019650363 
		8 0.0077991897293985509 9 0.0077991897293985509
		5 3 0.0021607435612252352 4 0.49771673985646969 5 0.49771673985646969 
		8 0.001202888362917656 9 0.001202888362917656
		5 3 0.012749793532983488 4 0.4916617926243575 5 0.4916617926243575 
		8 0.001963310609150747 9 0.001963310609150747;
	setAttr ".wl[400:499].w"
		5 3 0.0092808475731435604 4 0.49366092848737542 5 0.49366092848737508 
		8 0.0016986477260530226 9 0.0016986477260530226
		5 3 0.0036848131979119229 4 0.49735451701527378 5 0.49735451701527378 
		8 0.00080307638577029321 9 0.00080307638577029321
		5 3 0.0087833591484811676 4 0.49465883506878189 5 0.49444507734512794 
		8 0.0010563747704454875 9 0.0010563536671634665
		5 3 0.10039311172571461 4 0.84064359557585389 5 0.056439735326147406 
		7 0.0011695162166797603 8 0.0013540411556043225
		5 3 0.012007791064398135 4 0.93910814682628319 5 0.047960211834555351 
		8 0.00049688798040596822 9 0.00042696229435749906
		5 3 0.012751347805587749 4 0.70963591558313721 5 0.27620872732932206 
		8 0.00071531290664454336 9 0.00068869637530848951
		5 3 5.0210007972107473e-05 4 0.49995846317060472 5 0.49995846317060494 
		8 1.6431825409102605e-05 9 1.6431825409102605e-05
		5 3 0.017121662573814461 4 0.91482960378377021 5 0.067055057527039011 
		8 0.00052794990289384215 9 0.00046572621248249061
		5 3 0.0032442380530928938 4 0.85016444513727352 5 0.14616393686571788 
		8 0.00021847127295203251 9 0.00020890867096365454
		5 3 0.00013790634384878823 4 0.57434319588581562 5 0.42546015505104084 
		8 2.9405358337090913e-05 9 2.9337360957656679e-05
		5 3 0.0006412671358427323 4 0.53721564376608111 5 0.46195646636560334 
		8 9.340776339625201e-05 9 9.3214969076541634e-05
		5 3 0.009118967101341989 4 0.54231837892454793 5 0.43814671245812875 
		8 0.0052654046849953604 9 0.0051505368309859795
		5 3 0.010002144455616506 4 0.85199128280385716 5 0.13547083677271751 
		8 0.0013414590360987376 9 0.0011942769317100702
		5 3 0.0066970798850841656 4 0.48758633177086652 5 0.48758633177086641 
		8 0.0090651282865914194 9 0.0090651282865914194
		5 3 0.0057576455537121807 4 0.48921569441999313 5 0.48921569441999313 
		8 0.0079054828031508186 9 0.0079054828031508186
		5 3 0.0020967319511268458 4 0.64801891213645713 5 0.34871722366063579 
		8 0.0005899259831856176 9 0.00057720626859465577
		5 3 0.0012781115115150566 4 0.50338773110571422 5 0.49414435895233727 
		8 0.0005950896091193288 9 0.00059470882131410234
		5 3 0.0012739919859929897 4 0.49833192821986194 5 0.49833192821986216 
		8 0.0010310757871414597 9 0.0010310757871414597
		5 3 0.23639363450857029 4 0.71543376911698919 5 0.043958964278089596 
		7 0.002022335783873157 8 0.002191296312477789
		5 3 0.25363383102722398 4 0.707200777832514 5 0.032952367391421399 
		7 0.0029687730879715268 8 0.0032442506608692883
		5 3 0.070872560839842419 4 0.8871794014714407 5 0.039959231034326179 
		7 0.00091028466008886261 8 0.001078521994301697
		5 0 0.11108458675356818 1 0.38614276336032272 2 0.36175391518251948 
		6 0.029934147950021944 10 0.11108458675356779
		5 0 0.12159397818734533 1 0.30402552035823055 2 0.37661866461637999 
		6 0.076167858650699555 10 0.12159397818734458
		5 0 0.052249278057614042 1 0.42313039102241284 2 0.45654331708482521 
		10 0.052249278057614 11 0.015827735777533866
		5 0 0.037938674995436752 1 0.45375464203210569 2 0.45375464203210558 
		10 0.037938674995436704 11 0.016613365944915342
		5 0 0.086689754050001164 1 0.4005849063280984 2 0.39449840604742142 
		10 0.086689754050001067 11 0.03153717952447789
		5 0 0.02070380748698605 1 0.4757811404493944 2 0.4757811404493944 
		10 0.020703807486986026 11 0.0070301041272391191
		5 0 0.018776592331231065 1 0.47739937082548417 2 0.47739937082548439 
		10 0.018776592331231055 11 0.0076480736865692771
		5 0 0.095382317893493593 1 0.2378737066869665 2 0.46665022588026367 
		6 0.10471143164578318 10 0.09538231789349301
		5 0 0.14433955319731459 1 0.29199452977840862 2 0.24588871276905688 
		10 0.18646483384446683 11 0.13131237041075314
		5 0 0.11822526908097405 1 0.29973006681247494 2 0.29166303839776536 
		10 0.15925403325219312 11 0.13112759245659253
		5 0 0.15943917990177151 1 0.27364045289009586 2 0.24923609978714417 
		10 0.18249741198236638 11 0.13518685543862208
		5 0 0.11839795123651665 1 0.31526275873262244 2 0.30935644261022421 
		10 0.14506599776948001 11 0.11191684965115663
		5 0 0.23863745683558141 1 0.24512778322585818 2 0.12461463423026214 
		10 0.24927563852580215 11 0.14234448718249615
		5 0 0.17093837406577087 1 0.17093837406577087 10 0.30830979535281933 
		11 0.2787316967224937 12 0.071081759793145266
		5 0 0.15405574017912232 1 0.15765183437861954 10 0.30625953841929499 
		11 0.29385534557649429 12 0.088177541446468735
		5 0 0.20797011201528565 1 0.25619057142359142 2 0.18029354627367111 
		10 0.22095003243176056 11 0.13459573785569132
		5 0 0.0084967853028160099 1 0.0084967853028160099 10 0.094329941884475521 
		11 0.48469996751247513 12 0.40397651999741746
		5 10 0.052504273296705498 11 0.24060010930891959 12 0.58333463543677166 
		13 0.061780099201875951 35 0.061780882755727219
		5 0 0.15810964666124874 1 0.15810964666124874 10 0.32147625211808639 
		11 0.29391655831676494 12 0.068387896242651292
		5 0 0.25172243728125038 1 0.25172243728125038 6 0.064797263197114693 
		10 0.27547831476564971 11 0.15627954747473491
		5 0 0.062653446315699204 1 0.062653446315699204 10 0.3633865086083985 
		11 0.38585647399203887 12 0.12545012476816436
		5 0 0.079176330921865101 1 0.079176330921865101 10 0.31409548320912434 
		11 0.34424517131524268 12 0.18330668363190289
		5 0 0.030245428600041143 1 0.030245428600041143 10 0.15077382074222551 
		11 0.38608379167916185 12 0.40265153037853024
		5 0 0.185058961387911 1 0.185058961387911 10 0.30615069893052743 
		11 0.26176799892860481 12 0.061963379365045805
		5 0 0.2565336304796984 1 0.25656045159109286 6 0.080501940056549939 
		10 0.27581400342661999 11 0.13058997444603876
		5 0 0.050420745199015293 1 0.05274435213670705 10 0.25581074385412245 
		11 0.36948714183296133 12 0.27153701697719385
		5 0 0.025426705344205554 1 0.025457330436833334 10 0.14940999097375862 
		11 0.40563436477885967 12 0.39407160846634282
		5 0 0.02001265781038964 1 0.02001265781038964 10 0.1326990380033698 
		11 0.42024179314172905 12 0.40703385323412189
		5 0 0.039981155799501726 1 0.040127662872569692 10 0.247506919165491 
		11 0.39466833777239629 12 0.27771592439004128
		5 0 0.031736307388592497 1 0.03188528532760574 10 0.17044280872741135 
		11 0.39022186268042297 12 0.37571373587596746
		5 0 0.028782439665346184 1 0.028924086526272808 10 0.16258771375495332 
		11 0.39771254400390904 12 0.38199321604951869
		5 0 0.053222272557305376 1 0.056361056119157066 10 0.27054575953700088 
		11 0.36859267231408938 12 0.25127823947244737
		5 0 0.05693769346694616 1 0.059935510508240877 10 0.27507916671469357 
		11 0.3626636346488003 12 0.2453839946613191
		5 0 0.032342595235643437 1 0.032342595235643437 10 0.16048491221893713 
		11 0.38177040698717368 12 0.3930594903226024
		5 0 0.083694213005720233 1 0.083694213005720233 10 0.31719752025140746 
		11 0.34049135110748208 12 0.17492270262966997
		5 10 0.058324817787376367 11 0.25023907128288092 12 0.57881459747632635 
		13 0.062296727335183766 35 0.050324786118232628
		5 0 0.032250317422874097 1 0.032250317422874097 10 0.16589961249873891 
		11 0.38423831757307103 12 0.38536143508244186
		5 0 0.070144122159981254 1 0.070628193645467449 10 0.29943372433312893 
		11 0.35011813447086459 12 0.20967582539055785
		5 0 0.11100244941092577 1 0.3096203621493589 2 0.30410556729166072 
		10 0.15091355661915931 11 0.12435806452889525
		5 0 0.11564168750055565 1 0.17100729548146837 2 0.15111562941225834 
		10 0.28128978166155716 11 0.28094560594416057
		5 0 0.11949677856191529 1 0.1694974172358058 2 0.14949293615089121 
		10 0.28083130658073829 11 0.28068156147064949
		5 0 0.18188940085772823 1 0.18235287418955012 2 0.077416103600448566 
		10 0.30178150793894948 11 0.25656011341332352
		5 0 0.24080788472019593 1 0.25865977126655548 2 0.11091600843026177 
		10 0.26292697599249509 11 0.12668935959049171
		5 0 0.1188885410702267 1 0.16911504005630504 2 0.14354463634445502 
		10 0.28499556837825174 11 0.2834562141507615
		5 0 0.21160971958978006 1 0.25575400587179459 2 0.13657148585299012 
		10 0.25244184688963489 11 0.14362294179580026
		5 0 0.13134815404689945 1 0.15480622813973435 2 0.11523631199166409 
		10 0.30040033578606556 11 0.29820897003563646
		5 0 0.012983225207759908 1 0.012983225207759908 10 0.11576886064662618 
		11 0.45263927394689951 12 0.4056254149909545
		5 0 0.080487421152758185 1 0.080487421152758185 10 0.34532249761850164 
		11 0.35753445702272979 12 0.13616820305325225
		5 0 0.033805432519637905 1 0.033805432519637905 10 0.16851905905696737 
		11 0.38049441433813153 12 0.38337566156562536
		5 0 0.081499800500867872 1 0.081499800500867872 10 0.31482191796143999 
		11 0.34182931976508346 12 0.18034916127174078
		5 0 0.032197610168789255 1 0.032202449972957618 10 0.16533866153977791 
		11 0.38511692171704109 12 0.38514435660143415
		5 0 0.060626801843919116 1 0.062155306808108803 10 0.27920529221396906 
		11 0.35770607501421164 12 0.24030652411979139
		5 0 0.13662290664306667 1 0.18153754809875294 2 0.13858739936451911 
		10 0.27865912808897103 11 0.26459301780469019
		5 0 0.075315496910346599 1 0.075315496910346599 10 0.33007553493733482 
		11 0.35606362134157832 12 0.1632298499003938
		5 0 0.015895432348095307 1 0.015895432348095307 10 0.12234576265283401 
		11 0.43559664713666468 12 0.4102667255143107
		5 0 0.16286313018367493 1 0.16937450945336877 2 0.089049697944809256 
		10 0.30397592735834078 11 0.27473673505980617
		5 0 0.09881025193662632 1 0.1091740151829539 10 0.3212625431967675 
		11 0.32718048828518903 12 0.1435727013984632
		5 0 0.087551536165341948 1 0.10234499153489972 10 0.31660942419247518 
		11 0.33235195669021278 12 0.16114209141707039
		5 0 0.081570550343483997 1 0.096137193170686863 10 0.31039811261377676 
		11 0.33549608784839358 12 0.17639805602365891
		5 0 0.081608947550385572 1 0.094844206991024013 10 0.30006974253368623 
		11 0.33104803439023545 12 0.19242906853466882
		5 0 0.069602582854154285 1 0.072305221393243718 10 0.30644302373435484 
		11 0.35305082873718979 12 0.19859834328105747
		5 0 0.035792629580525537 1 0.035792629580525537 10 0.25659379818184452 
		11 0.41271952638682641 12 0.25910141627027811
		5 0 0.034760943251545606 1 0.034760943251545606 10 0.27352165506690046 
		11 0.4236089686156167 12 0.23334748981439171
		5 0 0.027026137419697574 1 0.027026137419697574 10 0.27439898664255519 
		11 0.45864497668711829 12 0.2129037618309314
		5 0 0.17015139717482122 1 0.33681198342049384 2 0.23619864120164558 
		10 0.17883603555886729 11 0.078001942644171984
		5 0 0.17310507976324357 1 0.23433344866396261 2 0.15773346614346129 
		10 0.2488786413719945 11 0.18594936405733806
		5 0 0.13536849499154952 1 0.15013868759978516 2 0.10005109014630684 
		10 0.30957892642837992 11 0.3048628008339786
		5 0 0.20741533043706648 1 0.33634859116919075 2 0.1916411415603331 
		10 0.2074153304370662 11 0.057179606396343563
		5 0 0.23933935866950382 1 0.31036344805207727 2 0.15016246735380887 
		6 0.06079536725510671 10 0.23933935866950323
		5 0 0.25514054289713661 1 0.27433847630207048 2 0.10768933744011321 
		6 0.10769110046354356 10 0.25514054289713611
		5 10 0.066703002273825349 11 0.28329307092586981 12 0.56501205289416423 
		13 0.049636168318767181 35 0.035355705587373443
		5 0 0.27208153266255419 1 0.27232847884940997 2 0.091753803065759879 
		6 0.091754652759721916 10 0.27208153266255419
		5 0 0.22476887530317352 1 0.27610797524453751 2 0.20313897737260322 
		6 0.071215296776512435 10 0.22476887530317333
		5 0 0.16715293368645215 1 0.31191366900846063 2 0.296167988297103 
		10 0.16715293368645207 11 0.057612475321532151
		5 0 0.097149254854604128 1 0.38172690739981391 2 0.38172690739981391 
		10 0.097149254854604128 11 0.0422476754911639
		5 0 0.051007284269975812 1 0.43657288092365565 2 0.43657288092365565 
		10 0.051007284269975833 11 0.024839669612737189
		5 0 0.047055522359777328 1 0.43891505253597923 2 0.43891505253597923 
		10 0.047923085886702951 11 0.027191286681561237
		5 0 0.074811671381955949 1 0.39843344948750048 2 0.39843344948750048 
		10 0.079204212703036347 11 0.0491172169400068
		5 0 0.11949926035465591 1 0.35756991571926677 2 0.32961494935753827 
		10 0.12620963560757956 11 0.067106238960959574;
	setAttr ".wl[500:599].w"
		5 0 0.12898953204250257 1 0.39911439839386625 2 0.31191712479374073 
		10 0.12898953204250227 11 0.030989412727388276
		5 0 0.16890210913401865 1 0.36915038221285118 2 0.25059100298076992 
		6 0.042454396538342119 10 0.1689021091340181
		5 0 0.19725996311976221 1 0.32190946273424365 2 0.20425225124617369 
		6 0.07931835978005905 10 0.19725996311976146
		5 0 0.21241764033782715 1 0.26586532331449075 2 0.15464890325955247 
		6 0.15465049275030326 10 0.21241764033782637
		5 0 0.10074869389609827 1 0.33883374521275017 2 0.41950219432743224 
		6 0.040166672667621132 10 0.10074869389609813
		5 0 0.13824202760503329 1 0.29465601997145757 2 0.3566354961099461 
		6 0.072224428708530339 10 0.13824202760503279
		5 0 0.0025899876894576899 1 0.0025899876894576899 10 0.020877120731905261 
		11 0.42195239261845563 12 0.55199051127072374
		5 0 0.0065261119390766951 1 0.0065261119390766951 10 0.046968346543777933 
		11 0.44858976760560315 12 0.49138966197246553
		5 10 0.071017883403131268 11 0.40567278181590205 12 0.48512125927137228 
		13 0.019002480061546284 14 0.019185595448048227
		5 10 0.075905167577391824 11 0.37849981220318618 12 0.49170782011682657 
		13 0.026250243986264552 14 0.027636956116330883
		5 10 0.07716368205630135 11 0.36223753553136362 12 0.50351379491655679 
		13 0.028849938223635609 14 0.028235049272142713
		5 10 0.075783455230192365 11 0.34854345028671124 12 0.51934510982937387 
		13 0.030370638680153869 14 0.025957345973568607
		5 10 0.068117832113167021 11 0.32654159840655078 12 0.55213836952389095 
		13 0.031716198206814747 14 0.021486001749576614
		5 10 0.061532724391448655 11 0.43524218488887934 12 0.48199360659820056 
		13 0.01114414088456166 14 0.010087343236909879
		5 0 0.21911415424584402 1 0.26432603541485805 2 0.14872282689986388 
		6 0.14872282919359106 10 0.21911415424584305
		5 0 0.15657420576465927 1 0.2401827365172918 2 0.22333317803038361 
		6 0.22333567392300702 10 0.15657420576465833
		5 0 0.13737562836575687 1 0.27950320468120493 2 0.32373337869343166 
		6 0.1220121598938505 10 0.13737562836575612
		5 10 0.067986405112969328 11 0.30365723540030448 12 0.56271457874311692 
		13 0.039804620093954093 35 0.025837160649655067
		5 0 0.19550995705057986 1 0.28132170293099229 2 0.21395940937034988 
		6 0.11369897359749875 10 0.19550995705057919
		5 0 0.25888983522857173 1 0.26558651214944817 2 0.12671917060015203 
		6 0.089914646793256281 10 0.25888983522857173
		5 0 0.25139578278938957 1 0.25139578278938957 2 0.08334703587126982 
		10 0.26719906670082644 11 0.14666233184912467
		5 0 0.16642601231695281 1 0.16642601231695281 10 0.31565985041849925 
		11 0.28411621472694282 12 0.067371910220652406
		5 0 0.073085853542357859 1 0.073085853542357859 10 0.35954146094448391 
		11 0.37172544017629516 12 0.12256139179450518
		5 0 0.030380947950543927 1 0.030380947950543927 10 0.28030948054297333 
		11 0.44436068185919125 12 0.21456794169674759
		5 0 0.010036281744914728 1 0.010036281744914728 10 0.10351730881324074 
		11 0.47317091623174773 12 0.40323921146518205
		5 0 0.0039283575427239547 1 0.0039283575427239547 10 0.031593769927265716 
		11 0.45211131764321916 12 0.50843819734406714
		5 16 0.28303348385999122 20 0.40475063682863455 21 0.010190885627240793 
		23 0.29222659513204302 26 0.0097983985520904288
		5 16 0.63795493758462529 20 0.19303688304617692 23 0.14941365725962599 
		26 0.01539321405336355 29 0.0042013080562081535
		5 16 0.73253587961355382 18 0.0030434492893173289 20 0.23663996255997027 
		23 0.024686058742892432 26 0.0030946497942661226
		5 16 0.39341973632321647 20 0.58384316256643998 21 0.0044465489624527605 
		23 0.016794844857074536 26 0.0014957072908162341
		5 16 0.60796184532580133 17 0.010144959774667181 18 0.010949676000405858 
		20 0.35467853951001443 23 0.016264979389111107
		5 16 0.38752830195368421 18 0.0010384315109844252 20 0.59998494795558133 
		21 0.0042738603571421951 23 0.0071744582226078539
		5 16 0.93815729080950439 17 0.024586263091273451 18 0.010615622605082533 
		20 0.013477285048782813 23 0.013163538445356931
		5 16 0.84073379097453038 17 0.064667848834216876 18 0.042678950881148904 
		20 0.034817326771828437 23 0.017102082538275436
		5 15 0.033061436593532945 16 0.91903878517670567 17 0.020493165535712246 
		26 0.0097954644028969869 29 0.017611148291152224
		5 15 0.043554661558243425 16 0.90934881748225771 17 0.039359850571637073 
		18 0.0034263280309134287 29 0.0043103423569483511
		5 15 0.0080225791953969835 16 0.95525248377744776 17 0.017291164894754338 
		26 0.0089711339745419637 29 0.010462638157858995
		5 16 0.95949992880214185 17 0.0054247933931941741 23 0.0054945256119826548 
		26 0.0108004914059379 29 0.018780260786743542
		5 15 0.012521763377123915 16 0.4716278985223662 17 0.48743111113986348 
		18 0.024146027079960157 19 0.0042731998806862723
		5 16 0.9312452379456666 17 0.034871844835785502 23 0.012518418586617012 
		26 0.011576748395931953 29 0.00978775023599893
		5 15 0.05824924791393897 16 0.61133633215093486 17 0.30680414125470262 
		18 0.017328290049755737 29 0.006281988630667759
		5 16 0.36938491235364529 20 0.03124446868458446 23 0.56748389939495036 
		26 0.027436239586059282 27 0.0044504799807606145
		5 16 0.6353590036823461 20 0.049257868088391332 23 0.24786850414133368 
		26 0.055282477399136734 29 0.012232146688792233
		5 16 0.35045721349718889 23 0.028273791312987798 26 0.51680875020243489 
		29 0.088579446309217019 30 0.015880798678171399
		5 16 0.52734458274935525 23 0.032577186410285182 26 0.25007685470591212 
		29 0.18271142884167818 30 0.0072899472927692261
		5 16 0.50057145352669707 20 0.019753882406424381 23 0.16239927834357981 
		26 0.26437738409809564 29 0.05289800162520307
		5 16 0.2508329719182309 23 0.31320765351731616 26 0.39759915696821768 
		27 0.016331603987561602 29 0.022028613608673683
		5 16 0.24947189010787901 23 0.00065374133712975196 26 0.0070708309605222799 
		29 0.73780416091067624 30 0.0049993766837926621
		5 16 0.74771652451432213 23 0.0015585294466969539 26 0.010316797655835154 
		29 0.23810802081355359 30 0.0023001275695922296
		5 16 0.62954796278974712 23 0.00300537404761293 26 0.032033094866984059 
		29 0.33296297033678468 30 0.0024505979588712685
		5 16 0.17827749402042892 23 0.0045495446114402005 26 0.096342358692427549 
		29 0.70054453438506004 30 0.020286068290643326
		5 15 0.0052388486592923065 16 0.94271300362998001 23 0.0047114831484137698 
		26 0.011988565612032442 29 0.035348098950281522
		5 16 0.95529797676783723 17 0.0016662055426969666 23 0.0035275118193608679 
		26 0.010206831454917714 29 0.029301474415187174
		5 16 0.17046578709025478 17 0.77043957805654373 18 0.051383264540754744 
		19 0.0048392379242928408 20 0.0028721323881540323
		5 15 0.0023140960307829728 16 0.29726876514945244 17 0.6811045391279491 
		18 0.017299356880975478 19 0.0020132428108399444
		5 15 0.019153523052169934 16 0.85461705148348266 17 0.12431953669166559 
		18 0.0015430296353023693 19 0.00036685913737946195
		5 15 0.048441931743041962 16 0.74075226051778331 17 0.20529230726476252 
		18 0.0044176768727318622 19 0.0010958236016803138
		5 15 0.0021630520279591068 16 0.33995100293372998 17 0.6443973105159162 
		18 0.012012604085639153 19 0.0014760304367554061
		5 16 0.23163783766783494 17 0.33834073917828511 18 0.32739693675538784 
		19 0.051493610262423918 20 0.05113087613606826
		5 16 0.012786673121421658 17 0.79064576649916263 18 0.18949380305875119 
		19 0.0056855585512914659 20 0.001388198769373034
		5 16 0.028385707981442476 17 0.85803230776625083 18 0.10791212100522847 
		19 0.0048528991204359901 20 0.00081696412664212506
		5 15 0.00080340620712219916 16 0.035765672631639552 17 0.85844229690305007 
		18 0.099999624331102918 19 0.0049889999270853955
		5 16 0.72287665754636676 23 0.003369413759705979 26 0.017941179903144467 
		29 0.24967058102767792 30 0.0061421677631049339
		5 15 0.026699030250084251 16 0.89390708831441745 17 0.010890372171593481 
		26 0.018592315425761764 29 0.049911193838143041
		5 16 0.34361839783131559 26 0.0063230450049642549 29 0.64269862365158914 
		30 0.006449571847912579 31 0.00091036166421851173
		5 16 0.0018171453844264798 17 0.51041609387410136 18 0.48050466441723583 
		19 0.0069386419035609463 20 0.00032345442067537212
		5 16 0.0016198577810184807 17 0.50091668711294834 18 0.48970708441399158 
		19 0.0072371051762094452 20 0.00051926551583205923
		5 16 0.0024642733890529751 17 0.49545939536279415 18 0.49044715950954493 
		19 0.011262731688825561 20 0.00036644004978242747
		5 16 0.0104905421397906 17 0.44172829301907224 18 0.50351932667359955 
		19 0.039622781172285085 20 0.0046390569952524177
		5 16 0.54738828568905351 17 0.011587195941668425 18 0.013538345136682553 
		20 0.41286029081339082 23 0.014625882419204733
		5 16 0.3907387713679939 18 0.00098948298458848612 20 0.60013831183626865 
		21 0.0033697311646402172 23 0.0047637026465087188
		5 16 0.33130845833462064 17 0.26057376241580271 18 0.26068910136801576 
		19 0.061334128861064777 20 0.086094549020496222
		5 16 0.014918743384220801 17 0.42676065968327498 18 0.5052996362714941 
		19 0.046505765297434207 20 0.0065151953635758895
		5 16 0.38310317978559749 20 0.60347232894112002 21 0.0018381296885892474 
		23 0.010941670877412235 26 0.00064469070728097669
		5 16 0.76557320142240548 18 0.0016427826141987071 20 0.21025621460384383 
		23 0.020660111846798467 26 0.001867689512753496
		5 16 0.60232874813181914 20 0.17684665865089338 21 0.0022841759336027028 
		23 0.20980956519694882 26 0.0087308520867357495
		5 16 0.25698641021505625 20 0.30404813761869337 21 0.0058833708857124771 
		23 0.42727734136605366 26 0.0058047399144843474
		5 16 0.63492463155366374 17 0.0071527654982882841 18 0.0075814994200388225 
		20 0.33553320501808176 23 0.014807898509927316
		5 16 0.38905117589413135 18 0.00052224412174928269 20 0.60347609767107557 
		21 0.002263436258420883 23 0.0046870460546228751
		5 16 0.92101935872940366 17 0.028174034763244826 18 0.019115689820437515 
		20 0.021326950599837493 23 0.010363966087076442
		5 16 0.96805125661673164 17 0.0074699927174583982 18 0.0041606391943263986 
		20 0.010077598375678839 23 0.0102405130958048
		5 16 0.3121063553937799 17 0.35244650522889748 18 0.26927693207596332 
		19 0.031228461830511315 20 0.034941745470847982
		5 15 0.0073016255303820334 16 0.96775692100125787 17 0.021340502117419904 
		18 0.0019744126573299865 23 0.0016265386936101282
		5 15 0.0061669924839292027 16 0.85923445297672474 17 0.12449959642177459 
		18 0.0077797093024721481 20 0.0023192488150993321
		5 15 0.089298616088029067 16 0.7281963517365041 17 0.17523917063810221 
		18 0.0057544410894460147 19 0.0015114204479186859
		5 15 0.0059411882165774947 16 0.98197620293897236 17 0.0038948750846815954 
		26 0.0038081973814572635 29 0.0043795363783113682
		5 15 0.0084725574947782569 16 0.97864370278757939 17 0.0085216253186266213 
		26 0.0022991080604343687 29 0.0020630063385813358
		5 16 0.77313970905005669 20 0.013362882037786399 23 0.19779876837284144 
		26 0.013973047275988809 29 0.0017255932633267075
		5 16 0.32497080678173096 20 0.0072810293736987435 23 0.66038419758233846 
		26 0.0063336879550010966 27 0.0010302783072307098
		5 16 0.97036010281392715 17 0.004240624054017224 20 0.0062607213640503909 
		23 0.011976462258689145 26 0.0071620895093161179
		5 16 0.31006692578031286 20 0.0059533711861852563 23 0.42750483829456287 
		26 0.2499805273109485 27 0.0064943374279905356
		5 16 0.69054683265166084 20 0.0076071252622493205 23 0.14966119110156273 
		26 0.14307026250022181 29 0.0091145884843053457
		5 16 0.75630269081395662 20 0.0016062982237439183 23 0.016791478477053423 
		26 0.2118428842854467 29 0.013456648199799271
		5 16 0.23423175586541309 23 0.0045815215871717295 26 0.75731759720731917 
		27 0.0009303101756191329 29 0.0029388151644767295
		5 16 0.95849036416980171 20 0.0046688762396283074 23 0.013365112957815752 
		26 0.016039031923415343 29 0.0074366147093388917
		5 16 0.97130540840728186 20 0.0016093295185482664 23 0.0054534894922814593 
		26 0.012993916754592622 29 0.0086378558272958341
		5 16 0.27446815621239484 23 0.001097915327784841 26 0.029517014094812249 
		29 0.68973889425221357 30 0.0051780201127944918
		5 16 0.76807810520562714 23 0.0040373695946770843 26 0.043862005187461972 
		29 0.18070790281399532 30 0.00331461719823852
		5 16 0.809773637276619 23 0.0028406894738666902 26 0.019964642440118058 
		29 0.16376782218505501 30 0.0036532086243412564
		5 16 0.34558084663426403 23 0.00062758467899291087 26 0.0090356491557177579 
		29 0.64037625836332834 30 0.004379661167696996;
	setAttr ".wl[600:699].w"
		5 16 0.37414865826675592 26 0.0061549336013542203 29 0.6136320531533942 
		30 0.0052922766885215499 31 0.00077207828997415725
		5 16 0.71519751819013233 23 0.0044583401966946752 26 0.024285095141233011 
		29 0.2479337274997124 30 0.008125318972227678
		5 15 0.035965643659086381 16 0.86225468547175832 17 0.0124753174840899 
		26 0.025197147510627942 29 0.064107205874437426
		5 15 0.01641537394471284 16 0.93972517659302512 17 0.0065653949607220492 
		26 0.012936097032322288 29 0.024357957469217803
		5 15 0.0027552352609376265 16 0.95913665212575483 23 0.004310614640347675 
		26 0.012887386816544838 29 0.020910111156415129
		5 15 0.00068945375980236482 16 0.19971875171996323 17 0.79421642993789099 
		18 0.0048606410024332955 19 0.00051472357991010531
		5 16 0.2137956341437621 17 0.72120512911691492 18 0.054996562835656786 
		19 0.0057436402208070197 20 0.0042590336828592212
		5 16 0.01244784006596718 17 0.93572225377336382 18 0.04976129539782774 
		19 0.0017772276879186582 20 0.00029138307492259041
		5 16 0.014206373013013088 17 0.72613157150877961 18 0.24954688164149524 
		19 0.0081540813042651102 20 0.0019610925324469314
		5 16 0.72170535388324086 23 0.0054641646230767747 26 0.18632440720270887 
		29 0.084189209414461882 30 0.0023168648765117465
		5 16 0.94356479971737095 20 0.0016787889539958106 23 0.0061358617779808527 
		26 0.023737004989759808 29 0.024883544560892593
		5 16 0.34402900615206361 23 0.0034978590648894322 26 0.49690219991918344 
		29 0.14779256981507696 30 0.0077783650487866897
		5 16 0.00083638815679758065 17 0.50641361939588192 18 0.48876170321024504 
		19 0.0038381648664983867 20 0.00015012437057714513
		5 16 0.0012839914098543648 17 0.486768636066641 18 0.50184773407529204 
		19 0.0096400460899318582 20 0.00045959235828071698
		5 16 0.0044196674083286933 17 0.47628479976958288 18 0.49998943165604204 
		19 0.017576468055167108 20 0.0017296331108792389
		5 16 0.0007971643491607493 17 0.12534478508453545 18 0.78981480784910851 
		19 0.083628916318635935 20 0.00041432639855943206
		5 16 0.00071055279706861969 17 0.090363159903071075 18 0.82069870154754376 
		19 0.087743829124302009 20 0.00048375662801448466
		5 16 0.00025385170889516499 17 0.010215313840800736 18 0.53146567727257532 
		19 0.45785032887232774 20 0.00021482830540095596
		5 16 0.0001574170690866223 17 0.00518456860194448 18 0.55242033104104937 
		19 0.44210113806566548 20 0.00013654522225421884
		5 16 0.00059686989751449922 17 0.0081500202299779924 18 0.49533786092267706 
		19 0.49533786092267706 20 0.00057738802715334887
		5 16 0.00042893385234466766 17 0.0050815512222652775 18 0.49703547572934931 
		19 0.49703547572934953 20 0.00041856346669102718
		5 16 0.0038229363114161228 17 0.022264562908687797 18 0.48504478223423997 
		19 0.48504478223423997 20 0.0038229363114161228
		5 16 0.0026044171787851342 17 0.015469789957985312 18 0.48966068784222228 
		19 0.48966068784222216 20 0.0026044171787851342
		5 16 0.001497981788498258 17 0.083073351318204064 18 0.82468506131737207 
		19 0.089705904349506066 20 0.0010377012264195051
		5 16 0.0013939483627948221 17 0.10881478938293181 18 0.81356104600385915 
		19 0.075308503751164227 20 0.00092171249925003529
		5 16 0.00025819226555154546 17 0.0043302735386919356 18 0.54673015539486014 
		19 0.44844742164635498 20 0.0002339571545414564
		5 16 0.0005267409729074466 17 0.0089938497159377066 18 0.52821271353656252 
		19 0.46179274522516828 20 0.00047395054942400049
		5 16 0.00070847382401161181 17 0.0045449513031556978 18 0.49702025575917114 
		19 0.49702025575917114 20 0.00070606335449042816
		5 16 0.0012027001435947389 17 0.0075336510581003741 18 0.49503199987942653 
		19 0.49503199987942653 20 0.0011996490394518872
		5 16 0.003919165015701857 17 0.015256483731327269 18 0.48845259311863454 
		19 0.48845259311863443 20 0.003919165015701857
		5 16 0.0061964783706861025 17 0.022275070866632055 18 0.48266598619599793 
		19 0.48266598619599793 20 0.0061964783706861025
		5 16 0.00079783148898758419 17 0.062577511909561526 18 0.85726993094474502 
		19 0.078794730136499722 20 0.00055999552020619982
		5 16 8.5995935464026777e-05 17 0.0020287108629770917 18 0.57670501387169271 
		19 0.42110357681937272 20 7.6702510493366124e-05
		5 16 0.00037570974361824771 17 0.0032730484985433999 18 0.49798977904858521 
		19 0.4979897790485851 20 0.00037168366066803784
		5 16 0.003956369727942605 17 0.017117524617669657 18 0.4874848679632226 
		19 0.4874848679632226 20 0.003956369727942605
		5 16 0.00064731411917963542 17 0.12058629479919897 18 0.81424401240376609 
		19 0.06422455387199788 20 0.00029782480585738795
		5 16 0.00021231542293310632 17 0.0091991623236615944 18 0.53583983644660571 
		19 0.45457064754101484 20 0.00017803826578481711
		5 16 0.00070925652214187305 17 0.0096310864516721308 18 0.49448692219906132 
		19 0.49448692219906132 20 0.00068581262806341556
		5 16 0.003139509930929419 17 0.021292255008421371 18 0.48621436429287396 
		19 0.48621436429287385 20 0.0031395064749014695
		5 16 0.00029699879645404191 17 0.073980643673064742 18 0.89053815231624611 
		19 0.035018182074595144 20 0.0001660231396399204
		5 16 0.00013762389504770749 17 0.0052194330260786998 18 0.55115611659538599 
		19 0.4433696592342915 20 0.00011716724919608933
		5 16 0.00074230254340891012 17 0.0082480485330386575 18 0.49514124783271785 
		19 0.49514124783271785 20 0.00072715325811674805
		5 16 0.0046461537636373514 17 0.024208417737131453 18 0.48324963736779697 
		19 0.48324963736779697 20 0.0046461537636373514
		5 16 0.00079834085456693298 17 0.11835810811261609 18 0.82001888855531757 
		19 0.060315116269231063 20 0.00050954620826839346
		5 16 0.0003486616171498443 17 0.0088256616309875021 18 0.53295234156166482 
		19 0.45756821312105872 20 0.00030512206913914017
		5 16 0.0011505678546938057 17 0.0092837694276207607 18 0.49421239119096944 
		19 0.49421239119096932 20 0.001140880335746732
		5 16 0.0046079585064880291 17 0.021299569228944385 18 0.48474225687903977 
		19 0.48474225687903977 20 0.0046079585064880291
		5 16 0.0073823338545596076 17 0.02831859215483672 18 0.47845837006802222 
		19 0.478458370068022 20 0.0073823338545596076
		5 16 0.05391723255294769 20 0.13547859408938709 21 0.0096747389079537994 
		23 0.79459454655672646 24 0.0063348878929850028
		5 16 0.079923607990934439 20 0.13106105403513915 21 0.016615629814851578 
		23 0.75945838955923284 24 0.012941318599842048
		5 16 0.010140399743897731 20 0.055061301266278895 21 0.030593377959155673 
		23 0.84810412168557281 24 0.05610079934509489
		5 16 0.0065702840811478714 20 0.06287222509008572 21 0.025235429658803626 
		23 0.87703242396379422 24 0.028289637206168592
		5 20 0.038041237798354749 21 0.038305316777029051 22 0.0049406838266439195 
		23 0.56848425343049169 24 0.35022850816748047
		5 20 0.036017002085878304 21 0.036126296219310627 23 0.53781001209491042 
		24 0.38221743427129934 25 0.0078292553286011934
		5 21 0.029119428890801598 22 0.015156440671316638 23 0.24482647453763393 
		24 0.68448513208989314 25 0.026412523810354725
		5 20 0.016616405115504992 21 0.027078550810033294 23 0.31773771797594874 
		24 0.60333734840798237 25 0.035229977690530601
		5 21 0.01191634575055216 22 0.011913143118694959 23 0.013990174551764507 
		24 0.68232266734112879 25 0.27985766923785954
		5 21 0.016467603939201998 22 0.016463197072503485 23 0.026658637702843404 
		24 0.59964528355728597 25 0.34076527772816506
		5 21 0.010460266564056641 22 0.010460266564056641 23 0.0041673224637816539 
		24 0.4874560722040524 25 0.48745607220405263
		5 21 0.011914663534225952 22 0.011914663534225952 23 0.0069031370641152098 
		24 0.48463376793371649 25 0.48463376793371638
		5 21 0.035284975021905397 22 0.035284975021905397 23 0.01210819995074751 
		24 0.45866092500272088 25 0.45866092500272088
		5 21 0.03018999866425888 22 0.03018999866425888 23 0.013193789790037028 
		24 0.46321310644072267 25 0.46321310644072256
		5 21 0.063315236440942377 22 0.063315236440942377 23 0.025497156419333776 
		24 0.42393618534939087 25 0.42393618534939065
		5 21 0.052199173970459777 22 0.052199173970459777 23 0.022863128048041158 
		24 0.43636926200551951 25 0.43636926200551973
		5 16 0.057865475063635916 20 0.055632069065958904 21 0.0057990814954308597 
		23 0.87587846620216214 24 0.0048249081728122525
		5 16 0.0056219006075591887 20 0.022232097003317998 21 0.01032797332973283 
		23 0.94269218190920134 24 0.019125847150188599
		5 20 0.012112425487372978 21 0.012149860222208101 23 0.63249020488595642 
		24 0.34043598502338512 25 0.002811524381077395
		5 21 0.0088585919200113127 22 0.0055820827305208612 23 0.16749727169458151 
		24 0.79877687556006982 25 0.019285178094816505
		5 21 0.0032913275643517165 22 0.003287058296417671 23 0.0069652301001008029 
		24 0.78696991169331454 25 0.19948647234581524
		5 21 0.0032656527979385286 22 0.0032656527979385286 23 0.0019576364966247899 
		24 0.49575552895374891 25 0.49575552895374914
		5 21 0.025788971243899599 22 0.025788971243899599 23 0.011166535319633167 
		24 0.46862776109628385 25 0.46862776109628385
		5 21 0.052171427473027068 22 0.052171427473027068 23 0.022971275433844241 
		24 0.43634293481005065 25 0.43634293481005088
		5 16 0.041171710817543693 20 0.0065561926689313077 23 0.94384705090506615 
		24 0.0025879250252760881 26 0.005837120583182788
		5 16 0.0044670145914153456 20 0.0051587063737477609 23 0.97156593968272431 
		24 0.014186182091746661 26 0.0046221572603658452
		5 20 0.0024099933553291299 21 0.0024103876375169797 23 0.68107542727138171 
		24 0.31192597332025085 27 0.0021782184155213686
		5 21 0.0015326364351813631 23 0.10862129754520559 24 0.87755938884798179 
		25 0.010896396238317996 27 0.0013902809333132874
		5 21 0.00057644270349209697 22 0.00057480450073287275 23 0.003158598988768442 
		24 0.86886753259607119 25 0.12682262121093546
		5 21 0.00063628395199179049 22 0.00063628395199179049 23 0.00084539888622387036 
		24 0.49894101660489631 25 0.49894101660489631
		5 21 0.014240056215633699 22 0.014240056215633699 24 0.48045565559707143 
		25 0.48045565559707165 27 0.010608576374589524
		5 21 0.043195871047768543 22 0.043195871047768543 24 0.44067771066377653 
		25 0.44067771066377653 27 0.032252836576909992
		5 16 0.063294973875543489 20 0.0048941328217028696 23 0.87601980460438544 
		26 0.047960763143734257 27 0.0078303255546340201
		5 16 0.0059959101718531378 23 0.94011512379634277 24 0.019755842247289237 
		26 0.020497494068022176 27 0.013635629716492742
		5 23 0.62723424006482409 24 0.34666193544841428 26 0.010764487443277026 
		27 0.011819015189589513 28 0.0035203218538950075
		5 23 0.1766041439484789 24 0.78645954693178488 25 0.021060775183776855 
		27 0.0087177665131624553 28 0.0071577674227969726
		5 23 0.0079176385047399836 24 0.77380983403739079 25 0.21176462064503726 
		27 0.0032539534064160002 28 0.0032539534064160002
		5 23 0.0021902822743597923 24 0.49628620782017169 25 0.49628620782017158 
		27 0.0026186510426484278 28 0.0026186510426484278
		5 23 0.011606991368085606 24 0.4755129968083735 25 0.4755129968083735 
		27 0.018683507507583741 28 0.018683507507583741
		5 21 0.0298991314686919 24 0.44645718882086427 25 0.44645718882086427 
		27 0.038593245444789766 28 0.038593245444789766
		5 16 0.064542841698710815 23 0.78905908914099343 24 0.0065973835705619216 
		26 0.12439872696407815 27 0.015401958625655722
		5 16 0.0073291173403789217 23 0.86852948652701323 24 0.029795247112598438 
		26 0.057907276750075967 27 0.036438872269933476
		5 23 0.5688539557993233 24 0.35655119569151805 26 0.0310596173042972 
		27 0.035728618672190807 28 0.0078066125326706872
		5 23 0.25173055916072817 24 0.67226445957719627 25 0.02826412344032387 
		27 0.027379569302461351 28 0.020361288519290397
		5 23 0.015465312034505258 24 0.67369353548158406 25 0.28867375390215133 
		27 0.011083699290879698 28 0.011083699290879698
		5 23 0.00460775019853753 24 0.48982601552729799 25 0.48982601552729799 
		27 0.0078701093734332896 28 0.0078701093734332896
		5 23 0.012751272002538954 24 0.46857520702814232 25 0.46857520702814254 
		27 0.025049156970588071 28 0.025049156970588071
		5 21 0.033113664186585165 24 0.43658265517827416 25 0.43658265517827394 
		27 0.046860512728433439 28 0.046860512728433439
		5 16 0.092308847267318944 20 0.014175804551030789 23 0.74587116279981469 
		26 0.12249704639579383 27 0.025147138986041723
		5 16 0.010833494442276329 23 0.84204916995265422 24 0.05789223768438094 
		26 0.050587170658715361 27 0.038637927261973286
		5 23 0.54002720805261095 24 0.38611827555617906 26 0.030401103717124182 
		27 0.033296694738036522 28 0.01015671793604917
		5 23 0.32057115865693897 24 0.59899506488244825 25 0.03640733078473591 
		27 0.025029441319755937 28 0.018997004356121002;
	setAttr ".wl[700:799].w"
		5 23 0.027835239129541493 24 0.59805273936838865 25 0.34438918165780258 
		27 0.01486141992213361 28 0.01486141992213361
		5 23 0.0072967880409820184 24 0.48721085946478249 25 0.48721085946478249 
		27 0.0091407465147264871 28 0.0091407465147264871
		5 23 0.013704951059072878 24 0.47113234177098207 25 0.47113234177098195 
		27 0.022015182699481557 28 0.022015182699481557
		5 21 0.030013241561153915 24 0.44641809961709145 25 0.44641809961709134 
		27 0.038575279602331654 28 0.038575279602331654
		5 16 0.080182457196407084 20 0.029704557187036108 23 0.85145121314733441 
		24 0.012320414453311239 26 0.026341358015911268
		5 20 0.023339789343689459 23 0.86937981810977749 24 0.06887698759741899 
		26 0.02086323614241133 27 0.017540168806702682
		5 20 0.015588286764514667 21 0.015591888021814644 23 0.55081895902214262 
		24 0.40393078147167932 27 0.014070084719848882
		5 21 0.011791674383211569 23 0.33984847348764285 24 0.60003724856663854 
		25 0.037638405176667604 27 0.010684198385839387
		5 21 0.0095378355781844289 22 0.0095267769089990711 23 0.032721321364406891 
		24 0.58929326613082189 25 0.35892080001758775
		5 21 0.0065890153732178066 22 0.0065890153732178066 23 0.0076943189336145575 
		24 0.48956382515997499 25 0.48956382515997487
		5 21 0.018735792411805761 22 0.018735792411805761 24 0.47423646725889929 
		25 0.47423646725889929 27 0.014055480658589947
		5 21 0.043154586950819536 22 0.043154586950819536 24 0.44075799104365798 
		25 0.44075799104365798 27 0.032174844011044978
		5 21 0.052220865950041627 22 0.052220865950041627 24 0.42824940633414593 
		25 0.42824940633414593 27 0.039059455431624875
		5 16 0.016110755044087936 26 0.023980558390639593 27 0.0015877790885503692 
		29 0.94030254053883677 30 0.018018366937885395
		5 16 0.023031760937704728 26 0.015641986746200973 27 0.0019345583356076728 
		29 0.93152177729340635 30 0.027869916687080339
		5 16 0.0046459286736395032 26 0.0061408237571508725 29 0.90589043884121312 
		30 0.081250042131879086 31 0.0020727665961173683
		5 16 0.0033976163155299121 26 0.0096926344129051375 27 0.0015524653703284357 
		29 0.93378856401112498 30 0.051568719890111539
		5 26 0.0052285420558575253 27 0.0023054622443157628 29 0.54355862678319222 
		30 0.4456534700799899 31 0.0032538988366446107
		5 26 0.0040842839851929352 27 0.0022364102708443052 29 0.53089776227098506 
		30 0.45728905672198944 31 0.0054924867509881592
		5 26 0.0052067246254761442 27 0.0043676486312528373 29 0.20741311195787701 
		30 0.76185662203820015 31 0.021155892747193827
		5 26 0.0038627906292998623 27 0.0032960404232562587 29 0.27404322314568269 
		30 0.69302165042175534 31 0.02577629538000592
		5 26 0.0025063929440727029 27 0.0025194289371187474 29 0.015147720158945107 
		30 0.80253256074241741 31 0.17729389721744601
		5 26 0.002701467626391865 27 0.0027088057921571284 29 0.025433105956773557 
		30 0.72981680025749163 31 0.23933982036718576
		5 26 0.001563465359110093 27 0.0019261189187522213 29 0.0030211669341008848 
		30 0.4967446243940184 31 0.4967446243940184
		5 26 0.0014558299679436611 27 0.0016788333842799599 29 0.0045382221637723973 
		30 0.49616355724200195 31 0.49616355724200195
		5 27 0.00920849279874289 28 0.00663976575123489 29 0.0063518514436971185 
		30 0.48889994500316258 31 0.48889994500316258
		5 27 0.0056771543930090396 28 0.0041752319462343892 29 0.0068470458548949105 
		30 0.49165028390293086 31 0.49165028390293086
		5 27 0.033231533455060303 28 0.031229506448678612 29 0.014846920847873356 
		30 0.46034601962419386 31 0.46034601962419386
		5 27 0.017690750464998999 28 0.015934988646665382 29 0.012749805289662713 
		30 0.47681222779933657 31 0.47681222779933635
		5 16 0.031373233338856693 26 0.065650030127774081 27 0.0028417192096265435 
		29 0.87515212912936524 30 0.024982888194377478
		5 16 0.0043834423691164826 26 0.013435784623678679 27 0.0017718632902138831 
		29 0.93100508968525941 30 0.049403820031731598
		5 26 0.0058440260490124716 27 0.0023901434496740427 29 0.5435058500951746 
		30 0.44507413372532961 31 0.0031858466808092145
		5 26 0.004818277725138969 27 0.0040590440654370407 29 0.16679238137768818 
		30 0.80311359928506521 31 0.021216697546670441
		5 26 0.0019417173171618345 27 0.001946585896405317 29 0.011841520337071833 
		30 0.84061261721993019 31 0.1436575592294308
		5 26 0.00087220339937181654 27 0.0010664407412172426 29 0.0016884271978694528 
		30 0.4981864643307708 31 0.4981864643307708
		5 27 0.0086728038743399023 28 0.0063222585434732316 29 0.0057441289992661449 
		30 0.48963040429146037 31 0.48963040429146037
		5 27 0.02809779226453506 28 0.025719739943426023 29 0.012881614522325292 
		30 0.46665042663485684 31 0.46665042663485684
		5 16 0.025097163989043887 26 0.011881183557494525 27 0.0010291571643269535 
		29 0.94862946089801292 30 0.01336303439112173
		5 16 0.0053045116317229826 26 0.0068974248116127485 29 0.93458701869734329 
		30 0.051641396443651108 31 0.0015696484156697995
		5 26 0.0024442820099307605 27 0.001207125867329585 29 0.54912464219288781 
		30 0.44421998595183076 31 0.0030039639780210779
		5 26 0.0018332717892083541 27 0.0015782543194235344 29 0.14396324367470689 
		30 0.83476188153617681 31 0.017863348680484444
		5 26 0.00079246785330517515 27 0.00079247275419789967 29 0.0090738475251952843 
		30 0.87100710681548488 31 0.11833410505181668
		5 26 0.00022762893617653558 27 0.00025808284626405647 29 0.00076209765530559407 
		30 0.49937609528112692 31 0.49937609528112692
		5 27 0.0041410659252493678 28 0.0031600258991854131 29 0.0047525088038405479 
		30 0.4939731996858624 31 0.4939731996858624
		5 27 0.021983424364582279 28 0.020692364954364027 29 0.014160743109403892 
		30 0.47158173378582474 31 0.47158173378582496
		5 16 0.030154168305591006 26 0.0056007481680081369 29 0.94823052047435319 
		30 0.014952532421223543 31 0.0010620306308240096
		5 16 0.0071219150279359308 26 0.0041925978299586749 29 0.91997087582148418 
		30 0.066554092767783124 31 0.0021605185528380394
		5 16 0.0010744559769497132 26 0.0018349417920073968 29 0.53826136906387745 
		30 0.45410956809743991 31 0.0047196650697254334
		5 26 0.0015636664369968343 27 0.001364745828211159 29 0.19600731984839578 
		30 0.77403897848353898 31 0.027025289402857162
		5 26 0.0007644263685125008 27 0.00076367619896218269 29 0.01490596055494447 
		30 0.82195594276561068 31 0.16160999411197019
		5 26 0.00034009395679433595 27 0.00036605661134964947 29 0.0018937191034926653 
		30 0.4987000651641818 31 0.49870006516418158
		5 27 0.0028515947632349521 28 0.0022333322881986145 29 0.0056608894305078894 
		30 0.49462709175902914 31 0.49462709175902936
		5 27 0.011957618997643865 28 0.010980833962016642 29 0.012987220596096836 
		30 0.48203716322212131 31 0.48203716322212131
		5 16 0.029083268890060923 26 0.0035942500893981107 29 0.94982697867922583 
		30 0.016360334836933967 31 0.0011351675043811381
		5 16 0.006470593686407837 26 0.0026864879659548951 29 0.91445374646088451 
		30 0.074138579377334368 31 0.0022505925094183379
		5 16 0.0011859641801509845 26 0.0013729397241375721 29 0.53690122941865948 
		30 0.4553859297459239 31 0.0051539369311279851
		5 26 0.0013321989384495272 27 0.0011609795700438484 29 0.24107650134400813 
		30 0.72885058463247321 31 0.027579735515025215
		5 26 0.00075958683795489094 27 0.00075868058642487531 29 0.01871149263027239 
		30 0.78615476789452798 31 0.19361547205081986
		5 26 0.00046031794641598943 27 0.00048698586631696971 29 0.0033211128508394898 
		30 0.49786579166821382 31 0.49786579166821382
		5 26 0.0018375088439551257 27 0.0023056172256706101 29 0.006217670259859834 
		30 0.49481960183525719 31 0.49481960183525719
		5 27 0.012508509407594319 28 0.011716380188618453 29 0.014995262739406573 
		30 0.48038992383219031 31 0.48038992383219031
		5 16 0.030471148448521335 26 0.0042184436691223882 29 0.94083761179603498 
		30 0.02293721993386089 31 0.0015355761524603489
		5 16 0.0070928030758137094 26 0.0031524499761061068 29 0.88525648142923152 
		30 0.10149058997624567 31 0.0030076755426029218
		5 16 0.0016244239233532481 26 0.0018450010058839953 29 0.52853811535321005 
		30 0.46103042573057412 31 0.0069620339869785304
		5 26 0.0016449395138013675 27 0.0014267118028107597 29 0.28805893888381456 
		30 0.68020890825425462 31 0.028660501545318712
		5 26 0.0010270748148857971 27 0.0010267775481003717 29 0.023192661818228204 
		30 0.74853344427964374 31 0.22622004153914183
		5 26 0.00063656969598594783 27 0.00067615644920282427 29 0.0045055563932409068 
		30 0.49709085873078512 31 0.49709085873078512
		5 26 0.0018972792560104197 27 0.0023529523598563112 29 0.0067097111709258899 
		30 0.49452002860660355 31 0.49452002860660377
		5 27 0.008685163387978834 28 0.0078505886301932851 29 0.012647712298077136 
		30 0.48540826784187541 31 0.48540826784187541
		5 16 0.025711946897163641 26 0.0057831467448128254 29 0.94342633881370519 
		30 0.023584272802918801 31 0.0014942947413997135
		5 16 0.006264471047920544 26 0.0041366482289483912 29 0.88604658271797487 
		30 0.10073288573860056 31 0.0028194122665557431
		5 26 0.0026474501535689978 27 0.0016261849424947434 29 0.52734867706078359 
		30 0.46141151038133243 31 0.0069661774618202917
		5 26 0.0022797375666661402 27 0.0019689673681567098 29 0.29271741998642314 
		30 0.67594264999529896 31 0.027091225083455055
		5 26 0.0018660010721511969 27 0.0018663464342768259 29 0.029466221388179913 
		30 0.71313461988985483 31 0.2536668112155373
		5 26 0.00089073754287853461 27 0.00097290502263333264 29 0.0046264344415816953 
		30 0.49675496149645326 31 0.49675496149645315
		5 26 0.0023937494028927159 27 0.0031521261783336967 29 0.0065417395744805538 
		30 0.49395619242214656 31 0.49395619242214656
		5 27 0.01395959373919484 28 0.012889418537088726 29 0.013839739194531913 
		30 0.4796556242645923 31 0.4796556242645923
		5 27 0.027290529205555903 28 0.026567366358007924 29 0.017430101374930916 
		30 0.46435600153075263 31 0.46435600153075263
		5 16 0.059111576033261559 23 0.12346078676949665 26 0.78871704320085056 
		27 0.020133138694267874 29 0.0085774553021232616
		5 16 0.091238001622608353 23 0.094619405817031058 26 0.75178270231366229 
		27 0.037808556024304718 29 0.024551334222393612
		5 16 0.020088113351761271 23 0.04776547229727976 26 0.77866040638842937 
		27 0.13408678144368441 29 0.019399226518845295
		5 16 0.011537767995355826 23 0.060232290209856161 24 0.007214543848874511 
		26 0.84563112005168661 27 0.075384277894226887
		5 23 0.030975758659494597 24 0.013761182649370596 26 0.52067555356738793 
		27 0.42888742939199437 28 0.0057000757317525351
		5 23 0.029797027695411912 24 0.016948103937450946 26 0.5007690934299367 
		27 0.44014165824879442 28 0.012344116688406039
		5 23 0.023798430026639238 24 0.022244733204920056 26 0.26628596604067317 
		27 0.66078920377867956 28 0.026881666949088015
		5 23 0.02349334252635497 24 0.021898488580186434 26 0.34384661383035919 
		27 0.56880785458273275 28 0.041953700480366576
		5 23 0.01028808933872858 24 0.011684108518544043 26 0.026988971685118178 
		27 0.76429528330945917 28 0.18674354714814992
		5 23 0.015657297317334222 24 0.017102889200869584 26 0.05649195996671718 
		27 0.64376427980026329 28 0.26698357371481585
		5 24 0.0073012916057714067 25 0.0050637054825236148 26 0.0044953979304040255 
		27 0.49156980249065052 28 0.49156980249065041
		5 24 0.010653336746302693 25 0.007911588248093954 26 0.011228909074885676 
		27 0.4851030829653587 28 0.48510308296535892
		5 23 0.0064692438603571418 24 0.021105786507940184 25 0.020627729505244861 
		27 0.47589862006322892 28 0.47589862006322892
		5 24 0.019179019081838982 25 0.018519894429859986 26 0.0094067675195238891 
		27 0.47644715948438859 28 0.47644715948438859
		5 23 0.013762812584692388 24 0.061119911441008874 25 0.061119911441008874 
		27 0.43199868226664495 28 0.43199868226664495
		5 24 0.041327549452641207 25 0.041327549452641207 26 0.012939674807654625 
		27 0.4522026131435315 28 0.4522026131435315
		5 16 0.05326589957313202 23 0.073626619096611529 26 0.85540736850470189 
		27 0.012414469496470824 29 0.005285643329083713
		5 16 0.0057985156496631607 23 0.020030803971506483 26 0.93826758309625058 
		27 0.033367016005621669 29 0.0025360812769581334
		5 23 0.0083524554615927206 24 0.0038606787743891836 26 0.58091803615648396 
		27 0.40482197828712174 28 0.0020468513204123496
		5 23 0.0057598699596695616 24 0.0054767166777492651 26 0.14550560772842006 
		27 0.8322871715249085 28 0.010970634109252636
		5 23 0.0017731249229004187 24 0.0019696711543891439 26 0.0068997080911279455 
		27 0.92229654274024997 28 0.067060953091332628
		5 24 0.00086251932805845081 25 0.0006093823418958724 26 0.00070196475328933089 
		27 0.49891306678837805 28 0.49891306678837827;
	setAttr ".wl[800:899].w"
		5 24 0.010799933346059339 25 0.010626801569286424 26 0.0035119701894502876 
		27 0.48753064744760199 28 0.48753064744760199
		5 23 0.010080483485161544 24 0.042163500472664699 25 0.042163500472664699 
		27 0.45279625778475457 28 0.45279625778475457
		5 16 0.013081424905281108 23 0.0022597933203631995 26 0.98142561223031377 
		27 0.0016816612105653537 29 0.0015515083334766545
		5 16 0.0015607165229930178 23 0.0014794783700821125 26 0.98755674298549778 
		27 0.0083475375405495048 29 0.0010555245808774869
		5 23 0.00075707319884151208 26 0.68513511161015994 27 0.31299792046822877 
		28 0.00057018631409145768 30 0.00053970840867834536
		5 23 0.00039897817159827669 24 0.00038219230337420976 26 0.049582761819772038 
		27 0.94735208654070724 28 0.0022839811645482778
		5 23 9.6072742135580309e-05 24 0.00010149822948968609 26 0.00093389615669610523 
		27 0.98849082958533463 28 0.010377703286344011
		5 24 1.5754530263411568e-05 25 1.2055330254516248e-05 26 3.0725558414954049e-05 
		27 0.49997073229053357 28 0.49997073229053357
		5 24 0.0036281753561013164 25 0.0035714331315083126 26 0.0025078550222115458 
		27 0.49514626824508945 28 0.49514626824508945
		5 24 0.029499351784405568 25 0.029499351784405568 26 0.01101959450046975 
		27 0.46499085096535958 28 0.46499085096535958
		5 16 0.027652066703943136 26 0.94950560311538501 27 0.0031847231447577826 
		29 0.014631891432340614 30 0.0050257156035733571
		5 16 0.0029572150839096653 26 0.97092246124064119 27 0.014434900725612288 
		29 0.0062338129140571529 30 0.0054516100357798114
		5 26 0.62122801156949081 27 0.36746790728929496 29 0.0039843437413603789 
		30 0.0046990802652286884 31 0.0026206571346252695
		5 26 0.17030221626303982 27 0.81084472093616233 28 0.010399567323507729 
		30 0.0042797051009916967 31 0.0041737903762984266
		5 26 0.010875952533834898 27 0.90711699282598612 28 0.07794853781688163 
		30 0.0020292584116487411 31 0.0020292584116487411
		5 26 0.0014999799741148179 27 0.49846842892413834 28 0.49844826023789712 
		30 0.00079166543192491531 31 0.00079166543192491531
		5 26 0.0042476373187898863 27 0.4944916880552791 28 0.4944916880552791 
		30 0.0033844932853259388 31 0.0033844932853259388
		5 24 0.016349828459577768 25 0.016349828459577768 26 0.010858175039157847 
		27 0.47822108402084329 28 0.47822108402084329
		5 16 0.065089646059605599 26 0.68707809661629071 27 0.012558433456113424 
		29 0.19149552352122368 30 0.043778300346766712
		5 16 0.01079208442045344 26 0.78779107712913032 27 0.052743793061926746 
		29 0.080315597125928909 30 0.068357448262560586
		5 26 0.52765200301002013 27 0.38986965681628638 29 0.028457934495966848 
		30 0.037773886835553626 31 0.016246518842172972
		5 26 0.28969426791637065 27 0.62732404773502726 28 0.023252332078312163 
		30 0.030584699202603687 31 0.029144653067686314
		5 26 0.0355471011724161 27 0.75310767101644183 28 0.18119212178093091 
		30 0.015076553015105529 31 0.015076553015105529
		5 26 0.0069026904753874668 27 0.49077768141860212 28 0.49018888667626204 
		30 0.0060653707148742523 31 0.0060653707148742523
		5 26 0.007257354219841838 27 0.48856913194316837 28 0.48856913194316837 
		30 0.0078021909469106823 31 0.0078021909469106823
		5 24 0.020615662580900435 25 0.020615662580900435 27 0.47176896886577363 
		28 0.47176896886577352 30 0.015230737106651956
		5 16 0.08947139268847934 26 0.5147753537251305 27 0.025585657317316653 
		29 0.28648569747695446 30 0.083681898792119111
		5 16 0.019380938789773983 26 0.63024757885115501 27 0.10717351395408475 
		29 0.12769038842657299 30 0.11550757997841338
		5 26 0.45966074261184936 27 0.38692088229158667 29 0.054251277590556209 
		30 0.067717666151509037 31 0.031449431354498632
		5 26 0.34015866153866597 27 0.5296127827557936 28 0.03658472009978829 
		30 0.048518413910980593 31 0.045125421694771711
		5 26 0.062406368657458619 27 0.62771813758439432 28 0.25129940021125047 
		30 0.029288046773448366 31 0.029288046773448366
		5 26 0.0135525953830313 27 0.48228174982191535 28 0.48150139149593019 
		30 0.011332131649561636 31 0.011332131649561636
		5 26 0.010663290143073446 27 0.48366907541239107 28 0.48366907541239107 
		30 0.010999279516072245 31 0.010999279516072245
		5 24 0.018351811053613058 25 0.018351811053613058 27 0.47425677585907061 
		28 0.4742567758590705 30 0.014782826174632713
		5 16 0.10493125099262993 26 0.74460352915155625 27 0.036261391513221879 
		29 0.076370440910017878 30 0.037833387432574181
		5 16 0.024018471347186862 26 0.72387342278500499 27 0.1451986696756852 
		29 0.055432389123626045 30 0.05147704706849697
		5 26 0.490665745368564 27 0.42950072231660502 29 0.028946990901872992 
		30 0.0320787108171341 31 0.01880783059582394
		5 26 0.36321008835070334 27 0.54811939739284843 28 0.043558776524446043 
		30 0.023331036631697197 31 0.021780701100305017
		5 26 0.070202376793292331 27 0.61501731323717457 28 0.2783966655427012 
		30 0.018191822213415944 31 0.018191822213415944
		5 26 0.014385372151259006 27 0.48568079962865318 28 0.48551085142580724 
		30 0.0072114883971402411 31 0.0072114883971402411
		5 24 0.011267166936767877 25 0.010860301341012707 26 0.010856735688644025 
		27 0.48350789801678767 28 0.48350789801678767
		5 24 0.030795449759138217 25 0.030795449759138217 26 0.014830594628884298 
		27 0.46178925292641965 28 0.46178925292641965
		5 24 0.044461418580870792 25 0.044461418580870792 26 0.015561677980483028 
		27 0.44775774242888772 28 0.44775774242888772
		5 16 0.080236446046593163 20 0.90689585650540205 21 0.0077161224885166513 
		23 0.0042216674474269949 24 0.00092990751206109903
		5 16 0.093958068171593911 20 0.8836518218434376 21 0.013007367442573917 
		23 0.0076994461937852539 24 0.0016832963486093468
		5 16 0.015882915275794041 20 0.91069154769393168 21 0.063891500278156016 
		23 0.0066822596364945492 24 0.002851777115623612
		5 16 0.011421301244476937 20 0.94827420019772068 21 0.035401170537423136 
		23 0.0034645744874944972 24 0.0014387535328847982
		5 16 0.0023639939029090106 20 0.64022606321729258 21 0.35073683599655742 
		22 0.0040332575786147448 23 0.0026398493046263108
		5 20 0.60054141028618901 21 0.38408982219423954 22 0.0065271157264805008 
		23 0.0050247115841989343 24 0.0038169402088921219
		5 20 0.3689520939761482 21 0.61124838605566756 22 0.015382290132325374 
		23 0.0022288921071799165 24 0.0021883377286790262
		5 20 0.40828748092552325 21 0.56498523194113337 22 0.019212314189576626 
		23 0.0038020095319155635 24 0.003712963411851255
		5 20 0.044986379013992113 21 0.83058557683460121 22 0.12030331144110286 
		23 0.0019948942185779852 24 0.0021298384917258252
		5 20 0.064324066298806284 21 0.75862877693870145 22 0.16900237083959246 
		23 0.003867128621775726 24 0.004177657301124094
		5 20 0.0076257588978655352 21 0.51563922830111852 22 0.47394266756583459 
		24 0.0014933202444374493 25 0.0012990249907438869
		5 20 0.010719105869077853 21 0.51087499599017294 22 0.47375478553638978 
		24 0.0024938027597596973 25 0.0021573098445995778
		5 20 0.0055168487088146263 21 0.49423068847499124 22 0.49423068847499113 
		24 0.0030185138949331914 25 0.0030032604462697926
		5 20 0.006720792347411254 21 0.49278772052175912 22 0.49278772052175934 
		24 0.003871298092144107 25 0.00383246851692605
		5 20 0.011819740998026506 21 0.47853998470823933 22 0.47853998470823955 
		24 0.015550144792747246 25 0.015550144792747246
		5 20 0.010256901088511218 21 0.48272004738956514 22 0.48272004738956514 
		24 0.012151502066179215 25 0.012151502066179215
		5 16 0.10275190304375111 20 0.80087795119864402 21 0.018131968639145818 
		23 0.072901039869625706 24 0.0053371372488334378
		5 16 0.074777153976574112 20 0.80746750094674191 21 0.010401720543708429 
		23 0.10375010651751691 24 0.0036035180154585771
		5 16 0.010888046916928212 20 0.89281055713103052 21 0.039792563530232118 
		23 0.049889243598498459 24 0.0066195888233107417
		5 16 0.014968674160493379 20 0.87750070902579158 21 0.068073079345324514 
		23 0.031718345756342838 24 0.0077391917120477527
		5 20 0.57482289571142886 21 0.38590062452302543 22 0.0060496285976492994 
		23 0.020261230053099235 24 0.01296562111479716
		5 20 0.60053974546544386 21 0.3552530806950831 22 0.0034259351450258066 
		23 0.02666801115530245 24 0.014113227539144773
		5 20 0.37766987004734504 21 0.57846602232777988 22 0.017702918649256414 
		23 0.013206299431132119 24 0.012954889544486431
		5 20 0.30731985536960793 21 0.64807632287893768 22 0.01255172712265302 
		23 0.016107796933845946 24 0.01594429769495545
		5 20 0.04823873857631341 21 0.77534718421645366 22 0.1572758039986954 
		23 0.0086540850696923462 24 0.01048418813884525
		5 20 0.023537989913148056 21 0.87214695644514573 22 0.090846527547404188 
		23 0.0058433423225047413 24 0.0076251837717972535
		5 20 0.0068184082366075441 21 0.50704303084135383 22 0.47618334870079715 
		24 0.0054825848538081947 25 0.0044726273674334082
		5 20 0.0031098294599614775 21 0.51043319024823364 22 0.4786049211471109 
		24 0.0044023297480027899 25 0.0034497293966912813
		5 20 0.0049060684565732891 21 0.48837142178416815 22 0.48837142178416815 
		24 0.0091990731240507839 25 0.0091520148510397022
		5 20 0.0033368280968622309 21 0.48706909973909251 22 0.4870690997390924 
		24 0.011263205743316752 25 0.011261766681636106
		5 20 0.0086690807169737972 21 0.47015399406739544 22 0.47015399406739544 
		24 0.025511465574117702 25 0.025511465574117702
		5 20 0.0096899383296255009 21 0.45326074633409152 22 0.45326074633409152 
		24 0.041894284501095745 25 0.041894284501095745
		5 16 0.097744840797370752 20 0.86746572529227284 21 0.015190506036273541 
		23 0.016893711025806998 24 0.0027052168482759233
		5 16 0.017137711820845895 20 0.88810674488104535 21 0.075811222418912444 
		23 0.013891653350501975 24 0.0050526675286941694
		5 20 0.58263573544307901 21 0.39345511003887351 22 0.0071981014796371392 
		23 0.0096901500848454881 24 0.0070209029535647123
		5 20 0.40440878151228776 21 0.56361802960121876 22 0.019044061385115267 
		23 0.0065396876776485187 24 0.0063894398237296724
		5 20 0.064327151693267956 21 0.74192909696023046 22 0.18021885825149792 
		23 0.0063724713310701047 24 0.0071524217639334165
		5 20 0.0091927895459683207 21 0.50882777717183159 22 0.47540264139524807 
		24 0.0035566805506487332 25 0.0030201113363031804
		5 20 0.0058230190332147474 21 0.4917602643776422 22 0.49176026437764209 
		24 0.0053523420768661623 25 0.0053041101346348154
		5 20 0.010347984622359909 21 0.47520361020670543 22 0.47520361020670543 
		24 0.01962239748211457 25 0.01962239748211457
		5 16 0.080227448140861551 20 0.90825436540264748 21 0.0059424141172929011 
		23 0.0047209067455483457 24 0.00085486559364957059
		5 16 0.011378093391634623 20 0.95502056259876822 21 0.028094352025504005 
		23 0.0040406535954134112 24 0.0014663383886797238
		5 20 0.6593000685179693 21 0.33329811968139939 22 0.0030230514802608291 
		23 0.0025136470951540955 24 0.0018651132252164382
		5 20 0.30529600997051853 21 0.67851738639261672 22 0.012394338998851048 
		23 0.0019071317709419523 24 0.0018851328670717884
		5 20 0.028281795558256211 21 0.88910811521813138 22 0.079812026234751157 
		23 0.0013464065200526258 24 0.0014516564688087836
		5 20 0.0034751808959775036 21 0.52350730490896369 22 0.47149178368202976 
		24 0.00081867265703247606 25 0.00070705785599646769
		5 20 0.0038814697217817618 21 0.49534885315005545 22 0.49534885315005533 
		24 0.0027130001259319143 25 0.0027078238521755353
		5 20 0.0095480184006407343 21 0.48208343909690005 22 0.48208343909690005 
		24 0.013142551702779563 25 0.013142551702779563
		5 16 0.070419217593092526 20 0.91429864932558857 21 0.0048768749551697885 
		23 0.0093955394893822913 24 0.0010097186367666888
		5 16 0.0092033446507394159 20 0.95857900980272737 21 0.023093855357445483 
		23 0.0072258426922712435 24 0.0018979474968164702
		5 20 0.68344889313453228 21 0.30892723025964425 22 0.0019330943050921117 
		23 0.0033883810278064509 24 0.0023024012729248896
		5 20 0.22085024969289169 21 0.76843329911678837 22 0.0068948140940622831 
		23 0.0019177541728518167 24 0.0019038829234059519
		5 20 0.010983828793985585 21 0.94866494498529685 22 0.038519708305828196 
		23 0.00085882962726429636 24 0.0009726882876251407
		5 20 0.00062693183332606663 21 0.54281732321578391 22 0.45605128839386527 
		24 0.00027400727761363444 25 0.0002304492794112314
		5 20 0.0021634484987096752 21 0.49607489489566547 22 0.49607489489566547 
		24 0.002843443543617753 25 0.0028433181663416155
		5 20 0.0096777042673646726 21 0.47199340372513626 22 0.47199340372513626 
		24 0.023167744141181407 25 0.023167744141181407
		5 16 0.094497189763882161 20 0.8059968704605337 21 0.010095869595033707 
		23 0.085997899162824257 24 0.0034121710177262522;
	setAttr ".wl[900:999].w"
		5 16 0.010798435527009619 20 0.92434226689521204 21 0.03075210094332663 
		23 0.029615216502942226 24 0.0044919801315094947
		5 20 0.63457737532577041 21 0.34037671965984101 22 0.002651548589303469 
		23 0.014296872071759217 24 0.0080974843533259348
		5 20 0.24706742499353537 21 0.72750472482175355 22 0.0098751849371489075 
		23 0.007794849516715479 24 0.0077578157308466318
		5 20 0.013784826505780268 21 0.92803098762426195 22 0.052671705101022551 
		23 0.002454513612101996 24 0.0030579671568330517
		5 20 0.0011600906520237058 21 0.52298064321289106 22 0.47367537544902233 
		24 0.0012131195474393585 25 0.00097077113862358727
		5 20 0.0025214556859501731 21 0.49163372957465329 22 0.49163372957465351 
		24 0.0071055425823714699 25 0.0071055425823714699
		5 20 0.0079011542744223569 21 0.46602687085186534 22 0.46602687085186534 
		24 0.030022552010923485 25 0.030022552010923485
		5 20 0.012287703920254156 21 0.46291228756442082 22 0.46291228756442082 
		24 0.030943860475452126 25 0.030943860475452126
		5 16 0.26147670398673367 20 0.38723971637071053 21 0.0044024485440871172 
		23 0.34229218553363172 26 0.0045889455648369651
		5 16 0.26549845640493119 23 0.36333860603506718 26 0.35625277061465555 
		27 0.0070197096821238217 29 0.0078904572632222184
		5 16 0.12898548835234136 23 0.0030593643735445262 26 0.14899521844378641 
		29 0.70656933212967721 30 0.012390596700650408
		5 15 0.16344059371008679 16 0.82705433552658436 17 0.0081912267287071443 
		18 0.00066095894284598901 29 0.00065288509177579895
		5 15 0.12940422033292981 16 0.85214775383556185 17 0.011579314661813497 
		26 0.0026612296512752262 29 0.0042074815184196118
		5 15 0.069140453937643245 16 0.90564725085243436 17 0.02430331410678924 
		18 0.00070047862683297098 29 0.00020850247630016538
		5 15 0.1164205728576036 16 0.86567584686896049 17 0.01052061534221378 
		26 0.0031490490842038779 29 0.0042339158470182268
		5 15 0.24222947254905464 16 0.73883476293921868 17 0.015297145742376332 
		26 0.0017404235589647563 29 0.0018981952103857755
		5 15 0.27529609223904644 16 0.65974414899642519 17 0.058563576597844114 
		18 0.004376274170769137 23 0.0020199079959151924
		5 15 0.1979059544235369 16 0.77607505025450862 17 0.014069676647011607 
		26 0.0046384907587676211 29 0.0073108279161751607
		5 12 0.43310216016555791 13 0.35519006417587556 14 0.040207125634924741 
		32 0.035781202679894909 35 0.1357194473437468
		5 12 0.42900752055845176 13 0.33508085845331403 14 0.01635039584000101 
		32 0.027664403937761092 35 0.19189682121047222
		5 11 0.050923301664945825 12 0.50504342639357047 13 0.27121212406043743 
		14 0.042902804715488851 35 0.1299183431655572
		5 11 0.043649240552751378 12 0.4850477891440651 13 0.26795378168016099 
		32 0.0335345587068544 35 0.16981462991616814
		5 12 0.42984355003522384 13 0.35570013154214608 14 0.082315269124795129 
		32 0.036793612938228151 35 0.095347436359606796
		5 11 0.05048862251840025 12 0.49356454010690998 13 0.28271753758956975 
		14 0.067754121496256231 35 0.1054751782888637
		5 12 0.45951980743347587 13 0.49854926012740974 32 0.016808059064409218 
		33 0.0044837397822410502 35 0.020639133592464234
		5 12 0.47475195346371563 13 0.47475195346371551 32 0.012319555810481659 
		33 0.0031774259853632608 35 0.034999111276723942
		5 12 0.19087456218299165 13 0.74448252401447024 14 0.026186103513600494 
		32 0.024406528441645363 35 0.014050281847292206
		5 12 0.40615105438138127 13 0.37266746241371335 14 0.12111727665677408 
		32 0.031534572282949681 35 0.068529634265181605
		5 11 0.084475034617377404 12 0.57118236510277798 13 0.1996749553818204 
		14 0.042343156968748311 35 0.10232448792927577
		5 11 0.059025181895379426 12 0.5556246549289221 13 0.20775407096796802 
		32 0.027855783636506606 35 0.1497403085712237
		5 12 0.42622940241495716 13 0.30101169441917847 14 0.0099977992737919699 
		32 0.022528707181154621 35 0.24023239671091781
		5 12 0.44715754725030249 13 0.44715754725030249 32 0.015957220379507343 
		33 0.0035712069738925239 35 0.086156478145995155
		5 12 0.12285192857948742 13 0.77720674860756589 14 0.072980010683133076 
		32 0.015034044412040285 35 0.011927267717773245
		5 12 0.60213525586904904 13 0.11113292501416407 14 0.05327309902192396 
		32 0.12232609697418756 35 0.1111326231206753
		5 12 0.50678332626303202 13 0.17008802952018132 14 0.10714352953093453 
		32 0.12794590545899695 35 0.088039209226855111
		5 12 0.34364647093335288 13 0.15628974945141894 14 0.1186525776088572 
		32 0.2985098621821422 33 0.082901339824228842
		5 12 0.29448875869442331 13 0.30391233305091586 14 0.26462872480911154 
		32 0.081409819598848909 35 0.055560363846700461
		5 12 0.47289467974995564 13 0.22313171074538829 14 0.18403387381536279 
		32 0.05882193559790036 35 0.061117800091392886
		5 12 0.11279102469408731 13 0.37108381144259406 14 0.37006983751236278 
		32 0.10384543736676811 33 0.042209888984187732
		5 10 0.0080358115130361018 11 0.098613839945402432 12 0.87483871524176904 
		13 0.0092557854789268503 35 0.0092558478208656838
		5 11 0.066487550537178738 12 0.59197417965889476 13 0.15876677941279116 
		32 0.024002262280066491 35 0.15876922811106886
		5 12 0.42034764712406314 13 0.078470113795613125 32 0.34584764162923232 
		33 0.076864200711099298 35 0.078470396739992024
		5 12 0.31847593070432006 13 0.31847593070432006 32 0.036931681299230988 
		33 0.0076504237848849937 35 0.3184660335072439
		5 11 0.027236130064448527 12 0.81324844427742926 13 0.061738630674264328 
		32 0.036038199391362179 35 0.061738595592495726
		5 12 0.39815308485138479 13 0.2848996135880219 14 0.0090388963118913594 
		32 0.023004292161717003 35 0.28490411308698504
		5 10 0.022074133649393247 11 0.10682682314334463 12 0.64989242127869784 
		13 0.11060248452096992 35 0.11060413740759428
		5 0 0.14436194856985957 1 0.2419942564426599 2 0.2346399283862472 
		6 0.23464191803137474 10 0.14436194856985865
		5 11 0.12517208275684125 12 0.82003772939071629 13 0.0235161798065061 
		14 0.014301303959626799 35 0.016972704086309597
		5 10 0.046653342024015443 11 0.2562832068987988 12 0.56210836824346178 
		13 0.066125713324888424 14 0.068829369508835503
		5 12 0.0035425208577755502 13 0.41137488380101767 14 0.58066762758705692 
		32 0.0026450694972098973 33 0.0017698982569399134
		5 12 0.0054625031696196487 13 0.46200713083002176 14 0.52773178408221821 
		32 0.002966397150854741 33 0.0018321847672855655
		5 12 0.0067180117694576741 13 0.38384060627971495 14 0.60197190324218208 
		15 0.0028676580305626669 32 0.0046018206780826408
		5 12 0.0029342911980266709 13 0.78479261466730799 14 0.21092938331057404 
		32 0.00079509254642905333 35 0.00054861827766213044
		5 12 0.0031920542442373844 13 0.84124199042255265 14 0.15423631301307417 
		32 0.00079912804318933717 35 0.0005305142769463639
		5 12 0.0067215522850913815 13 0.49109122439488978 14 0.49109122439488978 
		32 0.0066759307159582563 33 0.0044200682091708144
		5 12 0.0095368205064887759 13 0.48802233512638538 14 0.48802887541203349 
		32 0.0090930090789094736 33 0.0053189598761829437
		5 12 0.014903802058129349 13 0.48384707020435691 14 0.48384707020435691 
		32 0.01184528390485879 33 0.0055567736282980101
		5 12 0.041357989128848693 13 0.46268340334946279 14 0.46268340334946256 
		32 0.021816102424821893 35 0.011459101747404088
		5 12 0.036717209015127698 13 0.62938505789557786 14 0.31079794318077003 
		32 0.01495094026655093 33 0.0081488496419735313
		5 12 0.015428908293376196 13 0.48717824390456665 14 0.47836897150566632 
		32 0.011374010333533314 33 0.0076498659628575945
		5 12 0.0073889695808682645 13 0.49016197148363788 14 0.49016197148363788 
		32 0.0071870660762238872 33 0.0051000213756320955
		5 12 0.0356995160156739 13 0.45367665398011253 14 0.45367665398011253 
		32 0.035660410407389397 33 0.021286765616711681
		5 12 0.027801926001827411 13 0.46282370140285889 14 0.46282370140285889 
		32 0.027801926001827411 33 0.018748745190627445
		5 12 0.031622019982612423 13 0.45616165330971858 14 0.45616165330971881 
		32 0.032024614372260063 33 0.024030059025690002
		5 12 0.043929165676739608 13 0.47116418986139508 14 0.40843256112642257 
		32 0.044592922137312599 33 0.031881161198130073
		5 12 0.085968441781038463 13 0.59801543009717939 14 0.22332882724492337 
		32 0.058922251636511151 33 0.033765049240347643
		5 12 0.027672452923880847 13 0.90155526422259602 14 0.064276833106622369 
		32 0.0035180047284998355 35 0.0029774450184009817
		5 12 0.029598308198724693 13 0.46907538187871012 14 0.48733014185324364 
		32 0.0076010434729657586 35 0.0063951245963557845
		5 12 0.052951348653398567 13 0.44021196122331396 14 0.47761749447180929 
		32 0.016369728561427481 35 0.012849467090050687
		5 12 0.017360305967235617 13 0.87677296854670173 14 0.10104564411163984 
		32 0.0025336965168364545 35 0.0022873848575864376
		5 11 0.043948536578769105 12 0.52000261338218978 13 0.26180684379206681 
		14 0.11774393061823352 35 0.056498075628740659
		5 10 0.038771668662609823 11 0.16706364853967981 12 0.6319046191911093 
		13 0.10129838914200144 35 0.060961674464599706
		5 11 0.17000499201027161 12 0.6600560644050214 13 0.082720787746786179 
		14 0.050869097575605614 35 0.036349058262315201
		5 11 0.10197499944705712 12 0.64960618718722929 13 0.14016770885977353 
		14 0.032393596969551242 35 0.075857507536388688
		5 11 0.085893559774850012 12 0.61467072433325143 13 0.16299173912233542 
		14 0.084140823193084094 35 0.052303153576478863
		5 12 0.21809419273806202 13 0.45542751919966251 14 0.28139865475312509 
		32 0.018289113089877965 35 0.026790520219272407
		5 11 0.039737339118103385 12 0.2352026145579687 13 0.33574349049818641 
		14 0.357079360997898 35 0.032237194827843436
		5 11 0.044299364214927653 12 0.41705158805429349 13 0.28731850393479624 
		14 0.21011498485946908 35 0.041215558936513623
		5 12 0.3355852265082096 13 0.45685713617947871 14 0.1470450984151 
		32 0.021332992471459446 35 0.039179546425752207
		5 10 0.042487896557672392 11 0.20679995463727321 12 0.5935115565340231 
		13 0.083793844535333728 14 0.073406747735697761
		5 11 0.1611707489617771 12 0.52911469337714501 13 0.13394683675554853 
		14 0.14014178233406585 35 0.035625938571463567
		5 11 0.10219894208457544 12 0.55455864835656699 13 0.16603883470521849 
		14 0.13462076958335345 35 0.042582805270285622
		5 11 0.090880898120956941 12 0.39792800322830058 13 0.22788648553825519 
		14 0.24409441895564737 35 0.039210194156839982
		5 11 0.071194034641581944 12 0.30670529319230455 13 0.28561466746667147 
		14 0.2947750566971743 35 0.041710948002267809
		5 11 0.11683968774726707 12 0.60659777045863983 13 0.12667635314843695 
		14 0.10197573724500546 35 0.04791045140065079
		5 0 0.12640592208515514 1 0.26143475541455469 2 0.33605024955630253 
		6 0.1497031508588334 10 0.1264059220851543
		5 12 0.67489196625115255 13 0.12473044551615799 14 0.078777145518456451 
		32 0.055153634475361792 35 0.066446808238871141
		5 12 0.002679132997410088 13 0.34298980044901745 14 0.65060716502175753 
		15 0.0014945084018399527 32 0.0022293931299748634
		5 12 0.0047127170479875679 13 0.33502448069444313 14 0.65276319993386056 
		15 0.0034978696361605958 32 0.004001732687548094
		5 11 0.078455685906505188 12 0.62377715340779727 13 0.15808620962050929 
		32 0.022793879763754073 35 0.11688707130143414
		5 10 0.030375454504447903 11 0.13139004791963782 12 0.62736695510132034 
		13 0.12148759852177261 35 0.089379943952821436
		5 11 0.10170334944583009 12 0.62142461557460793 13 0.15485528405312191 
		14 0.05348325550435909 35 0.068533495422081106
		5 10 0.040628651653839963 11 0.18511315158300182 12 0.64479877293209109 
		13 0.084076428302722481 35 0.045382995528344704
		5 11 0.037517762499202446 12 0.51822255472579271 13 0.20870403731848214 
		32 0.026848336710547777 35 0.2087073087459749
		5 11 0.069414641347906036 12 0.56305050870843232 13 0.21721549132353093 
		14 0.067285405392181238 35 0.083033953227949653
		5 11 0.16933565036216933 12 0.68180116902479548 13 0.066377338809062603 
		14 0.051160339007564483 35 0.031325502796408132
		5 11 0.053393165990305538 12 0.90804505329522955 13 0.015813660223615876 
		14 0.0069343750333714345 35 0.015813745457477581
		5 11 0.095699433266406633 12 0.78825243047063198 13 0.051131519181458918 
		14 0.032082634196107698 35 0.032833982885394943
		5 11 0.16801839856027398 12 0.55083693753684504 13 0.12612510338626631 
		14 0.11504053019993796 35 0.03997903031667667
		5 11 0.13199334087874792 12 0.45387138915438596 13 0.18519898453687197 
		14 0.18693255152105959 35 0.04200373390893454;
	setAttr ".wl[1000:1099].w"
		5 12 0.36539244792943537 13 0.36543617877385048 32 0.15538668971403952 
		33 0.039613200261431475 35 0.074171483321243237
		5 12 0.33081485341032624 13 0.33081485341032624 32 0.17470759062249683 
		33 0.036355123217016255 35 0.12730757933983436
		5 12 0.25408828419806889 13 0.25408828419806889 32 0.1996397157801213 
		33 0.038104179639776574 35 0.25407953618396439
		5 12 0.4069690908253018 13 0.039429541967442389 32 0.4069690908253018 
		33 0.10720248494395267 35 0.039429791438001419
		5 12 0.37750296268477163 13 0.072618718470172733 14 0.05050931159769597 
		32 0.37750296268477151 33 0.12186604456258825
		5 12 0.2836713118529684 13 0.16684267015231352 14 0.14275972470073631 
		32 0.2836713118529684 33 0.12305498144101336
		5 12 0.31187589547502553 13 0.37627116198344085 32 0.19673850011969421 
		33 0.062352337172717938 35 0.052762105249121519
		5 12 0.22233686293650429 13 0.39164260560647352 14 0.058023938434388002 
		32 0.22749794208661958 33 0.10049865093601462
		5 12 0.18084400896250541 13 0.27076121055031083 14 0.26046337156377936 
		32 0.1813320545420706 33 0.10659935438133387
		5 12 0.13361578300937471 13 0.31615580882599043 14 0.29672054631939832 
		32 0.14451082372795937 33 0.10899703811727707
		5 12 0.14673413266759286 13 0.32416375570785422 14 0.24879033131389211 
		32 0.1621413845435539 33 0.11817039576710679
		5 12 0.19896986108824469 13 0.31673696100758741 14 0.12901625446724957 
		32 0.21926761431885519 33 0.13600930911806325
		5 12 0.13720527072223707 13 0.31241814806037116 14 0.30739766381307104 
		32 0.14202395292286352 33 0.1009549644814571
		5 12 0.4005160496862421 13 0.52887766832713567 14 0.024879071024334502 
		32 0.015273992866672734 35 0.030453218095614985
		5 12 0.46661324908793256 13 0.46661324908793256 14 0.0084813625754401375 
		32 0.012113647071559529 35 0.046178492177135246
		5 12 0.44785220321239227 13 0.44785220321239227 14 0.0042207220309837985 
		32 0.011629625781060401 35 0.088445245763171296
		5 12 0.41203237958921163 13 0.41099905679452131 32 0.011407014088764135 
		33 0.0035201822993010429 35 0.16204136722820178
		5 12 0.32736769475843575 13 0.32710008560227599 32 0.014153935978945681 
		33 0.0042760908108536418 35 0.32710219284948894
		5 12 0.50528731072047073 13 0.10825730195298416 14 0.05492537734821866 
		32 0.22327275269848165 35 0.10825725727984464
		5 12 0.41050233215617149 13 0.18239335438601606 14 0.12441156328809633 
		32 0.20330065694192173 35 0.079392093227794447
		5 12 0.1638632169211163 13 0.35830054768054509 14 0.34568642534782096 
		32 0.093553536814354424 35 0.038596273236163242
		5 12 0.160175405711699 13 0.38447717975459361 14 0.39649812665872264 
		32 0.029342657030257058 35 0.029506630844727759
		5 12 0.098888896740023491 13 0.42377226469684498 14 0.44249280024911875 
		32 0.017082469396547017 35 0.01776356891746577
		5 12 0.095723192937738857 13 0.64620485116813631 14 0.23527753312166941 
		32 0.010287934924220834 35 0.012506487848234504
		5 12 0.15407882737654102 13 0.66732819036454449 14 0.14662595938603026 
		32 0.013473205265346112 35 0.018493817607538082
		5 12 0.27430335321505406 13 0.60504388963363065 14 0.074190161685675396 
		32 0.0178042181690913 35 0.028658377296548611
		5 12 0.011095989196913259 13 0.44316193434418044 14 0.53703171503577962 
		32 0.0053573565926553855 35 0.0033530048304713828
		5 12 0.01191117277933733 13 0.60067990622335155 14 0.38138448494538496 
		32 0.0037595866546777648 35 0.0022648493972484427
		5 12 0.0053945664906444512 13 0.47476994466345268 14 0.51669643944247179 
		32 0.0018580478978091584 35 0.0012810015056219045
		5 15 0.72433530574705429 16 0.26487897525802556 17 0.0079631674511954752 
		18 0.0013052319968854973 29 0.0015173195468390441
		5 15 0.98076388953193316 16 0.015783990193147503 17 0.002290905553545601 
		18 0.00061908546288048536 29 0.00054212925849325916
		5 15 0.99269050849283469 16 0.0060441899775863723 17 0.00088951226528530747 
		18 0.00022486673218467061 29 0.00015092253210891856
		5 15 0.87628023196631422 16 0.12097320557840499 17 0.0022320854579295944 
		18 0.00029717987597868717 29 0.00021729712137252344
		5 15 0.96004013088002471 16 0.031095107111158007 17 0.0065641644436691855 
		18 0.0015524119187158628 19 0.0007481856464322819
		5 15 0.5890972544614258 16 0.36220115679691306 17 0.043256365401467108 
		18 0.0040110755354834677 19 0.0014341478047105699
		5 15 0.93217895559243491 16 0.05140718303385456 17 0.011978633845234447 
		18 0.0029804729964935531 19 0.0014547545319825166
		5 15 0.55629359669122513 16 0.37059914052414211 17 0.063975090461656711 
		18 0.0067008915954903355 19 0.0024312807274856222
		5 15 0.70153975183649409 16 0.28378214998768525 17 0.010197098155479837 
		26 0.0019013025490921614 29 0.0025796974712487195
		5 15 0.96452177718243304 16 0.02895242067441485 17 0.0041488723862583834 
		18 0.0011690599640493593 29 0.0012078697928444189
		5 15 0.7311516872715198 16 0.25575155590456461 17 0.010705933813091661 
		18 0.0015697734380417795 29 0.00082104957278210909
		5 15 0.98409899112496602 16 0.012698030428842178 17 0.0021873310649550338 
		18 0.00061978647695953729 29 0.00039586090427723577
		5 15 0.97813970324006594 16 0.017608030094951443 17 0.0027077640761717912 
		18 0.00078865911948890915 29 0.0007558434693218395
		5 15 0.72646390915856829 16 0.26235423671329139 17 0.0080364802633900688 
		18 0.0014241915802636724 29 0.0017211822844866249
		5 15 0.96886378416162033 16 0.024267450781387742 17 0.0048607516138420093 
		18 0.0013264025853642334 19 0.00068161085778565883
		5 15 0.62602176948971067 16 0.3333351959466852 17 0.034736230951238199 
		18 0.0042651790523986878 19 0.0016416245599672229
		5 14 0.0025238612305547815 15 0.99200417596635815 16 0.0036206983043172991 
		17 0.0012900528808909878 18 0.00056121161787868403
		5 14 0.0036547493078041078 15 0.98896408096839161 16 0.0049890950634673241 
		17 0.0016746756618260211 18 0.00071739899851102327
		5 14 0.0034995548240286793 15 0.98825684722482532 16 0.0055754820412019486 
		17 0.0018742317969726798 18 0.00079388411297144602
		5 14 0.0014414506054778735 15 0.99457381880806994 16 0.0026594097743426214 
		17 0.00093286168257290401 18 0.0003924591295366536
		5 14 0.00079863594617390671 15 0.99650959941601147 16 0.0017594962579677187 
		17 0.00065629724616443131 18 0.00027597113368248405
		5 14 0.0013905899902811822 15 0.99228540923791442 16 0.0039679356827656779 
		17 0.0016498747195631352 18 0.00070619036947570382
		5 14 0.0023070116534844903 15 0.99113756951447973 16 0.0042446734528127656 
		17 0.0016091098691945361 18 0.00070163551002858852
		5 14 0.002760092347118966 15 0.98632142437411596 16 0.0068346171137640445 
		17 0.0028407114466892642 18 0.0012431547183117304
		5 13 1.7356084259107712e-05 14 0.48998836278376984 15 0.50995750391892691 
		16 2.2985910280386852e-05 17 1.3791302763713464e-05
		5 13 6.8288901744985344e-05 14 0.49947169550189463 15 0.50032059322005162 
		16 8.7638036564159053e-05 17 5.178433974450084e-05
		5 13 0.0001068397873893169 14 0.49796002127654992 15 0.50170722556126801 
		16 0.00014152083290487838 17 8.4392541887980899e-05
		5 13 8.2794749488212792e-05 14 0.49350038048059125 15 0.50623831078787918 
		16 0.0001107558833098641 17 6.7758098731428412e-05
		5 13 0.00021720547569991863 14 0.49043577751023476 15 0.50886477852862877 
		16 0.00029561563923845345 17 0.00018662284619814132
		5 14 0.24576720562694648 15 0.75287999639502057 16 0.00068997812010017845 
		17 0.00041188167250436194 18 0.00025093818542847322
		5 13 0.00018797580334911534 14 0.48351156502580211 15 0.51588093652460909 
		16 0.00025499997332080324 17 0.00016452267291898546
		5 14 0.23998122148590656 15 0.75877515298281051 16 0.00062099464811932073 
		17 0.00038363724804731445 18 0.00023899363511614854
		5 14 0.25020089906635101 15 0.7474218242803472 16 0.0011900768820296934 
		17 0.00073399896904502817 18 0.0004532008022271332
		5 14 0.27101855692018989 15 0.72766298153438613 16 0.00068794525301645981 
		17 0.00039425644314430142 18 0.00023625984926335322
		5 14 0.23648913605705457 15 0.7625195055641607 16 0.00052819068203988767 
		17 0.00029137642287350318 18 0.00017179127387137327
		5 13 3.6056787438826792e-05 14 0.16115363639518443 15 0.83865435252840048 
		16 9.9435912911305523e-05 17 5.6518376065058695e-05
		5 14 0.16491280590222923 15 0.83455520849169718 16 0.00027400499170597944 
		17 0.00016044486755533758 18 9.7535746812378886e-05
		5 14 0.035969126807036574 15 0.95861054403746604 16 0.0028866486163897304 
		17 0.0016225503551518857 18 0.00091113018395566506
		5 14 0.03115688217404524 15 0.96400290569108638 16 0.0026405891387993661 
		17 0.0014223803486019474 18 0.00077724264746707218
		5 14 0.037865260508102815 15 0.9569898752735424 16 0.0028770281822612727 
		17 0.0014747519058607085 18 0.00079308413023286746
		5 14 0.041881575126233798 15 0.95318906764448941 16 0.0028488195135389833 
		17 0.0013626641869457785 18 0.00071787352879200384
		5 14 0.046253770011966608 15 0.94901144726052122 16 0.0027755340574232962 
		17 0.0012854766050774725 18 0.00067377206501146117
		5 14 0.038920913514957814 15 0.9572430977216323 16 0.002178543917548445 
		17 0.0010757571570428688 18 0.00058168768881839143
		5 14 0.044837429752052523 15 0.94949122712515122 16 0.0030906148243315754 
		17 0.0016578104764631942 18 0.00092291782200150071
		5 13 8.2251868369935524e-05 14 0.21043387194036217 15 0.78909832500677768 
		16 0.00024838220583231518 17 0.00013716897865791218
		5 14 0.052374604876300676 15 0.9429782963146558 16 0.0026905084619165951 
		17 0.0012755747027505457 18 0.0006810156443764607
		5 13 0.00042311899589319755 14 0.48390240364328374 15 0.51469969290356443 
		16 0.00058778148379256536 17 0.00038700297346610114
		5 14 0.27745947790429243 15 0.71996602853898239 16 0.0012697770217163387 
		17 0.000801773248087185 18 0.00050294328692149877
		5 14 0.037420513887040555 15 0.95584667143057345 16 0.0035835944086030909 
		17 0.0020218032549550267 18 0.0011274170188277709
		5 14 0.00070849621378387686 15 0.99636709282197 16 0.0018717565002985463 
		17 0.00074034619222824408 18 0.00031230827171935179
		5 15 0.9912287662895809 16 0.0071474974616619223 17 0.0011987863735592906 
		18 0.00028515609331057081 19 0.00013979378188741149
		5 15 0.82615729856220876 16 0.16790282218359331 17 0.0051996839463124859 
		18 0.00053311935965155764 29 0.0002070759482336935
		5 15 0.76982340523347947 16 0.22204727247214284 17 0.0062410474752831839 
		18 0.001019926032948767 29 0.00086834878614562799
		5 15 0.9852719123080681 16 0.011837985338501649 17 0.0018918245269683215 
		18 0.00054887577546244013 29 0.00044940205099948567
		5 14 0.002966769707421634 15 0.99133880609501124 16 0.0038184393870669018 
		17 0.0013095780984420055 18 0.0005664067120581313
		5 14 0.049842365201057129 15 0.94539578754935161 16 0.0027927361968484075 
		17 0.0012900603065070704 18 0.00067905074623589409
		5 14 0.2500955643237544 15 0.74903450492206214 16 0.00046543131890241867 
		17 0.00025449380485942873 18 0.00015000563042162718
		5 13 0.00013210249360442539 14 0.49841284221115423 15 0.50117462444913541 
		16 0.00017666710623426049 17 0.00010376373987185497
		5 12 0.0020347503905226031 13 0.087742922396194578 14 0.908024025426593 
		15 0.0013249743808943742 32 0.00087332740579536044
		5 12 0.00060639592063785937 13 0.0082953212441540768 14 0.98739050036298837 
		15 0.0034314790686842704 32 0.00027630340353544089
		5 12 0.0008276088116525122 13 0.01204844294311766 14 0.98005659014721069 
		15 0.0066255088410537098 32 0.00044184925696548678
		5 12 0.0019352783610752963 13 0.073201737815072387 14 0.92137259677795935 
		15 0.0024536700106063281 32 0.0010367170352866134
		5 12 0.00095959280418145352 13 0.014953606428528577 14 0.97339189368585821 
		15 0.010110691739163808 32 0.00058421534226803717
		5 12 0.0016496503241544183 13 0.063835136069831072 14 0.93006856281243522 
		15 0.0033840687294820612 32 0.0010625820640973156
		5 12 0.00064819470767827085 13 0.035674469114574905 14 0.96224402714865032 
		15 0.0010330817925367061 32 0.00040022723655988433
		5 12 0.00028204507965089675 13 0.0052451849282059539 14 0.99188398774909792 
		15 0.002422150673630994 32 0.00016663156941436645
		5 12 0.0010138491930205612 13 0.01579627104244603 14 0.97664117354798807 
		15 0.0060216320723782118 32 0.00052707414416724085
		5 12 0.0019997829168552322 13 0.084371368803909538 14 0.91054733258257936 
		15 0.0020504044324697072 32 0.0010311112641860243
		5 12 0.0048232804881322535 13 0.17175928622014758 14 0.82027894314800809 
		15 0.0015505473533447903 32 0.0015879427903673069
		5 12 0.0033547912952676265 13 0.0354301030120013 14 0.94961227727559672 
		15 0.010323605658623919 32 0.0012792227585104469
		5 12 0.0005237057362890039 13 0.0067602221928305152 14 0.99046805473455135 
		15 0.0020427559639419287 32 0.00020526137238730004;
	setAttr ".wl[1100:1199].w"
		5 12 0.0016696593739007433 13 0.080852776968566673 14 0.91617928406938254 
		15 0.00070246104973033599 32 0.00059581853841963073
		5 12 0.0002004741894108914 13 0.0011438814427027846 14 0.97245332225795778 
		15 0.026087549925248459 16 0.00011477218468015117
		5 12 0.00026491515360561071 13 0.0017103999335594255 14 0.95585515920083186 
		15 0.041986254058979516 16 0.00018327165302348372
		5 12 0.00027592890777472756 13 0.0019795899859888877 14 0.94723202711569265 
		15 0.050292592826963252 16 0.00021986116358033928
		5 12 0.00013652935033501833 13 0.0010787474889029844 14 0.97681475572356824 
		15 0.021867315288010784 16 0.00010265214918282249
		5 12 0.00048310054281915094 13 0.0033741835629698797 14 0.94296899159835268 
		15 0.05284194966911996 16 0.000331774626738432
		5 12 0.002219582466861349 13 0.010857608389521448 14 0.87829206762925149 
		15 0.10757007280142676 16 0.0010606687129390046
		5 11 0.00012000800508092077 12 0.00023554900614887521 13 0.0012468529597911995 
		14 0.97588523203252886 15 0.02251235799645011
		5 13 0.00017044921379614619 14 0.71108151704866385 15 0.28858419909985994 
		16 9.9672430406664835e-05 17 6.4162207273240645e-05
		5 13 0.00024015925537612055 14 0.69848975388918322 15 0.30105599436286778 
		16 0.00013138884501581789 17 8.2703647557093584e-05
		5 13 0.00031684237655152343 14 0.64837605747973892 15 0.35101157976600772 
		16 0.00018236375815897329 17 0.00011315661954291756
		5 13 7.0814434981175228e-05 14 0.81672663881688901 15 0.1831385069630527 
		16 3.9153348627250199e-05 17 2.488643644992908e-05
		5 13 0.00024082695415981255 14 0.78037222065518441 15 0.2191883977889092 
		16 0.00011964848647184062 17 7.8906115274720142e-05
		5 13 0.0012200973794979186 14 0.59608348803598254 15 0.40140743311532745 
		16 0.00076227948933807466 17 0.00052670197985408011
		5 13 0.000428066771065266 14 0.65093280715077484 15 0.34821692220493189 
		16 0.00025405656808452821 17 0.00016814730514348096
		5 12 0.0035728867594062813 13 0.041178790510293141 14 0.93981311704628623 
		15 0.013869946290111845 32 0.0015652593939025116
		5 12 0.0055663956521594697 13 0.16478723714037724 14 0.8243311831341974 
		15 0.0030844298723303604 32 0.0022307542009355166
		5 12 0.0017557534966719907 13 0.0099890394321429758 14 0.8819731180596273 
		15 0.10528753827733806 16 0.00099455073421973825
		5 13 0.00090470309528569207 14 0.60927004958003228 15 0.38887650598785034 
		16 0.00056408873886665278 17 0.00038465259796500149
		5 12 0.0053670849594726917 13 0.44484870565266238 14 0.54710889837294552 
		32 0.0015566752663108831 35 0.0011186357486086362
		5 12 0.0031952470005191407 13 0.31309648806674106 14 0.68184807078964838 
		32 0.0010806827595849003 35 0.00077951138350639535
		5 12 0.0042950610859932839 13 0.29356369810482225 14 0.69897986195810635 
		32 0.0018938643251498349 35 0.0012675145259282894
		5 12 0.0038185284762399497 13 0.23549217262347019 14 0.75606520280568712 
		15 0.0023136417020575006 32 0.0023104543925451622
		5 12 0.0029963286044806261 13 0.20072550117317628 14 0.79129091591147838 
		15 0.002822571959303207 32 0.0021646823515614061
		5 12 0.0012302942592456333 13 0.15009528160346058 14 0.84707563295990196 
		15 0.00080194734456572384 32 0.00079684383282615221
		5 12 0.0029115345680477381 13 0.26019823743603443 14 0.73430811473563196 
		15 0.0010680813374817117 32 0.0015140319228042845
		5 12 0.0068395446952103462 13 0.3710380811723934 14 0.61803733246658199 
		32 0.0024804178650211723 35 0.0016046238007931552
		5 12 0.0029138906285048789 13 0.42165249322028414 14 0.57393012094667728 
		32 0.00087354765879104138 35 0.00062994754574272147
		5 12 0.0020623511380509552 13 0.10610927826978923 14 0.89048880663809293 
		15 0.00065845595739107469 32 0.0006811079966757154
		5 12 0.0010736685659547534 13 0.01290984419076736 14 0.98215267925646166 
		15 0.003463882196723399 32 0.00039992579009278517
		5 12 0.00064480396538000727 13 0.0033099659167278835 14 0.95062153025063501 
		15 0.045124405774346323 16 0.00029929409291088902
		5 13 0.00084184055224294989 14 0.66886356421451132 15 0.32955647623019307 
		16 0.00043827025290517818 17 0.00029984875014735094
		5 12 0.001381750268829594 13 0.14150938788636036 14 0.85486014954025069 
		15 0.0012521701953430815 32 0.00099654210921629378
		5 12 0.00091663235554610147 13 0.044387153136639219 14 0.95219966650074883 
		15 0.0018838703556667204 32 0.00061267765139916893
		5 12 0.00051179090388113599 13 0.0092290590274734241 14 0.98452290782061436 
		15 0.0054112175983707768 32 0.00032502464966027462
		5 12 0.00027953641031714559 13 0.0021723359089129177 14 0.94552872949232558 
		15 0.051781211253342292 16 0.00023818693510200601
		5 13 0.00030186300468344382 14 0.63205621359298969 15 0.36734507356373713 
		16 0.00018329411163740656 17 0.00011355572695228055
		5 13 0.00035015839406723429 14 0.48420392769472764 15 0.51463460358688651 
		16 0.00049184690821159262 17 0.00031946341610707959
		5 13 4.3378906377190651e-05 14 0.48819444341317708 15 0.51167048224387579 
		16 5.6571082298537469e-05 17 3.5124354271366066e-05
		5 12 0.022205765494250771 13 0.64613203177224776 14 0.32342141300272731 
		32 0.0043806377707033394 35 0.0038601519600707816
		5 12 0.080701079091808292 13 0.50550297741263839 14 0.3895530124556289 
		32 0.011531430724260406 35 0.012711500315664133
		5 11 0.022277116666333835 12 0.2037566439130219 13 0.38719688982628231 
		14 0.36006581702535084 35 0.026703532569011111
		5 11 0.059410357674988021 12 0.38374221808069553 13 0.26453479440380978 
		14 0.25445732011445438 35 0.037855309726052236
		5 11 0.11978192939443948 12 0.51323419610498289 13 0.16403598243695292 
		14 0.16440204048188653 35 0.038545851581738129
		5 10 0.043442634446616689 11 0.22427052774084855 12 0.57873370102430188 
		13 0.077328458217553867 14 0.076224678570679105
		5 12 0.13204359334617549 13 0.40358283508831233 14 0.39652285380460983 
		32 0.039047943078716778 35 0.028802774682185617
		5 11 0.047139906422139027 12 0.2886748730004336 13 0.32022995816984756 
		14 0.29839649481732361 32 0.045558767590256136
		5 11 0.10076228571884206 12 0.44712788632036415 13 0.21065450767112159 
		14 0.19313661773157989 35 0.048318702558092348
		5 10 0.037400889419172002 11 0.20801588355444267 12 0.54678875072589583 
		13 0.10358373237192897 14 0.10421074392856054
		5 10 0.051048943726245494 11 0.29592920481289348 12 0.54328844090144435 
		13 0.053991630074884653 14 0.055741780484532058
		5 10 0.046026962342096134 11 0.33335367189386161 12 0.56183515360921699 
		13 0.030941625857233913 14 0.027842586297591263
		5 10 0.011415509775715281 11 0.17008675333674575 12 0.80517933657917384 
		13 0.0066591765843297878 35 0.0066592237240352308
		5 10 0.016699430692933732 11 0.19698490295276352 12 0.76345265926050365 
		13 0.012865345288259876 35 0.0099976618055391698
		5 10 0.030353406052819807 11 0.2424439261438964 12 0.66522796123537975 
		13 0.034881925696135768 14 0.02709278087176829
		5 10 0.037224678524090359 11 0.24084297537784691 12 0.59784110455580064 
		13 0.065606790601089746 14 0.058484450941172342
		5 10 0.014187052723081879 11 0.27207717232524792 12 0.70596092029964541 
		13 0.0038874118075607612 35 0.0038874428444638995
		5 10 0.020508411497154374 11 0.31164472527858328 12 0.65660659385436637 
		13 0.006120834696686942 35 0.0051194346732091689
		5 10 0.033624145773432722 11 0.33488478650081954 12 0.6058077363176585 
		13 0.014510623295982839 14 0.011172708112106465
		5 3 0.00047075733402285054 4 0.00039665031922318268 7 0.95962455897407828 
		8 0.03782026759338749 9 0.0016877657792882025
		5 3 0.00084121209203179086 4 0.0007013616706402256 7 0.94318022707890548 
		8 0.053807227346414251 9 0.0014699718120082801
		5 3 0.00032918857852033391 4 0.00029464120762290043 7 0.94041251949921101 
		8 0.057428016573994239 9 0.0015356341406515207
		5 3 0.0035874234588222369 4 0.0033934712400901079 7 0.64842357037326881 
		8 0.34104844388640443 9 0.0035470910414144297
		5 3 0.0014520399169927582 4 0.0013823414520321483 7 0.70155955275926674 
		8 0.29302140567147611 9 0.0025846602002321702
		5 3 0.0062723715597015816 4 0.0057808462677187327 7 0.6600402815773071 
		8 0.32403575557379694 9 0.0038707450214756603
		5 3 0.00048930588408095937 4 0.00044012196371994653 7 0.9160072617111451 
		8 0.081448972370277928 9 0.0016143380707760808
		5 3 0.00081780888603920766 4 0.00074849030981374214 7 0.85562300313033945 
		8 0.14085763294040249 9 0.0019530647334051348
		5 3 0.0027712733585210712 4 0.0022727011375213231 7 0.88482396704760258 
		8 0.10795932454310748 9 0.0021727339132474365
		5 3 0.0039341537700337019 4 0.0033675472853268587 7 0.81604572661123764 
		8 0.1741725210865554 9 0.0024800512468464478
		5 2 0.0077707736412243027 3 0.0089557046632463156 6 0.26179999765890888 
		7 0.72133675489204141 8 0.00013676914457910869
		5 2 0.021012054732752479 3 0.044347841132942704 6 0.095149186034090935 
		7 0.83875002012328181 8 0.00074089797693214197
		5 2 0.054483115011962395 3 0.10249834508524817 6 0.17555932576779376 
		7 0.66528497920834517 8 0.0021742349266505485
		5 2 0.031823161841649975 3 0.036146144399829251 6 0.35942728365196858 
		7 0.57205268522117747 8 0.00055072488537477148
		5 2 0.040871042005194543 3 0.044907274501271868 6 0.38738749977976944 
		7 0.52572656537581075 8 0.0011076183379533429
		5 2 0.059273019584292763 3 0.090305564695557339 6 0.23580308878624989 
		7 0.61071737288741235 8 0.0039009540464875177
		5 2 0.036648051521851084 3 0.048393949474438036 6 0.26930999047306586 
		7 0.64093739705631503 8 0.004710611474329998
		5 2 0.024939529365363231 3 0.026540370011260681 6 0.41106799740389449 
		7 0.53608171819636785 8 0.001370385023113847
		5 2 0.012213893673666888 3 0.012896348618758839 6 0.40591473413485146 
		7 0.56793444950729377 8 0.0010405740654290188
		5 2 0.019497693997039996 3 0.024540507888324778 6 0.25595892871515474 
		7 0.69613299651090665 8 0.0038698728885738177
		5 2 0.011195421878516118 3 0.013690787729429962 6 0.2337799228638246 
		7 0.73847514826153504 8 0.002858719266694244
		5 2 0.0065897532169947835 3 0.0069117803476725975 6 0.39491080689108565 
		7 0.5908638909916244 8 0.00072376855262251639
		5 2 9.413441606882626e-05 3 0.00010549332353430221 6 0.022159322911540824 
		7 0.97763456389378256 8 6.4854550735543864e-06
		5 2 0.00011832022696895519 3 0.00017305394112134231 6 0.0034941842572946756 
		7 0.99619756231509871 8 1.6879259516361592e-05
		5 2 0.0011583304476939726 3 0.0020686180597611244 6 0.014159049003476363 
		7 0.98253631377622241 8 7.7688712846170634e-05
		5 2 0.00013381858405767769 3 0.00015031227991183624 6 0.028777162275190695 
		7 0.9709337980271614 8 4.908833678495897e-06
		5 3 0.019501352650633894 4 0.0019420255486789044 6 0.0021637413619828069 
		7 0.97273974327710055 8 0.0036531371616038994
		5 3 0.0036737204932207972 4 0.00095895002206405433 7 0.99120711548704832 
		8 0.0035437726084107807 9 0.0006164413892561074
		5 3 0.0079476104737371579 4 0.002400693097979174 7 0.97866208530264587 
		8 0.0096056851664041466 9 0.0013839259592336166
		5 3 0.042990992827149452 4 0.0055174730552797679 6 0.0059247723251600838 
		7 0.9348813016543599 8 0.010685460138050832
		5 3 0.075805640673662994 4 0.014534241541250414 6 0.0146074967036279 
		7 0.86468168464518658 8 0.030370936436272124
		5 3 0.015832277699477766 4 0.0056347677184290191 7 0.95093862409686714 
		8 0.024415687265366033 9 0.0031786432198600057
		5 3 0.01372329226690399 4 0.0058868870188827204 7 0.94356193558567847 
		8 0.032741177231827075 9 0.0040867078967077369
		5 3 0.051424819162166971 4 0.015545093177343282 6 0.020490782849212269 
		7 0.86697514208473048 8 0.045564162726547057
		5 3 0.023498844294791238 4 0.0080561779684982203 6 0.015541426573635638 
		7 0.92168242950478718 8 0.031221121658287616
		5 3 0.0075265627704870323 4 0.0035604183570631092 7 0.96003362126091685 
		8 0.025575056944589281 9 0.0033043406669436884
		5 3 0.0029741676047679109 4 0.0014249073448628807 7 0.98199586467107114 
		8 0.011907486415126291 9 0.0016975739641718235
		5 3 0.010450599827336418 6 0.0088568572684277255 7 0.96050266735105727 
		8 0.016301823626768772 9 0.0038880519264098399
		5 3 7.128033333029717e-05 6 3.4390979581866687e-05 7 0.99983118495511625 
		8 4.6535459819507077e-05 9 1.6608272152088972e-05
		5 3 3.7312727808374689e-05 4 1.3465945841784256e-05 7 0.99984762163989471 
		8 8.2944450681165344e-05 9 1.8655235774080754e-05
		5 3 0.00069646103458923339 4 0.00019625811858356668 7 0.99808804167927301 
		8 0.00084063651099768586 9 0.00017860265655663776
		5 3 0.0024185384111105762 4 0.00029311804954676804 6 0.00044810134179792363 
		7 0.9961853604244697 8 0.00065488177307500273;
	setAttr ".wl[1200:1299].w"
		5 2 0.0047497336260047245 3 0.0058511890688218585 6 0.15586668587891997 
		7 0.83224781271581427 8 0.0012845787104392447
		5 2 0.00086834046267043636 3 0.0011421152199695614 6 0.034751194411341016 
		7 0.9630481035053069 8 0.00019024640071205212
		5 2 0.00040257393777612583 3 0.00042281533639118156 6 0.18632900071222491 
		7 0.81281095638963152 8 3.4653623976214009e-05
		5 2 0.0028222768784987476 3 0.0029632934801828198 6 0.34728481735009131 
		7 0.64658788762742969 8 0.00034172466379749972
		5 3 0.0010885134775734781 4 0.00051966568271053588 7 0.99289738493065416 
		8 0.0047166169755633001 9 0.00077781893349859071
		5 3 0.00023186157882708696 4 0.00010140449076601037 7 0.99866496903268931 
		8 0.00083372165211751379 9 0.0001680432456001314
		5 3 0.00071329802383497177 6 0.00057712545577946316 7 0.99760041306585923 
		8 0.00084040224872383306 9 0.00026876120580250233
		5 3 0.0037967815594983187 6 0.0035424088366262391 7 0.98518981742434741 
		8 0.0058628979845238103 9 0.0016080941950042797
		5 3 9.8089686552177009e-05 4 6.751719096482384e-05 7 0.99754636155823206 
		8 0.0021172292169181124 9 0.00017080234733276076
		5 3 0.00038819993363264162 4 0.00028301681962448718 7 0.98803402061441759 
		8 0.010641551902601461 9 0.00065321072972388016
		5 3 0.002579599109955651 4 0.0019002604707953571 7 0.9386414039937736 
		8 0.054509378561887832 9 0.0023693578635874367
		5 3 0.00096917584465836286 4 0.00071285904865567545 7 0.97227924801682686 
		8 0.024827853368327702 9 0.0012108637215312451
		5 3 0.0051969387150953483 4 0.0037210320401993668 7 0.90943984557574675 
		8 0.078445477689436327 9 0.003196705979522204
		5 3 0.0067335517033202657 4 0.0044388536796604594 7 0.91903026826586121 
		8 0.06690431945956693 9 0.0028930068915912132
		5 3 0.0015693088999011115 4 0.00088946016639737386 7 0.98519155487132903 
		8 0.011575807276869198 9 0.0007738687855032726
		5 3 0.0027589095401123016 4 0.001702207438668858 7 0.96842186501143745 
		8 0.025884366689893846 9 0.0012326513198876652
		5 3 0.0005435668353741571 4 0.00030982521879060733 7 0.99425394591840721 
		8 0.0044902003369684364 9 0.0004024616904595886
		5 3 9.0601105623161837e-05 4 5.6395100607108837e-05 7 0.9985529443943949 
		8 0.0011806219366867399 9 0.00011943746268806122
		5 2 0.015131223757263938 3 0.03716912344704535 6 0.061891211429914876 
		7 0.86192346420217236 8 0.023884977163603521
		5 2 0.0079363433493875851 3 0.018247084465252403 6 0.042226970109576524 
		7 0.91696137599551364 8 0.014628226080269847
		5 2 0.00048021478774696197 3 0.0012589304525730163 6 0.0029371203955699827 
		7 0.99462116659518052 8 0.00070256776892952452
		5 2 0.0030010923708672721 3 0.0069769725359010359 6 0.018767811195120911 
		7 0.96578784301771969 8 0.0054662808803911042
		5 2 5.8172058071944949e-05 3 0.00019996622397735296 6 0.00026530512872242174 
		7 0.99941805210691048 8 5.8504482317861513e-05
		5 2 0.001089674515784623 3 0.0067505925057366606 6 0.0027332059262835575 
		7 0.98880302718072799 8 0.00062349987146704373
		5 2 0.0062858560801556914 3 0.058909676279755456 6 0.010999379670760862 
		7 0.92062923035058042 8 0.0031758576187476532
		5 2 0.015511957338784483 3 0.11148298224730034 6 0.026640644301386889 
		7 0.83747346579346804 8 0.0088909503190602885
		5 2 0.03026272428661118 3 0.14070680296042315 6 0.055722485373434445 
		7 0.75109302648246934 8 0.022214960897061837
		5 2 0.026852904459786359 3 0.078517594602383181 6 0.074664041577496842 
		7 0.78864822346505636 8 0.031317235895277212
		5 0 0.043981902655678036 1 0.090978116063107864 2 0.1913605974213923 
		6 0.62969748120414393 10 0.04398190265567789
		5 0 0.021281481237934989 1 0.040267340560674575 2 0.28910568161919559 
		6 0.62806401534425993 10 0.021281481237934937
		5 0 0.014997507338856728 1 0.058723427967548487 2 0.022247779223296207 
		6 0.8890337781314418 10 0.014997507338856693
		5 0 0.013068335987810022 1 0.08352002904893796 2 0.010570975275182344 
		6 0.87977232370025971 10 0.013068335987809987
		5 0 0.019712012594509554 1 0.13180626249395533 2 0.014695132912759732 
		6 0.81407457940426575 10 0.019712012594509502
		5 0 0.03019340697303409 1 0.11213463046439712 2 0.042146263587248552 
		6 0.78533229200228627 10 0.030193406973033982
		5 1 8.6876087067874354e-05 2 0.0058269696253499996 3 0.0058133145357856754 
		6 0.49948230785310538 7 0.48879053189869098
		5 1 0.00027204986255521753 2 0.017507741318527795 3 0.017006038762604769 
		6 0.51958472500920094 7 0.44562944504711116
		5 1 0.00075663457253541042 2 0.030507351949227747 3 0.029282941936530596 
		6 0.50771767828430137 7 0.43173539325740484
		5 1 0.00049458676484472953 2 0.010121421764199428 3 0.0098583130781001675 
		6 0.53469818152733994 7 0.44482749686551565
		5 1 0.00082125706572799449 2 0.0089750210961233659 3 0.0087107146132550124 
		6 0.54498068364079233 7 0.43651232358410136
		5 1 0.0003398155864148373 2 0.0031099793018859083 3 0.003058484154339877 
		6 0.54902257572351276 7 0.44446914523384673
		5 1 6.9193926650115784e-05 2 0.0012804768532169197 3 0.0012820627257433346 
		6 0.49260173803714119 7 0.50476652845724856
		5 1 2.6274014339043509e-05 2 0.00097882622534026871 3 0.00097955103398077322 
		6 0.49484462645184918 7 0.50317072227449067
		5 0 0.0096219650280976125 1 0.097569346257412357 2 0.0056420899400997319 
		6 0.87754463374629266 10 0.0096219650280975934
		5 0 0.012797645628099857 1 0.12952794916515822 2 0.0072929908867259792 
		6 0.83758376869191609 10 0.012797645628099825
		5 1 6.3981801653896012e-05 2 0.00062328761511096177 3 0.00062295662984310034 
		6 0.50310362416079357 7 0.49558614979259846
		5 1 0.000139091339286669 2 0.0011995881956726327 3 0.0011908443740517318 
		6 0.53588375563103519 7 0.46158672045995375
		5 0 0.015802646850929223 1 0.040269174234445558 2 0.064771505941734683 
		6 0.86335402612196144 10 0.015802646850929171
		5 1 0.00019126570526968088 2 0.0012430217433182283 3 0.0011257136033373625 
		6 0.84140296555001126 7 0.15603703339806352
		5 1 0.00079426224689630863 2 0.0032789775626220034 3 0.002926615384606084 
		6 0.77775229501405441 7 0.21524784979182118
		5 1 0.0012388876515042886 2 0.0091090844369149399 3 0.0076488891404690911 
		6 0.75657596546776318 7 0.22542717330334849
		5 1 0.00094866788739961152 2 0.0047161339981748414 3 0.0041771259638836988 
		6 0.75495896448638011 7 0.23519910766416172
		5 1 0.0010086957108176526 2 0.014706450786899078 3 0.011826899573982372 
		6 0.74704814128116681 7 0.22540981264713422
		5 1 0.0012911911287956971 2 0.048577758015927099 3 0.034691704423180099 
		6 0.67686604532224404 7 0.23857330110985314
		5 1 0.00058611368310426985 2 0.025706029672916509 3 0.018780252595679267 
		6 0.75093142031994908 7 0.20399618372835093
		5 1 0.00070460785830577411 2 0.038486578267937041 3 0.024179284556888222 
		6 0.77287982951518863 7 0.16374969980168042
		5 1 0.00025969574282018627 2 0.0049545576909124514 3 0.0043875350459355172 
		6 0.75106892999627761 7 0.23932928152405417
		5 1 0.00042366314455006366 2 0.0038504271967285579 3 0.0034460355841716213 
		6 0.75839143354148919 7 0.23388844053306063
		5 1 0.003738024061827566 2 0.0050924349409270384 3 0.0029703983414319109 
		6 0.95338228972003825 7 0.034816852935775189
		5 1 0.0027304087433692049 2 0.0048231369666956875 3 0.0028924137282663664 
		6 0.95284577510073487 7 0.036708265460933864
		5 0 0.0061505990515405189 1 0.025834815823911294 2 0.0097908326265872953 
		6 0.94247851100177638 7 0.015745241496184597
		5 0 0.0035563858046250628 1 0.015571360071170827 2 0.00566706244982337 
		6 0.96672849836292152 7 0.0084766933114591454
		5 1 0.010538479169568498 2 0.014257567394818631 3 0.0038404029797688317 
		6 0.95840139509779698 7 0.012962155358047008
		5 1 0.0036692808444805766 2 0.012793559332350797 3 0.006810041603806505 
		6 0.92308679255290926 7 0.053640325666452784
		5 1 0.0044005547458241187 2 0.0078735302560943004 3 0.0045829370598067954 
		6 0.93454920237902983 7 0.04859377555924501
		5 0 0.0041226611610362656 1 0.014946425460137884 2 0.0086499078652845594 
		6 0.95948279427255012 7 0.012798211240991147
		5 1 0.0032169007822157843 2 0.028175852887959377 3 0.012220645882111246 
		6 0.89814772678484511 7 0.058238873662868514
		5 1 0.0093921043001474972 2 0.04367720048955559 3 0.0077379012375291406 
		6 0.92199229930582116 7 0.017200494666946703
		5 1 0.0070329373360683454 2 0.098798340660280551 3 0.0092010186407425996 
		6 0.87050647900522338 7 0.014461224357685166
		5 1 0.0027663351165993174 2 0.073638588282817635 3 0.021075846196755052 
		6 0.84816051182800745 7 0.054358718575820586
		5 1 0.026027273611526253 2 0.26086092306249853 3 0.033194070714201912 
		6 0.63623449288957357 7 0.043683239722199757
		5 1 0.0047634542039234479 2 0.12791079727013843 3 0.04182795308552005 
		6 0.73155974437666671 7 0.093938051063751207
		5 1 0.0030105896338395908 2 0.14007758835490647 3 0.030880128522096921 
		6 0.76824096714427925 7 0.057790726344877821
		5 1 0.011494941531835164 2 0.29495285696300166 3 0.017898507859703948 
		6 0.65446351327495644 7 0.021190180370502895
		5 1 0.02651153726278992 2 0.052535316017410905 3 0.01281828611586249 
		6 0.87553461549226719 7 0.032600245111669438
		5 1 0.0038618534737250012 2 0.02855214547843557 3 0.014288313860959665 
		6 0.87251789023463833 7 0.080779796952241495
		5 0 0.0075227892629000674 1 0.025067542109658374 2 0.017951145054815387 
		6 0.92768168507650628 7 0.021776838496119947
		5 1 0.0034893673801898281 2 0.010486828456860848 3 0.0060969931162835073 
		6 0.91998362281540014 7 0.059943188231265578
		5 0 0.013437243365367089 1 0.027930268060702625 2 0.16086321663770251 
		6 0.78433202857086082 10 0.013437243365367044
		5 2 0.00010000009333619037 3 0.00021853450346192579 6 0.00089889581475152225 
		7 0.99874659027859358 8 3.5979309856822501e-05
		5 2 0.0018101638656949355 3 0.006030480959854193 6 0.0073880330912421219 
		7 0.98446487259144511 8 0.00030644949176353233
		5 2 0.01946694628594314 3 0.094672247270725776 6 0.039909622441412079 
		7 0.84383532193571342 8 0.0021158620662056582
		5 2 0.04267525661540035 3 0.16375468470699842 6 0.079037451613583554 
		7 0.70913026190508544 8 0.0054023451589323215
		5 2 0.058465805307750564 3 0.14545392463861556 6 0.1320996894917357 
		7 0.65273055175728611 8 0.011250028804612086
		5 2 0.040099353888728338 3 0.072906287308651688 6 0.16296784615360929 
		7 0.70983679922320131 8 0.01418971342580924
		5 2 0.023301711094763367 3 0.037928611884690495 6 0.15336165358275594 
		7 0.77309449929393048 8 0.012313524143859663
		5 2 0.013659903482040272 3 0.021048156955982954 6 0.13087841181765986 
		7 0.82511626580971431 8 0.0092972619346026932
		5 2 0.0054756101284858224 3 0.0086612748722085919 6 0.068701800372023419 
		7 0.91335816184924312 8 0.0038031527780390314
		5 2 0.00084560628992230399 3 0.0014974259773690131 6 0.010957056408838813 
		7 0.986244422912255 8 0.0004554884116148681
		5 0 0.10127477907430717 1 0.23388876681670828 2 0.10357931886953085 
		6 0.45998235616514677 10 0.10127477907430686
		5 0 0.070775500517007234 1 0.14275685931343013 2 0.20023026145706962 
		6 0.51546187819548617 10 0.070775500517006901
		5 0 0.047306476949981739 1 0.22384617241262483 2 0.029625148976139708 
		6 0.65191572471127213 10 0.047306476949981621
		5 0 0.030866959587863913 1 0.28343697370959581 2 0.012577723210026062 
		6 0.64225138390465053 10 0.030866959587863833
		5 0 0.023313275318709737 1 0.45261377614070519 6 0.49336368277052561 
		10 0.023313275318709702 11 0.0073959904513497023
		5 0 0.058442022760846084 1 0.37466278274674314 2 0.02055334618530609 
		6 0.48789982554625877 10 0.058442022760845917
		5 0 0.013888038581531936 1 0.33108232210181054 2 0.0040942415760073601 
		6 0.63704735915911825 10 0.013888038581531903
		5 0 0.013055658666834436 1 0.42301928967050001 6 0.54671975428014252 
		10 0.013055658666834408 11 0.0041496387156885195
		5 0 0.05692734889871387 1 0.16523681545971519 2 0.064158505756581025 
		6 0.65674998098627613 10 0.056927348898713669
		5 0 0.041755078139558165 1 0.097875266242355846 2 0.12972913178249329 
		6 0.68888544569603472 10 0.04175507813955797
		5 4 0.0006393238524104426 5 0.00057722203646992003 7 0.010514855287539737 
		8 0.88653619341554524 9 0.10173240540803469
		5 4 0.00033361165176292243 5 0.00030954541974700006 7 0.0080564846840413002 
		8 0.89040569489487931 9 0.10089466334956947;
	setAttr ".wl[1300:1399].w"
		5 4 0.0038554255147570651 5 0.0031218095384862527 7 0.037348645818938847 
		8 0.83565254323487548 9 0.12002157589294232
		5 3 0.0015989349637255666 4 0.0016643744633728925 7 0.32925433060710591 
		8 0.64392571830867729 9 0.023556641657118349
		5 3 0.0016785197301990191 4 0.0017773290654569764 7 0.28265603715763887 
		8 0.70291963113982958 9 0.01096848290687555
		5 3 0.00085841154332009866 4 0.00090293262592748666 7 0.2452080855058397 
		8 0.73382752004629559 9 0.019203050278617136
		5 3 0.00074174709489156874 4 0.00074067944051733133 7 0.50538707475145506 
		8 0.48690105539392242 9 0.0062294433192136255
		5 3 0.00061477895795093035 4 0.00062262605728101135 7 0.40813331654445761 
		8 0.58240576557971258 9 0.0082235128605979198
		5 3 0.00047881057411027612 4 0.00046360351809558161 7 0.72393489594005733 
		8 0.27161084973236549 9 0.0035118402353713513
		5 3 0.00052617214173768245 4 0.00051133432171377596 7 0.69629853907028783 
		8 0.29978506812470729 9 0.0028788863415535183
		5 3 0.0012707129925194898 4 0.0011894610302826941 7 0.76512095691843041 
		8 0.22990982017265063 9 0.0025090488861168065
		5 3 0.0013775000135243778 4 0.0013922355135738214 7 0.44680434113762396 
		8 0.54620925343364946 9 0.0042166699016284613
		5 3 0.0022748909806951578 4 0.0022676872350467191 7 0.50773915726299867 
		8 0.48449126135974929 9 0.0032270031615102175
		5 3 0.0026622420404946814 4 0.0025092021386460719 7 0.68124100882188265 
		8 0.31075633962356974 9 0.0028312073754068602
		5 3 0.0020992502897441609 4 0.0021687344564620867 7 0.37665162656265644 
		8 0.61329313968600874 9 0.0057872490051284363
		5 3 0.0024858036079586183 4 0.0024989783645838152 7 0.47687920716031618 
		8 0.51375712464492751 9 0.004378886222213791
		5 3 0.00077981737910144699 4 0.00078414489489819447 7 0.46052425831998484 
		8 0.52921001849760796 9 0.008701760908407595
		5 3 0.00083395127227624797 4 0.0008595842013992208 7 0.32519253320225333 
		8 0.65736298725694609 9 0.015750944067125149
		5 3 0.00043682079151893962 4 0.00042773220073844247 7 0.66432344707796787 
		8 0.33313746238980046 9 0.0016745375399742641
		5 3 0.00052389868875444244 4 0.0005236988229886351 7 0.50098425286900294 
		8 0.49512407070101822 9 0.0028440789182358431
		5 3 0.0045681031774652573 4 0.0045681031774652573 7 0.49288812138858035 
		8 0.49288812138858035 9 0.0050875508679086847
		5 3 0.0015017780408663334 4 0.0015017780408663334 7 0.49677839736964635 
		8 0.49677839736964613 9 0.0034396491789748717
		5 3 0.00700197931307574 4 0.00700197931307574 7 0.49051876989206644 
		8 0.49051876989206644 9 0.0049585015897156684
		5 3 0.0022769909367652947 4 0.002276045295891654 7 0.49805411314232939 
		8 0.49500792734564947 9 0.0023849232793642719
		5 3 0.0026931805826920022 4 0.0025832442586207127 7 0.6313685307130612 
		8 0.36103642830778071 9 0.0023186161378453505
		5 3 0.0031282532819872661 4 0.0031282532819872661 7 0.49499761131604536 
		8 0.49499761131604525 9 0.0037482708039348442
		5 3 0.00058382889380758642 4 0.00058382889380758642 7 0.49744956120013223 
		8 0.49744956120013212 9 0.0039332198121204975
		5 3 0.00056631545391462319 4 0.00056631545391462319 7 0.49843079756992004 
		8 0.49843079756992026 9 0.0020057739523304413
		5 3 0.00046947411202024323 4 0.0004626726708444236 7 0.61396400946535679 
		8 0.3837728631303669 9 0.0013309806214117138
		5 3 0.0006081425395245947 4 0.0006081425395245947 7 0.49808375980285829 
		8 0.49808375980285829 9 0.0026161953152341435
		5 3 0.0029190143006396704 4 0.0028454172216504461 7 0.57758628870653139 
		8 0.41428160642545991 9 0.0023676733457185018
		5 3 0.0034014831290205489 4 0.0034014831290205489 7 0.49515258058971628 
		8 0.49515258058971628 9 0.0028918725625263881
		5 3 0.0041119844082598746 4 0.0041119844082598746 7 0.49391659464871884 
		8 0.49391659464871884 9 0.0039428418860425127
		5 3 0.00060045354616404881 4 0.00071335747264387496 7 0.051118046127924741 
		8 0.89936888751764077 9 0.048199255335626495
		5 3 0.00082103121174373361 4 0.001005056317395934 7 0.051472670222769995 
		8 0.90486885540757789 9 0.041832386840512492
		5 3 0.0021515048555885686 4 0.0027120619873087933 7 0.085135037226914234 
		8 0.87277600572612779 9 0.037225390204060536
		5 3 0.0052490629700797705 4 0.0052490629700797705 7 0.49108328433798892 
		8 0.49108328433798892 9 0.0073353053838625323
		5 3 0.0064706464491681168 4 0.0064706464491681168 7 0.49039793676738924 
		8 0.49039793676738924 9 0.0062628335668852538
		5 3 0.0014647108096045372 4 0.0014647108096045372 7 0.49615738510043905 
		8 0.49615738510043905 9 0.0047558081799128279
		5 3 0.00073656935321353672 4 0.0007904083990978221 7 0.17433785093982923 
		8 0.80009925149377237 9 0.024035919814087054
		5 3 0.0011573537318455387 4 0.0011794869061302396 7 0.39711622001616032 
		8 0.58292263145723344 9 0.017624307888630435
		5 3 0.0010086567228140557 4 0.0010086567228140557 7 0.49549915277572248 
		8 0.49549915277572237 9 0.0069843810029269439
		5 3 0.0037401024617924016 4 0.0038190785564978826 7 0.43386359624820886 
		8 0.55013962607707489 9 0.0084375966564259799
		5 3 0.0020672565936100196 4 0.0022889675114349281 7 0.20237017164891349 
		8 0.78226044524054128 9 0.011013159005500232
		5 3 0.0056727509973230417 4 0.0056727509973230417 7 0.49082330114820211 
		8 0.49082330114820188 9 0.0070078957089499232
		5 3 0.0035465501136974224 4 0.0046647620441077186 7 0.095693881841302605 
		8 0.85362419326696493 9 0.042470612733927375
		5 4 0.00083562750427086674 5 0.00072298477261451043 7 0.054980609637717427 
		8 0.86921404822797987 9 0.074246729857417301
		5 4 0.00108954778772508 5 0.001031153424747045 7 0.028457581709845733 
		8 0.72454518262234191 9 0.2448765344553403
		5 4 0.0076867137843812132 5 0.0058826839206043077 7 0.050847193769261119 
		8 0.80315674244129309 9 0.13242666608446024
		5 4 0.00019374142177040326 5 0.00019123798745480466 7 0.0018303542786895703 
		8 0.6539246616316714 9 0.34386000468041378
		5 4 0.00046350150250850313 5 0.00045960515108515532 7 0.0050736122846508601 
		8 0.56503256460723694 9 0.42897071645451856
		5 4 0.0054016388211129808 5 0.0048185787044000014 7 0.019814719438013908 
		8 0.71540028432699543 9 0.2545647787094778
		5 4 0.001934580816243164 5 0.0018090163117919511 7 0.0094711976151398859 
		8 0.7240703738979728 9 0.26271483135885226
		5 4 0.00040438962406459374 5 0.00039539403066418715 7 0.0026934243634984564 
		8 0.67937246346362912 9 0.31713432851814366
		5 3 0.0071185977528277411 4 0.0071185977528277411 7 0.48745565823819631 
		8 0.4874556582381962 9 0.010851488017952054
		5 3 0.0093833340412979756 4 0.0093833340412979756 7 0.48556775974248517 
		8 0.48556775974248506 9 0.010097812432433904
		5 3 0.0023547727281312673 4 0.0023547727281312673 7 0.49357150728450305 
		8 0.49357150728450283 9 0.0081474399747316333
		5 3 0.0011024406936609563 4 0.0011994225734774531 7 0.17690925787482178 
		8 0.77729452724408254 9 0.043494351613957365
		5 3 0.0015933540585479783 4 0.0016361728634574101 7 0.37707364813224575 
		8 0.59306841369587315 9 0.026628411249875736
		5 3 0.0016783921015925533 4 0.0016792873496496799 7 0.48984941444333502 
		8 0.49434189781820614 9 0.012451008287216611
		5 3 0.0059255176596180962 4 0.0061333726754744513 7 0.41214731980473851 
		8 0.56055595307081474 9 0.015237836789354215
		5 3 0.0029371638995531572 4 0.0033521751707049669 7 0.18790016223187012 
		8 0.78728641783894948 9 0.018524080858922144
		5 3 0.0089665760934714515 4 0.0089665760934714515 7 0.48492561801668088 
		8 0.48492561801668077 9 0.012215611779695476
		5 3 0.0039544472675866983 4 0.0054035193537900934 7 0.087313636983113965 
		8 0.84808942715807167 9 0.055238969237437541
		5 4 0.0014435890874786364 5 0.0012852424014535269 7 0.073213127673776718 
		8 0.78703217477143439 9 0.13702586606585673
		5 4 0.0020534899010383281 5 0.001968688556239522 7 0.047608200292666027 
		8 0.61868802687795321 9 0.32968159437210287
		5 4 0.0077999238743334497 5 0.0061661151360779282 7 0.043946596809308611 
		8 0.78699770207217046 9 0.1550896621081097
		5 4 0.0016754558370164787 5 0.0016603313426238524 7 0.022256858883723814 
		8 0.52481760360094054 9 0.44958975033569532
		5 4 0.005030059597399314 5 0.0045809175932627995 7 0.016234674067919782 
		8 0.6907084039864545 9 0.28344594475496371
		5 4 0.0012604040668708078 5 0.0012528580950219952 7 0.0033210519952004626 
		8 0.52670080049110435 9 0.46746488535180236
		5 4 0.00021417143353466247 5 0.0002140704694341679 7 0.0008357500991597206 
		8 0.50505323169560956 9 0.49368277630226187
		5 3 0.0017604314265552306 4 0.0020434157708027396 7 0.12761380497705668 
		8 0.84550727431074579 9 0.023075073514839606
		5 3 0.0011739661695731307 4 0.0014235272517313748 7 0.071367891403144507 
		8 0.88705122416446658 9 0.038983391011084403
		5 3 0.0017237040220612746 4 0.001934251210769239 7 0.1638288330577865 
		8 0.79443816495946318 9 0.038075046749919905
		5 3 0.0064184129591998325 4 0.0068324524119231988 7 0.35534768367553093 
		8 0.59773976667113793 9 0.033661684282208157
		5 3 0.0018355998349169334 4 0.0021207946682038309 7 0.12969095419158552 
		8 0.75508808242465808 9 0.11126456888063563
		5 3 0.0027359944293262259 4 0.0028956966766635912 7 0.31033876672043897 
		8 0.62947829764388852 9 0.05455124452968281
		5 3 0.005143992480510339 4 0.0051764658919356424 7 0.46807314131677474 
		8 0.49744040811337742 9 0.024165992197401946
		5 3 0.011021476217416204 4 0.011098986212351341 7 0.46475634705558827 
		8 0.48661097944609411 9 0.026512211068550152
		5 3 0.0037456443331174856 4 0.0037826352598028553 7 0.45337111226236715 
		8 0.50652801311471085 9 0.032572595030001761
		5 3 0.013875214780594194 4 0.013875214780594194 7 0.47501061393154753 
		8 0.47501061393154742 9 0.022228342575716719
		5 3 0.0091049082909570173 4 0.0091049082909570173 7 0.48010378485627481 
		8 0.4801037848562747 9 0.021582613705536501
		5 3 0.0056456625159495731 4 0.0056456625159495731 7 0.4824724426286881 
		8 0.4824724426286881 9 0.02376378971072466
		5 4 0.0014253023449708948 5 0.0011067772422340885 7 0.029903723371668075 
		8 0.92057311495930105 9 0.046991082081825897
		5 4 0.0010279889375340127 5 0.00092258834520453803 7 0.036902958135931904 
		8 0.83603016159346732 9 0.1251163029878623
		5 4 0.0020693299485822349 5 0.0019061142228508287 7 0.066919384339328147 
		8 0.70507847743670549 9 0.22402669405253331
		5 4 0.0016982325928488514 5 0.0016489387493491782 7 0.030311016368272665 
		8 0.5996566582211883 9 0.36668515406834101
		5 4 0.00013710120429666554 5 0.00012998897005254672 7 0.0014798236246286055 
		8 0.90935653442504183 9 0.088896551775980409
		5 4 0.0072066012208762591 5 0.0069211158375371172 7 0.013093684566466807 
		8 0.56657639966434858 9 0.40620219871077129
		5 4 0.0005728688999441185 5 0.00057286092935019523 7 0.0042636422278822632 
		8 0.49739725047276301 9 0.49719337747006037
		5 4 0.0065662272527651612 5 0.0062946915631778575 7 0.013180784546587398 
		8 0.57465588018790947 9 0.3993024164495601
		5 4 0.00016400243248552895 5 0.00016391695036027418 7 0.00099934905759390953 
		8 0.50651889044945864 9 0.49215384111010158
		5 4 0.0013214470215105196 5 0.0013214470215105196 7 0.010673967025676542 
		8 0.49334156946565122 9 0.49334156946565122
		5 4 0.0013680375346327507 5 0.0013629812188857317 7 0.014710340041969661 
		8 0.50851880572466279 9 0.47403983547984907
		5 4 0.00051825495293716885 5 0.00051708012043004739 7 0.0046600213774867626 
		8 0.51462150902188031 9 0.47968313452726574
		5 4 0.00050623040467120343 5 0.00050623040467120343 7 0.0033025782510643347 
		8 0.49784248046979662 9 0.49784248046979662
		5 4 0.0016407980580731214 5 0.0016398034820451642 7 0.015729117091948065 
		8 0.4930665599742291 9 0.48792372139370449
		5 4 0.0016774095541976636 5 0.0016648937773772817 7 0.021302472963165005 
		8 0.51879488323788336 9 0.4565603404673767
		5 4 0.0023191531775585716 5 0.0022371211737704185 7 0.049023899852199605 
		8 0.59120327259498584 9 0.3552165532014856
		5 4 0.0021541465823816859 5 0.0019537767513537144 7 0.089125977159409675 
		8 0.71155669645684128 9 0.19520940305001364
		5 3 0.0017277143270976428 4 0.0019160126830779765 7 0.17693429395512053 
		8 0.73728600159755253 9 0.08213597743715137
		5 3 0.001952589072193457 4 0.002022448293335402 7 0.35478304440183206 
		8 0.60599616631005171 9 0.035245751922587436;
	setAttr ".wl[1400:1499].w"
		5 3 0.0023373223903104048 4 0.0023421450698330286 7 0.48123939303420055 
		8 0.4957868411801975 9 0.018294298325458626
		5 3 0.0034599041366975111 4 0.0034599041366975111 7 0.49005694889457629 
		8 0.49005694889457629 9 0.012966293937452449
		5 3 0.0082293741320872554 4 0.0082293741320872554 7 0.4847455943197137 
		8 0.48474559431971415 9 0.014050063096397451
		5 3 0.012109095443563955 4 0.012109095443563955 7 0.48052455593283389 
		8 0.48052455593283377 9 0.014732697247204463
		5 3 0.010325802259024498 4 0.010334770650660243 7 0.47976278530763278 
		8 0.48261381425021582 9 0.016962827532466723
		5 3 0.0064377802979777949 4 0.0067371270385587628 7 0.39114853551594553 
		8 0.57488084020041408 9 0.020795716947103898
		5 3 0.002267968485680007 4 0.0026037650491139122 7 0.15910715166153128 
		8 0.81711297819834317 9 0.018908136605331728
		5 3 0.0031420271413900264 4 0.0043349442896809913 7 0.071968437916713313 
		8 0.8639494245018452 9 0.056605166150370485
		5 4 0.0048885572638779099 5 0.0040156742768977238 7 0.030598951325607332 
		8 0.81123258315130864 9 0.14926423398230829
		5 4 0.0026864523454846151 5 0.0025347529902654494 7 0.008714646576170498 
		8 0.67317943813288772 9 0.31288470995519174
		5 4 7.0882233445765516e-05 5 7.0882233445765516e-05 7 0.00033882727184976941 
		8 0.49975970413062937 9 0.49975970413062937
		5 4 0.0016371187685431273 5 0.0016371187685431273 7 0.010083067696566708 
		8 0.49332134738317357 9 0.49332134738317357
		5 4 0.00085108552061405199 5 0.00085108552061405199 7 0.0047544611586061965 
		8 0.49677168390008281 9 0.49677168390008281
		5 4 0.0023593920906232538 5 0.0023593920906232538 7 0.002470469745007667 
		8 0.49640537303687288 9 0.49640537303687288
		5 4 0.0051452652122559823 5 0.0051452652122559823 7 0.0044125653720756474 
		8 0.49264845210170627 9 0.49264845210170616
		5 4 0.011041441488283057 5 0.011041441488283057 7 0.0077248418580588337 
		8 0.48509613758268749 9 0.48509613758268749
		5 4 0.018406965339047621 5 0.018406965339047621 7 0.011438739817312608 
		8 0.47587366475229609 9 0.47587366475229609
		5 4 0.025695341842953943 5 0.025695341842953943 7 0.01534527670156579 
		8 0.46663201980626323 9 0.46663201980626312
		5 4 0.0025231771374116642 5 0.0025231771374116642 7 0.0030524369215526458 
		8 0.49595060440181199 9 0.49595060440181199
		5 4 0.0041766145036826194 5 0.0041766145036826194 7 0.0041982178603089818 
		8 0.49372427656616275 9 0.49372427656616297
		5 4 0.0094005640437321708 5 0.0094005640437321708 7 0.0075516835299035117 
		8 0.48682359419131616 9 0.48682359419131604
		5 4 0.016865162806761234 5 0.016865162806761234 7 0.011633672993571912 
		8 0.47731800069645297 9 0.47731800069645275
		5 4 0.022761239021722845 5 0.022761239021722845 7 0.014736052433988633 
		8 0.46987073476128283 9 0.46987073476128283
		5 4 0.00070512218427486899 5 0.00070512218427486899 7 0.0014873290787582524 
		8 0.49855121327634616 9 0.49855121327634594
		5 4 0.0021670877647614016 5 0.0021670877647614016 7 0.0031782802102505101 
		8 0.49624377213011339 9 0.49624377213011328
		5 4 0.005372096498626704 5 0.005372096498626704 7 0.0062688812124621109 
		8 0.49149346289514223 9 0.49149346289514223
		5 4 0.010672360224097933 5 0.010672360224097933 7 0.010283832629914861 
		8 0.48418572346094468 9 0.48418572346094468
		5 4 0.016525821473899246 5 0.016525821473899246 7 0.013628974580033877 
		8 0.47665969123608382 9 0.47665969123608382
		5 4 0.00068542481856894864 5 0.00068542481856894864 7 0.0012980668129367039 
		8 0.4986655417749627 9 0.4986655417749627
		5 4 0.0020951794124088969 5 0.0020951794124088969 7 0.0030311415791605349 
		8 0.49638924979801091 9 0.4963892497980108
		5 4 0.0050195381308565613 5 0.0050195381308565613 7 0.0059424071368056504 
		8 0.4920092583007406 9 0.4920092583007406
		5 4 0.0096833013190495993 5 0.0096833013190495993 7 0.0095945724076533737 
		8 0.48551941247712371 9 0.48551941247712371
		5 4 0.016984899521775225 5 0.016984899521775225 7 0.013852536682479124 
		8 0.47608883213698522 9 0.47608883213698522
		5 4 0.001702384675547077 5 0.001702384675547077 7 0.0017999539720089009 
		8 0.49739763833844847 9 0.49739763833844847
		5 4 0.0049849294284881737 5 0.0049849294284881737 7 0.0042642810726147813 
		8 0.49288293003520439 9 0.49288293003520439
		5 4 0.0026360122134498208 5 0.0026360122134498208 7 0.0032699849212547735 
		8 0.49572899532592285 9 0.49572899532592285
		5 4 0.0005232044855940167 5 0.0005232044855940167 7 0.00097158158264664773 
		8 0.49899100472308278 9 0.49899100472308255
		5 4 0.01004017585019871 5 0.01004017585019871 7 0.0072273135068133118 
		8 0.48634616739639469 9 0.48634616739639458
		5 4 0.0058849587853121556 5 0.0058849587853121556 7 0.0060413124907143026 
		8 0.49109438496933072 9 0.49109438496933072
		5 4 0.016248172476531004 5 0.016248172476531004 7 0.010467232798652906 
		8 0.47851821112414245 9 0.47851821112414267
		5 4 0.010402944960949125 5 0.010402944960949125 7 0.0092252112139093422 
		8 0.48498444943209607 9 0.48498444943209629
		5 4 0.02200164115757915 5 0.02200164115757915 7 0.013569102040257169 
		8 0.47121380782229222 9 0.47121380782229222
		5 4 0.016074319291239238 5 0.016074319291239238 7 0.012528620532474876 
		8 0.47766137044252316 9 0.47766137044252338
		5 4 0.00085365247135858356 5 0.00085365247135858356 7 0.0023417820343672969 
		8 0.4979754565114578 9 0.49797545651145769
		5 4 0.0012141565109058067 5 0.0012141565109058067 7 0.0031113532030705958 
		8 0.49723016688755894 9 0.49723016688755894
		5 4 0.0018563096166475655 5 0.0018563096166475655 7 0.0041591182901081179 
		8 0.49606413123829834 9 0.49606413123829834
		5 4 0.0029667863872341357 5 0.0029667863872341357 7 0.0058218872747286829 
		8 0.49412226997540137 9 0.4941222699754016
		5 4 0.0045969329071973777 5 0.0045969329071973777 7 0.0081365909775064013 
		8 0.49133477160404943 9 0.49133477160404943
		5 4 0.00076277042656163992 5 0.00076277042656163992 7 0.0023423154471930324 
		8 0.49806607184984197 9 0.49806607184984175
		5 4 0.0011988192142501422 5 0.0011988192142501422 7 0.0033697034532044947 
		8 0.49711632905914765 9 0.49711632905914765
		5 4 0.0018943559796502274 5 0.0018943559796502274 7 0.0045752440170579922 
		8 0.49581802201182074 9 0.49581802201182074
		5 4 0.0030875541950681146 5 0.0030875541950681146 7 0.0063943482114224093 
		8 0.49371527169922069 9 0.49371527169922069
		5 4 0.0043695739289951289 5 0.0043695739289951289 7 0.0081834913362205837 
		8 0.49153868040289461 9 0.4915386804028945
		5 4 0.0014009961537624059 5 0.0014009961537624059 7 0.0055059742096996312 
		8 0.49584601674138784 9 0.49584601674138773
		5 4 0.0017593802287981161 5 0.0017593802287981161 7 0.0056901292996533953 
		8 0.49539555512137523 9 0.49539555512137523
		5 4 0.0024733014938011066 5 0.0024733014938011066 7 0.006886420378369785 
		8 0.49408348831701399 9 0.49408348831701399
		5 4 0.003612921924906701 5 0.003612921924906701 7 0.0086034358793170614 
		8 0.49208536013543464 9 0.49208536013543486
		5 4 0.0047450980417759183 5 0.0047450980417759183 7 0.0099055124644049693 
		8 0.49030214572602154 9 0.49030214572602154
		5 4 0.0016438096493257748 5 0.0016438096493257748 7 0.0057672786640038352 
		8 0.49547255101867232 9 0.49547255101867232
		5 4 0.0018799314283632321 5 0.0018799314283632321 7 0.0058893014299420477 
		8 0.49517541785666569 9 0.49517541785666569
		5 4 0.002558252183241115 5 0.002558252183241115 7 0.007072199840973353 
		8 0.49390564789627206 9 0.49390564789627228
		5 4 0.0035679665245853813 5 0.0035679665245853813 7 0.0085825059022358683 
		8 0.49214078052429661 9 0.49214078052429683
		5 4 0.005052927840994044 5 0.005052927840994044 7 0.010292369607321477 
		8 0.48980088735534522 9 0.48980088735534522
		5 4 0.00068726659303119041 5 0.00068726659303119041 7 0.0018706790070598266 
		8 0.49837739390343894 9 0.49837739390343883
		5 4 0.0013063833795831474 5 0.0013063833795831474 7 0.0032481985389168737 
		8 0.49706951735095845 9 0.49706951735095845
		5 4 0.0018332210090665176 5 0.0018332210090665176 7 0.0052473658629930055 
		8 0.49554309605943703 9 0.49554309605943692
		5 4 0.0013641162215699179 5 0.0013641162215699179 7 0.0049543940322186748 
		8 0.49615868676232078 9 0.49615868676232078
		5 4 0.0019953045071296762 5 0.0019953045071296762 7 0.0043594290196322365 
		8 0.49582498098305422 9 0.49582498098305422
		5 4 0.0025301652724791603 5 0.0025301652724791603 7 0.0063893223329479307 
		8 0.49427517356104689 9 0.49427517356104689
		5 4 0.0030208107089013747 5 0.0030208107089013747 7 0.0058527867067537905 
		8 0.49405279593772178 9 0.49405279593772167
		5 4 0.003496596581960994 5 0.003496596581960994 7 0.0078050766539618883 
		8 0.4926008650910581 9 0.4926008650910581
		5 4 0.0042891871162735497 5 0.0042891871162735497 7 0.0076532839265410022 
		8 0.491884170920456 9 0.49188417092045589
		5 4 0.004627333799631224 5 0.004627333799631224 7 0.0092079844805142089 
		8 0.49076867396011165 9 0.49076867396011165
		5 4 0.0012355397260237668 5 0.0012355397260237668 7 0.0021159129381233834 
		8 0.49770650380491455 9 0.49770650380491455
		5 4 0.0030394213580297734 5 0.0030394213580297734 7 0.0041901951254415069 
		8 0.49486548107924955 9 0.49486548107924944
		5 4 0.0064147559671529396 5 0.0064147559671529396 7 0.007409515228881166 
		8 0.48988048641840654 9 0.48988048641840642
		5 4 0.010848608658220217 5 0.010848608658220217 7 0.011202799924321098 
		8 0.48354999137961924 9 0.48354999137961924
		5 4 0.0011338292960002103 5 0.0011338292960002103 7 0.0021779574952464102 
		8 0.49777719195637654 9 0.49777719195637654
		5 4 0.0027906662861563176 5 0.0027906662861563176 7 0.004287817428349187 
		8 0.49506542499966921 9 0.49506542499966899
		5 4 0.0064146555476236669 5 0.0064146555476236669 7 0.0079470999138104102 
		8 0.48961179449547132 9 0.48961179449547099
		5 4 0.0098301724999304545 5 0.0098301724999304545 7 0.010908591898416234 
		8 0.48471553155086139 9 0.48471553155086139
		5 4 0.0012877503888233796 5 0.0012877503888233796 7 0.0031008873643475544 
		8 0.49716180592900283 9 0.49716180592900283
		5 4 0.0026817953016554752 5 0.0026817953016554752 7 0.0052098867892659871 
		8 0.49471326130371152 9 0.49471326130371152
		5 4 0.0056165526933788755 5 0.0056165526933788755 7 0.0087152712008509627 
		8 0.49002581170619558 9 0.4900258117061958
		5 4 0.0086306774167085962 5 0.0086306774167085962 7 0.011435377215125027 
		8 0.48565163397572891 9 0.48565163397572891
		5 4 0.0013583597960011311 5 0.0013583597960011311 7 0.003152883154809574 
		8 0.4970651986265941 9 0.4970651986265941
		5 4 0.0026908226475299431 5 0.0026908226475299431 7 0.0051864247994346524 
		8 0.49471596495275288 9 0.49471596495275266
		5 4 0.0052033154540492505 5 0.0052033154540492505 7 0.008221735077697627 
		8 0.49068581700710195 9 0.49068581700710195
		5 4 0.0091072083075810877 5 0.0091072083075810877 7 0.011787022933620514 
		8 0.48499928022560879 9 0.48499928022560856
		5 4 0.0013468004674137735 5 0.0013468004674137735 7 0.0022111232110395809 
		8 0.49754763792706647 9 0.49754763792706647
		5 4 0.0014423436262372979 5 0.0014423436262372979 7 0.0029871396409996381 
		8 0.49706408655326295 9 0.49706408655326284
		5 4 0.0030224084561884515 5 0.0030224084561884515 7 0.0041114995896518146 
		8 0.49492184174898562 9 0.49492184174898562
		5 4 0.0028207145224512001 5 0.0028207145224512001 7 0.0048737803142031716 
		8 0.49474239532044728 9 0.49474239532044717
		5 4 0.0060460924995020485 5 0.0060460924995020485 7 0.006989145834325635 
		8 0.49045933458333529 9 0.49045933458333507
		5 4 0.0053100771248952442 5 0.0053100771248952442 7 0.0076844662303815021 
		8 0.49084768975991411 9 0.49084768975991389
		5 4 0.0094063182442413809 5 0.0094063182442413809 7 0.0099502198568635694 
		8 0.48561857182732698 9 0.48561857182732676
		5 4 0.0082612860915792039 5 0.0082612860915792039 7 0.010421892218198493 
		8 0.48652776779932166 9 0.48652776779932144
		5 4 0.0019851107938193674 5 0.0019851107938193674 7 0.0066360828100908301 
		8 0.49469684780113521 9 0.49469684780113521
		5 4 0.0023338089611957577 5 0.0023338089611957577 7 0.007123423406282566 
		8 0.49410447933566304 9 0.49410447933566293
		5 4 0.0028476083235397984 5 0.0028476083235397984 7 0.0079942787362493276 
		8 0.4931552523083354 9 0.49315525230833562;
	setAttr ".wl[1500:1599].w"
		5 4 0.0036224347848758686 5 0.0036224347848758686 7 0.0095092618935473834 
		8 0.49162293426835041 9 0.49162293426835041
		5 4 0.0020599555326944862 5 0.0020599555326944862 7 0.0072433994197280728 
		8 0.49431834475744163 9 0.4943183447574413
		5 4 0.0024570865648552531 5 0.0024570865648552531 7 0.0078214236407228542 
		8 0.49363220161478338 9 0.49363220161478338
		5 4 0.0029965505689429194 5 0.0029965505689429194 7 0.008690003257563899 
		8 0.49265844780227513 9 0.49265844780227513
		5 4 0.0035805987003818835 5 0.0035805987003818835 7 0.0097392352827066365 
		8 0.49154978365826485 9 0.49154978365826485
		5 4 0.0022065497992092981 5 0.0022065497992092981 7 0.010545443498177048 
		8 0.49252072845170225 9 0.49252072845170225
		5 4 0.0028030709616136858 5 0.0028030709616136858 7 0.010641143938346158 
		8 0.49187635706921323 9 0.49187635706921323
		5 4 0.003248198917980818 5 0.003248198917980818 7 0.011181614097935588 
		8 0.49116099403305152 9 0.4911609940330513
		5 4 0.0037814932862962679 5 0.0037814932862962679 7 0.011846784575837422 
		8 0.49029511442578505 9 0.49029511442578505
		5 4 0.0042090104835586679 5 0.0042090104835586679 7 0.012177821772522612 
		8 0.48970207863018 9 0.48970207863018
		5 4 0.0025295569302507771 5 0.0025295569302507771 7 0.012097684282059019 
		8 0.49142160092871978 9 0.49142160092871978
		5 4 0.0029576519275008647 5 0.0029576519275008647 7 0.01112921167100458 
		8 0.49147774223699692 9 0.49147774223699681
		5 4 0.0034388230906472928 5 0.0034388230906472928 7 0.011738232182377604 
		8 0.49069206081816391 9 0.49069206081816391
		5 4 0.0039353905373681036 5 0.0039353905373681036 7 0.012314304232291655 
		8 0.48990745734648611 9 0.48990745734648611
		5 4 0.0044262679230559687 5 0.0044262679230559687 7 0.012581584388011598 
		8 0.48928293988293825 9 0.48928293988293825
		5 4 0.002181820783895741 5 0.002181820783895741 7 0.0070468849882991324 
		8 0.49429473672195484 9 0.49429473672195462
		5 4 0.002882284254038611 5 0.002882284254038611 7 0.010144253534909102 
		8 0.49204558897850698 9 0.49204558897850675
		5 4 0.0023409896439107289 5 0.0023409896439107289 7 0.010645513178255416 
		8 0.49233625376696155 9 0.49233625376696155
		5 4 0.0025827175305261066 5 0.0025827175305261066 7 0.0076765713869209442 
		8 0.49357899677601347 9 0.49357899677601347
		5 4 0.003363585430671937 5 0.003363585430671937 7 0.0108311973675611 
		8 0.49122081588554756 9 0.49122081588554745
		5 4 0.0030582102454563224 5 0.0030582102454563224 7 0.0084375842190170802 
		8 0.49272299764503513 9 0.49272299764503513
		5 4 0.0038245122720776785 5 0.0038245122720776785 7 0.011405769700598192 
		8 0.49047260287762323 9 0.49047260287762323
		5 4 0.0036252220548112224 5 0.0036252220548112224 7 0.009511610221538928 
		8 0.49161897283441935 9 0.49161897283441935
		5 4 0.0042337976930481545 5 0.0042337976930481545 7 0.011803666124196019 
		8 0.48986436924485383 9 0.48986436924485383
		5 4 0.021922507497023118 5 0.021922507497023118 7 0.0091169548329094723 
		8 0.47351901508652211 9 0.47351901508652211
		5 4 0.038593784434312536 5 0.038593784434312536 7 0.012236141102435785 
		8 0.45528814501446957 9 0.45528814501446957
		5 4 0.054032613355408918 5 0.054032613355408918 7 0.014985553598965739 
		8 0.43847460984510805 9 0.43847460984510828
		5 4 0.06338860181675017 5 0.06338860181675017 7 0.017162102145363161 
		8 0.42803034711056831 9 0.42803034711056831
		5 4 0.062547710619390615 5 0.062547710619390615 7 0.018661434025231401 
		8 0.42812157236799375 9 0.42812157236799375
		5 4 0.0049971753718297731 5 0.0049971753718297731 7 0.0042440433287710012 
		8 0.49288080296378473 9 0.49288080296378473
		5 4 0.0091319125888222538 5 0.0091319125888222538 7 0.0066818316273258849 
		8 0.4875271715975148 9 0.4875271715975148
		5 4 0.015566597879923953 5 0.015566597879923953 7 0.0098367458339751971 
		8 0.47951502920308853 9 0.47951502920308853
		5 4 0.027059375388054346 5 0.027059375388054346 7 0.013949476003133243 
		8 0.46596588661037902 9 0.46596588661037902
		5 4 0.010404946939773441 5 0.010404946939773441 7 0.005631638572470077 
		8 0.48677923377399157 9 0.48677923377399157
		5 4 0.030248954303456099 5 0.030248954303456099 7 0.01043063039476756 
		8 0.46453573049916019 9 0.46453573049916008
		5 4 0.0076141151635560952 5 0.0076141151635560952 7 0.0051233669286156738 
		8 0.48982420137213611 9 0.489824201372136
		5 4 0.042148112446396657 5 0.042148112446396657 7 0.012980311762766098 
		8 0.45136173167222032 9 0.45136173167222032
		5 4 0.012863999186918888 5 0.012863999186918888 7 0.00754493992761708 
		8 0.48336353084927258 9 0.48336353084927258
		5 4 0.051008378177286429 5 0.051008378177286429 7 0.015124940965483627 
		8 0.44142915133997163 9 0.44142915133997185
		5 4 0.019418786652712246 5 0.019418786652712246 7 0.010221225252874238 
		8 0.47547060072085051 9 0.47547060072085073
		5 4 0.054488020372690918 5 0.054488020372690918 7 0.016810765428639615 
		8 0.43710659691298936 9 0.43710659691298936
		5 4 0.027981016553958727 5 0.027981016553958727 7 0.013192172850643216 
		8 0.46542289702071965 9 0.46542289702071965
		5 4 0.01608913335915358 5 0.01608913335915358 7 0.0087579464772564487 
		8 0.47953189340221819 9 0.47953189340221819
		5 4 0.028006671878563438 5 0.028006671878563438 7 0.01138244027329975 
		8 0.46630210798478672 9 0.46630210798478672
		5 4 0.041093669128878595 5 0.041093669128878595 7 0.014166213518718126 
		8 0.45182322411176229 9 0.45182322411176229
		5 4 0.052026448036977063 5 0.052026448036977063 7 0.01679022496482151 
		8 0.4395784394806122 9 0.4395784394806122
		5 4 0.05570523312866265 5 0.05570523312866265 7 0.018261359058875916 
		8 0.43516408734189937 9 0.43516408734189937
		5 4 0.0063593334840849267 5 0.0063593334840849267 7 0.005327132501375547 
		8 0.49097710026522728 9 0.49097710026522728
		5 4 0.011585223440043299 5 0.011585223440043299 7 0.0079728919055586222 
		8 0.48442833060717738 9 0.48442833060717738
		5 4 0.019102461615379526 5 0.019102461615379526 7 0.011316253503544751 
		8 0.47523941163284805 9 0.47523941163284805
		5 4 0.027990567957065247 5 0.027990567957065247 7 0.014326961860753315 
		8 0.46484595111255805 9 0.46484595111255805
		5 4 0.00021325217662303503 5 0.00021325217662303503 7 0.00072977723320899728 
		8 0.49942185920677246 9 0.49942185920677246
		5 4 9.4857880725061989e-05 5 9.4857880725061989e-05 7 0.00021656972521734904 
		8 0.49979685725666628 9 0.49979685725666628
		5 4 0.00024517370893874452 5 0.00024517370893874452 7 0.0010840023052872728 
		8 0.49921282513841764 9 0.49921282513841764
		5 4 0.00017614252807329086 5 0.00017614252807329086 7 0.00053937577235922956 
		8 0.49955416958574711 9 0.49955416958574711
		5 4 0.0077989994228586032 5 0.0077989994228586032 7 0.0066638992694822187 
		8 0.4888690509424003 9 0.4888690509424003
		5 4 0.0012028592612971165 5 0.0012028592612971165 7 0.0021607068595997998 
		8 0.49771678730890295 9 0.49771678730890295
		5 4 0.0019633306120865569 5 0.0019633306120865569 7 0.012749949798379808 
		8 0.49166169448872349 9 0.49166169448872349
		5 4 0.0016986655068859853 5 0.0016986655068859853 7 0.0092809678530962249 
		8 0.49366085056656595 9 0.49366085056656583
		5 4 0.00080308688435018526 5 0.00080308688435018526 7 0.0036848732803141755 
		8 0.4973544764754928 9 0.49735447647549269
		5 4 0.0010563890727312867 5 0.0010563679704454856 7 0.0087834974617855052 
		8 0.494658756935348 9 0.49444498855968977
		5 3 0.0011695220800543881 4 0.0013540478462265356 7 0.10039389256516616 
		8 0.8406425393925786 9 0.056439998115974367
		5 4 0.00049688341605642861 5 0.00042695862512126884 7 0.012007769952088717 
		8 0.93910844882683331 9 0.047959939179900345
		5 4 0.00071532313177946009 5 0.00068870633665324963 7 0.012751565758699426 
		8 0.70963459199696621 9 0.27620981277590168
		5 4 1.6431581262574124e-05 5 1.6431581262574124e-05 7 5.0209562950836907e-05 
		8 0.49995846363726199 9 0.49995846363726199
		5 4 0.00052795404302196888 5 0.00046573008272005344 7 0.01712187622671239 
		8 0.91482894799222059 9 0.067055491655324956
		5 4 0.00021847483327112237 5 0.0002089121188563277 7 0.0032443058916050579 
		8 0.85016310526084282 9 0.14616520189542465
		5 4 2.9405117498863958e-05 5 2.9337121590391419e-05 7 0.00013790606748990809 
		8 0.57434411040163802 9 0.42545924129178286
		5 4 9.3410233413285636e-05 5 9.3217436460928162e-05 7 0.00064128700559189483 
		8 0.53721544794335663 9 0.46195663738117726
		5 4 0.0052652727237755973 5 0.0051504085519824532 7 0.009118830063316246 
		8 0.54231928664599349 9 0.43814620201493237
		5 4 0.0013414219915429642 5 0.0011942445789996355 7 0.010001966633237516 
		8 0.851993468500988 9 0.13546889829523193
		5 4 0.0090649064646396351 5 0.0090649064646396351 7 0.0066969795535723534 
		8 0.48758660375857421 9 0.48758660375857421
		5 4 0.0079052871901668167 5 0.0079052871901668167 7 0.0057575569212499483 
		8 0.48921593434920824 9 0.48921593434920824
		5 4 0.00058990719991936337 5 0.00057718797325204227 7 0.002096683050347734 
		8 0.64802122057628531 9 0.34871500120019572
		5 4 0.00059506933445906888 5 0.00059468856908170115 7 0.0012780784542456253 
		8 0.50338793534729209 9 0.49414422829492161
		5 4 0.0010310445724991081 5 0.0010310445724991081 7 0.0012739633547823471 
		8 0.49833197375010957 9 0.49833197375010979
		5 3 0.0020223373358139616 4 0.0021912980481759697 7 0.23639446936962066 
		8 0.71543285287050995 9 0.043959042375879435
		5 3 0.0029687427435053757 4 0.0032442175824005932 7 0.25363390369053257 
		8 0.70720096036219193 9 0.032952175621369546
		5 3 0.00091028419933774805 4 0.0010785213312497495 7 0.070872921188670654 
		8 0.88717900089862534 9 0.039959272382116516
		5 0 0.11108439981180798 1 0.38613893372200547 2 0.02993387120613716 
		6 0.36175839544824184 10 0.11108439981180759
		5 0 0.12159450664954016 1 0.30401795586979408 2 0.076167507942491219 
		6 0.3766255228886351 10 0.12159450664953941
		5 0 0.05225015860098739 1 0.42312621889753887 6 0.45654546138227464 
		10 0.052250158600987348 11 0.015828002518211846
		5 0 0.03793712227506274 1 0.45375653472101812 6 0.45375653472101812 
		10 0.037937122275062692 11 0.01661268600783827
		5 0 0.086687257253590777 1 0.40058654171057823 6 0.39450267257636945 
		10 0.086687257253590666 11 0.031536271205870971
		5 0 0.020703985554506796 1 0.47578093214991718 6 0.47578093214991718 
		10 0.020703985554506768 11 0.0070301645911520008
		5 0 0.018776062373525713 1 0.4774000087142643 6 0.47740000871426452 
		10 0.018776062373525703 11 0.0076478578244197409
		5 0 0.095383017855851515 1 0.23786430910634923 2 0.10471144323100534 
		6 0.46665821195094304 10 0.095383017855850932
		5 0 0.14433616313126221 1 0.29199741454645184 6 0.24589668161872988 
		10 0.18646045439275583 11 0.13130928631080019
		5 0 0.11822173975890686 1 0.29973468637649864 6 0.29167061677874823 
		10 0.15924927911817216 11 0.13112367796767407
		5 0 0.15943688315416896 1 0.27364224700628692 6 0.24924117871266416 
		10 0.18249478307713912 11 0.13518490804974093
		5 0 0.11839450888294178 1 0.3152669506090805 6 0.30936316471851627 
		10 0.145061780057511 11 0.11191359573195038
		5 0 0.23863673809454522 1 0.24512740464253208 6 0.12461691105703257 
		10 0.2492748877441219 11 0.14234405846176815
		5 0 0.17093837406577098 1 0.17093837406577098 10 0.30830979535281927 
		11 0.27873169672249354 12 0.071081759793145238
		5 0 0.15405563473340222 1 0.15765241093622764 10 0.30625932879544349 
		11 0.29385514444287492 12 0.088177481092051743
		5 0 0.20796872793216029 1 0.25619075311146766 6 0.18029711489787598 
		10 0.22094856196464166 11 0.13459484209385453
		5 0 0.050420720727958168 1 0.052744811874998486 10 0.25581061969968305 
		11 0.36948696250715019 12 0.27153688519021024
		5 0 0.025426704327599137 1 0.025457367679849491 10 0.14940998500007227 
		11 0.40563434856084957 12 0.39407159443162948
		5 0 0.020012657810389748 1 0.020012657810389748 10 0.13269903800337024 
		11 0.42024179314172899 12 0.40703385323412128
		5 0 0.039981151765580029 1 0.040127759719445384 10 0.2475068941931374 
		11 0.39466829795210512 12 0.27771589636973198
		5 0 0.031736303011757103 1 0.031885375188552126 10 0.17044278522120693 
		11 0.39022180886392488 12 0.37571372771455908;
	setAttr ".wl[1600:1699].w"
		5 0 0.028782436553398724 1 0.028924171713756126 10 0.16258769617602539 
		11 0.39771250100336342 12 0.38199319455345643
		5 0 0.053222241063370999 1 0.056361614511381601 10 0.27054559944330275 
		11 0.36859245420176612 12 0.25127809078017865
		5 0 0.056937660080109545 1 0.059936061738503327 10 0.27507900541516295 
		11 0.36266342199193141 12 0.24538385077429273
		5 0 0.032342590433962461 1 0.032342590433962461 10 0.16048488839285424 
		11 0.38177035030836681 12 0.39305958043085415
		5 0 0.083694213005720275 1 0.083694213005720275 10 0.31719752025140763 
		11 0.34049135110748208 12 0.17492270262966986
		5 10 0.058324744602412035 11 0.25023875728725764 12 0.57881491574078281 
		13 0.050324140001425134 35 0.062297442368122381
		5 0 0.032250313497112271 1 0.032250313497112271 10 0.16589959230413542 
		11 0.38423827080056533 12 0.38536150990107487
		5 0 0.070144106232820441 1 0.0706284046717644 10 0.29943365634269747 
		11 0.3501180549718601 12 0.20967577778085755
		5 0 0.11099874353599075 1 0.30962549079980783 6 0.30411333460345208 
		10 0.15090851829099794 11 0.12435391276975136
		5 0 0.11564026912395348 1 0.17101009034580045 6 0.15112114889375969 
		10 0.28128633156623734 11 0.28094216007024908
		5 0 0.11949544451413979 1 0.16949989863798146 6 0.14949805745914216 
		10 0.28082817141354444 11 0.28067842797519221
		5 0 0.18188888809634982 1 0.18235259179855101 6 0.077418472764385515 
		10 0.30178065719172986 11 0.25655939014898371
		5 0 0.24080675626229286 1 0.25865967361923575 6 0.11091906032965876 
		10 0.26292574388157697 11 0.12668876590723574
		5 0 0.11888717115416218 1 0.169117570445913 6 0.14355002596583208 
		10 0.284992284462039 11 0.28345294797205373
		5 0 0.2116080040271337 1 0.25575460212089396 6 0.13657581614360564 
		10 0.25243980029270269 11 0.14362177741566401
		5 0 0.13134723252459093 1 0.1548074630727205 6 0.11524019834940773 
		10 0.30039822821468043 11 0.2982068778386005
		5 0 0.012983225207759958 1 0.012983225207759958 10 0.11576886064662643 
		11 0.45263927394689946 12 0.40562541499095417
		5 0 0.080487421152758268 1 0.080487421152758268 10 0.34532249761850181 
		11 0.35753445702272946 12 0.1361682030532522
		5 0 0.033805428125195054 1 0.033805428125195054 10 0.16851903715080241 
		11 0.38049436487682092 12 0.38337574172198652
		5 0 0.081499800500867983 1 0.081499800500867983 10 0.31482191796143999 
		11 0.34182931976508335 12 0.18034916127174072
		5 0 0.032197606309915486 1 0.032202462788235367 10 0.16533864172398952 
		11 0.38511687556089369 12 0.38514441361696589
		5 0 0.060626777281596753 1 0.06215568676619905 10 0.27920517909682924 
		11 0.35770593009328983 12 0.24030642676208505
		5 0 0.13662146894892083 1 0.1815395262092907 6 0.13859257563538838 
		10 0.27865619573591971 11 0.26459023347048038
		5 0 0.075315496910346752 1 0.075315496910346752 10 0.33007553493733471 
		11 0.35606362134157815 12 0.16322984990039363
		5 0 0.015895432348095387 1 0.015895432348095387 10 0.12234576265283444 
		11 0.43559664713666452 12 0.41026672551431032
		5 0 0.16286241877792168 1 0.16937478013964785 6 0.089052666550841833 
		10 0.3039745995549063 11 0.27473553497668241
		5 0 0.098810114621961279 1 0.10917525314631774 10 0.32126209674452505 
		11 0.32718003360889447 12 0.14357250187830148
		5 0 0.08755138169440517 1 0.10234657530620003 10 0.31660886558486462 
		11 0.33235137030737533 12 0.16114180710715478
		5 0 0.081570408976019776 1 0.096138759628099563 10 0.31039757467215484 
		11 0.33549550641022613 12 0.17639775031349966
		5 0 0.081608816723076572 1 0.094845658046336392 10 0.30006926149186219 
		11 0.33104750368710889 12 0.19242876005161599
		5 0 0.06960254332855674 1 0.07230574820832987 10 0.30644284971288621 
		11 0.3530506282482927 12 0.19859823050193456
		5 0 0.035792629580525655 1 0.035792629580525655 10 0.25659379818184475 
		11 0.41271952638682602 12 0.25910141627027788
		5 0 0.034760943251545676 1 0.034760943251545676 10 0.27352165506690052 
		11 0.42360896861561653 12 0.23334748981439168
		5 0 0.17014812964662362 1 0.33681313399281282 6 0.23620569038464639 
		10 0.17883260125389752 11 0.078000444722019696
		5 0 0.17310306305554987 1 0.23433500466906457 6 0.15773899267650277 
		10 0.24887574188763753 11 0.18594719771124529
		5 0 0.13536770855255997 1 0.15013955813425028 6 0.10005457572139059 
		10 0.3095771278936606 11 0.30486102969813855
		5 0 0.20741339002302753 1 0.33634834190097346 6 0.1916458065838719 
		10 0.20741339002302722 11 0.057179071469099937
		5 0 0.23933868968622884 1 0.31036295566190414 2 0.060794210614147436 
		6 0.15016545435149128 10 0.23933868968622826
		5 10 0.066702924207044934 11 0.28329273936990895 12 0.56501232266004719 
		13 0.035355284303241592 35 0.049636729459757299
		5 0 0.22476906643874034 1 0.27610704044603673 2 0.07121509279686622 
		6 0.20313973387961662 10 0.22476906643874014
		5 0 0.1671528213316732 1 0.31191306291927112 6 0.29616885782108721 
		10 0.16715282133167311 11 0.057612436596295356
		5 0 0.097148222003229215 1 0.38172816483124244 6 0.38172816483124233 
		10 0.097148222003229215 11 0.042247226331056736
		5 0 0.051005481569670545 1 0.43657512256597314 6 0.43657512256597314 
		10 0.051005481569670559 11 0.024838791728712641
		5 0 0.047053011655007686 1 0.43891831179783136 6 0.43891831179783114 
		10 0.047920528892023521 11 0.027189835857306343
		5 0 0.074808185747321218 1 0.39843818168876877 6 0.39843818168876877 
		10 0.079200522410573765 11 0.049114928464567484
		5 0 0.1194955050772349 1 0.35757227781658185 6 0.3296224175102988 
		10 0.12620566945587691 11 0.067104130140007504
		5 0 0.12898735322597588 1 0.39911353241001041 6 0.31192287186587558 
		10 0.12898735322597557 11 0.030988889272162583
		5 0 0.16890188530951317 1 0.36914810418185862 2 0.042453974333486216 
		6 0.25059415086562947 10 0.16890188530951258
		5 0 0.19726022464382109 1 0.32190683834157063 2 0.079317719499294781 
		6 0.20425499287149301 10 0.19726022464382034
		5 0 0.1007499233470535 1 0.33882859413924787 2 0.040167110822972273 
		6 0.4195044483436729 10 0.10074992334705336
		5 0 0.13824340113509856 1 0.29464998677900156 2 0.07222502836564007 
		6 0.35663818258516161 10 0.13824340113509806
		5 0 0.0065261119390767324 1 0.0065261119390767324 10 0.046968346543778169 
		11 0.44858976760560326 12 0.49138966197246514
		5 10 0.071017928013642165 11 0.40567303664284193 12 0.48512159188697157 
		35 0.01900218764030993 36 0.019185255816234436
		5 10 0.075905221747198173 11 0.37850008231999166 12 0.49170831863131564 
		35 0.026249852397084234 36 0.027636524904410376
		5 10 0.077163717272145896 11 0.36223770084878071 12 0.50351431248495049 
		35 0.028849642095588133 36 0.028234627298534671
		5 10 0.075783464465481162 11 0.34854349276167218 12 0.51934560075078184 
		35 0.030370497740555884 36 0.025956944281508857
		5 10 0.068117806617187332 11 0.32654147618454515 12 0.55213880266399029 
		35 0.031716291064333053 36 0.021485623469944176
		5 10 0.061532745741520192 11 0.43524233590529776 12 0.48199377383600667 
		35 0.011144008751914184 36 0.010087135765261178
		5 0 0.13737631028865885 1 0.27949665101597132 2 0.12201156688052618 
		6 0.32373916152618565 10 0.1373763102886581
		5 10 0.067986333431247006 11 0.30365691523815352 12 0.56271481286788938 
		13 0.025836870046472518 35 0.039805068416237654
		5 0 0.1955111236453056 1 0.28131768250965383 2 0.11369957317447543 
		6 0.21396049702526007 10 0.19551112364530493
		5 0 0.25888988524120399 1 0.26558608735364686 2 0.089914069948359987 
		6 0.12672007221558496 10 0.25888988524120399
		5 0 0.25139534994921797 1 0.25139534994921797 6 0.083348614116624059 
		10 0.26719860665138334 11 0.14666207933355671
		5 0 0.16642601231695281 1 0.16642601231695281 10 0.31565985041849925 
		11 0.28411621472694282 12 0.067371910220652406
		5 0 0.073085853542357915 1 0.073085853542357915 10 0.35954146094448391 
		11 0.37172544017629516 12 0.12256139179450513
		5 0 0.030380947950543954 1 0.030380947950543954 10 0.28030948054297328 
		11 0.44436068185919125 12 0.21456794169674762
		5 0 0.010036281744914749 1 0.010036281744914749 10 0.10351730881324087 
		11 0.47317091623174762 12 0.40323921146518199
		5 0 0.0039283575427239686 1 0.0039283575427239686 10 0.03159376992726582 
		11 0.45211131764321905 12 0.50843819734406726
		5 38 0.2829935599065565 42 0.40474509666194652 43 0.010188935238372823 
		45 0.29227604070862373 48 0.009796367484500192
		5 38 0.63793472531813677 42 0.1930540705633397 45 0.14942106005420991 
		48 0.015389746254949816 51 0.0042003978093637572
		5 38 0.73252562492540174 40 0.0030421558758312308 42 0.23665899004752636 
		45 0.024679840936085669 48 0.0030933882151550555
		5 38 0.39337344277043662 42 0.58389584442747688 43 0.0044447756614206056 
		45 0.016790852384300461 48 0.001495084756365417
		5 38 0.60794131618491465 39 0.010141615988849101 40 0.0109467525075351 
		42 0.35470900355259966 45 0.016261311766101471
		5 38 0.38747789549493439 40 0.0010381773123474991 42 0.60003868734468402 
		43 0.0042724749770970856 45 0.0071727648709371374
		5 38 0.93815555441780096 39 0.024586081835381697 40 0.010615246008034552 
		42 0.01347890001226836 45 0.013164217726514544
		5 38 0.84074030099411512 39 0.064662296305037739 40 0.04267463978427858 
		42 0.034820847340682436 45 0.017101915575886192
		5 37 0.033065946177626669 38 0.91902792678781919 39 0.020497062607116 
		48 0.0097975107970227002 51 0.01761155363041542
		5 37 0.043561192884126132 38 0.90933384990862942 39 0.039367685713455301 
		40 0.0034268160509372376 51 0.0043104554428518025
		5 37 0.0080255533273939552 38 0.95523779280098153 39 0.017297315654962068 
		48 0.0089747647679888579 51 0.010464573448673624
		5 38 0.95950307762053588 39 0.0054247410390039861 45 0.0054946344229065847 
		48 0.010800984603688885 51 0.018776562313864757
		5 37 0.012518713951444041 38 0.47163781409887634 39 0.48743155746580535 
		40 0.024140126648600154 41 0.0042717878352741961
		5 38 0.93124491807097654 39 0.03487249012911172 45 0.012518826875117944 
		48 0.011577287878118793 51 0.0097864770466748029
		5 37 0.058251678240258745 38 0.61126698799045609 39 0.3068702122326476 
		40 0.017329322315551999 51 0.0062817992210854878
		5 38 0.36936703727732084 42 0.031228441710003333 45 0.56753814676366099 
		48 0.027419410052056854 49 0.0044469641969580448
		5 38 0.63539454078337354 42 0.049247932855797275 45 0.24786686834923427 
		48 0.055262779642774311 51 0.012227878368820531
		5 38 0.35040417595765416 45 0.028283360043189269 48 0.51682435937621218 
		51 0.088602224781963348 52 0.015885879840981058
		5 38 0.52727947270119158 45 0.032585003968729459 48 0.25011113740485535 
		51 0.18273281253239571 52 0.0072915733928280149
		5 38 0.50050070071997432 42 0.019756423853322044 45 0.1624466025733235 
		48 0.26439559987441086 51 0.052900672978969304
		5 38 0.25087142389093775 45 0.3132697119815937 48 0.3975088638567375 
		49 0.016324211639209402 51 0.022025788631521694
		5 38 0.24952838621814361 45 0.00065334606333283308 48 0.0070656807021875247 
		51 0.7377552344948286 52 0.0049973525215074874
		5 38 0.74779262861941831 45 0.0015584867033474564 48 0.010316456025694391 
		51 0.23803213895416683 52 0.0023002896973729134
		5 38 0.62965128330683728 45 0.0030047949407471905 48 0.03202566801101623 
		51 0.3328679553645858 52 0.0024502983768134551
		5 38 0.17833141096135249 45 0.0045486192874966769 48 0.096305441347856069 
		51 0.7005294241735619 52 0.020285104229732911
		5 37 0.0052394154155996206 38 0.9427128884315179 45 0.0047121230822898584 
		48 0.011990516274302481 51 0.035345056796290214
		5 38 0.95530524532070626 39 0.0016661376491262198 45 0.0035275160524568245 
		48 0.010207086436993588 51 0.029294014540716916
		5 38 0.17046600690039573 39 0.77045052669405356 40 0.051373805045015625 
		41 0.0048377963761719652 42 0.0028718649843631266
		5 37 0.0023133077207482537 38 0.29726472655973868 39 0.68111573803896475 
		40 0.017293922486927668 41 0.0020123051936206684
		5 37 0.01915261248484464 38 0.8546049427330763 39 0.12433257201366391 
		40 0.0015430477943956201 41 0.0003668249740194735
		5 37 0.048447716750599341 38 0.74074097929681504 39 0.20529727991943988 
		40 0.0044181964891625986 41 0.0010958275439831263
		5 37 0.0021628109115522966 38 0.33995070357203233 39 0.64439936144253995 
		40 0.012011480202010134 41 0.0014756438718652512;
	setAttr ".wl[1700:1799].w"
		5 38 0.23165489736588069 39 0.33832829567418971 40 0.32738467545504008 
		41 0.051492247805004256 42 0.051139883699885258
		5 38 0.012786760304208103 39 0.79065894652373092 40 0.18948167191161358 
		41 0.0056843729935550681 42 0.0013882482668922857
		5 38 0.028383405616575354 39 0.8580525959829034 40 0.10789597974677881 
		41 0.004851145134530388 42 0.00081687351921210926
		5 37 0.00080333086712590016 38 0.035763688457174821 39 0.85845079280955738 
		40 0.099994673353843835 41 0.0049875145122981624
		5 38 0.72291209619735208 45 0.0033699909921959263 48 0.017944738077836413 
		51 0.2496293030008967 52 0.0061438717317189835
		5 37 0.026702898655529828 38 0.89390008799767762 39 0.010891881356418694 
		48 0.018595965177832272 51 0.049909166812541622
		5 38 0.34369071674355678 48 0.0063207431858478104 51 0.64262940325296736 
		52 0.0064490065687763248 53 0.00091013024885175842
		5 38 0.0018171609705623798 39 0.5104189964479714 40 0.48050369784623947 
		41 0.0069366755697317737 42 0.00032346916549487941
		5 38 0.0016200238691890857 39 0.50091856262381618 40 0.4897059028743585 
		41 0.0072361636440177656 42 0.00051934698861825471
		5 38 0.0024641149030836503 39 0.495460150344391 40 0.49045089152313825 
		41 0.011258408372612444 42 0.00036643485677465281
		5 38 0.010491485832511303 39 0.44170690288469378 40 0.50354058851067462 
		41 0.039621162185769061 42 0.0046398605863511621
		5 38 0.54736691291414052 39 0.011585054459117849 40 0.013537014101129487 
		42 0.41288699935861589 45 0.014624019166996212
		5 38 0.39069032356539252 40 0.00098953348087421969 42 0.60018687748373922 
		43 0.003369598133312965 45 0.0047636673366810755
		5 38 0.33132319357930246 39 0.26056010975554461 40 0.26067672532498898 
		41 0.061332830029179448 42 0.086107141310984514
		5 38 0.014919714857724774 39 0.42673821791960503 40 0.50532259915249556 
		41 0.046503346070353044 42 0.0065161219998216054
		5 38 0.38306267237980229 42 0.60350463442244207 43 0.0018393808997757182 
		45 0.010948180595741847 48 0.00064513170223801011
		5 38 0.76551176147463451 40 0.0016432780656145155 42 0.21031180281836342 
		45 0.020664830622938914 48 0.0018683270184487531
		5 38 0.60228478589222068 42 0.17688039217424295 43 0.0022847270446107949 
		45 0.209816798155396 48 0.0087332967335296604
		5 38 0.25699275351937079 42 0.30404716829570139 43 0.0058846210091113025 
		45 0.42726945441377961 48 0.0058060027620369338
		5 38 0.63488950277612199 39 0.0071526969663116861 40 0.0075818032434531854 
		42 0.3355681216846213 45 0.014807875329491835
		5 38 0.38900707761876691 40 0.00052249139542542042 42 0.6035172572887022 
		43 0.0022643488142184741 45 0.0046888248828871031
		5 38 0.92101589507510739 39 0.028173783109190349 40 0.019116382650539936 
		42 0.021329786448483087 45 0.010364152716679304
		5 38 0.96804880056215992 39 0.0074702389364459144 40 0.0041609770375693944 
		42 0.010079106465608306 45 0.010240876998216419
		5 38 0.31211669128728819 39 0.35243227428275825 40 0.26927774627840678 
		41 0.031227074311732748 42 0.034946213839813861
		5 37 0.0073021098534513584 38 0.96776189013158709 39 0.021335484003357472 
		40 0.0019741979144159531 45 0.0016263180971880069
		5 37 0.0061674625712312562 38 0.85926784335046924 39 0.12446613091481946 
		40 0.0077793198314118689 42 0.0023192433320681893
		5 37 0.089321899799742588 38 0.72820201516667005 39 0.17520988791376038 
		40 0.0057548261351144537 41 0.0015113709847125385
		5 37 0.0059401163840321486 38 0.98198174322249632 39 0.0038934613956768788 
		48 0.0038073947409328723 51 0.0043772842568618776
		5 37 0.0084703049703991999 38 0.97865242740736336 39 0.0085171964006989492 
		48 0.0022983049859225152 51 0.0020617662356159673
		5 38 0.77308433107136754 42 0.013370197481340555 45 0.19783664127057676 
		48 0.013982319982345785 51 0.0017265101943693222
		5 38 0.3250282390667002 42 0.0072867296328274177 45 0.66031466312920473 
		48 0.0063394111350032261 49 0.0010309570362644429
		5 38 0.97035426361247845 39 0.0042412234028053417 42 0.0062622025232169729 
		45 0.01197801516070918 48 0.0071642953007900606
		5 38 0.31005431622226604 42 0.0059538859142153622 45 0.42747951699473574 
		48 0.25001928240933158 49 0.006492998459451318
		5 38 0.69048182648146206 42 0.0076086046441644186 45 0.14966576319500921 
		48 0.14312825644515828 51 0.009115549234206044
		5 38 0.75629551760586877 42 0.0016058085086136939 45 0.016784915486017449 
		48 0.21186336305087447 51 0.01345039534862553
		5 38 0.23414215036012156 45 0.0045805537125333971 48 0.75740935079907856 
		49 0.0009298282918460398 51 0.00293811683642043
		5 38 0.95848411002681566 42 0.0046696744373422878 45 0.013366215900112581 
		48 0.016043659949325415 51 0.0074363396864039893
		5 38 0.97131598636216032 42 0.00160877531331998 45 0.0054512419579587443 
		48 0.012991404321847623 51 0.0086325920447133334
		5 38 0.27459321278649124 45 0.001098377072262796 48 0.029529880082581679 
		51 0.68959731951354131 52 0.005181210545122948
		5 38 0.76810023472935407 45 0.0040386181563095711 48 0.043884266591699667 
		51 0.18066079952143571 52 0.0033160810012010551
		5 38 0.80979314281412595 45 0.0028416443527683379 48 0.019973732856235184 
		51 0.1637365916407596 52 0.0036548883361109197
		5 38 0.34569305697372049 45 0.00062781730869336484 48 0.0090390894683396988 
		51 0.64025786493455183 52 0.0043821713146945038
		5 38 0.37423187739287411 48 0.0061549784408971575 51 0.61354744377483306 
		52 0.0052935453027372131 53 0.0007721550886584616
		5 38 0.71522323463431048 45 0.0044593995361586437 48 0.024292409700744141 
		51 0.24789677755592893 52 0.00812817857285799
		5 37 0.035970830092518426 38 0.86224915722967832 39 0.012476549329624852 
		48 0.025201614296015123 51 0.064101849052163304
		5 37 0.016417910281603002 38 0.93972399255433525 39 0.006565665655885922 
		48 0.012938158546723087 51 0.024354272961452744
		5 37 0.0027556068574961681 38 0.95913873869249022 45 0.0043107433014992775 
		48 0.012889718518122073 51 0.020905192630392169
		5 37 0.00068974771249395641 38 0.19974385624157623 39 0.79418894539829055 
		40 0.004862605169622199 41 0.0005148454780170876
		5 38 0.21380258872907582 39 0.72118299649257533 40 0.055009852940729978 
		41 0.0057443050756885231 42 0.0042602567619303439
		5 38 0.012448802906625077 39 0.93571197520242833 40 0.049770682319242893 
		41 0.0017771039051329431 42 0.00029143566657065733
		5 38 0.014206957664490004 39 0.7260968805015362 40 0.24958106635453181 
		41 0.0081536616734978612 42 0.0019614338059441268
		5 38 0.7217182627834301 45 0.0054630544173392076 48 0.18635908701470019 
		51 0.08414288254184997 52 0.002316713242680592
		5 38 0.94358130826959352 42 0.0016784377244604899 45 0.0061342681303685797 
		48 0.023735931643611683 51 0.024870054231965776
		5 38 0.34399288476086731 45 0.0034982022244325769 48 0.49695443624450142 
		51 0.14777413153741406 52 0.0077803452327845366
		5 38 0.00083628278437266083 39 0.50640631100898525 40 0.4887706903934011 
		41 0.0038365990284191251 42 0.00015011678482186488
		5 38 0.0012839402622053413 39 0.48676801170588663 40 0.50185095240620348 
		41 0.0096374797994228222 42 0.00045961582628162903
		5 38 0.004419957002324228 39 0.47627471164211543 40 0.50000087437647878 
		41 0.017574590233936503 42 0.0017298667451450629
		5 38 0.00079731577080670605 39 0.12536042441676434 40 0.78982310047813187 
		41 0.083604734318921653 42 0.00041442501537532434
		5 38 0.00071057887065945199 39 0.090357291981257151 40 0.82073150933317174 
		41 0.087716817905959241 42 0.0004838019089525228
		5 38 0.00025398779808592385 39 0.010220160769811817 40 0.53151335297744717 
		41 0.45779754744581636 42 0.00021495100883879288
		5 38 0.00015744793865395481 39 0.0051851615193405599 40 0.55248579129858288 
		41 0.44203502243832726 42 0.00013657680509539767
		5 38 0.00059684388783196062 39 0.0081491883045838234 40 0.49533829793535011 
		41 0.49533829793535011 42 0.00057737193688406157
		5 38 0.00042878797849965741 39 0.0050794485447531925 40 0.49703666806911317 
		41 0.49703666806911317 42 0.00041842733852081389
		5 38 0.0038222736753083389 39 0.022259482323758493 40 0.4850479851628125 
		41 0.48504798516281239 42 0.0038222736753083389
		5 38 0.0026037004256485512 39 0.015464507631965427 40 0.4896640457583688 
		41 0.4896640457583688 42 0.0026037004256485512
		5 38 0.00149768895510025 39 0.083046319862350948 40 0.82474374436458187 
		41 0.089674691713047885 42 0.0010375551049190475
		5 38 0.0013938358818297567 39 0.10879478698903988 40 0.8136049572321955 
		41 0.075284735010943418 42 0.00092168488599146431
		5 38 0.00025803853138273619 39 0.0043272916537932006 40 0.54679487382462477 
		41 0.4483859712789518 42 0.00023382471124750606
		5 38 0.00052663549063714096 39 0.0089913879284949701 40 0.52825528759231788 
		41 0.46175282066408652 42 0.00047386832446355391
		5 38 0.00070789854349939641 39 0.0045408968447405683 40 0.49702285532485463 
		41 0.49702285532485463 42 0.00070549396205083761
		5 38 0.0012020900538547389 39 0.007529360278475076 40 0.49503475207981334 
		41 0.49503475207981334 42 0.0011990455080435121
		5 38 0.0039175901038348481 39 0.015249438701256821 40 0.48845769054553678 
		41 0.48845769054553667 42 0.0039175901038348481
		5 38 0.0061946890342558869 39 0.02226762688344755 40 0.48267149752402033 
		41 0.48267149752402033 42 0.0061946890342558869
		5 38 0.0007976750023144818 39 0.062556825312714032 40 0.85732260503318969 
		41 0.078762977248656899 42 0.00055991740312484378
		5 38 8.5947181708813573e-05 39 0.0020273650034735957 40 0.57681064255343717 
		41 0.42099938372892692 42 7.6661532453529472e-05
		5 38 0.00037540778322944844 39 0.0032701448646942854 40 0.49799152930421908 
		41 0.49799152930421897 42 0.0003713887436381805
		5 38 0.0039550367286677168 39 0.017110693066454571 40 0.48748961673810504 
		41 0.48748961673810493 42 0.0039550367286677168
		5 38 0.00064747598038492245 39 0.12061215691925045 40 0.81423665441503557 
		41 0.064205797771199252 42 0.00029791491412981187
		5 38 0.00021247437265847346 39 0.0092055795914719307 40 0.53589220187929176 
		41 0.45451156674359788 42 0.00017817741297985237
		5 38 0.00070928042196204697 39 0.0096309406130449162 40 0.4944869667032496 
		41 0.49448696670324949 42 0.00068584555849400552
		5 38 0.003139107587735153 39 0.021288450176138299 40 0.48621666892527488 
		41 0.48621666892527488 42 0.0031391043855768424
		5 38 0.00029707817312945613 39 0.07399798085283231 40 0.89052987168146414 
		41 0.0350089913890584 42 0.00016607790351570883
		5 38 0.00013773110990040411 39 0.0052232249530609811 40 0.55122173086914239 
		41 0.44330005105323311 42 0.00011726201466310222
		5 38 0.00074223634389030172 39 0.0082469218646040749 40 0.495141872837494 
		41 0.495141872837494 42 0.0007270961165176447
		5 38 0.0046453633815034283 39 0.024203243832242229 40 0.48325301470237547 
		41 0.48325301470237547 42 0.0046453633815034283
		5 38 0.00079839855606443589 39 0.11835891792170644 40 0.82003666399113995 
		41 0.060296412813965167 42 0.00050960671712410881
		5 38 0.00034873841514024458 39 0.0088270972533572856 40 0.53300076420880482 
		41 0.45751820262724568 42 0.00030519749545196678
		5 38 0.0011502645381555429 39 0.00928085949165189 40 0.4942141443268121 
		41 0.49421414432681199 42 0.0011405873165685734
		5 38 0.0046068886247555363 39 0.021293706800089966 40 0.48474625797519949 
		41 0.48474625797519949 42 0.0046068886247555363
		5 38 0.0073807673448644277 39 0.028311305142631603 40 0.47846358008381973 
		41 0.47846358008381973 42 0.0073807673448644277
		5 38 0.053909887130927973 42 0.13545147002892821 43 0.0096729629037777647 
		45 0.79463261413114483 46 0.0063330658052211221
		5 38 0.07990145396026456 42 0.13101110055882173 43 0.016608279995943099 
		45 0.75954421888192747 46 0.012934946603043051
		5 38 0.010135209793700393 42 0.055030888674302003 43 0.030575826112781843 
		45 0.84818990916419756 46 0.056068166255018211
		5 38 0.0065690716415482738 42 0.062859210889686601 43 0.025230442013615809 
		45 0.87706134133397284 46 0.02827993412117643
		5 42 0.038035880791878057 43 0.03829984033454524 44 0.0049410528728898962 
		45 0.56854468724343898 46 0.35017853875724786
		5 42 0.035998926902087128 43 0.036108124677036238 45 0.53788814727992007 
		46 0.38217952386015569 47 0.0078252772808009696
		5 43 0.029110893090745896 44 0.015154897510642425 45 0.24486149118273703 
		46 0.68446838898332762 47 0.026404329232547104
		5 42 0.016606762905901414 43 0.02706243790139418 45 0.31776991814740019 
		46 0.60335053538863304 47 0.035210345656671298
		5 43 0.011913654685659702 44 0.011910503586019323 45 0.013991054026788734 
		46 0.68236822875515191 47 0.27981655894638036
		5 43 0.016460993958586478 44 0.016456650475606627 45 0.026657547707209735 
		46 0.59970730668582928 47 0.34071750117276794;
	setAttr ".wl[1800:1899].w"
		5 43 0.01045607429311096 44 0.01045607429311096 45 0.0041670712530609772 
		46 0.48746039008035869 47 0.48746039008035846
		5 43 0.011908495781414554 44 0.011908495781414554 45 0.0069019495589662493 
		46 0.48464052943910235 47 0.48464052943910235
		5 43 0.035273913938517219 44 0.035273913938517219 45 0.012108334931519157 
		46 0.45867191859572337 47 0.45867191859572315
		5 43 0.030178816104518839 44 0.030178816104518839 45 0.013193204723168806 
		46 0.46322458153389673 47 0.46322458153389673
		5 43 0.063300755473472345 44 0.063300755473472345 45 0.025498376910845989 
		46 0.42395005607110464 47 0.42395005607110464
		5 43 0.05218519531994395 44 0.05218519531994395 45 0.022863638608024223 
		46 0.43638298537604392 47 0.43638298537604392
		5 38 0.057882243629147352 42 0.055649837211074332 43 0.0058015100152803986 
		45 0.87584023768061792 46 0.0048261714638799256
		5 38 0.0056250005922769426 42 0.022244573684402261 43 0.010334204549419943 
		45 0.94266412327747573 46 0.019132097896425199
		5 42 0.012119936536264683 43 0.012157376191611245 45 0.63249732704629513 
		46 0.34041227201429752 47 0.0028130882115312613
		5 43 0.0088620908871447791 44 0.0055851037542437752 45 0.16757025322883204 
		46 0.7986917303001777 47 0.019290821829601738
		5 43 0.0032925065425407434 44 0.0032882630286278068 45 0.0069690143779741424 
		46 0.7869453248965671 47 0.19950489115429018
		5 43 0.0032653661043370364 44 0.0032653661043370364 45 0.0019580006989220232 
		46 0.495755633546202 47 0.49575563354620189
		5 43 0.025783061251399318 44 0.025783061251399318 45 0.011167133970571395 
		46 0.46863337176331499 47 0.46863337176331499
		5 43 0.052160522026243071 44 0.052160522026243071 45 0.022972499963167418 
		46 0.43635322799217319 47 0.43635322799217319
		5 38 0.041204938200793274 42 0.0065626106436605025 45 0.94379896135632391 
		46 0.0025901632508917934 48 0.0058433265483304447
		5 38 0.0044716460126005293 42 0.005164305103723882 45 0.97153926771824894 
		46 0.014197381989472299 48 0.0046273991759544142
		5 42 0.0024128746820875915 43 0.0024132686315308394 45 0.68104765117143751 
		46 0.31194535070829804 49 0.0021808548066461126
		5 43 0.0015342915627443306 45 0.10872331755759712 46 0.87744402232640939 
		47 0.010906546967521002 49 0.0013918215857281178
		5 43 0.00057705276656792707 44 0.00057541838311694991 45 0.0031623794987107922 
		46 0.86879134777992795 47 0.12689380157167637
		5 43 0.0006364191420268092 44 0.0006364191420268092 45 0.00084575876979688016 
		46 0.49894070147307473 47 0.49894070147307473
		5 43 0.014237600755393274 44 0.014237600755393274 46 0.48045789662967908 
		47 0.48045789662967908 49 0.010609005229855346
		5 43 0.043187927197916316 44 0.043187927197916316 46 0.44068508792285721 
		47 0.44068508792285721 49 0.032253969758452912
		5 38 0.063311278715812436 42 0.0048958534984800458 45 0.87598193962707238 
		48 0.047980138157162518 49 0.0078307900014726785
		5 38 0.0059990473823051038 45 0.94008890977237325 46 0.019761812919827728 
		48 0.020509692023141325 49 0.013640537902352642
		5 45 0.62724260341239702 46 0.34663674571651021 48 0.010772336292829162 
		49 0.011826201478080276 50 0.0035221131001834257
		5 45 0.1766754426949696 46 0.78637673758128346 47 0.02106629939871104 
		49 0.008721262300549152 50 0.0071602580244867677
		5 45 0.0079216717379462821 46 0.77378772858102085 47 0.21178009606321144 
		49 0.003255251808910729 50 0.003255251808910729
		5 45 0.0021906740966202414 46 0.49628565115664863 47 0.49628565115664852 
		49 0.0026190117950413267 50 0.0026190117950413267
		5 45 0.011607459462200232 46 0.47551225529902719 47 0.47551225529902741 
		49 0.018684014969872542 50 0.018684014969872542
		5 43 0.029893624794539764 46 0.44645897784667066 47 0.44645897784667066 
		49 0.038594209756059449 50 0.038594209756059449
		5 38 0.06453379468627217 45 0.78910192458155104 46 0.0065954139558050415 
		48 0.12437542775485792 49 0.015393439021513819
		5 38 0.0073277865913009251 45 0.86856574363543426 46 0.029785227525068802 
		48 0.05789826371202228 49 0.036422978536173663
		5 45 0.56890779085810883 46 0.35649987925754906 48 0.031062054232089773 
		49 0.035725422119847326 50 0.007804853532405071
		5 45 0.25176649745404733 46 0.67224859673411907 47 0.028255710934704803 
		49 0.027373762712131964 50 0.020355432164996738
		5 45 0.015466388229629027 46 0.67373497613833233 47 0.28863370251369175 
		49 0.011082466559173438 50 0.011082466559173438
		5 45 0.0046074863933343964 46 0.48982705061991605 47 0.48982705061991605 
		49 0.0078692061834167472 50 0.0078692061834167472
		5 45 0.012751152508992423 46 0.46857604824231802 47 0.46857604824231802 
		49 0.025048375503185734 50 0.025048375503185734
		5 43 0.033106946674425798 46 0.43658561123824979 47 0.43658561123824957 
		49 0.04686091542453745 50 0.04686091542453745
		5 38 0.092286920455710103 42 0.014170208040952523 45 0.74596659039702629 
		48 0.12244678540563722 49 0.025129495700673823
		5 38 0.010828197652536061 45 0.84213882365168524 46 0.057859901015115588 
		48 0.050561593593806332 49 0.038611484086856773
		5 45 0.54009814238808651 46 0.38607714916491931 48 0.030391365799176961 
		49 0.033282244912220024 50 0.01015109773559714
		5 45 0.32060345834999193 46 0.59900620659915071 47 0.036387479089837832 
		49 0.025016729812903437 50 0.01898612614811607
		5 45 0.027834207316852284 46 0.59811038980916809 47 0.34434126571697365 
		49 0.014857068578502981 50 0.014857068578502981
		5 45 0.0072955480054181848 46 0.48721398250799464 47 0.48721398250799464 
		49 0.0091382434892962813 50 0.0091382434892962813
		5 45 0.013704117716097867 46 0.47113523132760976 47 0.47113523132760976 
		49 0.022012709814341301 50 0.022012709814341301
		5 43 0.030005884811236096 46 0.44642285120799924 47 0.44642285120799946 
		49 0.038574206386382551 50 0.038574206386382551
		5 38 0.080146949699625325 42 0.029686248324528614 45 0.85153078509797109 
		46 0.012311913746852195 48 0.026324103131022875
		5 42 0.023324334007912999 45 0.86946588034849892 46 0.068833054959115153 
		48 0.020849778858551368 49 0.017526951825921615
		5 42 0.015578755425706458 43 0.015582349770540915 45 0.55088960401114517 
		46 0.40388706394192497 49 0.01406222685068243
		5 43 0.01178346834396591 45 0.33987745931181945 46 0.60004742932507471 
		47 0.037614243388517467 49 0.010677399630622333
		5 43 0.009533671119668314 44 0.009522676971859911 45 0.032719527520662588 
		46 0.58935285937138482 47 0.35887126501642447
		5 43 0.0065855041502991055 44 0.0065855041502991055 45 0.0076926784739846238 
		46 0.48956815661270864 47 0.48956815661270864
		5 43 0.018728900576350214 44 0.018728900576350214 46 0.4742444074808736 
		47 0.4742444074808736 49 0.014053383885552382
		5 43 0.043143836377323531 44 0.043143836377323531 46 0.44076910454737922 
		47 0.44076910454737922 49 0.03217411815059458
		5 43 0.052210319866165027 44 0.052210319866165027 46 0.42825956447997926 
		47 0.42825956447997915 49 0.039060231307711531
		5 38 0.016117478514312431 48 0.02397854244012838 49 0.001587195707966022 
		51 0.94029307472937729 52 0.018023708608215932
		5 38 0.02303471046409445 48 0.015635313089639405 49 0.0019332789027030521 
		51 0.93152696926063738 52 0.027869728282925645
		5 38 0.0046458432673546924 48 0.0061381990267395433 51 0.90588102835153206 
		52 0.081262711915492739 53 0.0020722174388810039
		5 38 0.0033988554351527147 48 0.0096924278588008325 49 0.0015519621317786928 
		51 0.93376379260132447 52 0.051592961972943316
		5 48 0.005228522172363032 49 0.0023048044274851039 51 0.54347930947582412 
		52 0.44573278188023363 53 0.0032545820440941934
		5 48 0.0040829635251718975 49 0.0022352289708157838 51 0.53084749127099484 
		52 0.45734264377342726 53 0.0054916724595902777
		5 48 0.0052082449468971613 49 0.0043682375409943002 51 0.20732945746714024 
		52 0.76192612243729629 53 0.021167937607671987
		5 48 0.0038631793964517152 49 0.0032959714301766616 51 0.27396220946074562 
		52 0.6930946125473525 53 0.025784027165273445
		5 48 0.0025068734160469857 49 0.0025198441087323255 51 0.015142805585050087 
		52 0.80244892846633242 53 0.17738154842383813
		5 48 0.0027020863622693745 49 0.0027093809872122719 51 0.025428226031580979 
		52 0.72974847778129326 53 0.23941182883764411
		5 48 0.0015643563027195339 49 0.0019269214515403928 51 0.0030213713056359286 
		52 0.4967436754700521 53 0.4967436754700521
		5 48 0.0014568620939240408 49 0.001679835669034327 51 0.0045394709871538277 
		52 0.49616191562494394 53 0.49616191562494394
		5 49 0.0092135668277081133 50 0.0066430762823811683 51 0.0063536096787433615 
		52 0.48889487360558365 53 0.48889487360558365
		5 49 0.0056808705977916089 50 0.004177774097897771 51 0.0068497055390357546 
		52 0.49164582488263742 53 0.49164582488263742
		5 49 0.033243835944825821 50 0.031240350890971127 51 0.014849063542898866 
		52 0.46033337481065217 53 0.46033337481065206
		5 49 0.017699055668442463 50 0.015942033640280819 51 0.012752829929982994 
		52 0.47680304038064686 53 0.47680304038064686
		5 38 0.031377271960810506 48 0.065669297442101621 49 0.0028416226672860934 
		51 0.87511426129657577 52 0.024997546633226047
		5 38 0.0043866989838755709 48 0.013441336924796942 49 0.0017720102085063841 
		51 0.93095607068178865 52 0.049443883201032442
		5 48 0.0058457544471534105 49 0.0023901106387304357 51 0.54340901692319554 
		52 0.44516750142083578 53 0.0031876165700847957
		5 48 0.0048199047216618569 49 0.004059744432159027 51 0.16670673767216279 
		52 0.80318148408200518 53 0.02123212909201122
		5 48 0.0019415575582392886 49 0.0019463885059110074 51 0.011834029088918705 
		52 0.84054294630385407 53 0.14373507854307696
		5 48 0.0008723388323070815 49 0.0010664424830643211 51 0.0016878277483229512 
		52 0.49818669546815286 53 0.49818669546815286
		5 49 0.0086764551613785212 50 0.0063246030748816805 51 0.0057450033986920102 
		52 0.48962696918252385 53 0.48962696918252385
		5 49 0.028107268897104621 50 0.025727708520863483 51 0.012883020340830002 
		52 0.46664100112060097 53 0.46664100112060097
		5 38 0.025120140007795395 48 0.01188828624056076 49 0.0010294724412358892 
		51 0.94858709158400856 52 0.013375009726399394
		5 38 0.0053087554279239368 48 0.0069009795966959459 51 0.93453118835622673 
		52 0.051688323145066752 53 0.0015707534740867009
		5 48 0.0024449113825432949 49 0.0012071368067926131 51 0.54901591608835976 
		52 0.44432645531440362 53 0.0030055804079006589
		5 48 0.0018336437366675185 49 0.0015783643135404318 51 0.14386935406933155 
		52 0.83484356361525369 53 0.017875074265206948
		5 48 0.0007921438909491706 49 0.00079214815959904135 51 0.0090653656677381431 
		52 0.87096408033445505 53 0.11838626194725853
		5 48 0.00022754196303266183 49 0.00025795636276407241 51 0.00076145722231061328 
		52 0.49937652222594631 53 0.49937652222594631
		5 49 0.0041426099528817572 50 0.0031610766414444662 51 0.0047530401562214872 
		52 0.49397163662472621 53 0.4939716366247261
		5 49 0.021990161763555602 50 0.020698285103784811 51 0.014162026395036035 
		52 0.47157476336881193 53 0.47157476336881171
		5 38 0.030176359723949216 48 0.0056030734517859265 51 0.94819424801911878 
		52 0.01496369188849093 53 0.001062626916655198
		5 38 0.0071256911783765921 48 0.0041936451917501116 51 0.91991868846246805 
		52 0.066600516386650724 53 0.0021614587807544665
		5 38 0.0010746461561850524 48 0.0018348460608931026 51 0.53817778806290506 
		52 0.45419203221312809 53 0.0047206875068887544
		5 48 0.0015636939600370415 49 0.0013646237275202362 51 0.19589367433440222 
		52 0.7741409169178266 53 0.027037091060213875
		5 48 0.00076411725705767997 49 0.00076336020517069492 51 0.014893072031586317 
		52 0.82191650832770358 53 0.16166294217848184
		5 48 0.0003400102775752188 49 0.00036594009460264043 51 0.0018925046485539789 
		52 0.49870077248963413 53 0.49870077248963413
		5 49 0.0028525289886470765 50 0.0022339889734001085 51 0.0056613333717646782 
		52 0.49462607433309413 53 0.49462607433309413
		5 49 0.011961346022954927 50 0.01098402161378074 51 0.012988472735195733 
		52 0.48203307981403432 53 0.48203307981403432
		5 38 0.02909470791807884 48 0.0035941618091231424 51 0.94980951803514613 
		52 0.016366306373553689 53 0.0011353058640982169
		5 38 0.0064717532902290676 48 0.0026860946240388319 51 0.91442230547382486 
		52 0.07416918716896144 53 0.0022506594429457746
		5 38 0.0011858125536844731 48 0.0013724204088366547 51 0.53683145831703205 
		52 0.45545711388778981 53 0.0051531948326570915
		5 48 0.0013320755280359672 49 0.0011607613484674387 51 0.24096662631585081 
		52 0.7289542659951308 53 0.027586270812514954
		5 48 0.00075942642958044706 49 0.00075851331963321567 51 0.018700213125037678 
		52 0.78611299568609649 53 0.19366885143965223;
	setAttr ".wl[1900:1999].w"
		5 48 0.00046037502143726696 49 0.00048701775007988873 51 0.0033203480449623761 
		52 0.49786612959176024 53 0.49786612959176024
		5 48 0.0018384904831472793 49 0.0023065989373475967 51 0.0062188218135613045 
		52 0.49481804438297189 53 0.49481804438297189
		5 49 0.012512822036571536 50 0.011720208769305653 51 0.014997324804141015 
		52 0.48038482219499085 53 0.48038482219499085
		5 38 0.030474325933050047 48 0.0042167394447528306 51 0.94083588022225673 
		52 0.022937876789792123 53 0.0015351776101483732
		5 38 0.0070923232927422118 48 0.0031510686463124622 51 0.88524035183533167 
		52 0.10150940913953983 53 0.0030068470860738104
		5 38 0.0016240513626778013 48 0.0018440673964597984 51 0.52848824347048629 
		52 0.46108378693477881 53 0.0069598508355973952
		5 48 0.0016447426173125924 49 0.001426408978851228 51 0.28796766984283284 
		52 0.68029722209117138 53 0.028663956469831917
		5 48 0.0010270843632666313 49 0.0010267825704594743 51 0.023184725876472367 
		52 0.74848573802104812 53 0.22627566916875344
		5 48 0.00063685870365182866 49 0.0006764226288805855 51 0.0045060523472712534 
		52 0.49709033316009821 53 0.49709033316009821
		5 48 0.0018985508827404399 49 0.0023542817638345145 51 0.0067118972898536156 
		52 0.4945176350317857 53 0.4945176350317857
		5 49 0.008688973016871113 50 0.0078538585392963975 51 0.012650540742117349 
		52 0.48540331385085767 53 0.48540331385085744
		5 38 0.025711546599077959 48 0.0057797576095020469 51 0.943434082560761 
		52 0.023580975170688401 53 0.0014936380599705956
		5 38 0.0062636798543117076 48 0.0041344588228625695 51 0.8860405447488503 
		52 0.10074295649363242 53 0.0028183600803430094
		5 48 0.002646178546144691 49 0.0016251427426027694 51 0.52730474114795656 
		52 0.46145991974428568 53 0.0069640178190104379
		5 48 0.0022796139817262738 49 0.0019686640870449908 51 0.29263594998293013 
		52 0.67602069545166665 53 0.027095076496631992
		5 48 0.0018662955148045746 49 0.0018666338867501348 51 0.029460465791063716 
		52 0.71308223547462279 53 0.25372436933275877
		5 48 0.00089134016404089286 49 0.00097348713084609805 51 0.0046278355230420596 
		52 0.49675366859103554 53 0.49675366859103542
		5 48 0.0023956603784590965 49 0.003154246353576261 51 0.0065445013977321401 
		52 0.49395279593511637 53 0.49395279593511615
		5 49 0.013965871436798883 50 0.012894937918521223 51 0.013842937973104041 
		52 0.47964812633578796 53 0.47964812633578796
		5 49 0.027299675509980286 50 0.026575920618424707 51 0.017432334707262704 
		52 0.46434603458216611 53 0.46434603458216611
		5 38 0.059095561327511655 45 0.1234842626366885 48 0.78871799037497947 
		49 0.020124825451952592 51 0.0085773602088677885
		5 38 0.091216032040559683 45 0.094645477883527174 48 0.7517903749595658 
		49 0.037795719438988469 51 0.024552395677358955
		5 38 0.020084061900157945 45 0.04777537510117956 48 0.77871430255208629 
		49 0.13402743884738019 51 0.019398821599195818
		5 38 0.011535136702820543 45 0.060240716151791274 46 0.0072140141352445078 
		48 0.84566921746594836 49 0.075340915544195308
		5 45 0.030980541879483105 46 0.013761174552250668 48 0.52076100999800967 
		49 0.42879777263162866 50 0.0056995009386279598
		5 45 0.029801067640508258 46 0.016948358679296522 48 0.5008224922231842 
		49 0.4400856322340298 50 0.012342449222981009
		5 45 0.02379328421970037 46 0.022238998878760949 48 0.26640588459994502 
		49 0.66069310201070663 50 0.02686873029088712
		5 45 0.023489562536150362 46 0.021894167106296526 48 0.34394407169237068 
		49 0.568736167210105 50 0.041936031455077349
		5 45 0.010287714086772762 46 0.01168308529322074 48 0.027001620754096987 
		49 0.76434142049332199 50 0.18668615937258742
		5 45 0.01565726935711818 46 0.017102138635560149 48 0.056515405912468203 
		49 0.64379478511015542 50 0.266930400984698
		5 46 0.0072999315360885286 47 0.0050624815601286724 48 0.0044963340637769163 
		49 0.49157062642000293 50 0.49157062642000293
		5 46 0.010651878923171315 47 0.0079100499241086912 48 0.011231396723875646 
		49 0.48510333721442217 50 0.48510333721442217
		5 45 0.0064678183860450347 46 0.021099365429339954 47 0.020621205645342162 
		49 0.47590580526963644 50 0.47590580526963644
		5 46 0.019174193195194807 47 0.018514915985220773 48 0.0094071899032387302 
		49 0.47645185045817268 50 0.4764518504581729
		5 45 0.013761175241187635 46 0.06110866490803768 47 0.06110866490803768 
		49 0.43201074747136853 50 0.43201074747136853
		5 46 0.041319038509010218 47 0.041319038509010218 48 0.012940398722348699 
		49 0.45221076212981548 50 0.45221076212981548
		5 38 0.053251519040671956 45 0.073623942138483806 48 0.85543043236943161 
		49 0.012408764348333387 51 0.0052853421030791279
		5 38 0.0057972659834792913 45 0.020030487470688405 48 0.93829206076529648 
		49 0.033344297393569131 51 0.0025358883869666385
		5 45 0.0083544624810687751 46 0.0038612196442160806 48 0.58107695249888081 
		49 0.40466029238078843 50 0.0020470729950459567
		5 45 0.0057588677667777775 46 0.0054755918083824002 48 0.1456262030929619 
		49 0.8321728926063291 50 0.010966444725548969
		5 45 0.0017731089190011911 46 0.0019695710152155647 48 0.0069040944062809416 
		49 0.92231854154613402 50 0.067034684113368326
		5 46 0.00086236983547825937 47 0.00060925766455719333 48 0.00070216913330601693 
		49 0.49891310168332914 50 0.49891310168332936
		5 46 0.010796008763011027 47 0.010622867356455569 48 0.0035119319519100211 
		49 0.48753459596431153 50 0.48753459596431176
		5 45 0.010078971028319252 46 0.042154219838716867 47 0.042154219838716867 
		49 0.45280629464712352 50 0.45280629464712352
		5 38 0.013075572074084857 45 0.0022593589901136382 48 0.98143335377831975 
		49 0.0016805789665493925 51 0.0015511361909324758
		5 38 0.0015604676890551875 45 0.0014794998207649879 48 0.9875630408964664 
		49 0.0083415181445216438 51 0.0010554734491917404
		5 45 0.00075757421595271318 48 0.68538343070474628 49 0.31274845289364189 
		50 0.00057049440350104047 52 0.00054004778215819822
		5 45 0.00039914962757596923 46 0.00038234802075213267 48 0.049665014002798651 
		49 0.9472690414784608 50 0.0022844468704124174
		5 45 9.615107123681531e-05 46 0.00010157851005231459 48 0.00093531826789214475 
		49 0.98848614804184909 50 0.010380804108969716
		5 46 1.5768943690073949e-05 47 1.2066140986275522e-05 48 3.0768653009115247e-05 
		49 0.4999706981311573 50 0.4999706981311573
		5 46 0.0036268512592086389 47 0.0035701122695454401 48 0.0025078521734708936 
		49 0.49514759214888759 50 0.49514759214888748
		5 46 0.029493180063684971 47 0.029493180063684971 48 0.011020473511757103 
		49 0.46499658318043652 50 0.46499658318043652
		5 38 0.027643132240648259 48 0.94951780832449928 49 0.0031831752957862738 
		51 0.014629725167517319 52 0.0050261589715487739
		5 38 0.0029568445884969549 48 0.97093230184876289 49 0.014425500505593818 
		51 0.0062335263006628762 52 0.0054518267564835025
		5 48 0.62140650986417689 49 0.36728451759873781 51 0.0039855195353910682 
		52 0.0047011166039528599 53 0.0026223363977413224
		5 48 0.17045953138068651 49 0.81068834224390329 50 0.010397843608712983 
		52 0.0042800086530424232 53 0.0041742741136548533
		5 48 0.010885847876569387 49 0.9071175415482462 50 0.077937231644887764 
		52 0.0020296894651483451 53 0.0020296894651483451
		5 48 0.0015009634360980643 49 0.49846858734954752 50 0.49844693935240453 
		52 0.00079175493097490425 53 0.00079175493097490425
		5 48 0.0042480936458970265 49 0.49449261862587596 50 0.49449261862587596 
		52 0.0033833345511755887 53 0.0033833345511755887
		5 46 0.016346471486200283 47 0.016346471486200283 48 0.010859169202556059 
		49 0.47822394391252177 50 0.47822394391252165
		5 38 0.065074781672454188 48 0.68709020320050129 49 0.012553910350311401 
		51 0.19149161311671919 52 0.043789491660013939
		5 38 0.010790455479010296 48 0.78782352112364784 49 0.052715164624509238 
		51 0.080310227780480498 52 0.068360630992352248
		5 48 0.52775346387399447 49 0.38975985906280464 51 0.028456196919936238 
		52 0.037778255663468381 53 0.016252224479796341
		5 48 0.2898270573814114 49 0.6272097581289825 50 0.02324415004721896 
		52 0.030578506420417248 53 0.02914052802196997
		5 48 0.035568568085150257 49 0.75312766513604146 50 0.1811530816145982 
		52 0.015075342582105054 53 0.015075342582105054
		5 48 0.0069055756497828132 49 0.49077966043218074 50 0.4901857858312893 
		52 0.0060644890433735861 53 0.0060644890433735861
		5 48 0.0072582467778049813 49 0.48857142154084243 50 0.48857142154084232 
		52 0.0077994550702551535 53 0.0077994550702551535
		5 46 0.020611915776684361 47 0.020611915776684361 49 0.47177507962643173 
		50 0.47177507962643195 52 0.015226009193767532
		5 38 0.08945003685187336 48 0.51476750226248835 49 0.025576984981816524 
		51 0.28650389629136602 52 0.083701579612455862
		5 38 0.01937784977997432 48 0.63028907519201816 49 0.10712841441556413 
		51 0.12768976343351907 52 0.11551489717892434
		5 48 0.45972155078145432 49 0.38686489706997107 51 0.054243637323022245 
		52 0.067716125073976313 53 0.031453789751576054
		5 48 0.34025829066657443 49 0.5295502628963662 50 0.036572017156391745 
		52 0.04850449415923333 53 0.045114935121434212
		5 48 0.062435527451372805 49 0.62774360148234321 50 0.25125615515544353 
		52 0.029282357955420193 53 0.029282357955420193
		5 48 0.013556822640427242 49 0.48228492939982659 50 0.48149984363947285 
		52 0.01132920216013668 53 0.01132920216013668
		5 48 0.010664467541651011 49 0.48367264760464035 50 0.48367264760464057 
		52 0.010995118624534032 53 0.010995118624534032
		5 46 0.018348179223626762 47 0.018348179223626762 49 0.47426297393955708 
		50 0.47426297393955708 52 0.014777693673632346
		5 38 0.10490857381768529 48 0.74462216258578007 49 0.036250593654990587 
		51 0.076378067749445513 52 0.037840602192098401
		5 38 0.024014316620753762 48 0.72393098239639742 49 0.14514225378443876 
		51 0.055432939751148373 52 0.05147950744726168
		5 48 0.49071998675762052 49 0.42945202632809576 51 0.028943177901320873 
		52 0.032076441744329179 53 0.018808367268633622
		5 48 0.36330358971189303 49 0.54805676291219141 50 0.043542239600201871 
		52 0.023323187372485212 53 0.021774220403228479
		5 48 0.070231519086418753 49 0.61504293863806758 50 0.27835002948708754 
		52 0.01818775639421305 53 0.01818775639421305
		5 48 0.014388987396579248 49 0.48568225634425943 50 0.48551014525020458 
		52 0.0072093055044783645 53 0.0072093055044783645
		5 46 0.011264485212522705 47 0.010857543118299687 48 0.010857481870601284 
		49 0.48351024489928818 50 0.48351024489928818
		5 46 0.030789308832357316 47 0.030789308832357316 48 0.014831540260949343 
		49 0.46179492103716802 50 0.46179492103716802
		5 46 0.044453596709732347 47 0.044453596709732347 48 0.015562920076607411 
		49 0.44776494325196398 50 0.44776494325196398
		5 38 0.080212530012232566 42 0.90692077686350425 43 0.0077154644772255221 
		45 0.0042214460205062766 46 0.00092978262653146157
		5 38 0.093923010865601203 42 0.88369313370073976 43 0.013003376769957321 
		45 0.0076977444743665238 46 0.0016827341893351697
		5 38 0.015877914247336228 42 0.91071128970347193 43 0.063878242138681637 
		45 0.0066814033474019595 46 0.0028511505631082187
		5 38 0.01141855749217934 42 0.94827987006444847 43 0.03539855219406856 
		45 0.0034644308938933453 46 0.0014385893554103072
		5 38 0.0023636510335095398 42 0.64023268809281331 43 0.35072954325774669 
		44 0.0040342500415102489 45 0.0026398675744201696
		5 42 0.60055711345326768 43 0.38407283003401099 44 0.0065284438224365018 
		45 0.0050248034561309034 46 0.0038168092341538985
		5 42 0.36894667172313739 43 0.61124853041938221 44 0.01538758635748824 
		45 0.0022288958986405164 46 0.0021883156013517233
		5 42 0.40828187315078496 43 0.56498461419551693 44 0.0192183402740745 
		45 0.0038021372924633991 46 0.0037130350871602785
		5 42 0.044980959389608326 43 0.83053956044144883 44 0.12035511722759795 
		45 0.0019947404694421939 46 0.0021296224719026644
		5 42 0.064315788775839558 43 0.75857734113705644 44 0.16906260505998774 
		45 0.0038669392930915192 46 0.0041773257340248053
		5 42 0.0076243138631430967 43 0.51559081208765078 44 0.47399303507855145 
		46 0.0014930612957398176 47 0.0012987776749149725
		5 42 0.010717252073629478 43 0.51083399115514694 44 0.4737983193008875 
		46 0.0024934701745130397 47 0.0021569672958229309
		5 42 0.0055191469813217217 43 0.4942282511639921 44 0.4942282511639921 
		46 0.0030198100395362869 47 0.0030045406511577523
		5 42 0.0067229021808055487 43 0.49278534670278074 44 0.49278534670278062 
		46 0.0038726355836434566 47 0.0038337688299896655
		5 42 0.011825032586094209 43 0.47853007122444852 44 0.47853007122444829 
		46 0.015557412482504576 47 0.015557412482504576;
	setAttr ".wl[2000:2099].w"
		5 42 0.010261434197650673 43 0.48271203280465824 44 0.48271203280465846 
		46 0.012157250096516279 47 0.012157250096516279
		5 38 0.10272216384323565 42 0.80091118666076788 43 0.018128272905380612 
		45 0.072902519013884517 46 0.005335857576731216
		5 38 0.07475845724864999 42 0.80747480937584293 43 0.010401487249227351 
		45 0.10376209751930233 46 0.0036031486069773942
		5 38 0.010885824208043649 42 0.89281053803676136 43 0.039791308340165643 
		45 0.049893449921465403 46 0.0066188794935640657
		5 38 0.014964330322369511 42 0.8775185057195356 43 0.068061054171587643 
		45 0.03171837146590014 46 0.0077377383206069256
		5 42 0.57483481821956495 43 0.3858850293407679 44 0.0060508594181002979 
		45 0.020263578949800305 46 0.012965714071766552
		5 42 0.60054177505740991 43 0.35524810864913986 44 0.0034267915224011807 
		45 0.026670619972268647 46 0.014112704798780507
		5 42 0.37766694399885259 43 0.57846048707896613 44 0.017708496837162409 
		45 0.013207877696489186 46 0.012956194388529796
		5 42 0.30732201743519028 43 0.64806683848818469 44 0.012556265557337758 
		45 0.016109324319805378 46 0.015945554199481744
		5 42 0.048234459280949521 43 0.77528873190910597 44 0.1573378211187936 
		45 0.008654677849087921 46 0.010484309842063116
		5 42 0.023537799226051665 43 0.87209564966957531 44 0.090896875883018119 
		45 0.0058440658809960746 46 0.0076256093403588004
		5 42 0.0068177402344966349 43 0.50700098030551777 44 0.4762264534342901 
		46 0.0054824790045425054 47 0.00447234702115304
		5 42 0.0031097426086514062 43 0.51037995555530624 44 0.47865819468971627 
		46 0.0044024318564676902 47 0.0034496752898584204
		5 42 0.0049083454949896124 43 0.48836550742732349 44 0.48836550742732338 
		46 0.0092038884550863925 47 0.0091567511952772816
		5 42 0.0033391370629660688 43 0.48705974874017688 44 0.48705974874017688 
		46 0.011271407159914607 47 0.011269958296765586
		5 42 0.0086734046383554718 43 0.47013773591917635 44 0.47013773591917657 
		46 0.025525561761645787 47 0.025525561761645787
		5 42 0.0096947274384574997 43 0.45323591338438751 44 0.45323591338438751 
		46 0.041916722896383651 47 0.041916722896383651
		5 38 0.097708267120915626 42 0.86751186638774902 43 0.015185285530995893 
		45 0.016890347725683236 46 0.0027042332346563628
		5 38 0.017132311694167929 42 0.88813146945664712 43 0.075794311514518445 
		45 0.01389035794473082 46 0.0050515493899356426
		5 42 0.58265248272193904 43 0.39343645710945802 44 0.0071994922362006693 
		45 0.0096907377741770866 46 0.0070208301582253109
		5 42 0.40440420518191039 43 0.56361590085777047 44 0.019049901076654101 
		45 0.0065401790515175586 46 0.006389813832147556
		5 42 0.064319651065566363 43 0.74187461763404261 44 0.18028107508901464 
		45 0.0063724999351415833 46 0.0071521562762348031
		5 42 0.0091914275742354928 43 0.50878742711501512 44 0.47544502088462409 
		46 0.0035563758398273249 47 0.003019748586298054
		5 42 0.0058251360269033449 43 0.49175702960500389 44 0.49175702960500389 
		46 0.005354547425882779 47 0.0053062573372061233
		5 42 0.010352758980953239 43 0.47519130765177647 44 0.47519130765177647 
		46 0.019632312857746966 47 0.019632312857746966
		5 38 0.080219982125021613 42 0.90825843592435507 43 0.0059442463985790867 
		45 0.0047222716144966412 46 0.00085506393754759271
		5 38 0.011377649966557157 42 0.95501460342944344 43 0.02809984026914732 
		45 0.0040413890562049568 46 0.0014665172786470057
		5 42 0.65928861954467344 43 0.33330853409974787 44 0.0030240174728162266 
		45 0.0025137334444569142 46 0.0018650954383054171
		5 42 0.30529453840527498 43 0.67851412071570194 44 0.012399132837856359 
		45 0.0019071126289075828 46 0.001885095412259186
		5 42 0.028279901136123244 43 0.88906821224201749 44 0.079853997643089217 
		45 0.0013463395673547949 46 0.0014515494114153108
		5 42 0.0034745293978420758 43 0.52344008157722166 44 0.47155995786237143 
		46 0.00081851623069958252 47 0.00070691493186503945
		5 42 0.0038837725990967017 43 0.49534609967455107 44 0.49534609967455107 
		46 0.0027146055532806992 47 0.0027094224985205165
		5 42 0.0095528911269074594 43 0.48207418401482893 44 0.48207418401482893 
		46 0.013149370421717373 47 0.013149370421717373
		5 38 0.070421976215657586 42 0.91428843066170551 43 0.0048794876690991737 
		45 0.0093999491090510645 46 0.0010101563444866782
		5 38 0.009204172799302357 42 0.95856735636633983 43 0.023102032730327487 
		45 0.0072280230486660938 46 0.0018984150553643148
		5 42 0.68342533506406866 43 0.30894985333868291 44 0.0019338253455608318 
		45 0.0033885754232015038 46 0.0023024108284860393
		5 42 0.22085696932132862 43 0.76842348835464125 44 0.006897886453088373 
		45 0.001917772543119758 46 0.0019038833278219973
		5 42 0.010984480923746003 43 0.94863685961561728 44 0.03854704449736502 
		45 0.00085889083850422901 46 0.00097272412476743304
		5 42 0.00062684601271958908 43 0.54268308979147284 44 0.45618568633612594 
		46 0.00027396586235082913 47 0.00023041199733079651
		5 42 0.0021654534466035084 43 0.49607127988085492 44 0.49607127988085492 
		46 0.0028460564392104983 47 0.002845930352476178
		5 42 0.0096828515642779656 43 0.47197825174902397 44 0.47197825174902397 
		46 0.02318032246883709 47 0.02318032246883709
		5 38 0.094486394744652175 42 0.80598884355940026 43 0.010098544407666403 
		45 0.086013540335682731 46 0.0034126769525983378
		5 38 0.010798198511668732 42 0.92433056767967159 43 0.030758706335762876 
		45 0.029620144277525018 46 0.0044923831953718636
		5 42 0.63456364786770414 43 0.34038982817364555 44 0.0026524173901084956 
		45 0.014297138041500734 46 0.0080969685270409816
		5 42 0.24707521702426685 43 0.72749262821471816 44 0.0098793532587538643 
		45 0.0077949560553156154 46 0.0077578454469455537
		5 42 0.013786008238933509 43 0.92799262306937569 44 0.052708331126141053 
		45 0.0024548390362008712 46 0.0030581985293488857
		5 42 0.0011601150147749458 43 0.52289372878655638 44 0.47376224663209643 
		46 0.0012131403583540395 47 0.00097076920821821113
		5 42 0.0025236616276634941 43 0.49162640831813637 44 0.49162640831813637 
		46 0.0071117608680318807 47 0.0071117608680318807
		5 42 0.0079056889375237159 43 0.46600684347928023 44 0.46600684347928045 
		46 0.030040312051957736 47 0.030040312051957736
		5 42 0.012293351043170515 43 0.46289432207332348 44 0.46289432207332337 
		46 0.030959002405091265 47 0.030959002405091265
		5 38 0.26142829585568023 42 0.38722961448811188 43 0.0044022583195129248 
		45 0.34235111956198583 48 0.0045887117747091576
		5 38 0.26551859666643268 45 0.36338286337266651 48 0.35619257065391619 
		49 0.0070165287390864918 51 0.0078894405678980629
		5 38 0.12904069553429284 45 0.0030592784366542851 48 0.14896898401182057 
		51 0.706538685974759 52 0.012392356042473286
		5 37 0.16349140024295458 38 0.82699892926156504 39 0.0081952780046954839 
		40 0.00066127077622549842 51 0.00065312171455939635
		5 37 0.12942987660836511 38 0.85211787830532748 39 0.011582234982602137 
		48 0.002662025438815547 51 0.0042079846648896699
		5 37 0.069145843283753713 38 0.90563544919912686 39 0.024309558957820776 
		40 0.00070062347441091218 51 0.00020852508488774436
		5 37 0.11643089994410336 38 0.86566804639578121 39 0.010519183535955875 
		48 0.0031489706426223686 51 0.0042328994815372216
		5 37 0.2422338336257524 38 0.73883851591005156 39 0.015290465997538364 
		48 0.0017399115425506667 51 0.0018972729241068774
		5 37 0.2753202140936617 38 0.65974647406685971 39 0.058538963969892797 
		40 0.0043750605868768657 45 0.002019287282708919
		5 37 0.1979289209544246 38 0.77605072246493345 39 0.014070700132559136 
		48 0.0046391620642561382 51 0.0073104943838265503
		5 12 0.43310220810757882 13 0.13571774943862516 32 0.035781037485184408 
		35 0.35519265576296949 36 0.040206349205642304
		5 12 0.4290077138243461 13 0.19189379497052242 32 0.027664275291570211 
		35 0.33508407464298984 36 0.016350141270571477
		5 11 0.050923124045837764 12 0.5050435616053307 13 0.12991659161288899 
		35 0.27121492701923422 36 0.04290179571670838
		5 11 0.043649083937632241 12 0.48504784711432142 13 0.16981210144224831 
		32 0.03353443838359467 35 0.26795652912220325
		5 12 0.42984459158527705 13 0.095346615485239178 32 0.036793541965110609 
		35 0.35570196050673453 36 0.082313290457638605
		5 11 0.05048846826712055 12 0.49356484507811937 13 0.10547394317579048 
		35 0.28272043003394998 36 0.067752313445019641
		5 12 0.45951545881327427 13 0.020640174913870431 32 0.016808746137708729 
		33 0.004483923066811544 35 0.49855169706833502
		5 12 0.47475064043608256 13 0.035001056712654875 32 0.012320096878929283 
		33 0.0031775655362506323 35 0.47475064043608256
		5 12 0.19086711927652703 13 0.014050196297943561 32 0.024406227846590522 
		35 0.74448997264872852 36 0.026186483930210464
		5 12 0.40615419840348177 13 0.068529439021485269 32 0.031534694586148403 
		35 0.37266717318130771 36 0.12111449480757693
		5 11 0.084474814759890091 12 0.57118273390596119 13 0.10232312907974883 
		35 0.19967730400860043 36 0.042342018245799543
		5 11 0.059024999658253502 12 0.55562484270747781 13 0.14973789840889742 
		32 0.027855697633248563 35 0.20775656159212269
		5 12 0.42623006543872199 13 0.24022801068775554 32 0.022528630695628941 
		35 0.30101563056010255 36 0.0099976626177909859
		5 12 0.44715491064122476 13 0.086161054996019421 32 0.01595778940124843 
		33 0.0035713343202825459 35 0.44715491064122476
		5 12 0.12284919158180541 13 0.011927141333109272 32 0.015033854326958272 
		35 0.77720977789580681 36 0.072980034862320103
		5 12 0.50678500399958704 13 0.088039507845082007 32 0.12794632903158026 
		35 0.17008722971396287 36 0.10714192940978801
		5 12 0.34364534461766255 32 0.29850888380357599 33 0.082901068111618195 
		35 0.15629075032295797 36 0.11865395314418531
		5 12 0.2944941031895717 13 0.055561180338342155 32 0.081411297055536361 
		35 0.30390963029188189 36 0.26462378912466789
		5 12 0.47290188839232167 13 0.061118356397245763 32 0.058822832259070888 
		35 0.22312858901714017 36 0.18402833393422141
		5 12 0.11278884148019061 32 0.10384342730610432 33 0.04220907195804182 
		35 0.37108618111695058 36 0.3700724781387128
		5 11 0.12517218690500631 12 0.82003841169481029 13 0.016972543439342073 
		35 0.023516069396683468 36 0.014300788564157898
		5 10 0.046653484884831814 11 0.25628399168347943 12 0.56211028603918445 
		35 0.066124310260846669 36 0.068827927131657654
		5 12 0.0035420834220418491 32 0.0026447550104080906 33 0.0017696878240409163 
		35 0.41136580363045749 36 0.5806776701130516
		5 12 0.0054619345052381897 32 0.0029661033374713468 33 0.0018320032944826664 
		35 0.46200172964188357 36 0.52773822922092428
		5 12 0.0067183292435316153 32 0.0046020381470017755 35 0.38383225916402741 
		36 0.60197962549483863 37 0.0028677479506004277
		5 12 0.0029349956947427912 13 0.00054874922472717097 32 0.00079528367233634429 
		35 0.78477977359500539 36 0.21094119781318832
		5 12 0.0031924134302912716 13 0.00053057412511915865 32 0.00079921859426180684 
		35 0.84123628856846644 36 0.15424150528186123
		5 12 0.0067208158260804235 32 0.0066751992555568835 33 0.0044195839164176487 
		35 0.49109220050097258 36 0.49109220050097246
		5 12 0.0095363540563784838 32 0.0090925643358124569 33 0.0053186997235021701 
		35 0.48802288853682468 36 0.48802949334748236
		5 12 0.014903981414136371 32 0.011845426453908686 33 0.0055568404998738719 
		35 0.48384687581604058 36 0.48384687581604047
		5 12 0.041360101600904219 13 0.011459671053226069 32 0.021817216741733925 
		35 0.46268150530206803 36 0.46268150530206781
		5 12 0.036714397699691162 32 0.014949946769383646 33 0.0081483081469978617 
		35 0.62938764296299288 36 0.31079970442093435
		5 12 0.01542686280383981 32 0.011372605116129536 33 0.0076489208498787611 
		35 0.48717916019973773 36 0.4783724510304142
		5 12 0.0073878270156196562 32 0.0071860073497396317 33 0.0050992700916389607 
		35 0.49016344777150089 36 0.49016344777150089
		5 12 0.035697214486414906 32 0.035658111399248647 33 0.02128539326998646 
		35 0.45367964042217485 36 0.45367964042217507
		5 12 0.027799020947139295 32 0.027799020947139295 33 0.018746786113040207 
		35 0.46282758599634072 36 0.4628275859963405
		5 12 0.031618208022095792 32 0.032020753879931779 33 0.024027162258302304 
		35 0.45616693791983504 36 0.45616693791983504
		5 12 0.043924777271399283 32 0.044588467424489513 33 0.031877976355989275 
		35 0.47116762676592427 36 0.40844115218219768
		5 12 0.085962132751180087 32 0.058918914888095059 33 0.033763137136321709 
		35 0.59802215645682077 36 0.22333365876758235
		5 12 0.027673285903013614 13 0.0029775348090943492 32 0.0035181132417687862 
		35 0.90155381259438894 36 0.064277253451734323;
	setAttr ".wl[2100:2199].w"
		5 12 0.029601601729919495 13 0.0063958159926408749 32 0.007601894344176385 
		35 0.46906963531466073 36 0.4873310526186026
		5 12 0.052955532254972751 13 0.012850434174763965 32 0.016371021907563552 
		35 0.44020527209538718 36 0.47761773956731263
		5 12 0.017362430836623272 13 0.002287657101865217 32 0.0025340048908030753 
		35 0.87676662146167172 36 0.10104928570903665
		5 11 0.04394878580907928 12 0.52000708879846713 13 0.056497902530404792 
		35 0.26180539965341942 36 0.11774082320862944
		5 10 0.038771579269796061 11 0.16706326335404956 12 0.63190473484797582 
		13 0.060960856480546784 35 0.10129956604763179
		5 11 0.17000508665246972 12 0.66005769792918034 13 0.03634871578569597 
		35 0.082720577749549593 36 0.050867921883104419
		5 11 0.10197475064594375 12 0.64960665893138214 13 0.075856444219870228 
		35 0.14016950295701622 36 0.03239264324578759
		5 11 0.085893753467211689 12 0.61467367283794927 13 0.05230276837626692 
		35 0.16299114349650404 36 0.084138661822068112
		5 12 0.218103493314459 13 0.026791450496649671 32 0.018289869463553994 
		35 0.45542129855751784 36 0.28139388816781946
		5 11 0.039738982849448601 12 0.23521226779971227 13 0.03223831220047059 
		35 0.33573623079115028 36 0.35707420635921827
		5 11 0.044300184713484111 12 0.41705994027574689 13 0.041215988603626623 
		35 0.28731372441541853 36 0.21011016199172375
		5 12 0.33559179048780441 13 0.039179919248390156 32 0.021333341606440435 
		35 0.45685371164015665 36 0.14704123701720831
		5 10 0.042487986536666626 11 0.20680039258909966 12 0.59351353952318719 
		35 0.083792793909690674 36 0.073405287441355924
		5 11 0.16117225596145429 12 0.52911973472385276 13 0.035625972341934271 
		35 0.13394347192702533 36 0.14013856504573324
		5 11 0.10219970928362528 12 0.554563631559709 13 0.042582746428229727 
		35 0.16603623112687896 36 0.1346176816015571
		5 11 0.090882829366667139 12 0.39793643233970327 13 0.039210725896322331 
		35 0.22788061896570069 36 0.24408939343160657
		5 11 0.071196167364660057 12 0.3067144810050223 13 0.041711914798464568 
		35 0.28560794905559111 36 0.294769487776262
		5 11 0.11684066146250997 12 0.60660282570576163 13 0.047910475390567663 
		35 0.12667415578572935 36 0.10197188165543136
		5 0 0.12640702889082003 1 0.2614263960280146 2 0.14970331117872293 
		6 0.33605623501162313 10 0.1264070288908192
		5 12 0.67489501524616136 13 0.066446821552420904 32 0.055153883645843477 
		35 0.12472940265450501 36 0.078774876901069199
		5 12 0.0026789126991709571 32 0.002229216679603822 35 0.34297773016574273 
		36 0.65061978434664036 37 0.0014943561088420609
		5 12 0.0047126378142876334 32 0.0040016717360316272 35 0.3350159589101408 
		36 0.65277198897121547 37 0.0034977425683244802
		5 11 0.07845545855463168 12 0.62377737135775468 13 0.11688514762820902 
		32 0.022793813710781499 35 0.15808820874862312
		5 10 0.030375383999274062 11 0.13138974294714198 12 0.62736719401668184 
		13 0.089378618029291659 35 0.12148906100761056
		5 11 0.10170318297933151 12 0.62142542825723723 13 0.068532680103952581 
		35 0.1548568615286833 36 0.053481847130795478
		5 10 0.04062857112277176 11 0.18511278466558642 12 0.64479894004906724 
		13 0.045382430258830105 35 0.084077273903744379
		5 11 0.069414524408091705 12 0.5630514226797142 13 0.083033021233517024 
		35 0.21721741418665458 36 0.067283617492022579
		5 11 0.16933628142452903 12 0.68180370988995431 13 0.031325342282101168 
		35 0.066376248726885495 36 0.05115841767653001
		5 11 0.095699625441191052 12 0.78825401336653433 13 0.032833737423516578 
		35 0.051131123047767499 36 0.032081500720990551
		5 11 0.16801989634450551 12 0.55084184792098112 13 0.039979064889824271 
		35 0.12612210854594827 36 0.11503708229874067
		5 11 0.1319954127654345 12 0.45387829095656995 13 0.042004066241142939 
		35 0.18519420136898559 36 0.18692802866786704
		5 12 0.36538747955764173 13 0.074175176988365135 32 0.15539144961387943 
		33 0.039614413717139564 35 0.36543148012297405
		5 12 0.33080904244555814 13 0.12731399149266334 32 0.17471190302576128 
		33 0.036356020590458879 35 0.33080904244555837
		5 12 0.37750192295097129 32 0.37750192295097129 33 0.12186570891424089 
		35 0.072619743527787814 36 0.050510701656028813
		5 12 0.28366785227853208 32 0.28366785227853208 33 0.12305348069754643 
		35 0.16684638694196871 36 0.14276442780342077
		5 12 0.31186887200494551 13 0.052763735449652238 32 0.19674162972856435 
		33 0.062353329039726076 35 0.37627243377711189
		5 12 0.22233443847409004 32 0.22749546134544771 33 0.10049755505295409 
		35 0.39164642495818414 36 0.058026120169324034
		5 12 0.18083802772475632 32 0.18132605716269407 33 0.10659582871252074 
		35 0.27076813599770172 36 0.26047195040232712
		5 12 0.13360860435145244 32 0.14450305972174518 33 0.10899118212905799 
		35 0.31616477000822896 36 0.29673238378951539
		5 12 0.14672714277459181 32 0.16213366070378735 33 0.11816476654909654 
		35 0.32417262776500561 36 0.2488018022075188
		5 12 0.19896488972551357 32 0.21926213580648113 33 0.13600591085660416 
		35 0.31674466989337502 36 0.12902239371802618
		5 12 0.1371984317528388 32 0.14201687376721042 33 0.10094993240135498 
		35 0.31242678013785852 36 0.30740798194073721
		5 12 0.4005166658156335 13 0.030453083695275825 32 0.01527395713365157 
		35 0.52887747283615438 36 0.024878820519284781
		5 12 0.46661363259017952 13 0.046177941854635134 32 0.012113548399078321 
		35 0.46661363259017929 36 0.008481244565927781
		5 12 0.44785285586793672 13 0.088444084348607496 32 0.011629531471438633 
		35 0.44785285586793661 36 0.0042206724440806429
		5 12 0.41203310574380847 13 0.16203926183258752 32 0.011406942429729804 
		33 0.0035201601854628131 35 0.41100052980841129
		5 12 0.41050273625835298 13 0.079392189023693965 32 0.20330085707291382 
		35 0.18239313705625501 36 0.12441108058878421
		5 12 0.16386499915204922 13 0.03859667978873433 32 0.093554554333785234 
		35 0.35829933697924055 36 0.34568442974619074
		5 12 0.16018364798494608 13 0.029507987857517726 32 0.029344166938697621 
		35 0.38447042738457388 36 0.39649376983426465
		5 12 0.098895859973140987 13 0.01776473390701647 32 0.01708368139544 
		35 0.423765628009586 36 0.44249009671481665
		5 12 0.095729806861551969 13 0.01250727446805029 32 0.010288633789404967 
		35 0.64619900901415916 36 0.23527527586683358
		5 12 0.1540841062561156 13 0.018494316371125422 32 0.013473626354951487 
		35 0.66732466343829511 36 0.14662328757951237
		5 12 0.27430622096278717 13 0.028658429056204259 32 0.017804308749541708 
		35 0.60504209017076316 36 0.074188951060703778
		5 12 0.011097143655908593 13 0.0033533468081095703 32 0.0053579139876203524 
		35 0.44315375940531976 36 0.53703783614304168
		5 12 0.011910890362007136 13 0.002264807067868102 32 0.0037595127054529734 
		35 0.60068027871012886 36 0.38138451115454308
		5 12 0.0053955572415875638 13 0.0012812346969317343 32 0.001858390363524141 
		35 0.47476285702509141 36 0.51670196067286511
		5 37 0.72434928304177859 38 0.26486325495476348 39 0.0079645493332368856 
		40 0.0013054640190798029 51 0.0015174486511412349
		5 37 0.98076327002390595 38 0.015784194507960349 39 0.0022912014498108666 
		40 0.00061916894103694489 51 0.00054216507728586255
		5 37 0.99268909409710138 38 0.0060452204241196305 39 0.00088978829731846756 
		40 0.00022493749763748041 51 0.00015095968382307693
		5 37 0.87627147025865415 38 0.12098067768972372 39 0.0022331483656340698 
		40 0.00029732209014643739 51 0.00021738159584168152
		5 37 0.96004096026437324 38 0.031093723702559972 39 0.0065645867186005435 
		40 0.0015525366808382293 41 0.00074819263362813017
		5 37 0.58910997970587931 38 0.36218158589048272 39 0.043262481602751569 
		40 0.0040117060410127595 41 0.0014342467598734822
		5 37 0.93218582454345444 38 0.051401344184811661 39 0.011977858356516314 
		40 0.0029803724120834357 41 0.0014546005031340799
		5 37 0.55631869160947234 38 0.37057534381171997 39 0.063973714216651212 
		40 0.006701112161437997 41 0.0024311382007185501
		5 37 0.70156088917157422 38 0.28376077861214943 39 0.010197327050257393 
		48 0.0019014556451837097 51 0.0025795495208352369
		5 37 0.96452366065394246 38 0.028950499339919146 39 0.0041489335801234506 
		40 0.0011690905598791543 51 0.001207815866135783
		5 37 0.73120083722844564 38 0.25570666096414035 39 0.010702389639338178 
		40 0.0015693580228696826 51 0.00082075414520607604
		5 37 0.98410298461116186 38 0.012694796562068855 39 0.0021868101705832181 
		40 0.00061965829914264212 51 0.00039575035704341203
		5 37 0.97814218077072113 38 0.017605873840500781 39 0.0027075760290806955 
		40 0.00078861852981497883 51 0.0007557508298823959
		5 37 0.72649530139583041 38 0.26232415710712659 39 0.008035588988654252 
		40 0.0014240781927816297 51 0.0017208743156068814
		5 37 0.96886977767449922 38 0.024262670131277298 39 0.0048598743368580806 
		40 0.0013262097402550936 41 0.00068146811711031056
		5 37 0.62605545484084835 38 0.33330895313726816 39 0.034729597446332097 
		40 0.004264693224752778 41 0.0016413013507987056
		5 36 0.0025238062126912743 37 0.992004576449391 38 0.0036204411150275598 
		39 0.0012899842444703622 40 0.00056119197841977277
		5 36 0.0036548217219955592 37 0.98896428385324475 38 0.0049888437493672434 
		39 0.001674653528648244 40 0.00071739714674421871
		5 36 0.0034997136136719295 37 0.98825687628878223 38 0.0055752586574873402 
		39 0.001874253227812142 40 0.00079389821224638618
		5 36 0.0014415685566026906 37 0.99457367947043895 38 0.0026593670682410458 
		39 0.00093290575109022521 40 0.00039247915362717353
		5 36 0.00079872532559471592 37 0.99650941849229679 38 0.0017595140190175855 
		39 0.00065634850114699018 40 0.00027599366194376238
		5 36 0.0013906468851040737 37 0.99228548405896144 38 0.0039677762542574277 
		39 0.0016498882178022211 40 0.0007062045838747478
		5 36 0.0023069462246143005 37 0.99113808667371617 38 0.0042443474459980786 
		39 0.0016090123791293945 40 0.00070160727654206858
		5 36 0.0027600784482279955 37 0.98632200504339362 38 0.006834182389987742 
		39 0.0028406032089051013 40 0.0012431309094854774
		5 35 1.7360361799954301e-05 36 0.48999512087025082 37 0.50995073230225196 
		38 2.2991543472952392e-05 39 1.3794922224324632e-05
		5 35 6.8292894592475825e-05 36 0.49947261190138648 37 0.50031966385828452 
		38 8.7643061874046388e-05 39 5.1788283862446914e-05
		5 35 0.00010682407804947352 36 0.49796246397695237 37 0.50170483006034428 
		38 0.00014149976395006009 39 8.4382120703860365e-05
		5 35 8.2774942446926981e-05 36 0.49350531154124627 37 0.50623344076844679 
		38 0.00011072912547478244 39 6.7743622385166427e-05
		5 35 0.00021716371079995029 36 0.49044077255064722 37 0.50885991380695283 
		38 0.00029555794379047134 39 0.00018659198780959928
		5 36 0.24577354101699989 37 0.75287385059172041 38 0.00068986938942254257 
		39 0.00041183103016799265 40 0.00025090797168927443
		5 35 0.00018797611583058521 36 0.48351644236771535 37 0.51587605586429852 
		38 0.00025499980448151434 39 0.00016452584767403646
		5 36 0.23999263637474191 37 0.75876373738638503 38 0.00062098731561485579 
		39 0.000383641011021292 40 0.00023899791223698388
		5 36 0.25020835808519104 37 0.74741460029179518 38 0.0011899384128209079 
		39 0.00073393835926481707 40 0.00045316485092803858
		5 36 0.27102580557163425 37 0.72765591212628422 38 0.00068784036946257273 
		39 0.00039420956406048681 40 0.00023623236855858535
		5 36 0.23649711498986839 37 0.76251161627996455 38 0.00052813541960131268 
		39 0.00029135430977063402 40 0.00017177900079516872
		5 35 3.606215987009286e-05 36 0.16117674775419794 37 0.83863121223341031 
		38 9.9450298254387216e-05 39 5.6527554267292127e-05
		5 36 0.16492960202876469 37 0.83453835565237 38 0.00027403149352275136 
		39 0.00016046305478332901 40 9.7547770559161569e-05
		5 36 0.035970687386738601 37 0.95860903733139136 38 0.0028865780954162638 
		39 0.0016225551587257384 40 0.00091114202772794048
		5 36 0.031157935299993892 37 0.96400212234557014 38 0.0026403852691219529 
		39 0.0014223364941499748 40 0.00077722059116402064
		5 36 0.037866459672823601 37 0.95698900842581136 38 0.0028767808372977136 
		39 0.001474696040693668 40 0.00079305502337363731
		5 36 0.041882930817936322 37 0.95318798403067784 38 0.0028486104890777441 
		39 0.0013626215326651959 40 0.00071785312964295085
		5 36 0.046255471715097154 37 0.9490098947557486 38 0.0027754070636560675 
		39 0.0012854593303330212 40 0.00067376713516520143
		5 36 0.038923131248621817 37 0.95724074922894808 38 0.0021786015708295217 
		39 0.0010757992762153252 40 0.00058171867538530395
		5 36 0.044839555088544522 37 0.9494889926016723 38 0.0030906464594772707 
		39 0.0016578518717387275 40 0.00092295397856710193;
	setAttr ".wl[2200:2299].w"
		5 35 8.2254726417520281e-05 36 0.21044917239613675 37 0.78908300749080729 
		38 0.00024838959394267321 39 0.00013717579269574744
		5 36 0.052377144232159001 37 0.94297566678527123 38 0.0026905380522306392 
		39 0.0012756087665578627 40 0.00068104216378133732
		5 35 0.00042309070782129712 36 0.48390692839786359 37 0.51469525506911162 
		38 0.0005877404655879393 39 0.00038698535961560884
		5 36 0.27746824486566379 37 0.71995741506669975 38 0.0012696816258100649 
		39 0.00080173589981095018 40 0.0005029225420154083
		5 36 0.037421971064332066 37 0.95584544984129072 38 0.0035833990776491277 
		39 0.0020217735586508089 40 0.0011274064580771639
		5 36 0.00070856184524955971 37 0.99636696634043131 38 0.0018717523140132867 
		39 0.00074039043180887398 40 0.0003123290684969771
		5 37 0.99122756732243 38 0.0071482996629981315 39 0.0011990831298240646 
		40 0.00028522932586610224 41 0.00013982055888176771
		5 37 0.82615625919228541 38 0.16790152070429157 39 0.005201744218467752 
		40 0.00053333439713796021 51 0.00020714148781731843
		5 37 0.76986958170068753 38 0.22200344424360954 39 0.0062392405537058156 
		40 0.0010196798632148066 51 0.00086805363878228892
		5 37 0.9852748476442601 38 0.011835558222222238 39 0.0018914968865424025 
		40 0.0005487942775223094 51 0.00044930296945279821
		5 36 0.0029667648811724529 37 0.99133909462557757 38 0.0038182105691313465 
		39 0.0013095340566730059 40 0.00056639586744566893
		5 36 0.049844475693102887 37 0.94539370051958938 38 0.0027926919674747153 
		39 0.0012900697373728909 40 0.00067906208246014659
		5 36 0.25010654530785759 37 0.74902354913501079 38 0.00046541223498269992 
		39 0.00025448936258813703 40 0.00015000395956071391
		5 35 0.00013209723886464512 36 0.49841450646326435 37 0.50117297477254497 
		38 0.00017665982037973112 39 0.00010376170494631752
		5 12 0.0020349816855574575 32 0.0008734268706350164 35 0.08774215229859729 
		36 0.90802433375031721 37 0.0013251053948930309
		5 12 0.00060642542684167058 32 0.00027631682338514596 35 0.0082952130667429489 
		36 0.9873904655857495 37 0.0034315790972807214
		5 12 0.00082763024185417947 32 0.00044186071011634672 35 0.012048143637269991 
		36 0.9800568431053911 37 0.0066255223053683903
		5 12 0.0019353916145121177 32 0.0010367780389031877 35 0.073199827685751132 
		36 0.9213742323970131 37 0.0024537702638204348
		5 12 0.00095960270107213843 32 0.00058422140344515652 35 0.014953176084920137 
		36 0.9733925075897204 37 0.01011049222084218
		5 12 0.0016496648750106285 32 0.0010625917871948823 35 0.063832347285811761 
		36 0.93007137399530149 37 0.0033840220566812833
		5 12 0.00064811817225958891 32 0.0004001804510670795 35 0.035669686730675068 
		36 0.96224908219129723 37 0.0010329324547010629
		5 12 0.00028203103883691093 32 0.00016662324688929912 35 0.0052447880880934104 
		36 0.9918846193680777 37 0.0024219382581027065
		5 12 0.0010138090894913508 32 0.00052705318605663688 35 0.015795257767031726 
		36 0.97664269154376859 37 0.0060211884136517112
		5 12 0.0019996226087081763 32 0.0010310299901070111 35 0.084363622572508443 
		36 0.91055553395659727 37 0.0020501908720791931
		5 12 0.0048234427605223576 32 0.0015879946962152052 35 0.1717510560704319 
		36 0.82028693413816878 37 0.0015505723346618404
		5 12 0.0033547968103989786 32 0.0012792236763441006 35 0.035428458690653725 
		36 0.94961411754165936 37 0.010323403280943827
		5 12 0.00052373876852795584 32 0.00020527425122223559 35 0.0067601868219838322 
		36 0.99046795136139509 37 0.0020428487968708955
		5 12 0.001669912515528232 32 0.00059590881618669378 35 0.080853293931090142 
		36 0.91617832736772442 37 0.00070255736947051985
		5 12 0.00020046590332949244 35 0.0011437914701205845 36 0.97245502460920452 
		37 0.026085952831410096 38 0.0001147651859353348
		5 12 0.00026491419405438567 35 0.0017103374869729387 36 0.95585683804423116 
		37 0.041984642630126974 38 0.00018326764461452718
		5 12 0.0002759357535476609 35 0.0019795836365557561 36 0.94723342230182361 
		37 0.050291195362040846 38 0.00021986294603218529
		5 12 0.00013653776575271137 35 0.0010787902448272343 36 0.97681498480993567 
		37 0.021867030229621432 38 0.00010265694986279659
		5 12 0.00048311251806589103 35 0.0033741955041451588 36 0.94297099040899823 
		37 0.052839923736074983 38 0.00033177783271581254
		5 12 0.0022195610754661798 35 0.0108571658833345 36 0.87829597465398812 
		37 0.10756665960858004 38 0.0010606387786312053
		5 11 0.00012000127035397638 12 0.00023553588096155746 35 0.0012467350599366547 
		36 0.9758869658745114 37 0.022510761914236486
		5 35 0.00017042078656596808 36 0.71110240441353911 37 0.28856336530155052 
		38 9.9656168584757586e-05 39 6.4153329759715432e-05
		5 35 0.00024014263003018904 36 0.69850439338997661 37 0.30104138366393296 
		38 0.0001313802584536644 39 8.2700057606660671e-05
		5 35 0.00031684763068391344 36 0.64838661285896104 37 0.35100101122703975 
		38 0.00018236733171431258 39 0.00011316095160103699
		5 35 7.0828774070211433e-05 36 0.81672677882348199 37 0.1831383391289545 
		38 3.9161362648573172e-05 39 2.4891910844723162e-05
		5 35 0.00024085291061838691 36 0.78037815370452679 37 0.2191824158354107 
		38 0.00011966162834570631 39 7.8915921098422835e-05
		5 35 0.0012200459839889052 36 0.59609131678697547 37 0.4013996966070732 
		38 0.00076224868008272287 39 0.00052669194187969991
		5 35 0.00042800614524522322 36 0.65094651473772558 37 0.34820332917319674 
		38 0.00025402146241342054 39 0.00016812848141913931
		5 12 0.0035728322759958388 32 0.0015652340126179663 35 0.04117684343836054 
		36 0.93981573511016447 37 0.013869355162861155
		5 12 0.0055662589792290279 32 0.0022307005523255329 35 0.16477819346722605 
		36 0.82434055490815528 37 0.0030842920930640454
		5 12 0.0017557584702217364 35 0.0099888217856214222 36 0.88197716065572473 
		37 0.10528372202106288 38 0.00099453706736932776
		5 35 0.00090471110006111954 36 0.60927906765737061 37 0.38886746379306053 
		38 0.00056409438441504733 39 0.00038466306509274878
		5 12 0.0053674880327395941 13 0.0011187181481195131 32 0.0015567914405675812 
		35 0.44483791882393819 36 0.54711908355463512
		5 12 0.0031958548745789355 13 0.00077965813299729831 32 0.0010808886131067558 
		35 0.31308921994517469 36 0.68185437843414232
		5 12 0.0042956210499881173 13 0.0012676779084491727 32 0.0018941123806572263 
		35 0.29355565572681191 36 0.69898693293409353
		5 12 0.0038187577514544402 32 0.0023105946684318268 35 0.23548461981077926 
		36 0.75607228366261958 37 0.0023137441067148682
		5 12 0.0029963498603200137 32 0.0021646990714814583 35 0.20071737139472348 
		36 0.79129904389685268 37 0.0028225357766224154
		5 12 0.001230127707750672 32 0.00079673799936516403 35 0.15007850440341347 
		36 0.84709280840309809 37 0.00080182148637274555
		5 12 0.0029112705702153199 32 0.0015138990711642721 35 0.26018180073491975 
		36 0.73432506516913221 37 0.0010679644545685369
		5 12 0.006839441007794469 13 0.0016046028464665033 32 0.0024803849683407131 
		35 0.37102638635836876 36 0.61804918481902948
		5 12 0.0029143961270204754 13 0.0006300556326433236 32 0.00087369900938814599 
		35 0.42164189384965362 36 0.57393995538129439
		5 12 0.0020625683141428084 32 0.00068117935764346255 35 0.10610658649427164 
		36 0.89049115095105369 37 0.00065851488288830036
		5 12 0.0010736991162422086 32 0.00039993691280527016 35 0.012909407067530332 
		36 0.98215304149239824 37 0.0034639154110239529
		5 12 0.00064478417099616289 35 0.003309744269707723 36 0.95062400631521071 
		37 0.045122186201790135 38 0.00029927904229532952
		5 35 0.00084176600517026502 36 0.66887476242669941 37 0.32954540796034437 
		38 0.00043823307561461543 39 0.00029983053217129499
		5 12 0.0013816508767670421 32 0.00099647205963808569 35 0.14149785110982632 
		36 0.85487197364793599 37 0.0012520523058325626
		5 12 0.00091658674163892328 32 0.00061264748208269659 35 0.044383579072684559 
		36 0.95220345970433484 37 0.0018837269992589471
		5 12 0.00051178478977828383 32 0.00032502075025240602 35 0.0092286752210157634 
		36 0.98452356461311941 37 0.0054109546258342394
		5 12 0.00027954966602878391 35 0.0021723886087011814 36 0.94552979819715821 
		37 0.051780068906145296 38 0.00023819462196649909
		5 35 0.0003018897883407287 36 0.63206551818821743 37 0.36733571344068316 
		38 0.00018331076575664926 39 0.00011356781700199751
		5 35 0.00035011242546861387 36 0.48420924286001238 37 0.51462943446769738 
		38 0.00049178074671869646 39 0.00031942950010283082
		5 35 4.3386744948702308e-05 36 0.48820005597139171 37 0.51166484483903685 
		38 5.6581215180178667e-05 39 3.5131229442546633e-05
		5 12 0.022208729038594242 13 0.0038606539817065567 32 0.0043812230319712434 
		35 0.64612603632971599 36 0.323423357618012
		5 12 0.080707650472509204 13 0.012712467469522358 32 0.011532368538993122 
		35 0.50549689915994334 36 0.38955061435903204
		5 11 0.022278173309820379 12 0.20376637037764367 13 0.026704621004344283 
		35 0.38718998097636081 36 0.36006085433183088
		5 11 0.059411744823087545 12 0.38375139393026975 13 0.037855896701311197 
		35 0.26452893239518616 36 0.25445203215014528
		5 11 0.11978321850247166 12 0.51324008768568641 13 0.038545939651145562 
		35 0.16403231194395887 36 0.16439844221673744
		5 10 0.04344276073711132 11 0.22427117970950125 12 0.57873584243035192 
		35 0.077327082071150008 36 0.076223135051885549
		5 12 0.13204997186189935 13 0.028804060270142057 32 0.039049829333949702 
		35 0.40357911867587026 36 0.39651701985813859
		5 11 0.047141434942077912 12 0.28868423333507742 32 0.045560244841484195 
		35 0.3202246984041211 36 0.29838938847723939
		5 11 0.10076408099696767 12 0.44713585278229806 13 0.048319218767265526 
		35 0.21064977975055579 36 0.19313106770291302
		5 10 0.037401142610553904 11 0.20801729175167563 12 0.54679232701986535 
		35 0.10358111845003042 36 0.10420812016787474
		5 10 0.051049083488181483 11 0.29593001500866839 12 0.54328991599695575 
		35 0.053990430424970447 36 0.055740555081224004
		5 10 0.04602702341882417 11 0.3333541142465713 12 0.5618358991516339 
		35 0.030941087039293273 36 0.027841876143677322
		5 10 0.016699433097641162 11 0.19698493131846434 12 0.76345276919719973 
		13 0.0099975609947425253 35 0.012865305391952348
		5 10 0.030353451704849124 11 0.24244429078360699 12 0.66522896174933277 
		35 0.034881423169742992 36 0.027091872592468133
		5 10 0.03722481119683925 11 0.24084383376805574 12 0.59784323532564942 
		35 0.065605388533216319 36 0.058482731176239276
		5 10 0.020508412609112542 11 0.31164474217583943 12 0.65660662945532 
		13 0.0051193839687804039 35 0.0061208317909476747
		5 10 0.03362416199027795 11 0.33488494801495128 12 0.60580802849728055 
		35 0.014510480570747776 36 0.011172380926742454
		5 12 0.0096162863579669754 13 0.0037519371756659678 32 0.046039311271807534 
		33 0.47029623259727976 34 0.47029623259727976
		5 12 0.0092535260250053153 13 0.0036751276180864382 32 0.042117672222703448 
		33 0.47247683706710242 34 0.47247683706710242
		5 12 0.0092140667268646691 13 0.0040199411811291628 32 0.035019962081537175 
		33 0.47587301500523449 34 0.47587301500523449
		5 12 0.011838250287717695 13 0.0052982485767105727 32 0.044554259731255277 
		33 0.4691546207021583 34 0.4691546207021583
		5 12 0.010170689971208119 13 0.0042909439734237949 32 0.043119101780357501 
		33 0.47120963213750527 34 0.47120963213750527
		5 12 0.0085479642307090316 13 0.0036321063925047951 32 0.035213688840189133 
		33 0.47630312026829857 34 0.47630312026829846
		5 12 0.013209048223418318 13 0.0061005134797560371 32 0.045355457736776995 
		33 0.46766749028002436 34 0.46766749028002436
		5 12 0.016943610874731653 13 0.0081974180486951778 32 0.055388492132731025 
		33 0.45973523947192124 34 0.45973523947192102
		5 12 0.016646383143450533 13 0.0080740119041968986 32 0.054956334571431814 
		33 0.46016163519046038 34 0.46016163519046038
		5 12 0.011462017771287672 13 0.0051883386577112629 32 0.040751775271584814 
		33 0.47129893414970814 34 0.47129893414970814
		5 12 0.01049013596254476 13 0.0041185877000579733 32 0.050700370926592547 
		33 0.4673454527054024 34 0.4673454527054024
		5 12 0.018695889814646711 13 0.0089866724511307103 32 0.066031587902113498 
		33 0.45314292491605457 34 0.45314292491605446
		5 12 0.019381163090103938 13 0.0092876605037519409 32 0.068555266904262988 
		33 0.45138795475094062 34 0.45138795475094051
		5 12 0.015762215321356778 13 0.006909880091941099 32 0.064859627967160702 
		33 0.45623413830977078 34 0.45623413830977078
		5 12 0.015083901013184428 13 0.0067027914977497785 32 0.060675427574986104 
		33 0.45876893995703988 34 0.45876893995703988
		5 12 0.015197488725310843 13 0.0069917385572068223 32 0.056186862633419328 
		33 0.46081195504203148 34 0.46081195504203148
		5 12 0.013788189442984948 13 0.0060845253399556126 32 0.055075448430073587 
		33 0.46252591839349294 34 0.46252591839349294;
	setAttr ".wl[2300:2399].w"
		5 12 0.014194068165872214 13 0.006627128880411024 32 0.049455772114626963 
		33 0.4648615154195449 34 0.4648615154195449
		5 12 0.015554803030225601 13 0.0072952461075467268 32 0.054860545812859859 
		33 0.46114470252468398 34 0.46114470252468387
		5 12 0.01102294904410336 13 0.0049319271381158851 32 0.040177458352441041 
		33 0.47193383273266987 34 0.47193383273266987
		5 12 0.019649044706087873 13 0.0096636460844780701 32 0.065216815524773805 
		33 0.4527352468423303 34 0.45273524684233007
		5 12 0.018674513603988238 13 0.0091376761385716515 32 0.062812724575603357 
		33 0.45468754284091834 34 0.45468754284091834
		5 12 0.015530605668231503 13 0.0073352210807759912 32 0.052281201401697022 
		33 0.46242648592464791 34 0.46242648592464769
		5 12 0.017567409643139211 13 0.0083676506367895646 32 0.060084247575379453 
		33 0.45699034607234584 34 0.45699034607234584
		5 12 0.013494514377817643 13 0.0055547919939402104 32 0.061525112393303258 
		33 0.4597127906174695 34 0.4597127906174695
		5 12 0.011968727264023878 13 0.0048609636864429644 32 0.05487932272537429 
		33 0.46414549316207943 34 0.46414549316207943
		5 12 0.010958450756134526 13 0.0044444488266963036 32 0.050614447621086321 
		33 0.46699132639804142 34 0.46699132639804142
		5 12 0.013290188471133883 13 0.0056058991331275204 32 0.058465344753385315 
		33 0.46131928382117665 34 0.46131928382117665
		5 12 0.01737762523542043 13 0.0080982993748806575 32 0.062736287222924625 
		33 0.45589389408338715 34 0.45589389408338715
		5 12 0.0137751954795682 13 0.0059213681494527989 32 0.057173322878069137 
		33 0.46156505674645498 34 0.46156505674645487
		5 12 0.010287003735268044 13 0.0044163904503054302 32 0.040067130133184282 
		33 0.47261473784062108 34 0.47261473784062108
		5 12 0.01046894784434561 13 0.0043257306575205864 32 0.046297563672839 
		33 0.46945387891264739 34 0.46945387891264739
		5 12 0.013460752947221634 13 0.006187355405133258 32 0.046493066276116199 
		33 0.46692941268576449 34 0.46692941268576438
		5 12 0.0071598457895390832 13 0.0027846712665220139 32 0.0341330369001039 
		33 0.47796122302191751 34 0.47796122302191751
		5 12 0.0091760398830277069 13 0.0040511026495856752 32 0.033880276641616372 
		33 0.47644629041288517 34 0.47644629041288517
		5 12 0.0069867926381003498 13 0.0029040156793847041 32 0.029341949552188447 
		33 0.4803836210651633 34 0.48038362106516319
		5 12 0.019519347501593891 13 0.010437141641554303 32 0.053452840534206042 
		33 0.45829533516132287 34 0.45829533516132287
		5 12 0.025805310950806449 13 0.014851043562578372 32 0.069097492659951895 
		33 0.44512307641333171 34 0.4451230764133316
		5 12 0.046434602946302944 32 0.13476984659534183 33 0.39889907708301409 
		34 0.39403289820007342 35 0.025863575175267755
		5 12 0.055365115448996187 32 0.15705505563077424 33 0.38771951606412114 
		34 0.36862680045969343 35 0.031233512396415062
		5 12 0.025158514867967025 13 0.013374596651930373 32 0.063248469941053514 
		33 0.44910920926952452 34 0.44910920926952452
		5 12 0.032303123023727683 13 0.019626794675679609 32 0.082705186824232529 
		33 0.4326824477381801 34 0.4326824477381801
		5 12 0.030822036658448921 32 0.085230862575809835 33 0.43307495545976055 
		34 0.43307495545976044 35 0.017797189846220262
		5 12 0.03243915141710281 32 0.089903470025149035 33 0.42944826341973824 
		34 0.42944826341973824 35 0.01876085171827167
		5 12 0.0054322038887667391 32 0.022882667212378222 33 0.48474719139823136 
		34 0.48474719139823158 35 0.0021907461023919108
		5 12 0.00049735202390205401 32 0.0034194520041352238 33 0.49851176188865648 
		34 0.49742815727773271 35 0.00014327680557363204
		5 12 0.00095814200646641913 32 0.0080133146311128917 33 0.60211446318898165 
		34 0.38866483773690996 35 0.00024924243652894206
		5 12 0.064095287364854092 32 0.18276596509394033 33 0.38330893104501806 
		34 0.33445900331674883 35 0.035370813179438694
		5 12 0.029070950835478615 13 0.014266384132222122 32 0.071601804469678981 
		33 0.44253043028131028 34 0.44253043028131006
		5 12 0.043405961362581638 32 0.14606096945059455 33 0.39914725737137191 
		34 0.39914725737137213 35 0.012238554444079694
		5 12 0.048425354685735493 32 0.13752950745552067 33 0.39895916504240986 
		34 0.39895916504240986 35 0.016126807773924032
		5 12 0.04673864165327659 32 0.12125121246714332 33 0.40715822197896395 
		34 0.40715822197896395 35 0.017693701921652084
		5 12 0.042134362570095292 32 0.10639180077806537 33 0.41721772716765193 
		34 0.41721772716765193 35 0.017038382316535542
		5 12 0.038353575990073947 32 0.096099449695663752 33 0.42471703276128586 
		34 0.42471703276128586 35 0.016112908791690504
		5 12 0.036117725193332492 32 0.088548020989378542 33 0.42964938307223599 
		34 0.42964938307223621 35 0.016035487672816602
		5 12 0.026275919658492759 13 0.013399616763540874 32 0.065656820686399248 
		33 0.44733382144578354 34 0.44733382144578354
		5 12 0.027979605027255289 13 0.016418113249236775 32 0.073715190508310324 
		33 0.4409435456075988 34 0.4409435456075988
		5 12 0.047071493917607773 32 0.16963942305832741 33 0.42471411341379478 
		34 0.33744155921255692 35 0.021133410397713052
		5 12 0.036088109209954096 32 0.15975116368422049 33 0.46562459258844052 
		34 0.32477382664249121 35 0.013762307874893716
		5 12 0.042435637379730835 32 0.16845587906091156 33 0.44334107411239598 
		34 0.32820429229829573 35 0.017563117148665808
		5 12 0.038824234428300353 32 0.10793940058059069 33 0.41534709622660737 
		34 0.41534709622660759 35 0.022542172537893826
		5 12 0.040877554364725011 32 0.11508005215713608 33 0.41027943424020347 
		34 0.41027943424020324 35 0.023483524997732354
		5 12 0.022721484805097697 13 0.012226667260472945 32 0.058885240610531832 
		33 0.45308330366194882 34 0.45308330366194871
		5 12 0.020377230480036524 13 0.010941819953688649 32 0.05488998148997621 
		33 0.45689548403814934 34 0.45689548403814934
		5 12 0.020718530277823471 13 0.011330508755625314 32 0.057701740308809757 
		33 0.45512461032887075 34 0.45512461032887075
		5 12 0.031167571167478363 32 0.08875283752580411 33 0.43122810440166925 
		34 0.43122810440166925 35 0.017623382503379047
		5 12 0.010983749091876834 32 0.040096490998270777 33 0.47197142902379779 
		34 0.47197142902379779 35 0.0049769018622567258
		5 12 0.007431244968357893 32 0.040405783141788193 33 0.48673664135438982 
		34 0.46287800012893482 35 0.0025483304065291698
		5 12 0.033027400011546117 32 0.098813271635649819 33 0.42509620084885158 
		34 0.42509620084885158 35 0.017966926655100891
		5 12 0.05478838199464179 32 0.17737719194930179 33 0.40524004396303492 
		34 0.33567658604907707 35 0.02691779604394446
		5 12 0.032184575672073168 13 0.01945536138032462 32 0.083191967110240767 
		33 0.43258404791868077 34 0.43258404791868077
		5 12 0.027520084425002336 32 0.077080520370980524 33 0.43989102009242909 
		34 0.43989102009242909 35 0.015617355019158964
		5 12 0.042427516224469559 32 0.12091352824953946 33 0.40628038695893937 
		34 0.40628038695893937 35 0.024098181608112265
		5 12 0.025911936057202833 13 0.014603497090018368 32 0.072737261287974281 
		33 0.44337365278240226 34 0.44337365278240226
		5 12 0.018451527102848767 13 0.0098166554982467291 32 0.052140557830472868 
		33 0.45979562978421584 34 0.45979562978421573
		5 12 0.017818538700687191 13 0.0093985979459365841 32 0.050619218175728273 
		33 0.46108182258882396 34 0.46108182258882396
		5 12 0.017982034436416858 13 0.009494025367408199 32 0.050792111531824245 
		33 0.46086591433217533 34 0.46086591433217533
		5 12 0.018244853502495578 13 0.0096519676462959603 32 0.051192302604424748 
		33 0.46045543812339201 34 0.46045543812339179
		5 12 0.018585773972426542 13 0.009858632267103009 32 0.051760743708706786 
		33 0.45989742502588188 34 0.45989742502588188
		5 12 0.019267212592269885 13 0.01036016945019412 32 0.054196528392347496 
		33 0.45808804478259429 34 0.45808804478259429
		5 12 0.019310158273607183 32 0.062456036049736097 33 0.45425142011582736 
		34 0.45425142011582736 35 0.0097309654450019531
		5 12 0.028202369287046811 32 0.082479659759783677 33 0.43688115772157604 
		34 0.43688115772157626 35 0.015555655510017093
		5 12 0.022920829411985789 13 0.012829873509461791 32 0.06275529090110088 
		33 0.45074700308872578 34 0.45074700308872578
		5 12 0.018903626206005355 13 0.0059932249746096969 32 0.12321256292339497 
		33 0.55411021619236478 34 0.29778036970362515
		5 12 0.020430477270580987 13 0.0072184712486145055 32 0.11500182097689735 
		33 0.5098170928218283 34 0.34753213768207891
		5 12 0.017205659446623361 13 0.0062855961829509123 32 0.077723001505893313 
		33 0.44939287143226625 34 0.44939287143226625
		5 12 0.036235984619106869 32 0.15849978994089201 33 0.4123377695212917 
		34 0.38462332828308687 35 0.0083031276356225862
		5 12 0.012477057090264624 13 0.0054318217549920037 32 0.046254267826489601 
		33 0.46791842666412692 34 0.46791842666412692
		5 12 0.013612005550220706 13 0.0068727292653651953 32 0.041325785143052199 
		33 0.46909474002068091 34 0.46909474002068091
		5 12 0.014696398538530083 13 0.0076574945039263103 32 0.044661859614836097 
		33 0.46649212367135373 34 0.46649212367135373
		5 12 0.015916321298771432 13 0.0084431450791611091 32 0.048444990877915962 
		33 0.46359777137207586 34 0.46359777137207564
		5 12 0.014910485731331476 13 0.0076845404555730646 32 0.045047398821094146 
		33 0.46617878749600067 34 0.46617878749600067
		5 12 0.016843316131424396 13 0.0081707396243193998 32 0.052743934325162639 
		33 0.46112100495954683 34 0.46112100495954683
		5 12 0.014590371065687285 13 0.0070211915469788645 32 0.046292591364076777 
		33 0.46604792301162851 34 0.46604792301162851
		5 12 0.019721650208819382 13 0.009525159970558016 32 0.061918002694917276 
		33 0.45441759356285266 34 0.45441759356285266
		5 12 0.013155460606014489 13 0.0065886214576313922 32 0.042197705627622401 
		33 0.46902910615436583 34 0.46902910615436583
		5 12 0.010544182719865965 13 0.0049396754164514464 32 0.036587414003875593 
		33 0.47396436392990349 34 0.47396436392990349
		5 12 0.0098382769709972565 13 0.0045189071850869102 32 0.036302358581766607 
		33 0.47467022863107466 34 0.47467022863107466
		5 12 0.013260405374399474 13 0.0066127912764789906 32 0.044115109540055923 
		33 0.46800584690453279 34 0.46800584690453279
		5 12 0.017093737097527813 13 0.0081376755492066251 32 0.064489437173709974 
		33 0.45513957508977787 34 0.45513957508977776
		5 12 0.020465882274091792 13 0.0090050449871797028 32 0.086463289297222065 
		33 0.44941148067641945 34 0.43465430276508699
		5 12 0.025696249764395857 13 0.012116092009366032 32 0.099364935005613039 
		33 0.43808733855066334 34 0.42473538466996169
		5 12 0.021128535107305592 13 0.010485444359175028 32 0.076009900777451858 
		33 0.44618805987803362 34 0.44618805987803384
		5 12 0.014249151720423315 13 0.0066231276566426521 32 0.055005521342626408 
		33 0.46206109964015385 34 0.46206109964015385
		5 12 0.015776340997832476 13 0.0066843398715767562 32 0.070093420184358698 
		33 0.45677423219033375 34 0.45067166675589831
		5 12 0.01314649259871529 13 0.0062952446216553342 32 0.047981839148627609 
		33 0.46628821181550095 34 0.46628821181550084
		5 12 0.010036794473725288 13 0.0042892155284947314 32 0.043041064160804297 
		33 0.471316462918488 34 0.47131646291848778
		5 12 0.033390424452992847 13 0.017118987008233548 32 0.11521779313696376 
		33 0.42247232614550712 34 0.4118004692563027
		5 12 0.027788044673355255 13 0.014426081007352773 32 0.093934908164727479 
		33 0.43192548307728224 34 0.43192548307728224
		5 12 0.044460662037936492 13 0.024520001784234028 32 0.13823551842110401 
		33 0.4040057452807343 34 0.38877807247599117
		5 12 0.036743438724806475 13 0.02010567429420371 32 0.11493274425237826 
		33 0.41480252185322825 34 0.41341562087538331
		5 12 0.018662288528796908 13 0.0099290757873289632 32 0.052334606226703544 
		33 0.45953701472858532 34 0.45953701472858532
		5 12 0.018318611828696107 13 0.0094985580452275394 32 0.051642732702516486 
		33 0.46027004871178001 34 0.4602700487117799
		5 12 0.013863627331664085 13 0.0068018073323013323 32 0.043436458678226091 
		33 0.46794905332890424 34 0.46794905332890424
		5 12 0.014346433344284908 13 0.0072770895891257643 32 0.043849440041790394 
		33 0.46726351851239945 34 0.46726351851239945
		5 12 0.019206218454840635 13 0.010330063096311091 32 0.052533077989276637 
		33 0.45896532022978581 34 0.45896532022978581
		5 12 0.022446736802188012 13 0.012256982584685836 32 0.058531319671398151 
		33 0.45338248047086399 34 0.45338248047086399;
	setAttr ".wl[2400:2499].w"
		5 12 0.021360963600190509 13 0.011468728405849995 32 0.056776430943030781 
		33 0.45519693852546433 34 0.45519693852546433
		5 12 0.020461822601704146 13 0.011184981539032144 32 0.055265050597964181 
		33 0.45654407263064978 34 0.45654407263064978
		5 12 0.020145583981053875 13 0.010903920210954087 32 0.054433402580500764 
		33 0.4572585466137456 34 0.4572585466137456
		5 12 0.022338481547474132 13 0.012097683469342044 32 0.058185992577789877 
		33 0.45368892120269699 34 0.45368892120269699
		5 12 0.016174322918020262 13 0.0085274614956601033 32 0.050204103961047943 
		33 0.46254705581263583 34 0.46254705581263583
		5 12 0.015046834399941504 13 0.0078258975228939921 32 0.046076546900918565 
		33 0.46552536058812299 34 0.46552536058812299
		5 12 0.01439026744119894 13 0.0073715751236409638 32 0.043907693720367291 
		33 0.46716523185739639 34 0.46716523185739639
		5 12 0.01788111686346594 13 0.0095935631295050953 32 0.050946096255221368 
		33 0.46078961187590378 34 0.46078961187590378
		5 12 0.019258834892502821 13 0.01049110402914964 32 0.053132214501433753 
		33 0.45855892328845688 34 0.45855892328845688
		5 12 0.018309758910679142 13 0.0098103840370138695 32 0.05098577660888147 
		33 0.46044704022171279 34 0.46044704022171279
		5 12 0.019175738831034701 13 0.010327994075132725 32 0.052791765125131326 
		33 0.45885225098435067 34 0.45885225098435067
		5 12 0.01379123814849207 13 0.0070250671423483227 32 0.041672711208190841 
		33 0.46875549175048437 34 0.46875549175048437
		5 12 0.013630889780864019 13 0.006959045771066554 32 0.041496888645482163 
		33 0.46895658790129369 34 0.46895658790129369
		5 12 0.015738101877176981 13 0.0082966384525779476 32 0.0464306234946028 
		33 0.46476731808782118 34 0.46476731808782118
		5 12 0.013716375213171627 13 0.0069862358271971115 32 0.041538640062094061 
		33 0.46887937444876859 34 0.46887937444876859
		5 12 0.014500004340590544 13 0.0074913159761737878 32 0.043922069877028715 
		33 0.46704330490310353 34 0.46704330490310353
		5 12 0.01514232524386918 13 0.007911548614334683 32 0.045338040292413596 
		33 0.4658040429246913 34 0.4658040429246913
		5 12 0.016267702010803974 13 0.0086291002237968168 32 0.047459285227193296 
		33 0.46382195626910294 34 0.46382195626910294
		5 12 0.016259727941634015 13 0.0086316586370990926 32 0.047708392235252618 
		33 0.4637001105930072 34 0.4637001105930072
		5 12 0.014708618457595978 13 0.0076024910462154979 32 0.043771285992600106 
		33 0.4669588022517942 34 0.4669588022517942
		5 12 0.015441934730762151 13 0.0081116068522823805 32 0.045834516678790564 
		33 0.46530597086908249 34 0.46530597086908249
		5 12 0.013719742377738703 13 0.0069725998679461615 32 0.041516213543194527 
		33 0.4688957221055603 34 0.4688957221055603
		5 12 0.014076787967690832 13 0.0071863310475382691 32 0.042287973165274648 
		33 0.46822445390974815 34 0.46822445390974815
		5 12 0.014425195221788896 13 0.0074299357918188695 32 0.043884979042845572 
		33 0.46712994497177346 34 0.46712994497177324
		5 12 0.015073333242432001 13 0.0078597418144281308 32 0.045385646727441872 
		33 0.46584063910784884 34 0.46584063910784906
		5 12 0.015686666600959097 13 0.0082060778853163211 32 0.045905979035437285 
		33 0.46510063823914366 34 0.46510063823914366
		5 12 0.017112471105363534 13 0.0091765275761463445 32 0.049248612349831383 
		33 0.46223119448432931 34 0.46223119448432931
		5 12 0.016589851239365679 13 0.0088351988900820418 32 0.048457257032459143 
		33 0.46305884641904654 34 0.46305884641904654
		5 12 0.019703936515404814 13 0.010708071757617108 32 0.055556585865173647 
		33 0.45701570293090221 34 0.45701570293090221
		5 12 0.024279926008187597 13 0.013821936731768656 32 0.066195771669169429 
		33 0.44785118279543723 34 0.44785118279543723
		5 12 0.017427910969671313 13 0.0091478810813543851 32 0.053322735828805159 
		33 0.46005073606008456 34 0.46005073606008456
		5 12 0.026906889202883293 13 0.015714492606191177 32 0.071790109628397589 
		33 0.44279425428126395 34 0.44279425428126395
		5 12 0.01877930344230655 13 0.010061089336067586 32 0.056425223947485982 
		33 0.45736719163706979 34 0.45736719163707001
		5 12 0.017741249046924965 13 0.0094057633389208403 32 0.055202594328930508 
		33 0.45882519664261184 34 0.45882519664261184
		5 12 0.017427400899315573 13 0.0089279155775686611 32 0.059111342747780259 
		33 0.45726667038766777 34 0.45726667038766777
		5 12 0.020090368794875055 13 0.01061731981557134 32 0.065581342349748856 
		33 0.45185548451990237 34 0.45185548451990237
		5 12 0.024330750840045722 13 0.013715201929695556 32 0.069752126197114822 
		33 0.44610096051657194 34 0.44610096051657194
		5 12 0.031802143431684089 13 0.019369309080686056 32 0.081902931151380337 
		33 0.43346280816812477 34 0.43346280816812477
		5 12 0.022388365650232691 13 0.012386191915516143 32 0.065752634443168617 
		33 0.44973640399554132 34 0.44973640399554132
		5 12 0.020571839471170864 13 0.010700068399259913 32 0.068161860974776792 
		33 0.45028311557739625 34 0.45028311557739625
		5 12 0.053408993503331351 13 0.028877704026563839 32 0.16858329026475577 
		33 0.40012009639440321 34 0.34900991581094581
		5 12 0.041740482894162323 13 0.020541596039349394 32 0.15038992878937019 
		33 0.42263737496392406 34 0.36469061731319402
		5 12 0.02921846232213559 13 0.012572845051535234 32 0.12600919257794913 
		33 0.45317593869129996 34 0.37902356135708015
		5 12 0.022467584950298762 13 0.0087519960932156953 32 0.11123016529820361 
		33 0.47705661377387826 34 0.38049363988440371
		5 12 0.016099360581166476 13 0.0058480839863984477 32 0.088921684528015382 
		33 0.49253902495783669 34 0.39659184594658309
		5 12 0.0081534701729684255 13 0.0029125361925463641 32 0.045291240490960803 
		33 0.47873382890301791 34 0.4649089242405065
		5 12 0.014884630272658369 13 0.0073239745652596226 32 0.052818506594137012 
		33 0.46248644428397251 34 0.46248644428397251
		5 12 0.014745211172247386 13 0.0075609295043276336 32 0.043666077804672278 
		33 0.46701389075937633 34 0.46701389075937633
		5 12 0.017812992425469971 13 0.0094504965809165606 32 0.050799144264742802 
		33 0.46096868336443531 34 0.46096868336443531
		5 12 0.017944529068246538 13 0.0089859109053766189 32 0.05142197481872704 
		33 0.46082379260382494 34 0.46082379260382494
		5 12 0.024414083845638215 13 0.0130681684007041 32 0.062173301185665698 
		33 0.45017222328399598 34 0.45017222328399598
		5 12 0.02256698701608938 13 0.011872212006905265 32 0.059333224741946439 
		33 0.4531137881175295 34 0.4531137881175295
		5 12 0.024996880178064521 13 0.013400334822515127 32 0.063004540376394191 
		33 0.44929912231151309 34 0.44929912231151309
		5 12 0.026504307181265695 13 0.0094731637601398553 32 0.14263641034593882 
		33 0.50640837816612405 34 0.31497774054653155
		5 12 0.027894777060528144 13 0.011005295427369582 32 0.13339917812727897 
		33 0.47604761829775527 34 0.35165313108706803
		5 12 0.035580413189753281 13 0.014477999155387682 32 0.1576412599581804 
		33 0.4637563962277545 34 0.32854393146892413
		5 12 0.039173080665538512 13 0.017693351522846977 32 0.15462549475771611 
		33 0.43950389568064957 34 0.34900417737324885
		5 12 0.046675491878892188 13 0.021389087632784593 32 0.17410160486556095 
		33 0.4301537132037131 34 0.32768010241904927
		5 12 0.051106600835490075 13 0.025768286235935783 32 0.17304199181765559 
		33 0.41191093344254642 34 0.33817218766837215
		5 12 0.027643301474688433 13 0.015707437558655116 32 0.08091093035610486 
		33 0.43786916530527586 34 0.43786916530527586
		5 12 0.03083644333456477 13 0.017963641695701551 32 0.085024148964656585 
		33 0.43308788300253853 34 0.43308788300253853
		5 12 0.022971260444733688 13 0.012117928172184309 32 0.074706256957684791 
		33 0.44510227721269863 34 0.44510227721269863
		5 12 0.027397655657090257 13 0.014497020473980392 32 0.089295986214259951 
		33 0.43440466882733469 34 0.43440466882733469
		5 12 0.026316203048144641 13 0.013917015640751287 32 0.085293676008647401 
		33 0.43723655265122841 34 0.43723655265122829
		5 12 0.03391690963226078 13 0.019006515189063211 32 0.10184766470122542 
		33 0.42261445523872526 34 0.42261445523872526
		5 12 0.033855142264143233 13 0.01934399175917716 32 0.098853302213482513 
		33 0.42397378188159857 34 0.42397378188159857
		5 12 0.023535927839525767 13 0.012359614185014583 32 0.076723373861487976 
		33 0.44369054205698583 34 0.44369054205698583
		5 12 0.030921307163590303 13 0.01794836671744432 32 0.087113281157791655 
		33 0.43200852248058669 34 0.43200852248058691
		5 12 0.027148421315890358 13 0.015219342527223229 32 0.080591009123928053 
		33 0.43852061351647914 34 0.43852061351647914
		5 12 0.0018390646125551976 13 0.00051678747579135108 32 0.01439753719554159 
		33 0.56764108280371783 34 0.41560552791239397
		5 12 0.0012127131873230362 13 0.00036607189242087921 32 0.0082774945733224414 
		33 0.50198650309246873 34 0.48815721725446493
		5 12 0.017344928759901082 13 0.0083511868807705485 32 0.0624573146855553 
		33 0.4559232848368866 34 0.4559232848368866
		5 12 0.020472327167133847 13 0.01002344274910098 32 0.072374723202975944 
		33 0.44856475344039476 34 0.44856475344039454
		5 12 0.0050053445009906675 13 0.0019891120476963897 32 0.022663532118687019 
		33 0.48517100566631299 34 0.48517100566631288
		5 12 0.022249250769197301 13 0.011684639345898534 32 0.071242314031803367 
		33 0.44741189792655045 34 0.44741189792655045
		5 12 0.029722003005681445 13 0.016823307025071562 32 0.085798203207260962 
		33 0.43382824338099302 34 0.43382824338099302
		5 12 0.02863569504950645 13 0.015402106129903177 32 0.089012467718132565 
		33 0.43347486555122888 34 0.43347486555122888
		5 12 0.015046844919048962 13 0.0078380324193274512 32 0.045574867867422694 
		33 0.46577012739710044 34 0.46577012739710044
		5 12 0.015128059774894469 13 0.0079206156726694642 32 0.04530643118621467 
		33 0.46582244668311068 34 0.46582244668311068
		5 12 0.014442694875979061 13 0.0074281715663997855 32 0.044018642410026773 
		33 0.46705524557379718 34 0.46705524557379718
		5 12 0.017149886158831201 13 0.0091670026302273881 32 0.04953008648290224 
		33 0.46207651236401953 34 0.46207651236401953
		5 12 0.017997561566866944 13 0.0097315932099483367 32 0.050898121996358264 
		33 0.4606863616134132 34 0.4606863616134132
		5 12 0.016615721922947729 13 0.0087775218723996386 32 0.047796597063149274 
		33 0.46340507957075167 34 0.46340507957075167
		5 12 0.014375029325538481 13 0.0073545423810170872 32 0.042913104320809699 
		33 0.46767866198631736 34 0.46767866198631736
		5 12 0.013688529911689753 13 0.0069396233904113723 32 0.041442988323851203 
		33 0.46896442918702386 34 0.46896442918702386
		5 12 0.015069452779375795 13 0.0078476375636122499 32 0.045849137029296362 
		33 0.46561688631385778 34 0.46561688631385778
		5 12 0.014906772994483735 13 0.0077860350739401502 32 0.044962185295924918 
		33 0.46617250331782567 34 0.46617250331782556
		5 12 0.014346297029824435 13 0.0073582625053211347 32 0.043818448328692979 
		33 0.46723849606808077 34 0.46723849606808077
		5 12 0.017560233407424516 13 0.0094086337988649581 32 0.050328568553893185 
		33 0.46135128211990872 34 0.46135128211990872
		5 12 0.0186955327054538 13 0.010152616827849183 32 0.052120624675905391 
		33 0.45951561289539589 34 0.45951561289539578
		5 12 0.017363416264081395 13 0.0092258859776746874 32 0.049171379555430085 
		33 0.46211965910140695 34 0.46211965910140684
		5 12 0.014556380233838862 13 0.0074564493603014757 32 0.04327939256486505 
		33 0.46735388892049734 34 0.46735388892049734
		5 12 0.013612245450380938 13 0.0068840578973635496 32 0.041291049799938986 
		33 0.46910632342615832 34 0.46910632342615821
		5 12 0.027574587728144456 13 0.012720550056600402 32 0.086346938471241239 
		33 0.43667896187200678 34 0.436678961872007
		5 12 0.022499087530067043 13 0.009523442655097086 32 0.081824721992731983 
		33 0.44307637391105198 34 0.44307637391105198
		5 12 0.039831803242264797 13 0.019498060577627516 32 0.10321824652939114 
		33 0.41872594482535824 34 0.41872594482535824
		5 12 0.041982218576383248 13 0.01924687798981194 32 0.11003589487319301 
		33 0.41436750428030589 34 0.41436750428030589
		5 12 0.039996539731454644 13 0.017386991645758992 32 0.11409327356617825 
		33 0.41426159752830422 34 0.41426159752830399
		5 12 0.037220943754129619 13 0.017653923789528538 32 0.10443605829826566 
		33 0.42034453707903813 34 0.42034453707903813
		5 12 0.037140654122686967 13 0.014725422049221714 32 0.11991472088160939 
		33 0.41410960147324105 34 0.41410960147324094;
	setAttr ".wl[2500:2599].w"
		5 12 0.034574897253247916 13 0.01527546290467344 32 0.10887387402641623 
		33 0.42063788290783122 34 0.42063788290783122
		5 12 0.030526585902496316 13 0.012169654335666176 32 0.11333239074735056 
		33 0.4219856845072435 34 0.4219856845072435
		5 12 0.028151933163253887 13 0.0081683302299640301 32 0.13770753345188219 
		33 0.43214620311895657 34 0.39382600003594326
		5 12 0.026429101640011325 13 0.006336998029176269 32 0.14329266545473326 
		33 0.44531839248664951 34 0.37862284238942973
		5 12 0.039025709104921702 13 0.013118212478174518 32 0.13045261128231275 
		33 0.4087017335672955 34 0.4087017335672955
		5 12 0.04264842482638731 13 0.016311724075115601 32 0.12306724807143032 
		33 0.40898630151353343 34 0.40898630151353343
		5 12 0.04308366826738861 13 0.017947121789371006 32 0.11391335521619966 
		33 0.41252792736352034 34 0.41252792736352034
		5 12 0.038473834296513347 13 0.018035124595493147 32 0.097297224252895248 
		33 0.4230969084275491 34 0.4230969084275491
		5 12 0.038121839699936003 13 0.016976218166087235 32 0.095680847641578387 
		33 0.42461054724619934 34 0.42461054724619912
		5 12 0.041568373627719743 13 0.018260675499706284 32 0.10517737499547922 
		33 0.41749678793854733 34 0.41749678793854733
		5 12 0.040377190080581812 13 0.018545096264550195 32 0.10280381166010763 
		33 0.41913695099738019 34 0.41913695099738019
		5 12 0.035224559003673342 13 0.016231191629470253 32 0.087329083713423669 
		33 0.43060758282671641 34 0.4306075828267163
		5 12 0.035939193696503911 13 0.017312092833886721 32 0.089627863618006065 
		33 0.42856042492580165 34 0.42856042492580165
		5 12 0.028388114430815632 13 0.014169238251488884 32 0.070456506717533937 
		33 0.44349307030008078 34 0.44349307030008078
		5 12 0.026800877999489686 13 0.013469333547134539 32 0.068112559025637426 
		33 0.44580861471386923 34 0.44580861471386912
		5 12 0.025828909483289458 13 0.013143611803064326 32 0.067448840991386302 
		33 0.44678931886112999 34 0.44678931886112999
		5 12 0.02478001126705057 13 0.012846883290787495 32 0.06425453343574801 
		33 0.44905928600320699 34 0.44905928600320699
		5 12 0.025339892044782753 13 0.013109620224531795 32 0.064407084993910624 
		33 0.44857170136838742 34 0.44857170136838742
		5 12 0.022968343708950911 13 0.011623688209041005 32 0.064378889933205549 
		33 0.45051453907440125 34 0.45051453907440125
		5 12 0.020749882181230823 13 0.010534183654460252 32 0.058297247046493444 
		33 0.45520934355890774 34 0.45520934355890774
		5 12 0.025905481678390165 13 0.013353074721815459 32 0.065081782266192351 
		33 0.44782983066680104 34 0.44782983066680104
		5 12 0.03618187433259254 13 0.01810409733668953 32 0.093062358807394829 
		33 0.42632583476166158 34 0.42632583476166158
		5 12 0.032171356290138661 13 0.015964053678240074 32 0.089303824852428257 
		33 0.4312803825895965 34 0.4312803825895965
		5 12 0.030046948585511615 13 0.017978436144699121 32 0.079772913724442604 
		33 0.4361008507726733 34 0.4361008507726733
		5 12 0.024433673052764969 13 0.013959100044699465 32 0.067257028573504948 
		33 0.44717509916451531 34 0.44717509916451531
		5 12 0.021826008906973331 13 0.012133920981114122 32 0.061467687972589363 
		33 0.45228619106966156 34 0.45228619106966156
		5 12 0.018162399233169663 13 0.0097122075162122522 32 0.052287273295741135 
		33 0.45991905997743848 34 0.45991905997743848
		5 12 0.029534029180828796 13 0.017532586580117322 32 0.079094472274285177 
		33 0.43691945598238435 34 0.43691945598238435
		5 12 0.02472035134162303 13 0.01399457882682238 32 0.070230154513186344 
		33 0.44552745765918417 34 0.44552745765918417
		5 12 0.027878612267605365 13 0.015976651218483452 32 0.077700582172733623 
		33 0.43922207717058881 34 0.43922207717058881
		5 12 0.024318594283473063 13 0.013527513455038916 32 0.072564985599706588 
		33 0.44479445333089085 34 0.44479445333089063
		5 12 0.021923986400436885 13 0.011493655897288912 32 0.071904193732887117 
		33 0.44733908198469358 34 0.44733908198469358
		5 12 0.027445188640134791 13 0.014400805761178999 32 0.090910662768894757 
		33 0.43362167141489588 34 0.43362167141489566
		5 12 0.035547993947455017 13 0.019847919565021147 32 0.10750808759593412 
		33 0.41854799944579485 34 0.41854799944579485
		5 12 0.019535624067053836 13 0.010605479213017171 32 0.05686987746222693 
		33 0.45649450962885102 34 0.45649450962885102
		5 12 0.016520503648846718 13 0.0086716466000263791 32 0.048659272245372677 
		33 0.46307428875287715 34 0.46307428875287715
		5 12 0.014917548878628577 13 0.007659535344980292 32 0.044377830641730599 
		33 0.46652254256733011 34 0.46652254256733033
		5 12 0.017249158844715097 13 0.0090804927840502786 32 0.04941152045962921 
		33 0.46212941395580276 34 0.46212941395580276
		5 12 0.017026635069328666 13 0.0089395940985087484 32 0.048765655528321045 
		33 0.46263405765192078 34 0.46263405765192078
		5 12 0.017348047417545906 13 0.0091488411553434686 32 0.049340325312728868 
		33 0.46208139305719104 34 0.46208139305719081
		5 12 0.017868702322896508 13 0.0094925380658284954 32 0.050342735956333498 
		33 0.46114801182747078 34 0.46114801182747078
		5 12 0.018286390385065299 13 0.0097704959044210976 32 0.05205748347937033 
		33 0.45994281511557167 34 0.45994281511557167
		5 12 0.016292929205429449 13 0.0085090435744409384 32 0.047596709955382857 
		33 0.46380065863237335 34 0.46380065863237335
		5 12 0.023678070940822034 13 0.013342082076611465 32 0.068121934980226714 
		33 0.44742895600116994 34 0.44742895600116994
		5 12 0.026781424538302085 13 0.015626743656072754 32 0.073305143688042695 
		33 0.44214334405879124 34 0.44214334405879124
		5 12 0.031835932598730778 13 0.019268779000183284 32 0.082598668401516834 
		33 0.4331483099997846 34 0.4331483099997846
		5 12 0.028524611493041873 13 0.016782347302781896 32 0.077304233967932429 
		33 0.43869440361812195 34 0.43869440361812195
		5 12 0.02868621172020043 13 0.016948435218506679 32 0.077525564800111441 
		33 0.43841989413059079 34 0.43841989413059068
		5 12 0.021448721799514299 13 0.011909441571492662 32 0.061410959838063224 
		33 0.45261543839546486 34 0.45261543839546486
		5 12 0.029000449801382163 13 0.017274170543316397 32 0.077086767226012834 
		33 0.43831930621464427 34 0.43831930621464427
		5 12 0.027225279358215854 13 0.015854724382740982 32 0.075147282572549892 
		33 0.44088635684324667 34 0.44088635684324667
		5 12 0.026752291763093686 13 0.015468956419845976 32 0.074077169754525884 
		33 0.44185079103126723 34 0.44185079103126723
		5 12 0.025635044329341997 13 0.014474101823434666 32 0.074397730555070055 
		33 0.44274656164607679 34 0.44274656164607656
		5 12 0.028897415733447313 13 0.016650229682126771 32 0.082558275547438484 
		33 0.43594703951849373 34 0.43594703951849373
		5 12 0.029674641701432906 13 0.017064236534107255 32 0.085022346011349059 
		33 0.43411938787655546 34 0.43411938787655535
		5 12 0.027539132431837178 13 0.015291686424776928 32 0.081727176323397807 
		33 0.43772100240999412 34 0.43772100240999401
		5 12 0.021867809948538899 13 0.011938526940085195 32 0.066389346072762867 
		33 0.44990215851930659 34 0.44990215851930648
		5 12 0.031573582776058803 13 0.018263771096521261 32 0.088145105220377898 
		33 0.43100877045352098 34 0.43100877045352098
		5 12 0.03057939765009671 13 0.017332957932971928 32 0.087304541808746319 
		33 0.43239155130409251 34 0.43239155130409251
		5 12 0.02972670290120439 13 0.017226029987680046 32 0.083567007504243354 
		33 0.43474012980343596 34 0.43474012980343618
		5 12 0.026738107570041712 13 0.015242482813662448 32 0.076066607972561942 
		33 0.4409764008218669 34 0.4409764008218669
		5 12 0.016087984663015174 13 0.0083868438322692272 32 0.048821213980492786 
		33 0.46335197876211137 34 0.46335197876211137
		5 12 0.018119645071156241 13 0.0096973748610128356 32 0.052994179401873419 
		33 0.45959440033297877 34 0.45959440033297877
		5 12 0.019774391280870423 13 0.010769764805039675 32 0.056387087278979661 
		33 0.45653437831755511 34 0.45653437831755511
		5 12 0.02175508944870878 13 0.012086050284314811 32 0.060428917930477839 
		33 0.45286497116824925 34 0.45286497116824925
		5 12 0.02860069759292273 13 0.016782272649651358 32 0.076715690098448946 
		33 0.43895066982948849 34 0.43895066982948849
		5 12 0.026560494594369981 13 0.015252765433904357 32 0.072957997797683055 
		33 0.44261437108702134 34 0.44261437108702134
		5 12 0.027873465717191015 13 0.016323765914463211 32 0.075390027119174155 
		33 0.44020637062458584 34 0.44020637062458584
		5 12 0.026049867944504465 13 0.014977398448012737 32 0.072022199216469796 
		33 0.44347526719550656 34 0.44347526719550656
		5 12 0.028658964156874508 13 0.016902986599314791 32 0.076864458584205833 
		33 0.43878679532980247 34 0.43878679532980247
		5 12 0.026059061206340002 13 0.014885909342734319 32 0.07215812740539225 
		33 0.4434484510227667 34 0.4434484510227667
		5 12 0.025397101253787135 13 0.014466886615627259 32 0.070914432820015277 
		33 0.44461078965528517 34 0.44461078965528517
		5 12 0.03331179384428843 13 0.011562884154163551 32 0.12851878637843506 
		33 0.41352136067678014 34 0.41308517494633279
		5 12 0.033606192478025002 13 0.0096173266739964097 32 0.13902768735404775 
		33 0.41274575299882904 34 0.40500304049510177
		5 12 0.031708740507698362 13 0.011836417239109451 32 0.15235814183481752 
		33 0.48280049756896837 34 0.32129620284940635
		5 12 0.03936903857128702 13 0.016191487299149127 32 0.1641532360920607 
		33 0.45272720539105177 34 0.32755903264645136
		5 12 0.049087159351847258 13 0.022853930378462992 32 0.17425703580068272 
		33 0.42152624448717635 34 0.33227562998183074
		5 12 0.054807335835242228 13 0.02778234197344687 32 0.1767706535113962 
		33 0.40420525883091529 34 0.33643440984899936
		5 12 0.059859317543357077 13 0.033018970946885211 32 0.17691148157475203 
		33 0.3894044685230274 34 0.34080576141197827
		5 12 0.050682114714617144 13 0.028461566712821053 32 0.14938573576271469 
		33 0.39456278021226848 34 0.37690780259757867
		5 12 0.042213556684765945 13 0.023434420258864733 32 0.12632380741976434 
		33 0.40556781089829463 34 0.40246040473831046
		5 12 0.038457216040091773 13 0.021639299858752743 32 0.11336302069572017 
		33 0.41327023170271771 34 0.41327023170271759
		5 12 0.036824781064058974 13 0.020860581013697147 32 0.10756267987936864 
		33 0.41737597902143758 34 0.41737597902143758
		5 12 0.035722001807907945 13 0.020537228502108963 32 0.10234679894224155 
		33 0.42069698537387079 34 0.42069698537387079
		5 12 0.032294196035964742 13 0.017906472545157523 32 0.096019278427526014 
		33 0.42689002649567592 34 0.42689002649567592
		5 12 0.02480823129529585 32 0.08446229525058456 33 0.43931929360123656 
		34 0.43931929360123656 35 0.012090886251646487
		5 12 0.025395055252107838 13 0.0083121309015638974 32 0.11895059971302996 
		33 0.43209688560393406 34 0.41524532852936435
		5 12 0.028176076259483079 32 0.1642492191692726 33 0.4554766050908125 
		34 0.34665864163826088 35 0.0054394578421708834
		5 12 0.012055115231732061 13 0.0037466979208941298 32 0.083563039056951116 
		33 0.55599611268220794 34 0.3446390351082147
		5 12 0.021384984356001904 13 0.0063492365020728211 32 0.14504542956502484 
		33 0.57191252515559443 34 0.25530782442130601
		5 12 0.0071953777436357703 13 0.002366723892934121 32 0.044899771463585869 
		33 0.49676450840072317 34 0.44877361849912106
		5 12 0.019864573675941764 13 0.0039114402181908998 32 0.17527866493193497 
		33 0.5555067717640888 34 0.24543854940984366
		5 12 0.019897320871740443 13 0.0034798361574571429 32 0.18108946462412187 
		33 0.55782514872222599 34 0.2377082296244547
		5 12 0.017533928815477499 32 0.1697447348981016 33 0.57529596406643857 
		34 0.23472536257157245 35 0.0027000096484099379
		5 12 0.018565189509135601 13 0.0040453952640573405 32 0.1585602772612236 
		33 0.55514677113867228 34 0.26368236682691115
		5 12 0.018011750328692407 13 0.0044070934653138664 32 0.16576618445677524 
		33 0.65052159956555644 34 0.16129337218366202
		5 12 0.0017580273799547407 32 0.0093824550038362278 33 0.49413081014927568 
		34 0.49413081014927557 35 0.00059789731765776154
		5 12 0.0023732734538177468 13 0.00082357045076905883 32 0.01307991144773973 
		33 0.49186162232383679 34 0.49186162232383668
		5 12 0.019708161350662966 13 0.0099240420485623131 32 0.066771008285829103 
		33 0.4517983941574728 34 0.4517983941574728
		5 12 0.025244330572351013 13 0.013712294236443844 32 0.078409432585410124 
		33 0.44131697130289749 34 0.44131697130289749;
	setAttr ".wl[2600:2699].w"
		5 12 0.025196114317159735 13 0.013813577390318016 32 0.077593216357512873 
		33 0.44169854596750463 34 0.44169854596750463
		5 12 0.02294504432252114 13 0.012405611465361465 32 0.071676230081844108 
		33 0.44648655706513662 34 0.44648655706513662
		5 12 0.020989222459455718 13 0.011194801529505359 32 0.066511087908238634 
		33 0.45065244405140015 34 0.45065244405140015
		5 12 0.018509647839550041 13 0.0097971274216999103 32 0.0590751879595117 
		33 0.45630901838961907 34 0.45630901838961929
		5 12 0.017565622871624009 13 0.0092678056708741675 32 0.056625106155944939 
		33 0.45827073265077845 34 0.45827073265077845
		5 12 0.015114267741040875 13 0.0076020781869742355 32 0.051706703697887199 
		33 0.46278847518704891 34 0.46278847518704891
		5 12 0.013217368645807156 13 0.006197331963925164 32 0.050024526265356362 
		33 0.46528038656245574 34 0.46528038656245563
		5 12 0.01212947828422186 13 0.0051380965125628663 32 0.053382750623264176 
		33 0.46467483728997561 34 0.46467483728997561
		5 12 0.010815312945852919 13 0.0038304533427450192 32 0.06178683267085576 
		33 0.48919613322057964 34 0.4343712678199666
		5 12 0.008404427401575763 13 0.0026334675491592992 32 0.057442291547575935 
		33 0.53327377235748341 34 0.39824604114420553
		5 12 0.011203198897011818 13 0.0030011027367128217 32 0.0979077446733881 
		33 0.64156795252714804 34 0.24632000116573927
		5 12 0.009275896452960208 13 0.0025683066674602986 32 0.077460896599367807 
		33 0.60928738757746648 34 0.30140751270274524
		5 12 0.0074780406707572952 13 0.0022560642650942793 32 0.052970356487280504 
		33 0.53010812174023469 34 0.40718741683663329
		5 12 0.019084274281992046 13 0.003809732583552159 32 0.2311117940631785 
		33 0.66563262563316639 34 0.080361573438110817
		5 12 0.021809027926040805 13 0.012068467693447762 32 0.0602277147839302 
		33 0.4529473947982906 34 0.4529473947982906
		5 12 0.020707070353335535 13 0.011378693157859322 32 0.057961444754343373 
		33 0.45497639586723088 34 0.45497639586723088
		5 12 0.018934173379819522 13 0.010217319270811589 32 0.054266739228255943 
		33 0.45829088406055651 34 0.45829088406055651
		5 12 0.017256124736289152 13 0.0091433692439428678 32 0.050675588370776181 
		33 0.46146245882449594 34 0.46146245882449594
		5 12 0.015494428254766313 13 0.0080327214467678983 32 0.04693988935414397 
		33 0.46476648047216096 34 0.46476648047216096
		5 12 0.013049089507378866 13 0.0063934991402444814 32 0.045413657520013327 
		33 0.46757187691618168 34 0.46757187691618168
		5 12 0.0093530565333644362 13 0.0041015891488594925 32 0.038071835199898763 
		33 0.47423675955893874 34 0.47423675955893863
		5 12 0.0068909488401155631 13 0.002555840539784489 32 0.03506917144380195 
		33 0.47774201958814905 34 0.47774201958814905
		5 12 0.0073738409189770694 13 0.0027301446875616065 32 0.037016585957423402 
		33 0.47643971421801895 34 0.47643971421801895
		5 12 0.016464676012894655 13 0.0034366585960113011 32 0.20143843772075729 
		33 0.68608217973065955 34 0.092578047939677194
		5 12 0.012952433018428135 13 0.0031982389417130456 32 0.12565920230881833 
		33 0.67709442261764374 34 0.18109570311339676
		5 12 0.019482063146327409 13 0.0059563755673469948 32 0.13146784481031082 
		33 0.56821191750642142 34 0.27488179896959336
		5 12 0.028946104359038764 13 0.01058145333730694 32 0.14717220924119967 
		33 0.49477854547211869 34 0.31852168759033594
		5 12 0.023208312734108668 13 0.0076507649352749313 32 0.13851414826866904 
		33 0.53448348103784715 34 0.29614329302410031
		5 12 0.025500784954053151 13 0.0083295490777716003 32 0.14880840414271879 
		33 0.53065990879194191 34 0.28670135303351463
		5 12 0.029774497475155755 32 0.16785743705718884 33 0.5231734793053836 
		34 0.2697572117416866 35 0.0094373744205850704
		5 12 0.11015572544460753 32 0.45833895163592941 33 0.41300970869113818 
		34 0.013215039011243051 35 0.0052805752170818421
		5 12 0.17806628445669997 13 0.013015775391675649 32 0.55572769912551057 
		33 0.24017477235751644 35 0.013015468668597286
		5 12 0.022002436122445668 32 0.37451122032119155 33 0.55378332272926989 
		34 0.047564523779799972 35 0.0021384970472929335
		5 12 0.33509659010602866 13 0.072473212811669754 32 0.39586837113036938 
		33 0.12409064568453664 35 0.072471180267395546
		5 12 0.32474695849111368 13 0.018249292280333861 32 0.41036157428977693 
		33 0.22839275183184651 35 0.018249423106929015
		5 12 0.33356390764793753 13 0.084260088905101879 32 0.40168833591878844 
		33 0.12879006234841958 35 0.051697605179752595
		5 12 0.3132432677489822 13 0.026905921616934184 14 0.017876710365824118 
		32 0.40167952822023717 33 0.24029457204802235
		5 12 0.17975507239771815 13 0.018590359720082581 32 0.52027665869930606 
		33 0.26755367967095395 35 0.013824229511939373
		5 12 0.059338436132787394 13 0.007709513973146653 32 0.45867039505392676 
		33 0.45713152479110641 34 0.017150130049032718
		5 12 0.1375323393611507 13 0.018917188890825793 32 0.48106832918040837 
		33 0.3491439074440108 34 0.013338235123604257
		5 12 0.12229898636768487 13 0.0084387191818373324 32 0.43986814885349501 
		33 0.4113931620140196 34 0.018000983582963065
		5 12 0.31452791230478622 13 0.096990926498020061 32 0.39384852576960699 
		33 0.15302911908233971 35 0.04160351634524706
		5 12 0.16144744935897212 13 0.020191937027241032 32 0.49739272451413569 
		33 0.30865601620918498 35 0.012311872890466147
		5 12 0.060594071755553092 13 0.0080796564033659563 32 0.45711228886402316 
		33 0.4561231969016199 34 0.018090786075437921
		5 12 0.027605175687035747 13 0.0038226798278502027 32 0.41598073899969057 
		33 0.53171382580678017 34 0.020877579678643281
		5 12 0.025068039350884062 13 0.0028379183738029379 32 0.37470609391508114 
		33 0.54250381473515719 34 0.054884133625074612
		5 12 0.099254292982102532 13 0.0087936268226648483 32 0.44167128559366681 
		33 0.43101978186839979 34 0.019261012733166025
		5 12 0.025883216800573216 13 0.0034306629085409986 32 0.3621955624547028 
		33 0.54672210569917168 34 0.061768452137011348
		5 12 0.018412014424080015 13 0.0031070207428557798 32 0.30256364765030297 
		33 0.62231720373074506 34 0.053600113452016068
		5 12 0.02123361456861397 13 0.0030068282468204595 32 0.38919066250472256 
		33 0.5648623719026814 34 0.021706522777161671
		5 12 0.037167937132986023 13 0.0052408253543406542 32 0.42860588317094106 
		33 0.50582973980683077 34 0.023155614534901361
		5 12 0.2802306913473645 13 0.06091054400472308 14 0.043586186587786194 
		32 0.37211027885683046 33 0.24316229920329574
		5 12 0.30226227508895942 13 0.041298831486170653 14 0.029066818927453025 
		32 0.3894025670804333 33 0.23796950741698364
		5 12 0.076687672321104045 13 0.0075685237094071569 32 0.45197694408912753 
		33 0.44675745765860114 34 0.017009402221760197
		5 12 0.078159306852373087 13 0.0078774986676101479 32 0.45079699371759607 
		33 0.44568711266909922 34 0.017479088093321521
		5 12 0.024615435795245069 13 0.0036000407210938393 32 0.35056582561082333 
		33 0.55941936981108153 34 0.061799328061756094
		5 12 0.2139895588230952 13 0.073423938178343889 14 0.042056946343670104 
		32 0.37440762301049801 33 0.29612193364439277
		5 12 0.2544484710456475 13 0.07562231333491172 14 0.053432505420134217 
		32 0.36004784163865655 33 0.25644886856065008
		5 12 0.28433182469847607 13 0.094098613483472968 32 0.39402698798846975 
		33 0.19688748696963687 35 0.030655086859944381
		5 12 0.018262772414487236 13 0.0027729538973417941 32 0.35026706420198789 
		33 0.60052956653847422 34 0.02816764294770898
		5 12 0.098602343307205853 13 0.013625634695914877 32 0.4678375056980893 
		33 0.40507966304390408 34 0.014854853254885917
		5 12 0.2475429877448066 13 0.083208351559164034 32 0.39571772652442166 
		33 0.25191402350089553 35 0.021616910670712121
		5 12 0.022163685120392455 13 0.0035269768849159016 32 0.32703742933037705 
		33 0.58392665666966237 34 0.063345251994652213
		5 12 0.07189965576373987 13 0.0082483240512303095 32 0.45239109016005902 
		33 0.44952863278146882 34 0.017932297243501916
		5 12 0.070305007994667532 13 0.0078928098305780774 32 0.45367439342484733 
		33 0.45074178189698388 34 0.017386006852923144
		5 12 0.21747071521555081 13 0.0690307618686897 14 0.029166796024932325 
		32 0.39303837725705998 33 0.29129334963376713
		5 12 0.064890214715297989 13 0.0085138501032994973 32 0.45988817971811552 
		33 0.45071632151487112 34 0.015991433948416001
		5 12 0.017521132941572475 13 0.0028654326931277533 32 0.31396778849020945 
		33 0.62453259916922799 34 0.041113046705862299
		5 12 0.22867257387960849 13 0.077244290294145437 14 0.051500975033435141 
		32 0.36241105723291339 33 0.28017110355989761
		5 12 0.062507717484799663 13 0.0077401300883281361 32 0.45636767912680615 
		33 0.45557860115614207 34 0.017805872143924022
		5 12 0.064103871232131751 13 0.0081058091958086994 32 0.45507624214430814 
		33 0.45430756966414948 34 0.018406507763601896
		5 12 0.019752849638537726 13 0.003298381787051839 32 0.30624071288754046 
		33 0.60919147408444052 34 0.061516581602429447
		5 12 0.01252347927482857 13 0.0056764866982717986 32 0.043593178247834631 
		33 0.46910342788953246 34 0.46910342788953246
		5 12 0.0083199215166878584 13 0.0032778715872636586 32 0.036176362503335363 
		33 0.47611292219635654 34 0.47611292219635654
		5 12 0.0093197089729290753 13 0.0025200286365397845 32 0.078238523104841806 
		33 0.59128910120078992 34 0.31863263808489944
		5 12 0.014555551044018285 13 0.0044505605742333441 32 0.08670140989971982 
		33 0.47426944941178684 34 0.42002302907024169
		5 12 0.020989619839372444 13 0.0056097248188241673 32 0.12957774235565861 
		33 0.47548652311691481 34 0.36833638986923006
		5 12 0.022667196387757129 13 0.0053986619861161557 32 0.14664830315832539 
		33 0.48187808947282346 34 0.34340774899497784
		5 12 0.023229364457938131 13 0.0047535490301621013 32 0.16034618796557748 
		33 0.49246756031375993 34 0.31920333823256242
		5 12 0.022435224224724062 32 0.1647312122171409 33 0.50478795759224115 
		34 0.30416086337553755 35 0.0038847425903564795
		5 12 0.013289380521169854 13 0.0028971255944555069 32 0.1616565041999187 
		33 0.70688747157431675 34 0.11526951811013916
		5 12 0.010899113775542301 13 0.0025816660608683293 32 0.1181110935446875 
		33 0.69038106817476341 34 0.17802705844413841
		5 12 0.016265410757584677 13 0.0071307553702584583 32 0.058987495872026389 
		33 0.45880816900006527 34 0.45880816900006527
		5 12 0.022567137215747414 13 0.010714195899127893 32 0.070712184785611434 
		33 0.44800324104975647 34 0.4480032410497567
		5 12 0.026725849466943834 13 0.013476488338048206 32 0.073751088418047228 
		33 0.44302328688848036 34 0.44302328688848036
		5 12 0.028262923355403188 13 0.014218354801725621 32 0.073367995077215045 
		33 0.44207536338282805 34 0.44207536338282805
		5 12 0.029488014681244935 13 0.014574410728592365 32 0.074133532344423506 
		33 0.44090202112286947 34 0.44090202112286969
		5 12 0.029871191981662763 13 0.014373335472974046 32 0.074315592168393715 
		33 0.44071994018848476 34 0.44071994018848476
		5 12 0.030786040493159011 32 0.075989614554602583 33 0.43938706282319567 
		34 0.43938706282319567 35 0.014450219305847084
		5 12 0.019170942372790028 13 0.0082643275358134823 32 0.069417444270143555 
		33 0.45157364291062652 34 0.45157364291062652
		5 12 0.025587148219616499 13 0.012049085702070143 32 0.079404085049397694 
		33 0.44147984051445788 34 0.44147984051445788
		5 12 0.03057449370698621 13 0.015415142997372623 32 0.083786750262444976 
		33 0.43511180651659809 34 0.43511180651659809
		5 12 0.03163047539383694 13 0.015771601626407956 32 0.081631703340960968 
		33 0.43548310981939709 34 0.43548310981939709
		5 12 0.031779390780249023 13 0.01545783764600929 32 0.079395650590522268 
		33 0.43668356049160983 34 0.43668356049160961
		5 12 0.032533958980854233 13 0.015381202803528421 32 0.080158429767476197 
		33 0.43596320422407059 34 0.43596320422407059
		5 12 0.033635103359547169 32 0.082316817657389602 33 0.43431669770365611 
		34 0.43431669770365611 35 0.015414683575751034
		5 12 0.011493972579922289 13 0.0046176108698776936 32 0.048356068712253557 
		33 0.46776617391897318 34 0.46776617391897318
		5 12 0.014555014451083747 13 0.0036931485995784748 32 0.12096569690021754 
		33 0.56691608732929122 34 0.29387005271982897
		5 12 0.012379588434560581 13 0.003312258351953742 32 0.10076382868625867 
		33 0.56958291545438555 34 0.31396140907284142
		5 12 0.0080471712671388619 13 0.0028258980408908015 32 0.043111808862023461 
		33 0.47305450700267532 34 0.47296061482727164;
	setAttr ".wl[2700:2799].w"
		5 12 0.010297934390047017 13 0.0033510200937879159 32 0.059403183984185051 
		33 0.47285402294037654 34 0.45409383859160346
		5 12 0.014147362082405223 13 0.0054624778928169622 32 0.06117028958205889 
		33 0.45960993522135957 34 0.45960993522135934
		5 12 0.016519354396783075 13 0.0039065125209812174 32 0.13951151059833375 
		33 0.5615552239673588 34 0.27850739851654327
		5 12 0.017814151528484642 13 0.0051314410947703717 32 0.10792607091016587 
		33 0.47474595936501934 34 0.39438237710155971
		5 12 0.021177571642252986 13 0.0073555174909023047 32 0.097864712654891453 
		33 0.43875890038829402 34 0.43484329782365932
		5 12 0.02642007583600197 13 0.010938503422509474 32 0.097367464675411297 
		33 0.43263697803303863 34 0.43263697803303863
		5 12 0.03037060600588596 13 0.013683152890341494 32 0.095892675719756321 
		33 0.43002678269200806 34 0.43002678269200806
		5 12 0.034329622955508558 13 0.016668877521838172 32 0.096060558933645027 
		33 0.42647047029450408 34 0.42647047029450408
		5 12 0.037369677472175691 13 0.01849518398020342 32 0.096960623510474173 
		33 0.4235872575185734 34 0.42358725751857329
		5 12 0.036844105371623484 13 0.01744853071391186 32 0.092909521065079381 
		33 0.4263989214246926 34 0.4263989214246926
		5 12 0.03667605255951225 13 0.016584836242338644 32 0.091548000835508611 
		33 0.42759555518132036 34 0.42759555518132014
		5 12 0.037108670797452163 32 0.092149826512413519 33 0.42738480698705461 
		34 0.42738480698705483 35 0.015971888716024792
		5 12 0.01854834861503226 13 0.010105524520810526 32 0.056377297333621727 
		33 0.45748441476526785 34 0.45748441476526763
		5 12 0.016075145863642198 13 0.0083301423731007504 32 0.052401265687281713 
		33 0.46159672303798766 34 0.46159672303798766
		5 12 0.017094530566202252 13 0.009188744685682277 32 0.052030195514999093 
		33 0.46084326461655822 34 0.46084326461655822
		5 12 0.016150161762129273 13 0.008458241302468205 32 0.051313477419145603 
		33 0.46203905975812853 34 0.46203905975812842
		5 12 0.021576193859630673 32 0.19621931101744075 33 0.63571004022841149 
		34 0.14154331291468544 35 0.0049511419798315588
		5 12 0.026228634388826211 32 0.17200074120858602 33 0.5619653434780808 
		34 0.23232074531564484 35 0.0074845356088619943
		5 12 0.023278828668113788 13 0.0045183825514752115 32 0.25795980492963388 
		33 0.63413730392786338 34 0.080105679922913731
		5 12 0.044105831116984302 13 0.0060663518862167304 32 0.43287090068569251 
		33 0.49216573529759727 34 0.024791181013509137
		5 12 0.030636279112949687 13 0.018190796316754101 32 0.080958316435313663 
		33 0.43510730406749132 34 0.43510730406749121
		5 12 0.028047528721462087 13 0.016363177928517592 32 0.075710350494326617 
		33 0.43993947142784684 34 0.43993947142784684
		5 12 0.0083601973609947478 32 0.036318346134635804 33 0.47601214046183055 
		34 0.47601214046183055 35 0.0032971755807082751
		5 12 0.0093066869129244233 32 0.042308574958165299 33 0.47234196546287016 
		34 0.47234196546287016 35 0.0037008072031698507
		5 12 0.0096770352769275925 32 0.046264046329937407 33 0.47013908135973859 
		34 0.47013908135973859 35 0.0037807556736578892
		5 12 0.0074232909346787718 32 0.037215188465856405 33 0.47630479704197048 
		34 0.47630479704197071 35 0.0027519265155234733
		5 12 0.009238294668733299 32 0.035095221814596914 33 0.47581684178523703 
		34 0.47581684178523703 35 0.0040327999461957174
		5 12 0.0085798656433570836 32 0.035320613599073347 33 0.47622560678832743 
		34 0.47622560678832743 35 0.0036483071809147701
		5 12 0.010219510996075074 32 0.043282386143207334 33 0.47109101301983658 
		34 0.47109101301983658 35 0.0043160768210443855
		5 12 0.01187895514313011 32 0.044675548827196536 33 0.46906221915886764 
		34 0.46906221915886764 35 0.0053210577119380464
		5 12 0.013238296184441677 32 0.045435155230059109 33 0.46760434949709195 
		34 0.46760434949709195 35 0.0061178495913153516
		5 12 0.011487860865801261 32 0.040825614022025204 33 0.47124175602716467 
		34 0.47124175602716467 35 0.0052030130578441715
		5 12 0.016688673235261603 32 0.055064018828667814 33 0.4600730688731558 
		34 0.4600730688731558 35 0.0081011701897590188
		5 12 0.016984888458041168 32 0.055492568982467273 33 0.45964923775694982 
		34 0.45964923775694971 35 0.0082240670455920855
		5 12 0.0069361850177276094 32 0.035254585939039358 33 0.47761682945394313 
		34 0.47761682945394313 35 0.002575570135346848
		5 12 0.010556409448208777 32 0.050942903677196526 33 0.46717515189990833 
		34 0.46717515189990833 35 0.0041503830747780628
		5 12 0.018772174992949614 32 0.066229969076604348 33 0.45298080846811478 
		34 0.45298080846811467 35 0.0090362389942165201
		5 12 0.015161830908715713 32 0.060907720139398484 33 0.45859145113633498 
		34 0.45859145113633498 35 0.0067475466792160151
		5 12 0.015849507200793214 32 0.065120747292457912 33 0.45603497278660454 
		34 0.45603497278660454 35 0.0069597999335398444
		5 12 0.019462691509838724 32 0.068765590741823091 33 0.45121533659855362 
		34 0.45121533659855362 35 0.0093410445512310241
		5 12 0.013855203915702934 32 0.055278390416918025 33 0.46237205778108398 
		34 0.46237205778108365 35 0.0061222901052115173
		5 12 0.015259048133906305 32 0.056359979966181729 33 0.46067618393538212 
		34 0.46067618393538212 35 0.007028604029147751
		5 12 0.015607478909217865 32 0.055003186789163591 33 0.46103086451413788 
		34 0.46103086451413788 35 0.0073276052733427339
		5 12 0.014233814857448507 32 0.049564202781486058 33 0.46477545420198524 
		34 0.46477545420198524 35 0.0066510739570949211
		5 12 0.011051272174994619 32 0.040260564929444305 33 0.47187021909252008 
		34 0.47187021909251997 35 0.0049477247105210731
		5 12 0.018737010525167345 32 0.062970239842884967 33 0.45455684427221027 
		34 0.45455684427221027 35 0.0091790610875271596
		5 12 0.019714427330726685 32 0.065378346813579097 33 0.4525997214954024 
		34 0.4525997214954024 35 0.0097077828648894811
		5 12 0.017626177859088293 32 0.060236200883589976 33 0.45686613871467874 
		34 0.45686613871467874 35 0.0084053438279642831
		5 12 0.015570457804364082 32 0.052385524819704307 33 0.46234200141295889 
		34 0.46234200141295889 35 0.0073600145500138615
		5 12 0.012042230146707232 32 0.055131526325578689 33 0.46396403250262475 
		34 0.46396403250262497 35 0.004898178522464219
		5 12 0.013578109172919611 32 0.061802581527140105 33 0.45951049347334583 
		34 0.45951049347334583 35 0.0055983223532486319
		5 12 0.013367077935882635 32 0.058715545112177359 33 0.46113531170578376 
		34 0.46113531170578365 35 0.0056467535403726945
		5 12 0.011022901783737143 32 0.050840699759453496 33 0.46682994652256238 
		34 0.46682994652256216 35 0.0044765054116848542
		5 12 0.0071994338130002807 32 0.034286102391135435 33 0.47785585127608038 
		34 0.47785585127608038 35 0.0028027612437036419
		5 12 0.013849162036175219 32 0.057403323810395673 33 0.46139272545975607 
		34 0.46139272545975607 35 0.0059620632339171141
		5 12 0.017449364788643149 32 0.062929115987352846 33 0.45573918974603789 
		34 0.45573918974603789 35 0.0081431397319283172
		5 12 0.012551460147136512 32 0.043670922723035528 33 0.46904244880515589 
		34 0.46904244880515589 35 0.0056927195195162214
		5 12 0.0091945494418850544 32 0.033936243265775108 33 0.47640407839872062 
		34 0.47640407839872062 35 0.004061050494898643
		5 12 0.010323631339937208 32 0.040181802728645619 33 0.47252934730350815 
		34 0.47252934730350815 35 0.0044358713244009298
		5 12 0.01052581014614465 32 0.046492868051650253 33 0.46931342243243823 
		34 0.46931342243243823 35 0.0043544769373285806
		5 12 0.0070103692229067632 32 0.029424170869427557 33 0.48032497343454134 
		34 0.48032497343454156 35 0.0029155130385827045
		5 12 0.013493132593396597 32 0.046581553856698529 33 0.46685937960919721 
		34 0.46685937960919721 35 0.0062065543315104107
		5 12 0.012518730256088694 32 0.046376258202075284 33 0.46782493307576029 
		34 0.46782493307576017 35 0.0054551453903156676
		5 12 0.012138024224000767 32 0.083933105393540347 33 0.55522843030156499 
		34 0.34492187311947098 35 0.0037785669614228343
		5 12 0.020512188546485094 32 0.11525772972242429 33 0.5093515681294063 
		34 0.3476219143852477 35 0.0072565992164365127
		5 12 0.018981172395849764 32 0.1234837279120522 33 0.55351383584479286 
		34 0.29799568290553535 35 0.0060255809417699329
		5 12 0.011203199127023463 32 0.097907746683520813 33 0.6415679656990978 
		34 0.24632000622290559 35 0.0030010822674522912
		5 12 0.0136113814808623 32 0.041323989819813091 33 0.46909633717797106 
		34 0.46909633717797128 35 0.0068719543433821912
		5 12 0.014910246696332848 32 0.045046562196700446 33 0.46617960523599511 
		34 0.46617960523599511 35 0.0076839806349764308
		5 12 0.01591797531653311 32 0.048448213867387006 33 0.46359484867944334 
		34 0.46359484867944356 35 0.0084441134571929151
		5 12 0.014696187932637749 32 0.044660630987741472 33 0.46649297461680833 
		34 0.46649297461680833 35 0.0076572318460042931
		5 12 0.013161133902041856 32 0.042211366132450912 33 0.46901769324305675 
		34 0.46901769324305698 35 0.0065921134793934201
		5 12 0.013272318456482081 32 0.044145819673323712 33 0.46798093131126256 
		34 0.46798093131126278 35 0.006619999247668663
		5 12 0.0098564791552666169 32 0.036356591218563619 33 0.47462900852161299 
		34 0.47462900852161299 35 0.0045289125829437882
		5 12 0.010556411918211817 32 0.036621441727173104 33 0.47393774823743601 
		34 0.47393774823743601 35 0.0049466498797430154
		5 12 0.017124790834129367 32 0.064574208651098863 33 0.45507254812346121 
		34 0.45507254812346121 35 0.0081559042678493818
		5 12 0.021158139830697226 32 0.07608361883138598 33 0.44612699517753279 
		34 0.44612699517753268 35 0.010504250982851354
		5 12 0.025747024603894775 32 0.099486312035738753 33 0.43796857074125045 
		34 0.42465018796251236 35 0.012147904656603571
		5 12 0.020524508225079049 32 0.08662495085100623 33 0.44926039898970022 
		34 0.43455194093473509 35 0.0090382009994793081
		5 12 0.015834521560280319 32 0.070274297869343735 33 0.45662521507830078 
		34 0.45055084891493274 35 0.0067151165771424754
		5 12 0.014279272255609668 32 0.055092885214411177 33 0.46199385777516622 
		34 0.46199385777516611 35 0.0066401269796468763
		5 12 0.013243907110335381 32 0.050101526408713522 33 0.46522111553789935 
		34 0.46522111553789935 35 0.0062123354051523885
		5 12 0.012174374186916727 32 0.053531059039044523 33 0.46456671277591866 
		34 0.46456671277591866 35 0.0051611412222014831
		5 12 0.010071765699170109 32 0.043158670433742212 33 0.471231281404909 
		34 0.471231281404909 35 0.0043070010572696625
		5 12 0.013170232433946395 32 0.048048835816222629 33 0.4662359891607501 
		34 0.46623598916075032 35 0.0063089534283304292
		5 12 0.013066528736484163 32 0.045460898634294873 33 0.46753438298148886 
		34 0.46753438298148864 35 0.0064038066662435644
		5 12 0.0093803650682983599 32 0.038160939278630651 33 0.47417146479847355 
		34 0.47417146479847355 35 0.0041157660561239057
		5 12 0.027813627118225329 32 0.093990404021206689 33 0.43187563658276595 
		34 0.43187563658276595 35 0.014444695695036019
		5 12 0.033428533524089726 32 0.11529332936808183 33 0.42239219821504165 
		34 0.41173824617772031 35 0.017147692715066453
		5 12 0.036764281219119538 32 0.1149706058060284 33 0.41476275474428359 
		34 0.413377904661552 35 0.020124453569016532
		5 12 0.044491014958177907 32 0.13828246860561666 33 0.40394404036301984 
		34 0.3887329823441984 35 0.024549493728987192
		5 12 0.042223292912906454 32 0.12633937450935279 33 0.40554780880924957 
		34 0.40244211722505618 35 0.023447406543435061
		5 12 0.050696421279486426 32 0.14940459452631416 33 0.39453150054329417 
		34 0.37688498545870114 35 0.028482498192204171
		5 12 0.018662527512442503 32 0.052334030865197667 33 0.45953706242766318 
		34 0.45953706242766285 35 0.0099293167670339126
		5 12 0.014348569210377303 32 0.043853621089900256 33 0.46725965890966747 
		34 0.46725965890966736 35 0.0072784918803876627
		5 12 0.01387174400168271 32 0.043456045496429709 33 0.46793266073555806 
		34 0.46793266073555806 35 0.0068068890307714071
		5 12 0.018320174245601277 32 0.051645176020472978 33 0.46026747529236223 
		34 0.46026747529236212 35 0.0094996991492014883
		5 12 0.019204834056255442 32 0.052529649410389845 33 0.45896841003108568 
		34 0.45896841003108568 35 0.010328696471183381
		5 12 0.020460163262966322 32 0.055260699928719112 33 0.4565476814355951 
		34 0.45654768143559532 35 0.011183773937124055
		5 12 0.021359622453659074 32 0.056772813274454437 33 0.45519985063418794 
		34 0.45519985063418794 35 0.011467863003510614;
	setAttr ".wl[2800:2899].w"
		5 12 0.022445315677804056 32 0.058527887279084041 33 0.45338554685909843 
		34 0.45338554685909832 35 0.012255703324915221
		5 12 0.020144840925897932 32 0.054431583449324757 33 0.45726039963417503 
		34 0.45726039963417492 35 0.010902776356427472
		5 12 0.022337696742079156 32 0.058184156033267785 33 0.4536907936888977 
		34 0.4536907936888977 35 0.012096559846857731
		5 12 0.015049435233695148 32 0.046081875260261841 33 0.46552054542467119 
		34 0.46552054542467119 35 0.0078275986567006312
		5 12 0.016181728646873894 32 0.050221118603131928 33 0.46253244931066456 
		34 0.46253244931066478 35 0.0085322541286646843
		5 12 0.016160732178127232 32 0.051338730618759931 33 0.46201776863844679 
		34 0.46201776863844668 35 0.0084649999262194544
		5 12 0.017880792632163221 32 0.050944311075634907 33 0.46079073445808388 
		34 0.46079073445808388 35 0.0095934273760341394
		5 12 0.014391240126470091 32 0.043909053286228648 33 0.46716372915751858 
		34 0.46716372915751847 35 0.0073722482722641857
		5 12 0.018308577306560245 32 0.050982754835009636 33 0.46044976398917331 
		34 0.4604497639891732 35 0.0098091398800835509
		5 12 0.019257279001604382 32 0.053127999441097744 33 0.45856239376805202 
		34 0.45856239376805191 35 0.010489934021194051
		5 12 0.019175112311454957 32 0.052790165764205137 33 0.4588538906400082 
		34 0.45885389064000809 35 0.010326940644323719
		5 12 0.013790101328436194 32 0.041669465289177463 33 0.46875817063193248 
		34 0.46875817063193248 35 0.0070240921185214401
		5 12 0.013715212973018894 32 0.041535304460541107 33 0.46888210781258666 
		34 0.46888210781258666 35 0.0069852669412667091
		5 12 0.015737162789583998 32 0.046427721499035533 33 0.4647696303020688 
		34 0.46476963030206869 35 0.008295855107243023
		5 12 0.013629623774490257 32 0.041493065144661882 33 0.46895957719446146 
		34 0.46895957719446146 35 0.0069581566919248525
		5 12 0.015141892778538429 32 0.045336097048554326 33 0.46580536366592346 
		34 0.46580536366592346 35 0.0079112828410602982
		5 12 0.014499725151675675 32 0.043920447479921007 33 0.46704431931051166 
		34 0.46704431931051155 35 0.0074911887473801944
		5 12 0.016259117676593896 32 0.047706093630158 33 0.46370177606899127 
		34 0.46370177606899116 35 0.0086312365552657627
		5 12 0.016266623438362791 32 0.047456049110298097 33 0.46382454788763228 
		34 0.46382454788763228 35 0.0086282316760745246
		5 12 0.014707407163539386 32 0.043767853796740114 33 0.46696163546193842 
		34 0.46696163546193864 35 0.0076014681158432995
		5 12 0.013718734430757818 32 0.041513325943550276 33 0.46889813243319256 
		34 0.46889813243319256 35 0.0069716747593069079
		5 12 0.015441047572597712 32 0.045831719384088719 33 0.46530817750265624 
		34 0.46530817750265646 35 0.0081108780380007104
		5 12 0.014075755394684615 32 0.042285068038485807 33 0.46822690370266984 
		34 0.46822690370266984 35 0.0071853691614899616
		5 12 0.01507348388268913 32 0.045385060765172673 33 0.46584078205332602 
		34 0.46584078205332602 35 0.007859891245486134
		5 12 0.014425402372132686 32 0.043884513028150919 33 0.46712997807989698 
		34 0.46712997807989698 35 0.0074301284399224581
		5 12 0.01711139919014763 32 0.049245407138338138 33 0.4622337663663485 
		34 0.4622337663663485 35 0.0091756609388173472
		5 12 0.015685536408834105 32 0.045902854720746705 33 0.4651032901681077 
		34 0.4651032901681077 35 0.0082050285342037399
		5 12 0.016589460173149242 32 0.048455408417469058 33 0.46306008697246526 
		34 0.46306008697246526 35 0.0088349574644511469
		5 12 0.024280255472286117 32 0.066196376765421519 33 0.44785088774373899 
		34 0.44785088774373888 35 0.013821592274814503
		5 12 0.021755268921781441 32 0.060429238375111792 33 0.45286497930496949 
		34 0.45286497930496949 35 0.01208553409316776
		5 12 0.021826522493668312 32 0.061468655934939193 33 0.45228552631871255 
		34 0.45228552631871255 35 0.012133768933967403
		5 12 0.019774588600413461 32 0.056387390908945692 33 0.45653434375641239 
		34 0.45653434375641261 35 0.010769332977815743
		5 12 0.026907442074316567 32 0.071791112811848259 33 0.44279351699270653 
		34 0.44279351699270653 35 0.015714411128422069
		5 12 0.024434572897742677 32 0.067258719816878892 33 0.44717370190158018 
		34 0.4471737019015804 35 0.013959303482217864
		5 12 0.017098079737335521 32 0.052037851853794607 33 0.46083653796394852 
		34 0.46083653796394852 35 0.0091909924809727359
		5 12 0.017445281600574097 32 0.059156321265514136 33 0.45722961594150968 
		34 0.45722961594150968 35 0.0089391652508924568
		5 12 0.020105306852028704 32 0.065616617149926101 33 0.45182539357206153 
		34 0.45182539357206153 35 0.010627288853922116
		5 12 0.031803173446329144 32 0.081904722489915774 33 0.43346107795152489 
		34 0.43346107795152511 35 0.019369948160704947
		5 12 0.029002158813296694 32 0.077089869396813518 33 0.43831635569198535 
		34 0.43831635569198524 35 0.01727526040591916
		5 12 0.01851756929694208 32 0.059093769436938261 33 0.45629316588408775 
		34 0.45629316588408797 35 0.009802329497943827
		5 12 0.017744882758442465 32 0.055210860216739155 33 0.45881812061955451 
		34 0.45881812061955451 35 0.0094080157857094199
		5 12 0.021873002629386424 32 0.066400619024239937 33 0.44989210686934095 
		34 0.44989210686934095 35 0.011942164607691784
		5 12 0.020997582847986713 32 0.066530147137786835 33 0.45063583881015673 
		34 0.45063583881015673 35 0.011200592393912908
		5 12 0.020584799794244969 32 0.06819264072035254 33 0.45025687049242036 
		34 0.45025687049242036 35 0.010708818500561745
		5 12 0.059876393365152263 32 0.17692752492629446 33 0.38936143833613573 
		34 0.34078576112877906 35 0.033048882243638562
		5 12 0.05345328989315553 32 0.16863618514257889 33 0.4000175607260627 
		34 0.34896939270245514 35 0.028923571535747726
		5 12 0.041800486313347839 32 0.15048741222624037 33 0.42248289691415597 
		34 0.36464086413258701 35 0.020588340413668752
		5 12 0.029290605548032211 32 0.12617379527948838 33 0.45294022276951307 
		34 0.37897956084007733 35 0.012615815562889134
		5 12 0.022551577455241199 32 0.11146706682209422 33 0.47670605444937586 
		34 0.38047977706187092 35 0.0087955242114178232
		5 12 0.01618723497284557 32 0.089228743398553967 33 0.49210003368298322 
		34 0.39659523864466023 35 0.0058887493009568961
		5 12 0.010886231128430672 32 0.062075789943008136 33 0.48885638942287024 
		34 0.43432055738607928 35 0.0038610321196117484
		5 12 0.0082101837547306177 32 0.045532691326193489 33 0.47852991749266777 
		34 0.46479061558459944 35 0.0029365918418087361
		5 12 0.014903673167968054 32 0.052869722311906078 33 0.46244565131223198 
		34 0.4624456513122322 35 0.0073353018956616835
		5 12 0.014607211679063361 32 0.046334644604828834 33 0.46601320788436323 
		34 0.46601320788436346 35 0.007031727947380959
		5 12 0.017950097914472194 32 0.051433758224175286 33 0.46081320384642566 
		34 0.46081320384642566 35 0.0089897361685011678
		5 12 0.022567826906839443 32 0.059334139571740226 33 0.45311257463763455 
		34 0.45311257463763455 35 0.011872884246151311
		5 12 0.024413633676772264 32 0.062171886000925297 33 0.45017335476335529 
		34 0.45017335476335529 35 0.013067770795591915
		5 12 0.024996489309704866 32 0.06300354263353658 33 0.4493001456456665 
		34 0.44930014564566639 35 0.013399676765425791
		5 12 0.027966044521071286 32 0.1335707664581621 33 0.47575153065970405 
		34 0.3516668918746661 35 0.011044766486396539
		5 12 0.02657090847400571 32 0.14280724684876764 33 0.50605531814682114 
		34 0.31505918778684022 35 0.0095073387435653575
		5 12 0.039230963563976672 32 0.15472508313773217 33 0.43932695197675625 
		34 0.34898167932781826 35 0.017735321993716562
		5 12 0.035632859642027156 32 0.15774036165897545 33 0.46355774628628549 
		34 0.32855619280586523 35 0.014512839606846788
		5 12 0.051151714401462385 32 0.17309743289125853 33 0.4117944653000214 
		34 0.33814422361916058 35 0.025812163788097052
		5 12 0.046715018149823602 32 0.17415528368481428 33 0.43003550774531824 
		34 0.32766917312627591 35 0.021425017293767987
		5 12 0.054823999842704751 32 0.17678824507254404 33 0.40415946257653518 
		34 0.3364195284307297 35 0.027808764077486461
		5 12 0.049104321796709871 32 0.17427811889719852 33 0.42147425646399211 
		34 0.33226603799610044 35 0.022877264845999012
		5 12 0.021424550991403422 32 0.14517498546459759 33 0.57159978172176007 
		34 0.25543331788074181 35 0.0063673639414971424
		5 12 0.025535284467842919 32 0.14890168074883789 33 0.53044643529190205 
		34 0.28676825650971849 35 0.0083483429816986754
		5 12 0.031736066373260312 32 0.15241624790682032 33 0.48267850274450985 
		34 0.3213134213865606 35 0.011855761588848934
		5 12 0.039390701851831134 32 0.16418917592369872 33 0.45264890733953111 
		34 0.32755920087575313 35 0.016212014009185923
		5 12 0.031836693286313868 32 0.08260005237086912 33 0.4331469691692863 
		34 0.4331469691692863 35 0.019269316004244499
		5 12 0.030048856821043107 32 0.079776410310027954 33 0.43609744478432966 
		34 0.43609744478432966 35 0.017979843300269607
		5 12 0.024324847532644328 32 0.072578160532810784 33 0.44478241268866869 
		34 0.44478241268866869 35 0.013532166557207508
		5 12 0.022954090420894566 32 0.071696243444477614 33 0.44646876217525405 
		34 0.44646876217525405 35 0.012412141784119641
		5 12 0.021936901926313493 32 0.071934162495499318 33 0.44731315451737652 
		34 0.44731315451737652 35 0.011502626543434235
		5 12 0.027465555008827837 32 0.090954687239349769 33 0.43358189315727669 
		34 0.43358189315727658 35 0.014415971437269191
		5 12 0.026329916794553817 32 0.085323396619477007 33 0.43720959546444316 
		34 0.43720959546444305 35 0.013927495657082968
		5 12 0.033864375086546786 32 0.098870404847555327 33 0.42395610568185987 
		34 0.4239561056818601 35 0.019353008702177776
		5 12 0.033928711189255507 32 0.10186980747516339 33 0.42259192625758496 
		34 0.42259192625758496 35 0.019017628820411189
		5 12 0.027414597777778164 32 0.089332335543964192 33 0.43437157038678792 
		34 0.43437157038678792 35 0.014509925904681972
		5 12 0.023547916605580671 32 0.076750549080412997 33 0.44366661565567245 
		34 0.44366661565567245 35 0.01236830300266142
		5 12 0.022984033543268931 32 0.074735341823376766 33 0.44507680689472223 
		34 0.44507680689472245 35 0.012127010843909486
		5 12 0.029680486360539705 32 0.085033701808290063 33 0.43410820979020015 
		34 0.43410820979020015 35 0.017069392250770057
		5 12 0.02715550437767035 32 0.080605419351700736 33 0.4385069858362125 
		34 0.43850698583621228 35 0.015225104598204187
		5 12 0.027650835301276013 32 0.080926037894931871 33 0.43785479821039802 
		34 0.43785479821039802 35 0.015713530382996114
		5 12 0.028903221946791208 32 0.08256963775199759 33 0.43593599752534595 
		34 0.43593599752534617 35 0.016655145250518925
		5 12 0.025253567644040197 32 0.078429232823089265 33 0.44129890550425155 
		34 0.44129890550425144 35 0.013719388524367581
		5 12 0.025206035453766963 32 0.077614437276911419 33 0.44167921975545849 
		34 0.44167921975545849 35 0.013821087758404722
		5 12 0.030837717742353738 32 0.085026456507667714 33 0.43308527375502026 
		34 0.43308527375502026 35 0.017965278239938015
		5 12 0.031575298702163856 32 0.088148339217727703 33 0.43100513722298173 
		34 0.43100513722298195 35 0.018266087634144657
		5 12 0.030925673694388721 32 0.087121501944116969 33 0.43200012348667904 
		34 0.43200012348667893 35 0.017952577388136427
		5 12 0.029730498216291212 32 0.083574264273048995 33 0.4347328692806815 
		34 0.4347328692806815 35 0.017229498949296797
		5 12 0.036831526003038101 32 0.10757463121876694 33 0.417362502917905 
		34 0.417362502917905 35 0.02086883694238504
		5 12 0.035727576296402795 32 0.10235674912565691 33 0.42068583941098248 
		34 0.42068583941098248 35 0.020543995755975288
		5 12 0.035561847540171596 32 0.10753350138755428 33 0.41852175957800164 
		34 0.41852175957800153 35 0.019861131916270942
		5 12 0.038464967744156905 32 0.11337631990391882 33 0.41325483945947927 
		34 0.41325483945947927 35 0.021649033432965828
		5 12 0.0018506349675365195 32 0.014476542258097242 33 0.5673143943512563 
		34 0.41583808161193953 35 0.00052034681117022656
		5 12 0.020483472517804746 32 0.07240245327850664 33 0.448541505894403 
		34 0.44854150589440289 35 0.010031062414882767
		5 12 0.01735448141630562 32 0.062482425945854389 33 0.4559028925905394 
		34 0.4559028925905394 35 0.0083573074567611875
		5 12 0.0012202584613156919 32 0.0083241413271108369 33 0.50192688422396581 
		34 0.48816019634282809 35 0.00036851964477949877;
	setAttr ".wl[2900:2999].w"
		5 12 0.0023792834876204877 32 0.013109191866249934 33 0.49184282848953176 
		34 0.49184282848953176 35 0.00082586766706601005
		5 12 0.019716020911393874 32 0.06679008949020715 33 0.45178221093271148 
		34 0.45178221093271148 35 0.0099294677329760089
		5 12 0.022255830143072343 32 0.071257220856510886 33 0.44739872101069972 
		34 0.44739872101069994 35 0.011689506979017035
		5 12 0.0050099439925560202 32 0.02268107155554527 33 0.4851588816471834 
		34 0.48515888164718363 35 0.0019912211575316072
		5 12 0.030580553616686511 32 0.087306671533176991 33 0.43238891243581951 
		34 0.43238891243581939 35 0.017334949978497684
		5 12 0.029725190626258488 32 0.085804346540295659 33 0.43382190218899885 
		34 0.43382190218899885 35 0.016826658455448264
		5 12 0.027543567903427556 32 0.081736166977575131 33 0.43771229312991733 
		34 0.43771229312991733 35 0.015295678859162651
		5 12 0.032298561616639382 32 0.0960276246523315 33 0.42688104891260614 
		34 0.42688104891260603 35 0.01791171590581693
		5 12 0.028642637446997247 32 0.089026825090486122 33 0.43346103123082191 
		34 0.4334610312308218 35 0.015408475000872954
		5 12 0.0084744355573817282 32 0.057787083422809006 33 0.53265651430608818 
		34 0.39842230515056054 35 0.0026596615631605948
		5 12 0.0072561273879497559 32 0.04518908687559553 33 0.49642656738749713 
		34 0.44873790273653719 35 0.0023903156124203732
		5 12 0.015127393491760864 32 0.045304126062303544 33 0.46582421947351815 
		34 0.46582421947351837 35 0.0079200414988989318
		5 12 0.01504774317014179 32 0.045576050306910677 33 0.46576877141931217 
		34 0.46576877141931217 35 0.0078386636843231529
		5 12 0.014443339272027558 32 0.044019207419296484 33 0.46705440781947954 
		34 0.46705440781947977 35 0.0074286376697165644
		5 12 0.017149491958869851 32 0.049528167615413156 33 0.46207777128488842 
		34 0.46207777128488842 35 0.0091667978559402934
		5 12 0.017996291586345674 32 0.050894486708848885 33 0.46068931205274682 
		34 0.46068931205274671 35 0.0097305975993119392
		5 12 0.016614639751023126 32 0.047793650113318493 33 0.46340763947030955 
		34 0.46340763947030933 35 0.0087764311950395621
		5 12 0.014374090155604142 32 0.042910490363218673 33 0.46768091400166811 
		34 0.46768091400166811 35 0.0073535914778409617
		5 12 0.013687660091540382 32 0.041440501561536849 33 0.46896654649887426 
		34 0.46896654649887415 35 0.0069387453491743791
		5 12 0.014906317260295081 32 0.044960371873242241 33 0.46617385237604325 
		34 0.46617385237604325 35 0.0077856061143761861
		5 12 0.015071074414567544 32 0.045852067584688759 33 0.46561406671884281 
		34 0.46561406671884281 35 0.007848724563058183
		5 12 0.014347113225334404 32 0.043819448664001628 33 0.46723730077482195 
		34 0.46723730077482195 35 0.0073588365610200625
		5 12 0.01755985702707915 32 0.050326686121294248 33 0.46135249609308404 
		34 0.46135249609308393 35 0.0094084646654586587
		5 12 0.018694039210374096 32 0.052116532707452111 33 0.45951897344507148 
		34 0.45951897344507148 35 0.010151481192030857
		5 12 0.017362248389108943 32 0.049168331993592891 33 0.46212236204270052 
		34 0.46212236204270074 35 0.0092246955318968597
		5 12 0.014555477215292534 32 0.043276906563346401 33 0.46735606035193916 
		34 0.46735606035193905 35 0.0074554955174829666
		5 12 0.013611488804802695 32 0.041288886007144837 33 0.46910819841682694 
		34 0.46910819841682694 35 0.0068832283543985504
		5 12 0.014744385279177007 32 0.043663814402078102 33 0.46701590396664039 
		34 0.46701590396664039 35 0.0075599923854641629
		5 12 0.016088862427070146 32 0.052435055558268266 33 0.46156864239759626 
		34 0.46156864239759626 35 0.0083387972194691046
		5 12 0.015130521071163538 32 0.051748975201054363 33 0.4627542668064219 
		34 0.46275426680642179 35 0.0076119701149384798
		5 12 0.019767716999665477 32 0.062027698109555635 33 0.45432411439412573 
		34 0.45432411439412573 35 0.0095563561025274069
		5 12 0.016326751985716717 32 0.059155730711834671 33 0.45867512024660856 
		34 0.45867512024660878 35 0.0071672768092311918
		5 12 0.022628036112449668 32 0.070852666009277948 33 0.44788120923263636 
		34 0.44788120923263636 35 0.01075687941299976
		5 12 0.039831786720584558 32 0.10321820371589217 33 0.41872577114363541 
		34 0.41872577114363541 35 0.019498467276252488
		5 12 0.037309385844268482 32 0.10459732474580255 33 0.42017995413998466 
		34 0.42017995413998455 35 0.017733381129959772
		5 12 0.039996524059937304 32 0.11409322886194297 33 0.41426143521156594 
		34 0.41426143521156561 35 0.017387376654988278
		5 12 0.041982202081227125 32 0.11003585163919233 33 0.41436734147193244 
		34 0.41436734147193244 35 0.019247263335715671
		5 12 0.034686293832290452 32 0.10909208370674116 33 0.42042860115719499 
		34 0.42042860115719499 35 0.01536442014657838
		5 12 0.037140641417601025 32 0.11991467986114605 33 0.4141094598145042 
		34 0.4141094598145042 35 0.014725759092244476
		5 12 0.030659394872448183 32 0.11362366239169321 33 0.42172894677031175 
		34 0.42172894677031197 35 0.012259049195234763
		5 12 0.033311785221826665 32 0.12851875311248923 33 0.41352125364044912 
		34 0.41308506802290457 35 0.011563140002330474
		5 12 0.028151928654409835 32 0.13770751139649448 33 0.43214613390595114 
		34 0.39382593696034279 35 0.0081684890828017647
		5 12 0.022667194458146623 32 0.14664829067446494 33 0.48187804845155502 
		34 0.34340771976139972 35 0.0053987466544337722
		5 12 0.02322936316991155 32 0.16034617907466864 33 0.49246753300731466 
		34 0.31920332053330858 35 0.0047536042147965909
		5 12 0.026429099278750288 32 0.14329265265250496 33 0.44531835270046871 
		34 0.37862280856204433 35 0.0063370868062315863
		5 12 0.033606187052612792 32 0.13902766490929991 33 0.41274568636480385 
		34 0.40500297511106664 35 0.0096174865622168457
		5 12 0.039025699816991451 32 0.13045258023522133 33 0.40870163629825629 
		34 0.40870163629825629 35 0.013118447351274621
		5 12 0.042648412107144706 32 0.12306721136849941 33 0.40898617953960259 
		34 0.40898617953960248 35 0.016312017445150786
		5 12 0.04308365534538517 32 0.11391332105038166 33 0.41252780363479602 
		34 0.41252780363479591 35 0.01794741633464127
		5 12 0.038513738728605793 32 0.097366441525149616 33 0.42302220348817832 
		34 0.42302220348817832 35 0.018075412769887885
		5 12 0.040421559547922696 32 0.10287926127485585 33 0.41905371430061039 
		34 0.41905371430061039 35 0.018591750576000664
		5 12 0.041568362690916523 32 0.10517734732289649 33 0.41749667809349367 
		34 0.41749667809349367 35 0.01826093379919963
		5 12 0.038142045158421047 32 0.095715841480883884 33 0.42457076779455827 
		34 0.42457076779455816 35 0.017000577771578741
		5 12 0.035238663855177217 32 0.087354088101861113 33 0.43058013173224546 
		34 0.43058013173224546 35 0.016246984578470798
		5 12 0.035969422937999727 32 0.089681347201718831 33 0.42850407663920143 
		34 0.42850407663920143 35 0.017341076581878594
		5 12 0.036879192059674791 32 0.092971382946794509 33 0.42633329239722595 
		34 0.42633329239722595 35 0.01748284019907893
		5 12 0.036693372211434414 32 0.091578376879244666 33 0.42756162562674249 
		34 0.42756162562674227 35 0.016604999655836165
		5 12 0.028388115715178578 32 0.070456509905196391 33 0.44349309036502943 
		34 0.44349309036502932 35 0.014169193649566349
		5 12 0.029871191884656662 32 0.074315591927055308 33 0.44071993875725501 
		34 0.44071993875725501 35 0.014373338673777939
		5 12 0.026800877529121577 32 0.068112557830229709 33 0.44580860688971541 
		34 0.44580860688971563 35 0.013469350861217541
		5 12 0.029488012642655229 32 0.07413352721936313 33 0.44090199064206786 
		34 0.44090199064206775 35 0.014574478853846129
		5 12 0.025828907208145201 32 0.067448835050142708 33 0.44678927950560948 
		34 0.44678927950560948 35 0.013143698730493116
		5 12 0.025339893246558387 32 0.064407088048496042 33 0.44857172264245271 
		34 0.4485717226424526 35 0.013109573420040254
		5 12 0.024786089948060034 32 0.064265998568551058 33 0.4490482157919492 
		34 0.4490482157919492 35 0.012851479899490549
		5 12 0.022968340283183477 32 0.064378880330984836 33 0.45051447187939114 
		34 0.45051447187939103 35 0.011623835627049632
		5 12 0.020749880340892028 32 0.058297241876021387 33 0.45520930318569286 
		34 0.45520930318569286 35 0.010534271411700864
		5 12 0.016843314333177151 32 0.052743928694048522 33 0.4611209557287641 
		34 0.4611209557287641 35 0.0081708455152461265
		5 12 0.02590605732633431 32 0.065082634883649515 33 0.44782893341739843 
		34 0.44782893341739821 35 0.013353440955219615
		5 12 0.028262919230790353 32 0.073367984370092787 33 0.44207529886757124 
		34 0.44207529886757124 35 0.014218498663974424
		5 12 0.026725843501130307 32 0.073751071955137693 33 0.44302318799566998 
		34 0.4430231879956702 35 0.013476708552391699
		5 12 0.036236247024198219 32 0.093159680164317915 33 0.42622488223048233 
		34 0.42622488223048255 35 0.018154308350518924
		5 12 0.037431190649318394 32 0.097069659773391354 33 0.42347307371814863 
		34 0.42347307371814852 35 0.018553002140993063
		5 12 0.032241003075315577 32 0.089438608178601678 33 0.43114871915455161 
		34 0.43114871915455161 35 0.016022950436979544
		5 12 0.027658652064819166 32 0.086529178616747887 33 0.43651460475409559 
		34 0.43651460475409559 35 0.012782959810241802
		5 12 0.030467619960466513 32 0.096095687353024928 33 0.4298398633743245 
		34 0.42983986337432439 35 0.013756965937859675
		5 12 0.034409053236794065 32 0.09621087113506982 33 0.42632117364454436 
		34 0.42632117364454425 35 0.016737728339047502
		5 12 0.01155207721296134 32 0.048545776500317106 33 0.4676274084232373 
		34 0.4676274084232373 35 0.004647329440246966
		5 12 0.025395050696979869 32 0.1189505783767814 33 0.43209680809842449 
		34 0.41524525404653018 35 0.0083123087812838788
		5 12 0.020989617745463124 32 0.12957772942907617 33 0.47548647568271718 
		34 0.36833635312425472 35 0.0056098240184886709
		5 12 0.022594569619224771 32 0.082064506583100078 33 0.44287849795129686 
		34 0.44287849795129686 35 0.0095839278950815305
		5 12 0.026537707346216185 32 0.097645707315640762 33 0.43240053616979579 
		34 0.43240053616979579 35 0.011015512998551448
		5 12 0.029535794759079689 32 0.079097754233773937 33 0.43691627775465269 
		34 0.43691627775465258 35 0.01753389549784113
		5 12 0.028660181784822471 32 0.076866681926517813 33 0.43878469624916255 
		34 0.43878469624916255 35 0.016903743790334616
		5 12 0.027874771189373617 32 0.075392472230854254 33 0.44020410034013513 
		34 0.44020410034013502 35 0.016324555899502002
		5 12 0.02852655610381117 32 0.077307893292965793 33 0.43869089753046514 
		34 0.43869089753046514 35 0.016783755542292743
		5 12 0.019536305071857378 32 0.056871231855445931 33 0.45649347614654556 
		34 0.45649347614654556 35 0.01060551077960557
		5 12 0.021449958666598549 32 0.061413416922069759 33 0.4526133514241249 
		34 0.4526133514241249 35 0.011909921563081748
		5 12 0.017812839194175076 32 0.050798711890876612 33 0.46096935358272917 
		34 0.46096935358272917 35 0.0094497417494899903
		5 12 0.018286285427809811 32 0.052057163796438953 33 0.45994338684788633 
		34 0.45994338684788633 35 0.0097697770799786039
		5 12 0.028688505855795847 32 0.077529884815980166 33 0.43841575209680428 
		34 0.4384157520968045 35 0.016950105134615125
		5 12 0.02787959213598426 32 0.077702515305034553 33 0.43922016502711525 
		34 0.43922016502711547 35 0.015977562504750357
		5 12 0.0256393735761225 32 0.074406517594118537 33 0.44273833737543755 
		34 0.44273833737543755 35 0.014477434078883895
		5 12 0.022391136529085774 32 0.065758388281573793 33 0.44973122478221395 
		34 0.44973122478221395 35 0.012388025624912594
		5 12 0.024333291141836293 32 0.069757242611786674 33 0.44609626050382306 
		34 0.44609626050382306 35 0.013716945238730916
		5 12 0.026741067810197472 32 0.076072469359269257 33 0.44097080719234127 
		34 0.44097080719234127 35 0.015244848445850771
		5 12 0.024722552233416267 32 0.070234588807715964 33 0.44552340565050425 
		34 0.44552340565050413 35 0.013996047657859473
		5 12 0.017428906220853538 32 0.053324904346400824 33 0.46004897166073805 
		34 0.46004897166073827 35 0.0091482461112692565
		5 12 0.018780763144113373 32 0.056428344861012454 33 0.45736455232191525 
		34 0.45736455232191525 35 0.010061787351043641
		5 12 0.023681096180103316 32 0.068128070481019792 33 0.44742335652978782 
		34 0.44742335652978782 35 0.013344120279301288
		5 12 0.018119865348294892 32 0.052994458837544077 33 0.45959431762572384 
		34 0.45959431762572384 35 0.0096970405627134805;
	setAttr ".wl[3000:3099].w"
		5 12 0.016088301102543924 32 0.04882172841151209 33 0.46335165215461571 
		34 0.4633516521546156 35 0.0083866661767127114
		5 12 0.01491708458691547 32 0.044376532289170725 33 0.46652380585113301 
		34 0.4665238058511329 35 0.0076587714216479856
		5 12 0.016520373435603114 32 0.048658765024642434 33 0.46307490296715809 
		34 0.46307490296715809 35 0.0086710556054383318
		5 12 0.016292648308951097 32 0.047595913762901107 33 0.46380156202226519 
		34 0.46380156202226508 35 0.0085083138836175333
		5 12 0.017248955340648745 32 0.049410978685950971 33 0.46213017256460159 
		34 0.46213017256460159 35 0.0090797208441971179
		5 12 0.017347660610179026 32 0.049339319158631184 33 0.46208252555729967 
		34 0.46208252555729956 35 0.0091479691165905624
		5 12 0.017026348615233701 32 0.048764891954462229 33 0.46263498661387509 
		34 0.46263498661387509 35 0.0089387862025538441
		5 12 0.017868213940822431 32 0.050341452815855572 33 0.46114936591398997 
		34 0.46114936591398986 35 0.009491601415342197
		5 12 0.019703969559164324 32 0.055556584305388838 33 0.45701600437513845 
		34 0.45701600437513823 35 0.010707437385170271
		5 12 0.018162364303371543 32 0.05228706331332976 33 0.45991948603701799 
		34 0.45991948603701788 35 0.0097116003092628852
		5 12 0.026783691818821721 32 0.073309471397146289 33 0.44213930455527573 
		34 0.44213930455527573 35 0.01562822767348044
		5 12 0.027228015496427716 32 0.075152551244604238 33 0.44088136196565791 
		34 0.44088136196565769 35 0.015856709327652471
		5 12 0.026754423041720817 32 0.074081326180822291 33 0.44184690619140837 
		34 0.44184690619140837 35 0.015470438394640235
		5 12 0.026051213498680975 32 0.07202478785453223 33 0.44347291108414466 
		34 0.44347291108414466 35 0.014978176478497526
		5 12 0.02539824747858889 32 0.070916640202150966 33 0.44460879392380315 
		34 0.44460879392380315 35 0.014467524471653856
		5 12 0.015494490797784324 32 0.046939808718042153 33 0.4647666712023456 
		34 0.4647666712023456 35 0.008032358079482306
		5 12 0.01725616951624806 32 0.050675511773344888 33 0.46146270873989792 
		34 0.46146270873989792 35 0.0091429012306111987
		5 12 0.018934262873879785 32 0.05426682421923041 33 0.45829105589832281 
		34 0.45829105589832281 35 0.01021680111024423
		5 12 0.020707176852643915 32 0.057961607021843345 33 0.45497655133056841 
		34 0.4549765513305683 35 0.011378113464376094
		5 12 0.026560971160645153 32 0.072958882364311292 33 0.44261362120938758 
		34 0.44261362120938758 35 0.015252904056268366
		5 12 0.02804805351907344 32 0.075711302265444147 33 0.43993863045578774 
		34 0.43993863045578774 35 0.016363383303906971
		5 12 0.026059664583949385 32 0.072159257953355413 33 0.44344746026020365 
		34 0.44344746026020365 35 0.014886156942287943
		5 12 0.02860125772286197 32 0.076716697370959056 33 0.43894976322056006 
		34 0.43894976322055995 35 0.016782518465059043
		5 12 0.017306804802078791 32 0.078035362790549651 33 0.44916028758994642 
		34 0.44916028758994631 35 0.0063372572274787943
		5 12 0.021299209068674722 32 0.098213635426499482 33 0.43847822227455463 
		34 0.4345905328638574 35 0.0074184003664136697
		5 12 0.014671453660172851 32 0.087142044387788622 33 0.47378741151917064 
		34 0.41990073306711434 35 0.0044983573657536267
		5 12 0.017814149889599749 32 0.10792606098107019 33 0.47474591568883895 
		34 0.39438234081875417 35 0.0051315326217370874
		5 12 0.019542201688172282 32 0.13167787563638902 33 0.56772518224483992 
		34 0.27507317260518249 35 0.0059815678254163587
		5 12 0.018070497469523283 32 0.16601736148274684 33 0.64992229909821964 
		34 0.1615623450252496 35 0.004427496924260658
		5 12 0.013032699372818639 32 0.12609506293285808 33 0.67602803764749497 
		34 0.18162105577609824 35 0.0032231442707300853
		5 12 0.023261896948007364 32 0.1386713049557517 33 0.53413580636542068 
		34 0.29625461259345814 35 0.007676379137362137
		5 12 0.028990662037670385 32 0.14727681303095302 33 0.49456263179110266 
		34 0.31856252701517357 35 0.010607366125100385
		5 12 0.017576846582531468 32 0.056652019173841946 33 0.4582480355339133 
		34 0.45824803553391319 35 0.009275063175800187
		5 12 0.0092758964307217227 32 0.077460896413658956 33 0.60928738611671973 
		34 0.30140751198013149 35 0.0025683090587681171
		5 12 0.0075529120768210731 32 0.053359050335083008 33 0.52943495645082006 
		34 0.40737009175215477 35 0.0022829893851210974
		5 12 0.019084275476952867 32 0.23111180853423058 33 0.66563266731171433 
		34 0.080361578469946335 35 0.0038096702071559671
		5 12 0.016464676785852405 32 0.20143844717757148 33 0.68608221193975905 
		34 0.092578052285885545 35 0.0034366118109315316
		5 12 0.013289380774798996 32 0.1616565072851481 33 0.70688748506532073 
		34 0.11526952031006851 35 0.0028971065646635798
		5 12 0.010899113750278237 32 0.11811109327090605 33 0.69038106657444875 
		34 0.17802705803147079 35 0.0025816683728962153
		5 12 0.0093197087922318456 32 0.078238521587896528 33 0.5912890897364379 
		34 0.31863263190701513 35 0.0025200479764186925
		5 12 0.0081087181005944555 32 0.04336816322232747 33 0.47288135205058662 
		34 0.47278976394491401 35 0.0028520026815774483
		5 12 0.33356436564431735 13 0.051698916754890169 32 0.40168888745269021 
		33 0.12879023918224655 35 0.08425759096585568
		5 12 0.17975510272472989 13 0.013824526086778857 32 0.5202767464767234 
		33 0.26755372481072898 35 0.018589899901039004
		5 12 0.09860233802418919 32 0.46783748063181058 33 0.4050796413401298 
		34 0.014854852458977533 35 0.013625687544892882
		5 12 0.24754269024782241 13 0.021617192008389075 32 0.39571725095114163 
		33 0.25191372075080309 35 0.083209146041843859
		5 12 0.21746995873612746 32 0.39303701005943525 33 0.29129233635974944 
		35 0.069032309851964596 36 0.029168384992723229
		5 12 0.064890207787889537 32 0.45988813062236589 33 0.45071627339827136 
		34 0.015991432241237283 35 0.0085139559502357496
		5 12 0.31324292055413705 32 0.40167908300376787 33 0.24029430570858162 
		35 0.026906334160114901 36 0.017877356573398659
		5 12 0.12229897366675146 32 0.43986810317252634 33 0.41139311929022088 
		34 0.018000981713533908 35 0.0084388221569673995
		5 12 0.31452843327686114 13 0.041604423065987238 32 0.39384917812532949 
		33 0.15302937255395424 35 0.096988592977867938
		5 12 0.16144747034062992 13 0.012312109534377672 32 0.49739278915512952 
		33 0.30865605632201903 35 0.020191574647843987
		5 12 0.28433188914843094 13 0.03065560912521265 32 0.39402707730320402 
		33 0.19688753159844227 35 0.094097892824710094
		5 12 0.13753235749923598 32 0.48106839262481771 33 0.34914395348992056 
		34 0.013338236882681818 35 0.018917059503344061
		5 12 0.027605177285545721 32 0.41598076308753767 33 0.53171385659628534 
		34 0.020877580887583919 35 0.0038226221430473326
		5 12 0.037167940854523171 32 0.42860592608622694 33 0.50582979045435728 
		34 0.023155616853417958 35 0.0052407257514746602
		5 12 0.018262772457151872 32 0.35026706502026034 33 0.60052956794139045 
		34 0.028167643013512818 35 0.0027729515676846359
		5 12 0.017521132678570028 32 0.31396778377736484 33 0.6245325897946139 
		34 0.041113046088731224 35 0.0028654476607200157
		5 12 0.019897320234300596 32 0.18108945882265487 33 0.55782513085147645 
		34 0.23770822200912201 35 0.00347986808244608
		5 12 0.025068038788364267 32 0.37470608550677953 33 0.54250380256152109 
		34 0.054884132393489909 35 0.0028379407498452442
		5 12 0.021233615071229634 32 0.38919067171715377 33 0.56486238527338983 
		34 0.021706523290971391 35 0.0030068046472553544
		5 12 0.30226154030670127 32 0.38940162046512156 33 0.23796892892675697 
		35 0.041299811610570322 36 0.029068098690849895
		5 12 0.099254278005747848 32 0.44167121895044281 33 0.43101971683236784 
		34 0.019261009826896228 35 0.008793776384545246
		5 12 0.025883215742264969 32 0.3621955476453142 33 0.54672208334489314 
		34 0.061768449611433969 35 0.0034307036560937585
		5 12 0.019864572677985547 32 0.17527865612628671 33 0.55550674385654075 
		34 0.245438537079503 35 0.0039114902596839368
		5 12 0.018565188418599301 32 0.15856026794724642 33 0.55514673852883201 
		34 0.26368235133796414 35 0.0040454537673580001
		5 12 0.016519353439945161 32 0.13951150251751476 33 0.56155519144081789 
		34 0.27850738238476935 35 0.0039065702169528939
		5 12 0.022163684078411891 32 0.32703741395537411 33 0.58392662921752836 
		34 0.063345249016603766 35 0.0035270237320818598
		5 12 0.024615434599900336 32 0.35056580858707043 33 0.55941934264523174 
		34 0.06179932506073238 35 0.0036000891070650637
		5 12 0.076687661597589163 32 0.45197688088755089 33 0.44675739518688407 
		34 0.017009399843273917 35 0.0075686624847020462
		5 12 0.070304997352432827 32 0.45367432475108038 33 0.45074171366713334 
		34 0.017386004221162359 35 0.0078929600081912056
		5 12 0.25444684434245796 32 0.36004553983283272 33 0.25644722906880779 
		35 0.075624886600952401 36 0.053435500154949238
		5 12 0.28022941119574013 32 0.37210857898028982 33 0.24316118838773584 
		35 0.060912399660615887 36 0.043588421775618232
		5 12 0.2286710838438768 32 0.36240869575415791 33 0.28016927795856572 
		35 0.077246947716648251 36 0.051503994726751191
		5 12 0.21398841269313801 32 0.37440561767997832 33 0.29612034761271355 
		35 0.073426212845604452 36 0.042059409168565674
		5 12 0.014711072305514614 32 0.12166066691621397 33 0.56542472059113846 
		34 0.294457627398866 35 0.0037459127882669709
		5 12 0.012379587941204966 32 0.10076382467058335 33 0.56958289275516016 
		34 0.31396139656073868 35 0.0033122980723128337
		5 12 0.018412013892120247 32 0.30256363890863269 33 0.62231718575074735 
		34 0.053600111903401783 35 0.003107049545097911
		5 12 0.019752848870689458 32 0.30624070098310735 33 0.6091914504034589 
		34 0.061516579211108195 35 0.0032984205316360822
		5 12 0.062507708748593918 32 0.45636761534392506 33 0.45557853748354399 
		34 0.017805869655339132 35 0.0077402687685979698
		5 12 0.059338429166588526 32 0.45867034120704769 33 0.45713147112488728 
		34 0.017150128035646053 35 0.0077096304658304015
		5 12 0.014226089724465221 32 0.061421038021255786 33 0.45942496969060204 
		34 0.45942496969060204 35 0.0055029328730749113
		5 12 0.019248127725663072 32 0.069620648531231483 33 0.45140976772711305 
		34 0.45140976772711305 35 0.0083116882888793781
		5 12 0.025660413348745539 32 0.079566247538395279 33 0.44133535848657635 
		34 0.44133535848657657 35 0.012102622139706212
		5 12 0.030632915929128746 32 0.083901071835827706 33 0.43500119161863121 
		34 0.4350011916186311 35 0.015463628997781293
		5 12 0.031665028047276625 32 0.081696469667035823 33 0.43541873230481448 
		34 0.43541873230481437 35 0.015801037676058796
		5 12 0.03179576114132833 32 0.079425654097678267 33 0.43665308892216143 
		34 0.43665308892216143 35 0.015472406916670593
		5 12 0.032541339877948453 32 0.080171733187251751 33 0.43594884102342679 
		34 0.43594884102342657 35 0.015389244887946485
		5 12 0.010383166587717521 32 0.059758296572828135 33 0.47255013614196989 
		34 0.45392245506403883 35 0.0033859456334456336
		5 12 0.018554293964046977 32 0.056390398951930862 33 0.45747292899199299 
		34 0.45747292899199288 35 0.010109449100036335
		5 12 0.025911936057202833 13 0.014603497090018368 32 0.072737261287974281 
		33 0.44337365278240226 34 0.44337365278240226
		5 12 0.030636279112949687 13 0.018190796316754101 32 0.080958316435313663 
		33 0.43510730406749132 34 0.43510730406749121
		5 12 0.026007703581582366 13 0.014762132395735386 32 0.072643871646660668 
		33 0.4432931461880108 34 0.4432931461880108
		5 12 0.025968293324658959 13 0.014713992654681794 32 0.072829142543441194 
		33 0.44324428573860902 34 0.44324428573860902
		5 12 0.029843593688663562 13 0.017624347904476475 32 0.079534601222415763 
		33 0.43649872859222216 34 0.43649872859222205
		5 12 0.027443527535884558 13 0.015805264440924113 32 0.075219674391252711 
		33 0.4407657668159693 34 0.4407657668159693
		5 12 0.030673291955207568 13 0.018277521864414885 32 0.081064869977738999 
		33 0.4349921581013193 34 0.4349921581013193
		5 12 0.025968929211127981 32 0.072830396706597605 33 0.44324314201157811 
		34 0.44324314201157811 35 0.014714390059118256
		5 12 0.026008166739976489 32 0.072644750020875268 33 0.44329235749875573 
		34 0.44329235749875573 35 0.014762368241636768
		5 12 0.027443793055124302 32 0.075220166304581379 33 0.44076533715368449 
		34 0.44076533715368449 35 0.015805366332925258
		5 12 0.029843890462410812 32 0.079535129690751008 33 0.43649822305323632 
		34 0.4364982230532361 35 0.017624533740365819;
	setAttr ".wl[3100:3148].w"
		5 12 0.030673823384442609 32 0.081065844705376963 33 0.43499120328937907 
		34 0.43499120328937929 35 0.018277925331421963
		5 12 0.019483917674158129 32 0.25265031959393286 33 0.6042342948789462 
		34 0.12117354977174019 35 0.0024579180812225694
		5 12 0.022366950207268015 32 0.26517928373601618 33 0.58205075262492578 
		34 0.12717725241419309 35 0.0032257610175969753
		5 12 0.022819198825233054 32 0.25938584683893917 33 0.58099403818451933 
		34 0.13305453238359283 35 0.0037463837677156344
		5 12 0.021171215991650005 32 0.23996621841973431 33 0.59495514589791387 
		34 0.14008718567377282 35 0.0038202340169290233
		5 12 0.018942955631062425 32 0.21572562406775664 33 0.6149909907048805 
		34 0.14661640367860798 35 0.0037240259176924621
		5 12 0.017367616726719153 32 0.19821913299508379 33 0.63147610751749217 
		34 0.14932017159703523 35 0.0036169711636697445
		5 12 0.015839586314441358 32 0.1856810036751744 33 0.65259733179290014 
		34 0.14248558951508794 35 0.0033964887023962757
		5 12 0.014070895829166204 32 0.18053403115910377 33 0.68500124155041309 
		34 0.1174392093179385 35 0.0029546221433782967
		5 12 0.014282501033546854 32 0.21523625414035943 33 0.69535604984542454 
		34 0.072385651883024302 35 0.0027395430976449591
		5 12 0.016435400446641681 32 0.26387085493976081 33 0.66715989517289487 
		34 0.049620250819784238 35 0.002913598620918367
		5 12 0.02068814439512753 32 0.30413080664378306 33 0.62709452934406662 
		34 0.044506178347426206 35 0.0035803412695966379
		5 12 0.025124923131243929 32 0.3331846642902162 33 0.59505225873994394 
		34 0.042392785005459822 35 0.0042453688331361332
		5 12 0.02997560210315087 13 0.0049556973332136852 32 0.35001577014892937 
		33 0.570623728231206 34 0.044429202183500119
		5 12 0.025124921251380807 13 0.004245443336142146 32 0.33318463936112358 
		33 0.59505221421774934 34 0.042392781833604072
		5 12 0.020688143334248392 13 0.0035803923655580803 32 0.30413079104808821 
		33 0.62709449718693677 34 0.044506176065168608
		5 12 0.016435399981845383 13 0.0029136197083312518 32 0.26387084937866995 
		33 0.66715988169433749 34 0.049620249236815857
		5 12 0.014282501029251665 13 0.002739543397532092 32 0.21523625407563346 
		33 0.69535604963632658 34 0.072385651861256242
		5 12 0.014070896080055916 13 0.0029546043656413531 32 0.1805340343780994 
		33 0.68500125376427579 34 0.1174392114119277
		5 12 0.01583958686846499 13 0.0033964538440259436 32 0.18568101016976887 
		33 0.65259735461891055 34 0.14248559449882964
		5 12 0.017367617521195595 13 0.0036169255844109363 32 0.19821914206256044 
		33 0.63147613640418987 34 0.14932017842764328
		5 12 0.018942956595515106 13 0.0037239751937545962 32 0.21572563505111064 
		33 0.61499102201625233 34 0.14661641114336738
		5 12 0.021171217096515791 13 0.0038201820291194118 32 0.23996623094289291 
		33 0.59495517694694489 34 0.14008719298452701
		5 12 0.022819199880050201 13 0.0037463377158982389 32 0.2593858588290478 
		33 0.58099406504096629 34 0.13305453853403745
		5 12 0.022366950824861648 13 0.0032257334947751628 32 0.26517929105811677 
		33 0.58205076869644945 34 0.12717725592579701
		5 12 0.037184791649202333 32 0.46996663725290072 33 0.47058677826223438 
		34 0.019677064904900794 35 0.0025847279307617934
		5 12 0.044188205365424234 32 0.46247405511836159 33 0.46396817281079417 
		34 0.025539736698052283 35 0.0038298300073677186
		5 12 0.043950262278969608 32 0.45681111137408525 33 0.4649563831166128 
		34 0.029584152606563618 35 0.0046980906237686932
		5 12 0.038449762363906861 32 0.45124077269937463 33 0.47568481180123012 
		34 0.029916501565629951 35 0.0047081515698583661
		5 12 0.035693297692288392 32 0.44427889396689974 33 0.48502138339534162 
		34 0.030198837017720422 35 0.0048075879277498833
		5 12 0.032892386383570678 32 0.43463718069244228 33 0.49732065936661751 
		34 0.030396493901360386 35 0.0047532796560091862
		5 12 0.031694732782471063 32 0.43245162770016521 33 0.5031028069127057 
		34 0.028043696162775904 35 0.0047071364418821756
		5 12 0.031702434562198616 32 0.44177525626396624 33 0.49942022606657133 
		34 0.022549864072312995 35 0.0045522190349509351
		5 12 0.036227285233049508 32 0.45578904384657365 33 0.48531523966559692 
		34 0.017765260992188982 35 0.004903170262590891
		5 12 0.047298453446502173 32 0.4639372075888763 33 0.46719322264710539 
		34 0.015514783804562398 35 0.006056332512953822
		5 12 0.060283608673427934 32 0.4706070008509971 33 0.44690162852210402 
		34 0.014763340824948569 35 0.007444421128522353
		5 12 0.073083610654574388 32 0.47405036077139745 33 0.42914448826275153 
		34 0.014874920177395352 35 0.00884662013388131
		5 12 0.080250574769588107 13 0.0085672563194290272 32 0.48328672705262204 
		33 0.41446718591351761 34 0.01342825594484324
		5 12 0.073083596915879762 13 0.0088468064568239576 32 0.47405027165657443 
		33 0.42914440758960304 34 0.014874917381118796
		5 12 0.060283601447785377 13 0.0074445400970369769 32 0.47060694444366152 
		33 0.44690157495611366 34 0.014763339055402468
		5 12 0.04729845131306492 13 0.0060563773456226294 32 0.46393718666259698 
		33 0.46719320157396071 34 0.015514783104754779
		5 12 0.036227285353386429 13 0.0049031669571417439 32 0.45578904536058479 
		33 0.48531524127768688 34 0.017765261051200215
		5 12 0.031702435681177643 13 0.004552183899298054 32 0.4417752718570111 
		33 0.49942024369427318 34 0.022549864868240069
		5 12 0.031694734589046709 13 0.004707079710930334 32 0.4324516523495856 
		33 0.50310283558919211 34 0.028043697761245288
		5 12 0.032892388684817628 13 0.0047532100256411549 32 0.43463721110092945 
		33 0.49732069416062435 34 0.030396496027987489
		5 12 0.03569330045094489 13 0.0048075110115031469 32 0.44427892830424481 
		33 0.48502142088158495 34 0.030198839351722191
		5 12 0.038449765249729158 13 0.0047080768688541113 32 0.45124080656696736 
		33 0.47568484750345552 34 0.02991650381099388
		5 12 0.043950265227242283 13 0.0046980238568916366 32 0.45681114201790418 
		33 0.46495641430683327 34 0.029584154591128592
		5 12 0.044188206992991932 13 0.0038297933157986656 32 0.46247407215249847 
		33 0.46396818989996308 34 0.025539737638747902;
	setAttr -s 54 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -19 1 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -19 1 1;
	setAttr ".pm[2]" -type "matrix" 3.9111177532135554e-16 8.443516342149636e-16 -1.0000000000000002 0
		 -0.9914448613738106 0.13052619222005149 -3.3885073635385535e-16 0 0.1305261922200516 0.99144486137381072 8.2847271248819108e-16 0
		 17.953976397308541 -1.5635421562787097 1.8402045409403223 1;
	setAttr ".pm[3]" -type "matrix" 2.0701446873495186e-16 -1.0296819156035682e-15 1.0000000000000002 0
		 -0.99691733373312819 0.078459095727845124 3.4845920439856549e-16 0 -0.078459095727844985 -0.99691733373312796 -9.5055987466526978e-16 0
		 10.033067908594139 -0.53412179950608463 -1.84020454094032 1;
	setAttr ".pm[4]" -type "matrix" 1.0415111090277292e-15 7.0203247611141295e-16 -1.0000000000000002 0
		 -0.39520818300708938 0.91859158067349767 1.7197242873719893e-16 0 0.91859158067349755 0.39520818300708926 1.1744666080148143e-15 0
		 0.92086042985517558 -1.0490837588308495 1.8402045409403183 1;
	setAttr ".pm[5]" -type "matrix" 1.0415111090277292e-15 7.0203247611141295e-16 -1.0000000000000002 0
		 -0.39520818300708938 0.91859158067349767 1.7197242873719893e-16 0 0.91859158067349755 0.39520818300708926 1.1744666080148143e-15 0
		 -1.6580849287081374 -1.0490837588308506 1.8402045409403176 1;
	setAttr ".pm[6]" -type "matrix" 3.3607552968418027e-16 8.5159729341093059e-16 -1 0
		 0.99144486137381027 -0.13052619222005127 1.1146009460918771e-16 0 -0.13052619222005155 -0.99144486137381027 -8.5452632134149551e-16 0
		 -17.954015173840549 1.5635476021877941 -1.8402000000000025 1;
	setAttr ".pm[7]" -type "matrix" 1.5167443984152053e-16 -2.1073425364206491e-08 0.99999999999999967 0
		 0.99691733373312774 -0.078459095727844985 -1.6534019385862415e-09 0 0.078459095727844722 0.99691733373312763 2.1008462981156466e-08 0
		 -10.033022016288379 0.53411830463599319 1.8402000112557018 1;
	setAttr ".pm[8]" -type "matrix" 1.9951635267926691e-08 2.1073424103908419e-08 -0.99999999999999967 0
		 0.39520818300708915 -0.91859158067349778 -1.1472820546139273e-08 0 -0.91859158067349778 -0.39520818300708849 -2.6655793793977213e-08 0
		 -0.92085982477255168 1.0490828603644915 -1.8401999962648898 1;
	setAttr ".pm[9]" -type "matrix" 1.9951635267926691e-08 2.1073424103908419e-08 -0.99999999999999967 0
		 0.39520818300708915 -0.91859158067349778 -1.1472820546139273e-08 0 -0.91859158067349778 -0.39520818300708849 -2.6655793793977213e-08 0
		 1.6580854817361033 1.0490842632294601 -1.8401999448106849 1;
	setAttr ".pm[10]" -type "matrix" 4.4408920985006262e-16 -4.4408920985006262e-16 -1 0
		 1 1.9721522630525295e-31 4.4408920985006262e-16 0 -1.9721522630525295e-31 -1 4.4408920985006262e-16 0
		 -19.000000000000004 -1.0000000000000009 -7.9936057773011287e-15 1;
	setAttr ".pm[11]" -type "matrix" 4.4408920985006262e-16 -4.4408920985006262e-16 -1 0
		 1 1.9721522630525295e-31 4.4408920985006262e-16 0 -1.9721522630525295e-31 -1 4.4408920985006262e-16 0
		 -21.000000000000004 -1.0000000000000013 -7.9936057773011287e-15 1;
	setAttr ".pm[12]" -type "matrix" 4.4408920985006262e-16 4.4408920985006242e-16 -1 0
		 2.2204460492503101e-16 0.99999999999999978 4.4408920985006262e-16 0 0.99999999999999978 -2.2204460492503141e-16 4.4408920985006262e-16 0
		 0.99999999999999645 -22.999999999999996 -7.9936057773011287e-15 1;
	setAttr ".pm[13]" -type "matrix" 1 4.4408920985006242e-16 -4.3790577010150514e-47 0
		 -4.4408920985006252e-16 0.99999999999999978 2.2204460492503121e-16 0 -9.8607613152626388e-32 -2.2204460492503141e-16 0.99999999999999978 0
		 -0.64347144627002095 -27.682113457504258 -4.8143963166112352e-15 1;
	setAttr ".pm[14]" -type "matrix" 0.86520113949555366 0.50000000000000033 0.037775497555894939 0
		 -0.49952411079092912 0.86602540378443826 -0.021809693682667781 0 -0.043619387365335875 -1.942890293094023e-16 0.99904822158185747 0
		 11.398366063554803 -25.748711305964282 1.960359317159345 1;
	setAttr ".pm[15]" -type "matrix" 0.86272991566282076 0.50000000000000033 -0.075479087305173345 0
		 -0.49809734904587299 0.86602540378443815 0.04357787137382934 0 0.087155742747658263 -1.8735013540549509e-16 0.99619469809174521 0
		 6.6217476420596908 -25.748711305964278 1.1055055649594405 1;
	setAttr ".pm[16]" -type "matrix" 0.8660254037844386 0.50000000000000033 -2.4037033579794483e-17 0
		 -0.50000000000000022 0.86602540378443815 2.3592239273284562e-16 0 1.3852878299426383e-16 -1.8442773922549041e-16 0.99999999999999956 0
		 1.7516802887697507 -25.748711305964282 1.2629805840100223 1;
	setAttr ".pm[17]" -type "matrix" 0.57922796533956911 0.067064482466485803 -0.81240219064210162 0
		 -0.4055797876726388 0.88820853385240239 -0.21584864193036293 0 0.70710678118654746 0.45451947767204348 0.54167522041970173 0
		 2.8982024604203551 -20.752951975298696 14.838770566818066 1;
	setAttr ".pm[18]" -type "matrix" 0.57922796533956911 0.067064482466485803 -0.81240219064210162 0
		 -0.4055797876726388 0.88820853385240239 -0.21584864193036293 0 0.70710678118654746 0.45451947767204348 0.54167522041970173 0
		 2.1342722305874195 -20.752951975298707 14.838770566818066 1;
	setAttr ".pm[19]" -type "matrix" 0.57922796533956911 0.067064482466485803 -0.81240219064210162 0
		 -0.4055797876726388 0.88820853385240239 -0.21584864193036293 0 0.70710678118654746 0.45451947767204348 0.54167522041970173 0
		 1.6592258482321312 -20.752951975298704 14.838770566818074 1;
	setAttr ".pm[20]" -type "matrix" 0.86272991566282076 0.50000000000000033 -0.075479087305173304 0
		 -0.49809734904587299 0.86602540378443815 0.043577871373829312 0 0.087155742747658235 -1.8735013540549509e-16 0.99619469809174521 0
		 -0.10696665539087075 -25.731003631271058 0.72536307142167933 1;
	setAttr ".pm[21]" -type "matrix" 0.86272991566282076 0.50000000000000033 -0.075479087305173304 0
		 -0.49809734904587299 0.86602540378443815 0.043577871373829312 0 0.087155742747658235 -1.8735013540549509e-16 0.99619469809174521 0
		 -0.87089688522380204 -25.731003631271065 0.72536307142167922 1;
	setAttr ".pm[22]" -type "matrix" 0.86272991566282076 0.50000000000000033 -0.075479087305173304 0
		 -0.49809734904587299 0.86602540378443815 0.043577871373829312 0 0.087155742747658235 -1.8735013540549509e-16 0.99619469809174521 0
		 -1.3459432675790948 -25.731003631271065 0.72536307142167911 1;
	setAttr ".pm[23]" -type "matrix" 0.8660254037844386 0.50000000000000033 -2.4037033579794483e-17 0
		 -0.50000000000000022 0.86602540378443815 2.3592239273284562e-16 0 1.3852878299426383e-16 -1.8442773922549041e-16 0.99999999999999956 0
		 -0.17193000237143422 -25.780650676675307 1.1517399549484202 1;
	setAttr ".pm[24]" -type "matrix" 0.8660254037844386 0.50000000000000033 -2.4037033579794483e-17 0
		 -0.50000000000000022 0.86602540378443815 2.3592239273284562e-16 0 1.3852878299426383e-16 -1.8442773922549041e-16 0.99999999999999956 0
		 -1.0713048428521694 -25.780650676675318 1.1517399549484202 1;
	setAttr ".pm[25]" -type "matrix" 0.8660254037844386 0.50000000000000033 -2.4037033579794483e-17 0
		 -0.50000000000000022 0.86602540378443815 2.3592239273284562e-16 0 1.3852878299426383e-16 -1.8442773922549041e-16 0.99999999999999956 0
		 -1.5463512252074623 -25.780650676675318 1.1517399549484202 1;
	setAttr ".pm[26]" -type "matrix" 0.86272991566282076 0.50000000000000033 0.07547908730517329 0
		 -0.49809734904587299 0.86602540378443815 -0.043577871373828861 0 -0.087155742747657999 -1.8041124150158786e-16 0.99619469809174521 0
		 -0.22918002939036819 -25.731003631271054 1.5885800199938607 1;
	setAttr ".pm[27]" -type "matrix" 0.86272991566282076 0.50000000000000033 0.07547908730517329 0
		 -0.49809734904587299 0.86602540378443815 -0.043577871373828861 0 -0.087155742747657999 -1.8041124150158786e-16 0.99619469809174521 0
		 -0.99597241482588661 -25.731003631271069 1.5885800199938604 1;
	setAttr ".pm[28]" -type "matrix" 0.86272991566282076 0.50000000000000033 0.07547908730517329 0
		 -0.49809734904587299 0.86602540378443815 -0.043577871373828861 0 -0.087155742747657999 -1.8041124150158786e-16 0.99619469809174521 0
		 -1.4710187971811777 -25.731003631271069 1.5885800199938602 1;
	setAttr ".pm[29]" -type "matrix" 0.83651630373780783 0.50000000000000033 0.22414386804201325 0
		 -0.48296291314453443 0.86602540378443826 -0.12940952255126018 0 -0.25881904510252046 -1.8041124150158786e-16 0.96592582628906809 0
		 -0.42481760101595822 -25.539256671094055 1.8752151002691835 1;
	setAttr ".pm[30]" -type "matrix" 0.83651630373780783 0.50000000000000033 0.22414386804201325 0
		 -0.48296291314453443 0.86602540378443826 -0.12940952255126018 0 -0.25881904510252046 -1.8041124150158786e-16 0.96592582628906809 0
		 -1.0827376792644579 -25.539256671094066 1.8752151002691826 1;
	setAttr ".pm[31]" -type "matrix" 0.83651630373780783 0.50000000000000033 0.22414386804201325 0
		 -0.48296291314453443 0.86602540378443826 -0.12940952255126018 0 -0.25881904510252046 -1.8041124150158786e-16 0.96592582628906809 0
		 -1.4587923343884392 -25.539256671094059 1.8752151002691821 1;
	setAttr ".pm[32]" -type "matrix" 5.2066625625366941e-16 -3.5119382427556156e-16 -1 0
		 0.98162718344766375 0.19080899537654458 4.4408920985006262e-16 0 0.19080899537654458 -0.98162718344766375 4.4408920985006262e-16 0
		 -28.456114614768971 -6.5192171145907638 -1.0250045247171891e-14 1;
	setAttr ".pm[33]" -type "matrix" 5.8230575114746659e-16 -2.3526679491821707e-16 -1 0
		 0.92050485345244015 0.39073112848927355 4.4408920985006252e-16 0 0.39073112848927355 -0.92050485345244015 4.4408920985006262e-16 0
		 -27.797811180593889 -12.573467469484539 -1.0549454317642529e-14 1;
	setAttr ".pm[34]" -type "matrix" 4.4408920985006262e-16 4.4408920985006242e-16 -1 0
		 1.1102230246251541e-16 0.99999999999999978 4.4408920985006262e-16 0 0.99999999999999978 -1.110223024625158e-16 4.4408920985006262e-16 0
		 -0.048803801303538147 -32.29430850375099 -1.0971502877170405e-14 1;
	setAttr ".pm[35]" -type "matrix" 1 -4.4408920985006291e-16 5.5511151231257778e-16 0
		 -4.4408920985006237e-16 -0.99999999999999978 -1.2326877045398917e-15 0 4.4408920985006237e-16 1.2326877045398917e-15 -0.99999999999999978 0
		 0.64347100000001223 27.682099999999995 3.2926270231307808e-14 1;
	setAttr ".pm[36]" -type "matrix" 0.86520113949555355 0.50000000000000011 0.037775497555895508 0
		 0.49952411079092895 -0.86602540378443815 0.021809693682666775 0 0.043619387365335778 1.2906342661267437e-15 -0.99904822158185735 0
		 -11.398392817416676 25.748751810338995 -1.9603567368791464 1;
	setAttr ".pm[37]" -type "matrix" 0.86272991566282076 0.49999999840939724 -0.075479097841885112 0
		 0.49809734904587261 -0.86602540470277289 -0.043577853123709681 0 -0.08715574274765861 -2.0993232263677428e-08 -0.99619469809174488 0
		 -6.6217274286749808 25.748679620532208 -1.1055057513745898 1;
	setAttr ".pm[38]" -type "matrix" 0.86602540470277356 0.49999999840939729 -1.0496616565963887e-08 0
		 0.49999999840939724 -0.86602540470277312 1.818067211119969e-08 0 -6.365002066423631e-16 -2.0993232254966816e-08 -0.99999999999999956 0
		 -1.7516530317666612 25.748752106867151 -1.2629805405495302 1;
	setAttr ".pm[39]" -type "matrix" 0.57922796533956911 0.067064482466486108 -0.81240219064210162 0
		 0.4055797876726388 -0.8882085338524025 0.21584864193036266 0 -0.70710678118654746 -0.45451947767204326 -0.54167522041970162 0
		 -2.8981994651922496 20.75292441201108 -14.838751277228734 1;
	setAttr ".pm[40]" -type "matrix" 0.57922796533956911 0.067064465346390045 -0.81240219205537956 0
		 0.40557978767263875 -0.88820852930373229 0.21584866064795788 0 -0.70710678118654746 -0.45451948908699491 -0.54167521084141979 0
		 -2.13427753124716 20.752955460460267 -14.838767654087366 1;
	setAttr ".pm[41]" -type "matrix" 0.57922796533956911 0.067064441134918037 -0.81240219405405611 0
		 0.40557978767263875 -0.88820852287094076 0.2158486871186347 0 -0.70710678118654757 -0.45451950523017404 -0.54167519729568325 0
		 -1.6591952383395987 20.752930562555992 -14.838793740521144 1;
	setAttr ".pm[42]" -type "matrix" 0.86272991566282076 0.49999999840939724 -0.075479097841885112 0
		 0.49809734904587261 -0.86602540470277289 -0.043577853123709681 0 -0.087155742747658596 -2.0993232256738534e-08 -0.99619469809174488 0
		 0.10694314737588884 25.730974718244145 -0.72536146899980369 1;
	setAttr ".pm[43]" -type "matrix" 0.86272991566282076 0.49999999615994456 -0.075479112743046237 0
		 0.49809734904587261 -0.8660254060014938 -0.043577827314141351 0 -0.08715574274765861 -5.0682147811897915e-08 -0.99619469809174388 0
		 0.87089739260909038 25.731002030486593 -0.72536424315093306 1;
	setAttr ".pm[44]" -type "matrix" 0.86272991566282076 0.49999999210468499 -0.075479139606496298 0
		 0.49809734904587261 -0.86602540834279407 -0.043577780785280254 0 -0.087155742747658624 -1.0420460148929938e-07 -0.99619469809173977 0
		 1.3459024540489455 25.731000380979967 -0.72536203085737139 1;
	setAttr ".pm[45]" -type "matrix" 0.86602540470277356 0.49999999840939729 -1.0496616565963887e-08 0
		 0.49999999840939724 -0.86602540470277312 1.818067211119969e-08 0 -6.365002066423631e-16 -2.0993232254966816e-08 -0.99999999999999956 0
		 0.17192849237652119 25.780611173454034 -1.1517405412183566 1;
	setAttr ".pm[46]" -type "matrix" 0.86602540470277356 0.49999999840939729 -1.0496616565963887e-08 0
		 0.49999999840939724 -0.86602540470277312 1.818067211119969e-08 0 -6.365002066423631e-16 -2.0993232254966816e-08 -0.99999999999999956 0
		 1.0713256793842216 25.780609547720275 -1.151740541218323 1;
	setAttr ".pm[47]" -type "matrix" 0.86602540470277356 0.49999999840939729 -1.0496616565963887e-08 0
		 0.49999999840939724 -0.86602540470277312 1.818067211119969e-08 0 -6.365002066423631e-16 -2.0993232254966816e-08 -0.99999999999999956 0
		 1.5463585305011716 25.780628513448992 -1.1517405412187214 1;
	setAttr ".pm[48]" -type "matrix" 0.86272991749250172 0.49999999840939724 0.075479076928537558 0
		 0.49809734587677273 -0.86602540470277312 0.043577889346687992 0 0.087155742747657319 -2.0993232249799644e-08 -0.99619469809174521 0
		 0.22915283490687183 25.731015715874516 -1.5885835948329878 1;
	setAttr ".pm[49]" -type "matrix" 0.86272991749250172 0.49999999999999972 0.075479066391825458 0
		 0.49809734587677273 -0.8660254037844376 0.043577907596808754 0 0.087155742747657319 -4.1986465776355766e-08 -0.99619469809174455 0
		 0.99603275273266656 25.730993975346006 -1.5885761177202555 1;
	setAttr ".pm[50]" -type "matrix" 0.86272991749250172 0.50000000318120408 0.075479045318401133 0
		 0.49809734587677273 -0.86602540194776534 0.043577944097050209 0 0.087155742747657319 -8.3972932801712435e-08 -0.99619469809174188 0
		 1.4710375527052875 25.730992296118846 -1.588577808356715 1;
	setAttr ".pm[51]" -type "matrix" 0.83651630734157556 0.49999999840939729 0.22414385814074309 0
		 0.48296290690262561 -0.86602540470277301 0.12940953970076294 0 0.25881904510252024 -2.0993232249799644e-08 -0.96592582628906798 0
		 0.42485849794827468 25.539229383188609 -1.8752051307780708 1;
	setAttr ".pm[52]" -type "matrix" 0.83651630734157556 0.49999999840939729 0.22414385814074309 0
		 0.48296290690262561 -0.86602540470277301 0.12940953970076294 0 0.25881904510252024 -2.0993232249799644e-08 -0.96592582628906798 0
		 1.082702444401368 25.539243107664493 -1.8752232045807897 1;
	setAttr ".pm[53]" -type "matrix" 0.83651630734157556 0.49999999840939729 0.22414385814074309 0
		 0.48296290690262561 -0.86602540470277301 0.12940953970076294 0 0.25881904510252024 -2.0993232249799644e-08 -0.96592582628906798 0
		 1.4587673962443668 25.539272891626808 -1.8752203350727705 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 54 ".ma";
	setAttr -s 54 ".dpf[0:53]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 54 ".lw";
	setAttr -s 54 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 54 ".ifcl";
	setAttr -s 54 ".ifcl";
createNode dagPose -n "bindPose1";
	rename -uid "D6B1F238-C04B-2941-AE24-1987F719C764";
	setAttr -s 54 ".wm";
	setAttr -s 54 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 19 -1 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.8402045409403147 -0.99553915562718132
		 0.20670166203449025 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.46622789700423012 -0.53163102623437297 -0.46622789700423034 0.53163102623437353 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 8.0291049280799083 -4.4408920985006262e-16
		 1.7828194316571248e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99452189536827329 -0.10452846326765348 -6.4005223980261761e-18 6.0896902792235745e-17 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 8.7433878833134102 -5.8286708792820718e-16
		 -1.3719052369001168e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.81299385708321537 -0.58227226307368996 -1.6494430777327538e-16 2.3030241604269098e-16 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.5789453585633129 1.1379786002407851e-15
		 6.915269523937272e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.8402000000000001 -0.99549999999999983
		 0.20670200000000005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.53163102623437353 -0.46622789700423045 0.53163102623437297 0.46622789700423017 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 -8.0291893126223659 1.1606889073645377e-05
		 -2.886579864025407e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99452189536827329 -0.10452846326765335 -1.1013863373656639e-09 1.0478991018598289e-08 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 -8.7433430613292167 -3.2196950265905855e-06
		 -6.6391336872584361e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.81299385708321525 -0.58227226307369007 -4.1601923164732909e-09 5.8086414415888768e-09 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.5789453065086549 -1.4028649690800421e-06
		 -5.1454205118872665e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 3.5527136788005009e-15
		 -8.8817841970012523e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.5 -0.49999999999999978 0.5 0.50000000000000022 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.9999999999999996 4.4408920985006242e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.0000000000000004 4.4408920985006262e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.0000000000000016 4.6821134575042578
		 -0.64347144627002906 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.70710678118654735 0 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2949513515430233 0.35343815675432211
		 -1.4613037448113766 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0056461077136663795 0.021071560852409479 -0.25875745317858256 0.96569596209959507 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.9775658223928119 -4.4408920985006262e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.065403129230143062 0 0.99785892323860348 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.7666570147601792 1.0436096431476471e-14
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.043619387365336 0 0.9990482215818578 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.53750258263396811 -0.10946226051496666
		 0.6084685454224682 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.29999892107118603 -0.37304562341123026 0.092892139884638444 0.87304562341123026 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.76393022983293535 1.0658141036401503e-14
		 1.7763568394002505e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.4750463823552904 -3.5527136788005009e-15
		 -8.8817841970012523e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.921459460994225 -0.017707674693227204
		 0.54970049636802565 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.043619387365335979 0 0.9990482215818578 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.76393022983293146 1.0167214292700066e-14
		 -8.5001450322863548e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.47504638235529167 -1.3947176746853529e-15
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.9236102911411863 0.031939370711022264
		 0.11124062906160215 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.8993748404807359 1.642956604097634e-14
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.47504638235529167 -1.3947176746853529e-15
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.8415343474002914 -0.017707674693227204
		 -0.33952876508678842 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.043619387365336 0 0.9990482215818578 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.76679238543552253 1.1842957170493662e-14
		 3.9985376121265404e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.47504638235529167 -1.3947176746853529e-15
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.6766811994397348 -0.20945463487023019
		 -0.65828899702492105 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.13052619222005155 0 0.99144486137381038 1
		 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.6579200782485003 1.1590078594450387e-14
		 6.6873589998905913e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.37605465512398045 -2.7821408934381589e-15
		 5.5511151231257827e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.030241907484341857
		 6.1772209094362154 2.2564394698707626e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0.63607822027776395 0.77162458338772 1 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.3484185782029192 2.2204460492503131e-16
		 2.9940907047063953e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.10452846326765348 0.99452189536827329 1
		 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.9483257003572128 0
		 4.2204855952787472e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.55193698531205815 0.8338858220671681 1
		 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.0000000000000009 4.6820999999999948
		 0.64347100000000435 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654791 3.5731629454852956e-16 -0.70710678118654724 3.5731629454852986e-16 1
		 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.2949490000000003 -0.35350000000000037
		 1.4612999999999965 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0056461077136663899 0.021071560852409493 -0.2587574531785829 0.96569596209959496 1
		 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.9776125702179561 7.2166510001636652e-05
		 -4.1124631766642494e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1.0514152229299339e-08 -0.065403129230143187 6.8913394567483677e-10 0.99785892323860337 1
		 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.7666639584452701 -7.2486334936172625e-05
		 2.1458940884233613e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.043619387365335931 0 0.9990482215818578 1
		 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.53747663313308824
		 0.1095368250294797 -0.60846800229953146 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.2999989115645802 -0.37304562271167646 0.092892142998606667 0.87304562664550989 1
		 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.76392193394508956
		 -3.1361152831976824e-05 1.5939522791441618e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		1.0536712127723509e-08 0 0 0.99999999999999989 1 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.47508229290756043
		 2.4455673774070874e-05 2.5467948244539684e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		1.4901161193847655e-08 0 0 0.99999999999999989 1 1 1 yes;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.9214086457709751 0.017777388623002821
		 -0.54970000037320343 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.043619387365335931 0 0.9990482215818578 1
		 1 1 yes;
	setAttr ".xm[43]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.7639542452332001 -2.7333859982547892e-05
		 2.007307511098233e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1.4901161193847653e-08 0 0 0.99999999999999989 1
		 1 1 yes;
	setAttr ".xm[44]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.47500506143985932
		 1.6105352109718751e-06 -3.594740466184021e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		2.6863450374185955e-08 0 0 0.99999999999999967 1 1 1 yes;
	setAttr ".xm[45]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.9235815241431835 -0.031859066586882534
		 -0.11123999933117368 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[46]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.899397187007698 1.6257337591696341e-06
		 -3.3750779948604759e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[47]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.47503285111695104
		 -1.8965728717290631e-05 3.9834802123550617e-13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[48]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.8414796878291662 0.017736390992631357
		 0.33952999962765729 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.043619387365335903 0 0.9990482215818578 1
		 1 1 yes;
	setAttr ".xm[49]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.76687991782579479
		 2.170705177917398e-05 -8.0193528846361772e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		1.0536712127723509e-08 0 0 0.99999999999999989 1 1 1 yes;
	setAttr ".xm[50]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.47500479997262179
		 1.6122736390400405e-06 6.0615622388127122e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		2.1073424255447021e-08 0 0 0.99999999999999978 1 1 1 yes;
	setAttr ".xm[51]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.6766960261339521 0.20952272367853908
		 0.65828999560144208 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.13052619222005168 0 0.99144486137381038 1
		 1 1 yes;
	setAttr ".xm[52]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.65784394645309063
		 -1.3724475891763177e-05 1.8073802719786869e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[53]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.37606495184299993
		 -2.9783962308016498e-05 -2.869508019642808e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr -s 54 ".m";
	setAttr -s 54 ".p";
	setAttr ".bp" yes;
createNode blendShape -n "blendShape1";
	rename -uid "7F483409-974F-E85B-76F4-AFB1B398B6F8";
	setAttr ".mlid" 0;
	setAttr ".mlpr" 0;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "CFEBADA2-B044-F339-A52C-FA835AE27DE9";
createNode transformGeometry -n "transformGeometry1";
	rename -uid "D9F38EE6-9C49-7468-DD24-32B653432FDC";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 19 -1 1;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "BB94422E-FA4D-B948-56FA-88B7D8E743A7";
createNode transformGeometry -n "transformGeometry2";
	rename -uid "0D6217B2-7249-0B85-5FB1-E2A131499604";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 19 -1 1;
createNode makeNurbCircle -n "makeNurbCircle3";
	rename -uid "4BDE8562-EF40-DD65-B2BA-D28D8A8587B6";
createNode transformGeometry -n "transformGeometry3";
	rename -uid "771E09EF-014E-A916-2456-29BF4BFB1573";
	setAttr ".txf" -type "matrix" 1 -2.7755575615628914e-17 2.4651903288156619e-32 0
		 0 0.99999999999999989 0 0 -2.4651903288156619e-32 -9.8607613152626476e-32 1 0 -17.953976397308541 1.5635421562787095 -1.8402045409403218 1;
createNode makeNurbCircle -n "makeNurbCircle4";
	rename -uid "D4264CBC-944F-3B13-F111-20B2A308960D";
createNode transformGeometry -n "transformGeometry4";
	rename -uid "9ADEF4E1-1F4E-1AEC-6F38-22A12684AE76";
	setAttr ".txf" -type "matrix" 1 1.8868671534206947e-49 1.5407439555097883e-33 0
		 5.5511151231257827e-17 1.0000000000000002 0 0 3.0814879110195774e-33 2.4651903288156619e-32 1 0
		 -10.033067908594134 0.53412179950608318 1.8402045409403214 1;
createNode makeNurbCircle -n "makeNurbCircle5";
	rename -uid "8F6E01C6-2142-5F8B-24C4-3AA23F06A75A";
createNode transformGeometry -n "transformGeometry5";
	rename -uid "17B0149C-334C-8F29-F8F9-45AC7EA653F1";
	setAttr ".txf" -type "matrix" 1 2.7933263396021496e-47 4.9303806576313216e-32 0
		 5.5511151231257827e-17 0.99999999999999989 -9.8607613152626476e-32 0 6.5614065318836912e-33 -9.8607613152626476e-32 1 0
		 -0.92086042985517325 1.0490837588308461 -1.8402045409403205 1;
createNode makeNurbCircle -n "makeNurbCircle6";
	rename -uid "084EC5ED-4F4E-950B-2D2E-9EACED0CCC7D";
createNode transformGeometry -n "transformGeometry6";
	rename -uid "4248D58B-BB40-AA21-95E9-18BB2C5D869D";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.6580849287081383 1.0490837588308484 -1.8402045409403209 1;
createNode makeNurbCircle -n "makeNurbCircle7";
	rename -uid "BC096E13-394F-A32F-5638-EF9DA5275919";
createNode transformGeometry -n "transformGeometry7";
	rename -uid "EF70938A-B344-F488-BCD2-77B67D5652FF";
	setAttr ".txf" -type "matrix" 1 2.7755575615628914e-17 0 0 -2.7755575615628914e-17 0.99999999999999989 0 0
		 0 0 1 0 17.954015173840553 -1.5635476021877932 1.8402000000000027 1;
createNode makeNurbCircle -n "makeNurbCircle8";
	rename -uid "1604E9C5-4D4C-AE76-75FA-CA8EF9291776";
createNode transformGeometry -n "transformGeometry8";
	rename -uid "D7AA2B6D-9F4D-FACF-999E-C0B92C8BD5C8";
	setAttr ".txf" -type "matrix" 1 -2.7755575615628914e-17 0 0 -2.775557561562895e-17 0.99999999999999989 -3.3087224502121107e-24 0
		 1.6543612251060544e-24 0 0.99999999999999989 0 10.033022016288374 -0.53411830463599197 -1.8402000112557027 1;
createNode makeNurbCircle -n "makeNurbCircle9";
	rename -uid "FE24559D-F140-7FCC-08A2-ED9130C4A37B";
createNode transformGeometry -n "transformGeometry9";
	rename -uid "9528601D-9646-FED1-809F-A3B40D4FDC44";
	setAttr ".txf" -type "matrix" 1 -1.1820004650447404e-32 -3.6734198463196485e-40 0
		 5.5511151231257815e-17 1 1.6543612251060553e-24 0 -4.4032853859689448e-26 0 1 0 0.92085982477254902 -1.0490828603644877 1.8401999962648903 1;
createNode makeNurbCircle -n "makeNurbCircle10";
	rename -uid "7698FE92-9A4E-2638-2045-1A9C6A6931A3";
createNode transformGeometry -n "transformGeometry10";
	rename -uid "EB6105D4-E943-EA4E-B9A8-46BF76DB1E19";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.6580854817361066 -1.0490842632294572 1.8401999448106841 1;
createNode makeNurbCircle -n "makeNurbCircle11";
	rename -uid "A88F37B7-E346-272A-A009-1C8512DA55AE";
	setAttr ".c" -type "double3" 0 3.8000000000000003 0 ;
createNode transformGeometry -n "transformGeometry11";
	rename -uid "C2CF93BA-B94B-F0A8-6780-BFBAB8C560F2";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 -8.7581154020301067e-47 0 1 0 19.000000000000004 1.0000000000000009 7.9936057773011287e-15 1;
createNode makeNurbCircle -n "makeNurbCircle12";
	rename -uid "85C83782-AD46-6F9E-A0C0-3F8E2260E46D";
	setAttr ".c" -type "double3" 0 3.8000000000000003 0 ;
createNode transformGeometry -n "transformGeometry12";
	rename -uid "084D26D0-5C4B-2E37-5681-E3ACC521568E";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 21.000000000000004 1.0000000000000013 7.9936057773011287e-15 1;
createNode makeNurbCircle -n "makeNurbCircle13";
	rename -uid "FE5D7D9E-D44A-5C8B-181B-3B8DFEE9054D";
	setAttr ".c" -type "double3" -3.2 0 0 ;
createNode transformGeometry -n "transformGeometry13";
	rename -uid "0F427C68-D943-5C06-0E3F-B4857ABB652B";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.99999999999999645 23 7.9936057773011271e-15 1;
createNode makeNurbCircle -n "makeNurbCircle14";
	rename -uid "E1B7F8B8-2F4C-8596-34E7-FB8296EA60C1";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".c" -type "double3" 0 0 1 ;
createNode transformGeometry -n "transformGeometry14";
	rename -uid "A1D5A8DB-2F4C-193A-54E4-BFA65D420208";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.64347144627002106 27.682113457504261 -4.0673878803900116e-15 1;
createNode makeNurbCircle -n "makeNurbCircle15";
	rename -uid "45F6B054-1D49-BF17-D6E2-B792F213269B";
	setAttr ".r" 2;
createNode transformGeometry -n "transformGeometry15";
	rename -uid "462F18D7-654D-1F2A-9935-CFA8DEA467AD";
	setAttr ".txf" -type "matrix" 1.0000000000000002 0 0 0 0 1 -3.4694469519536142e-18 0
		 0 0 1.0000000000000002 0 -11.398366063554809 25.748711305964285 -1.9603593171593545 1;
createNode makeNurbCircle -n "makeNurbCircle16";
	rename -uid "9F8417B8-3548-7936-331F-6B9BA6E8970E";
createNode transformGeometry -n "transformGeometry16";
	rename -uid "5B3CAB5C-5C4A-FCB4-3E29-B3A5641AF1CE";
	setAttr ".txf" -type "matrix" 1 0 -2.7755575615628914e-17 0 0 1 0 0 2.7755575615628914e-17 0 1 0
		 -6.6217476420596908 25.748711305964285 -1.1055055649594503 1;
createNode makeNurbCircle -n "makeNurbCircle17";
	rename -uid "D996A77C-304A-801F-B96C-69A31E04C318";
	setAttr ".c" -type "double3" 0 0.3 0 ;
	setAttr ".r" 0.5;
createNode transformGeometry -n "transformGeometry17";
	rename -uid "82BD5CDA-FA43-5CD5-A4B4-57BE4FF793F0";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.7516802887697527 25.748711305964299 -1.2629805840100314 1;
createNode makeNurbCircle -n "makeNurbCircle18";
	rename -uid "08E4B77D-7F43-B9C7-F4BB-26BB9F056107";
	setAttr ".c" -type "double3" 0 0.3 0 ;
	setAttr ".r" 0.1;
createNode transformGeometry -n "transformGeometry18";
	rename -uid "3B1F0A3C-D745-1542-F791-1599BBB52351";
	setAttr ".txf" -type "matrix" 1 0 0 0 1.6653345369377348e-16 1 1.1102230246251565e-16 0
		 0 8.3266726846886741e-17 1 0 -2.8982024604203596 20.7529519752987 -14.838770566818077 1;
createNode makeNurbCircle -n "makeNurbCircle19";
	rename -uid "EB333B26-4D42-C445-50DA-E6A013B12EBA";
	setAttr ".c" -type "double3" 0 0.3 0 ;
	setAttr ".r" 0.1;
createNode transformGeometry -n "transformGeometry19";
	rename -uid "847D4458-8645-691C-CDED-79A2A7981F56";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.1342722305874267 20.752951975298728 -14.838770566818077 1;
createNode makeNurbCircle -n "makeNurbCircle20";
	rename -uid "861E06D5-E941-1B4F-0510-85925DBD9B14";
	setAttr ".c" -type "double3" 0 0.3 0 ;
	setAttr ".r" 0.1;
createNode transformGeometry -n "transformGeometry20";
	rename -uid "EAE13D09-9642-2CE1-D72A-67A0D1CC423B";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.6592258482321374 20.752951975298728 -14.838770566818088 1;
createNode makeNurbCircle -n "makeNurbCircle21";
	rename -uid "00885570-7B49-6AF8-18EE-2580A8DBB3DF";
	setAttr ".c" -type "double3" 0 0.3 0 ;
	setAttr ".r" 0.1;
createNode transformGeometry -n "transformGeometry21";
	rename -uid "1EE848CC-8A4B-EC0D-1744-89B0D10FF856";
	setAttr ".txf" -type "matrix" 1 0 1.3877787807814457e-17 0 0 1 0 0 0 0 1 0 0.10696665539087108 25.731003631271072 -0.72536307142168854 1;
createNode makeNurbCircle -n "makeNurbCircle22";
	rename -uid "68E7C808-D149-A5DB-5D94-178921FA5C17";
	setAttr ".c" -type "double3" 0 0.3 0 ;
	setAttr ".r" 0.1;
createNode transformGeometry -n "transformGeometry22";
	rename -uid "74D7DBDA-7545-F9CF-BF7F-02ADD3D04CD6";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.87089688522380182 25.731003631271086 -0.72536307142168843 1;
createNode makeNurbCircle -n "makeNurbCircle23";
	rename -uid "182B7DAF-734B-595C-56A0-80BED4CAF945";
	setAttr ".c" -type "double3" 0 0.3 0 ;
	setAttr ".r" 0.1;
createNode transformGeometry -n "transformGeometry23";
	rename -uid "6D85696E-8B4B-EAC8-A540-DFACFF246E5B";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.3459432675790934 25.73100363127109 -0.72536307142168865 1;
createNode makeNurbCircle -n "makeNurbCircle24";
	rename -uid "BDA0991B-C14C-1F8B-905D-3FA1A155EC38";
	setAttr ".c" -type "double3" 0 0.3 0 ;
	setAttr ".r" 0.1;
createNode transformGeometry -n "transformGeometry24";
	rename -uid "76A940B4-064E-5A8A-B233-858AF006E756";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.17193000237143366 25.780650676675325 -1.1517399549484297 1;
createNode makeNurbCircle -n "makeNurbCircle25";
	rename -uid "50110D3E-FC4B-A1EC-1049-BD85C2133CFA";
	setAttr ".c" -type "double3" 0 0.3 0 ;
	setAttr ".r" 0.1;
createNode transformGeometry -n "transformGeometry25";
	rename -uid "24B39F1C-DC4E-B3BC-368B-CAB7426099D6";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.071304842852169 25.780650676675346 -1.1517399549484295 1;
createNode makeNurbCircle -n "makeNurbCircle26";
	rename -uid "57D097CC-B149-FE4C-8F73-83965ACC5B34";
	setAttr ".c" -type "double3" 0 0.3 0 ;
	setAttr ".r" 0.1;
createNode transformGeometry -n "transformGeometry26";
	rename -uid "3CADFCEB-0441-5830-6446-5988E568E531";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.546351225207462 25.780650676675346 -1.1517399549484297 1;
createNode makeNurbCircle -n "makeNurbCircle27";
	rename -uid "499F3FD9-DC45-53AB-5F50-748B8CB8E951";
	setAttr ".c" -type "double3" 0 0.3 0 ;
	setAttr ".r" 0.1;
createNode transformGeometry -n "transformGeometry27";
	rename -uid "586805B7-4F49-8513-AC96-1A992A3631D6";
	setAttr ".txf" -type "matrix" 1 0 -1.3877787807814457e-17 0 0 1 0 0 0 0 1 0 0.2291800293903688 25.731003631271072 -1.5885800199938702 1;
createNode makeNurbCircle -n "makeNurbCircle28";
	rename -uid "E8C7FA8C-4942-0638-09D5-38AD3B912C68";
	setAttr ".c" -type "double3" 0 0.3 0 ;
	setAttr ".r" 0.1;
createNode transformGeometry -n "transformGeometry28";
	rename -uid "D91CD418-CF49-25A9-1922-CCA5C3573BA5";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.99597241482588994 25.731003631271086 -1.5885800199938698 1;
createNode makeNurbCircle -n "makeNurbCircle29";
	rename -uid "2A955AEB-E047-A17D-7DA7-2591E1F35A94";
	setAttr ".c" -type "double3" 0 0.3 0 ;
	setAttr ".r" 0.1;
createNode transformGeometry -n "transformGeometry29";
	rename -uid "950BC524-9C47-5CB0-9C54-9F89B1648E59";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.4710187971811834 25.731003631271093 -1.5885800199938702 1;
createNode makeNurbCircle -n "makeNurbCircle30";
	rename -uid "71719ADF-6B45-760F-FAB2-A3889D329519";
	setAttr ".c" -type "double3" 0 0.3 0 ;
	setAttr ".r" 0.1;
createNode transformGeometry -n "transformGeometry30";
	rename -uid "CC34858E-E448-A0BE-97B4-EE89F44F4659";
	setAttr ".txf" -type "matrix" 0.99999999999999989 0 -5.5511151231257827e-17 0 0 1 0 0
		 0 0 1 0 0.42481760101596289 25.539256671094069 -1.8752151002691926 1;
createNode makeNurbCircle -n "makeNurbCircle31";
	rename -uid "A2DC22EA-374C-FF8F-5A4D-E9B557E76863";
	setAttr ".c" -type "double3" 0 0.3 0 ;
	setAttr ".r" 0.1;
createNode transformGeometry -n "transformGeometry31";
	rename -uid "107B472B-0041-9448-7D49-5E93F8B4BD5D";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.0827376792644627 25.539256671094087 -1.8752151002691915 1;
createNode makeNurbCircle -n "makeNurbCircle32";
	rename -uid "CEE9593D-AE49-C58D-6486-4DB74EAD64D5";
	setAttr ".c" -type "double3" 0 0.3 0 ;
	setAttr ".r" 0.1;
createNode transformGeometry -n "transformGeometry32";
	rename -uid "F5B2505F-C245-76A4-59B5-39950042167F";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.4587923343884441 25.53925667109408 -1.875215100269191 1;
createNode makeNurbCircle -n "makeNurbCircle33";
	rename -uid "CDC67FAA-7847-7217-0EB5-45BA9C6D9E1F";
createNode transformGeometry -n "transformGeometry33";
	rename -uid "6B8FEB6B-0B4E-B1AD-8522-A089B903CFFC";
	setAttr ".txf" -type "matrix" 1 -2.7755575615628914e-17 0 0 0 1 0 0 0 0 1 0 28.456114614768971 6.5192171145907727 1.0250045247171893e-14 1;
createNode makeNurbCircle -n "makeNurbCircle34";
	rename -uid "E1A2B234-A74B-1D19-F621-60AAB5AE3748";
createNode transformGeometry -n "transformGeometry34";
	rename -uid "2656826E-554C-6843-D0EC-3081459C448D";
	setAttr ".txf" -type "matrix" 1 0 0 0 -2.7755575615628914e-17 1 0 0 0 0 1 0 27.797811180593872 12.57346746948455 1.0549454317642532e-14 1;
createNode makeNurbCircle -n "makeNurbCircle35";
	rename -uid "EF04D1F0-9F48-0B20-5642-EBB10A8017E0";
createNode transformGeometry -n "transformGeometry35";
	rename -uid "D5D0278E-AA4A-5371-354D-AA800B4C1519";
	setAttr ".txf" -type "matrix" 1 5.5511151231257827e-17 0 0 5.5511151231257827e-17 1 0 0
		 0 0 1 0 0.048803801303526129 32.294308503750997 1.0971502877170407e-14 1;
createNode makeNurbCircle -n "makeNurbCircle36";
	rename -uid "1A649003-0B44-642F-D03E-AE8110513BB1";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".c" -type "double3" 0 0 -1 ;
createNode transformGeometry -n "transformGeometry36";
	rename -uid "BAD04828-7B40-CD83-AD34-28AA88EF687F";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 -8.8675918445554815e-46 0 0 -8.0933278019944055e-46 1 0
		 -0.64347100000001234 -27.682099999999998 -2.4044486034306562e-14 1;
createNode makeNurbCircle -n "makeNurbCircle37";
	rename -uid "E6FD9957-AC40-3DB2-C8D8-F9849395D882";
	setAttr ".r" 2;
createNode transformGeometry -n "transformGeometry37";
	rename -uid "6C8AEC41-C14C-E207-A5B1-009185A7448B";
	setAttr ".txf" -type "matrix" 1 5.5642086575951419e-17 0 0 5.5586818806528207e-17 0.99999999999999989 -1.7330724036109277e-18 0
		 -6.9388939039072284e-18 4.7053451508867006e-19 1.0000000000000002 0 11.398392817416681 -25.748751810339005 1.9603567368791563 1;
createNode makeNurbCircle -n "makeNurbCircle38";
	rename -uid "A12EFC23-0D40-0868-E59E-71B3970801BB";
createNode transformGeometry -n "transformGeometry38";
	rename -uid "25E07774-854F-6628-2B55-A599ED4FFEDD";
	setAttr ".txf" -type "matrix" 1.0000000000000002 -4.1359030627651384e-25 -2.7755575615628914e-17 0
		 -4.1359030627651384e-25 1 0 0 -2.7755575615628914e-17 -3.3087224502121107e-24 0.99999999999999989 0
		 6.6217274286749879 -25.748679620532226 1.1055057513745989 1;
createNode makeNurbCircle -n "makeNurbCircle39";
	rename -uid "46383B8D-8C47-C2B5-3D8E-B4ADED942768";
	setAttr ".c" -type "double3" 0 -0.3 0 ;
	setAttr ".r" 0.5;
createNode transformGeometry -n "transformGeometry39";
	rename -uid "0C3BEDDA-2645-BF4A-6A28-C88E42552504";
	setAttr ".txf" -type "matrix" 1 0 -1.3877787807814457e-17 0 0 1 0 0 1.3877787807814457e-17 0 1 0
		 1.7516530317666643 -25.748752106867158 1.2629805405495398 1;
createNode makeNurbCircle -n "makeNurbCircle40";
	rename -uid "5E0C6496-474F-DA2B-2D0F-79855425AA05";
	setAttr ".c" -type "double3" 0 -0.3 0 ;
	setAttr ".r" 0.1;
createNode transformGeometry -n "transformGeometry40";
	rename -uid "742B69E6-0E44-F303-3910-F4AFD676E8C7";
	setAttr ".txf" -type "matrix" 1.0000000000000002 -5.5511151231257827e-17 0 0 -5.5511151231257827e-17 0.99999999999999989 -1.3877787807814457e-16 0
		 -1.6653345369377348e-16 8.3266726846886741e-17 1.0000000000000002 0 2.8981994651922593 -20.752924412011083 14.838751277228749 1;
createNode makeNurbCircle -n "makeNurbCircle41";
	rename -uid "6ECCB11D-754C-06AF-C9BB-4593E4C36E6F";
	setAttr ".c" -type "double3" 0 -0.3 0 ;
	setAttr ".r" 0.1;
createNode transformGeometry -n "transformGeometry41";
	rename -uid "1A67E0C6-D346-1823-0B01-448E2093B213";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 -3.3087224502121107e-24 0.99999999999999989 0
		 2.1342775312471725 -20.752955460460282 14.838767654087379 1;
createNode makeNurbCircle -n "makeNurbCircle42";
	rename -uid "FB2C876D-E64E-18AF-70DB-318D18F275E9";
	setAttr ".c" -type "double3" 0 -0.3 0 ;
	setAttr ".r" 0.1;
createNode transformGeometry -n "transformGeometry42";
	rename -uid "140FB321-4A43-0ECD-96E0-66BE7A80F946";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.6591952383396125 -20.752930562555996 14.838793740521158 1;
createNode makeNurbCircle -n "makeNurbCircle43";
	rename -uid "B3A5E6CF-E14C-A7C4-0AF0-EEB4E519DD74";
	setAttr ".c" -type "double3" 0 -0.3 0 ;
	setAttr ".r" 0.1;
createNode transformGeometry -n "transformGeometry43";
	rename -uid "2A0D46B3-1142-B3D8-BE08-FD96B4B90CA7";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.106943147375879 -25.730974718244155 0.72536146899981269 1;
createNode makeNurbCircle -n "makeNurbCircle44";
	rename -uid "9318A633-2A4B-BBC7-0EAE-82A3BAD056FD";
	setAttr ".c" -type "double3" 0 -0.3 0 ;
	setAttr ".r" 0.1;
createNode transformGeometry -n "transformGeometry44";
	rename -uid "A98DD47D-D244-DE49-AD70-5BB913B9A39F";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 -3.3087224502121107e-24 0 0 -3.3087224502121107e-24 1 0
		 -0.87089739260908372 -25.731002030486614 0.72536424315094239 1;
createNode makeNurbCircle -n "makeNurbCircle45";
	rename -uid "CE00A43C-4A45-B437-11AA-7985C3F39FC1";
	setAttr ".c" -type "double3" 0 -0.3 0 ;
	setAttr ".r" 0.1;
createNode transformGeometry -n "transformGeometry45";
	rename -uid "5A966A5C-D74A-464C-4ADC-2CB787FCEF6B";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 -6.6174449004242214e-24 0 0 -6.6174449004242214e-24 0.99999999999999989 0
		 -1.3459024540489442 -25.731000380979989 0.72536203085738093 1;
createNode makeNurbCircle -n "makeNurbCircle46";
	rename -uid "93945480-5B4B-6294-6084-E99762913478";
	setAttr ".c" -type "double3" 0 -0.3 0 ;
	setAttr ".r" 0.1;
createNode transformGeometry -n "transformGeometry46";
	rename -uid "FD056286-864B-4BE1-6B82-27BB379E9DAA";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.17192849237651592 -25.780611173454041 1.1517405412183666 1;
createNode makeNurbCircle -n "makeNurbCircle47";
	rename -uid "90835707-7D4A-E482-496F-F3AE5632D986";
	setAttr ".c" -type "double3" 0 -0.3 0 ;
	setAttr ".r" 0.1;
createNode transformGeometry -n "transformGeometry47";
	rename -uid "B7F81055-9348-1DB7-5504-97804F823E56";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.0713256793842147 -25.780609547720285 1.1517405412183326 1;
createNode makeNurbCircle -n "makeNurbCircle48";
	rename -uid "06DB691C-9D42-2F92-4E9A-4283F8974A70";
	setAttr ".c" -type "double3" 0 -0.3 0 ;
	setAttr ".r" 0.1;
createNode transformGeometry -n "transformGeometry48";
	rename -uid "69A18F12-F045-2F9A-DFE4-23BF3ECC4A6D";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.546358530501168 -25.780628513449003 1.1517405412187312 1;
createNode makeNurbCircle -n "makeNurbCircle49";
	rename -uid "02FB390F-2C44-B99D-70B0-5CBE16B64120";
	setAttr ".c" -type "double3" 0 -0.3 0 ;
	setAttr ".r" 0.1;
createNode transformGeometry -n "transformGeometry49";
	rename -uid "8A87FCDD-4F43-67B0-2C87-628C587836A1";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22915283490686622 -25.731015715874531 1.5885835948329976 1;
createNode makeNurbCircle -n "makeNurbCircle50";
	rename -uid "B7339623-6B4A-5312-E634-70992130C810";
	setAttr ".c" -type "double3" 0 -0.3 0 ;
	setAttr ".r" 0.1;
createNode transformGeometry -n "transformGeometry50";
	rename -uid "48A84278-334A-88B4-9620-B8AFD4FA8AA7";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 -3.3087224502121107e-24 0.99999999999999989 0
		 -0.99603275273266467 -25.730993975346017 1.5885761177202655 1;
createNode makeNurbCircle -n "makeNurbCircle51";
	rename -uid "EA5F5310-8448-9AE6-8DD6-168A999E9190";
	setAttr ".c" -type "double3" 0 -0.3 0 ;
	setAttr ".r" 0.1;
createNode transformGeometry -n "transformGeometry51";
	rename -uid "078777A9-0141-2FE0-8941-DD80131861CF";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1.0000000000000002 -6.6174449004242214e-24 0
		 0 -6.6174449004242214e-24 1 0 -1.4710375527052866 -25.730992296118853 1.5885778083567252 1;
createNode makeNurbCircle -n "makeNurbCircle52";
	rename -uid "FD0F908D-8042-C1C8-4726-F7A94E4A0A8D";
	setAttr ".c" -type "double3" 0 -0.3 0 ;
	setAttr ".r" 0.1;
createNode transformGeometry -n "transformGeometry52";
	rename -uid "36F2F9F6-394A-2C64-1A54-FD81C8899EDF";
	setAttr ".txf" -type "matrix" 1 0 5.5511151231257827e-17 0 0 1 0 0 0 0 1 0 -0.42485849794827246 -25.539229383188616 1.8752051307780819 1;
createNode makeNurbCircle -n "makeNurbCircle53";
	rename -uid "EC1E98FF-7540-89FD-18A8-D890AB0C1B94";
	setAttr ".c" -type "double3" 0 -0.3 0 ;
	setAttr ".r" 0.1;
createNode transformGeometry -n "transformGeometry53";
	rename -uid "EFB1BE31-E840-53FD-443B-619F8863B734";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.0827024444013655 -25.539243107664507 1.8752232045808015 1;
createNode makeNurbCircle -n "makeNurbCircle54";
	rename -uid "4ABC97C4-AB4F-3D00-AF2E-ECB33D3218E7";
	setAttr ".c" -type "double3" 0 -0.3 0 ;
	setAttr ".r" 0.1;
createNode transformGeometry -n "transformGeometry54";
	rename -uid "8198705F-6C44-3CD8-66F4-569902057F01";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.4587673962443664 -25.539272891626819 1.8752203350727814 1;
createNode displayLayer -n "Joints";
	rename -uid "22510FD2-7049-4083-1D4D-009770350687";
	setAttr ".dt" 1;
	setAttr ".do" 1;
createNode proxyManager -n "GenericMesh2_2PM";
	rename -uid "6C56884A-F241-D852-42FC-719E39B76172";
	setAttr -s 2 ".plst";
createNode reference -n "GenericMesh2_2GenericMesh2_2PM1RN";
	rename -uid "72B77F24-9948-D1EE-DD25-3B8F3B526B58";
	setAttr ".ed" -type "dataReferenceEdits" 
		"GenericMesh2_2GenericMesh2_2PM1RN"
		"GenericMesh2_2GenericMesh2_2PM1RN" 0;
	setAttr ".ptag" -type "string" "Cartoon";
lockNode -l 1 ;
createNode reference -n "sharedReferenceNode";
	rename -uid "9A681105-554B-F225-C80D-489E5F5CF63C";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "79A482D4-D742-8A3A-D3D0-F1A0DDD772D8";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 1036.3094826302847 -375.3809374646541 ;
	setAttr ".tgi[0].vh" -type "double2" 7104.4997176925444 110.33332894908074 ;
	setAttr -s 932 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 63122.85546875;
	setAttr ".tgi[0].ni[0].y" 5037.14306640625;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 62815.71484375;
	setAttr ".tgi[0].ni[1].y" 5098.5712890625;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 62508.5703125;
	setAttr ".tgi[0].ni[2].y" 5122.85693359375;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 56980;
	setAttr ".tgi[0].ni[3].y" 5948.5712890625;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" -4755.71435546875;
	setAttr ".tgi[0].ni[4].y" 6512.85693359375;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -5062.85693359375;
	setAttr ".tgi[0].ni[5].y" 6538.5712890625;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" -4141.4287109375;
	setAttr ".tgi[0].ni[6].y" 6515.71435546875;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" -4448.5712890625;
	setAttr ".tgi[0].ni[7].y" 6542.85693359375;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 28415.71484375;
	setAttr ".tgi[0].ni[8].y" 6042.85693359375;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 30258.572265625;
	setAttr ".tgi[0].ni[9].y" 5902.85693359375;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 30565.71484375;
	setAttr ".tgi[0].ni[10].y" 5954.28564453125;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 56058.5703125;
	setAttr ".tgi[0].ni[11].y" 6022.85693359375;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 37015.71484375;
	setAttr ".tgi[0].ni[12].y" 6248.5712890625;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 36708.5703125;
	setAttr ".tgi[0].ni[13].y" 6172.85693359375;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 37322.85546875;
	setAttr ".tgi[0].ni[14].y" 6252.85693359375;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 52358.5703125;
	setAttr ".tgi[0].ni[15].y" 28.571428298950195;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 80015.7109375;
	setAttr ".tgi[0].ni[16].y" -1325.7142333984375;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" -21648.572265625;
	setAttr ".tgi[0].ni[17].y" 6262.85693359375;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 56365.71484375;
	setAttr ".tgi[0].ni[18].y" 6017.14306640625;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 56672.85546875;
	setAttr ".tgi[0].ni[19].y" 6008.5712890625;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 79708.5703125;
	setAttr ".tgi[0].ni[20].y" -5750;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 79401.4296875;
	setAttr ".tgi[0].ni[21].y" -1208.5714111328125;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 79094.2890625;
	setAttr ".tgi[0].ni[22].y" -1140;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 79708.5703125;
	setAttr ".tgi[0].ni[23].y" -1267.142822265625;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 35787.14453125;
	setAttr ".tgi[0].ni[24].y" 6125.71435546875;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 35480;
	setAttr ".tgi[0].ni[25].y" 6152.85693359375;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 36401.4296875;
	setAttr ".tgi[0].ni[26].y" 6155.71435546875;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 36094.28515625;
	setAttr ".tgi[0].ni[27].y" 6164.28564453125;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 30872.857421875;
	setAttr ".tgi[0].ni[28].y" 5955.71435546875;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 31180;
	setAttr ".tgi[0].ni[29].y" 6002.85693359375;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 31487.142578125;
	setAttr ".tgi[0].ni[30].y" 6002.85693359375;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 34558.5703125;
	setAttr ".tgi[0].ni[31].y" 6167.14306640625;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 35172.85546875;
	setAttr ".tgi[0].ni[32].y" 6147.14306640625;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 34865.71484375;
	setAttr ".tgi[0].ni[33].y" 6190;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 57594.28515625;
	setAttr ".tgi[0].ni[34].y" 5870;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 432.85714721679688;
	setAttr ".tgi[0].ni[35].y" -374.28570556640625;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 61894.28515625;
	setAttr ".tgi[0].ni[36].y" 5255.71435546875;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" -565.71429443359375;
	setAttr ".tgi[0].ni[37].y" 2867.142822265625;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" -565.71429443359375;
	setAttr ".tgi[0].ni[38].y" 4901.4287109375;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 48.571430206298828;
	setAttr ".tgi[0].ni[39].y" 6681.4287109375;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" -181.42857360839844;
	setAttr ".tgi[0].ni[40].y" 2677.142822265625;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 432.85714721679688;
	setAttr ".tgi[0].ni[41].y" -2535.71435546875;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" -258.57144165039062;
	setAttr ".tgi[0].ni[42].y" 2740;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 48.571430206298828;
	setAttr ".tgi[0].ni[43].y" -501.42855834960938;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 48.571430206298828;
	setAttr ".tgi[0].ni[44].y" 2358.571533203125;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 48.571430206298828;
	setAttr ".tgi[0].ni[45].y" 5282.85693359375;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" 48.571430206298828;
	setAttr ".tgi[0].ni[46].y" -6668.5712890625;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 48.571430206298828;
	setAttr ".tgi[0].ni[47].y" 960;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 48.571430206298828;
	setAttr ".tgi[0].ni[48].y" -3998.571533203125;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 47.142856597900391;
	setAttr ".tgi[0].ni[49].y" 6935.71435546875;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 432.85714721679688;
	setAttr ".tgi[0].ni[50].y" -2917.142822265625;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" -565.71429443359375;
	setAttr ".tgi[0].ni[51].y" 5155.71435546875;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" -565.71429443359375;
	setAttr ".tgi[0].ni[52].y" 4265.71435546875;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" 79365.7109375;
	setAttr ".tgi[0].ni[53].y" -1580;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 432.85714721679688;
	setAttr ".tgi[0].ni[54].y" 2804.28564453125;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" -258.57144165039062;
	setAttr ".tgi[0].ni[55].y" 1151.4285888671875;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" -258.57144165039062;
	setAttr ".tgi[0].ni[56].y" 5664.28564453125;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 48.571430206298828;
	setAttr ".tgi[0].ni[57].y" 3248.571533203125;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" -565.71429443359375;
	setAttr ".tgi[0].ni[58].y" 2231.428466796875;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" 79980;
	setAttr ".tgi[0].ni[59].y" -1744.2857666015625;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" 432.85714721679688;
	setAttr ".tgi[0].ni[60].y" -2790;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" 432.85714721679688;
	setAttr ".tgi[0].ni[61].y" 2931.428466796875;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" 48.571430206298828;
	setAttr ".tgi[0].ni[62].y" -2981.428466796875;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" -565.71429443359375;
	setAttr ".tgi[0].ni[63].y" 2358.571533203125;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" 48.571430206298828;
	setAttr ".tgi[0].ni[64].y" -1010;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" 432.85714721679688;
	setAttr ".tgi[0].ni[65].y" 1914.2857666015625;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" 48.571430206298828;
	setAttr ".tgi[0].ni[66].y" -2600;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" -258.57144165039062;
	setAttr ".tgi[0].ni[67].y" 3248.571533203125;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" 48.571430206298828;
	setAttr ".tgi[0].ni[68].y" 3502.857177734375;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" 432.85714721679688;
	setAttr ".tgi[0].ni[69].y" -3044.28564453125;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" -565.71429443359375;
	setAttr ".tgi[0].ni[70].y" 1914.2857666015625;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" -565.71429443359375;
	setAttr ".tgi[0].ni[71].y" 3502.857177734375;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" 432.85714721679688;
	setAttr ".tgi[0].ni[72].y" -120;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" 432.85714721679688;
	setAttr ".tgi[0].ni[73].y" 1787.142822265625;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" 48.571430206298828;
	setAttr ".tgi[0].ni[74].y" -820;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" 48.571430206298828;
	setAttr ".tgi[0].ni[75].y" 324.28570556640625;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" 48.571430206298828;
	setAttr ".tgi[0].ni[76].y" -2218.571533203125;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" 48.571430206298828;
	setAttr ".tgi[0].ni[77].y" -3871.428466796875;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" 48.571430206298828;
	setAttr ".tgi[0].ni[78].y" -6922.85693359375;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" 48.571430206298828;
	setAttr ".tgi[0].ni[79].y" 1850;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" 48.571430206298828;
	setAttr ".tgi[0].ni[80].y" -3744.28564453125;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" 432.85714721679688;
	setAttr ".tgi[0].ni[81].y" 3567.142822265625;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" 432.85714721679688;
	setAttr ".tgi[0].ni[82].y" -2281.428466796875;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" 48.571430206298828;
	setAttr ".tgi[0].ni[83].y" 2612.857177734375;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" -258.57144165039062;
	setAttr ".tgi[0].ni[84].y" 5918.5712890625;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" -181.42857360839844;
	setAttr ".tgi[0].ni[85].y" 2804.28564453125;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" -567.14288330078125;
	setAttr ".tgi[0].ni[86].y" 6935.71435546875;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" -565.71429443359375;
	setAttr ".tgi[0].ni[87].y" 5028.5712890625;
	setAttr ".tgi[0].ni[87].nvs" 18304;
	setAttr ".tgi[0].ni[88].x" -181.42857360839844;
	setAttr ".tgi[0].ni[88].y" 1914.2857666015625;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" 48.571430206298828;
	setAttr ".tgi[0].ni[89].y" 2485.71435546875;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" -565.71429443359375;
	setAttr ".tgi[0].ni[90].y" 3248.571533203125;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" 48.571430206298828;
	setAttr ".tgi[0].ni[91].y" -692.85711669921875;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" -258.57144165039062;
	setAttr ".tgi[0].ni[92].y" 5282.85693359375;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" -260;
	setAttr ".tgi[0].ni[93].y" 7062.85693359375;
	setAttr ".tgi[0].ni[93].nvs" 18304;
	setAttr ".tgi[0].ni[94].x" 48.571430206298828;
	setAttr ".tgi[0].ni[94].y" 4520;
	setAttr ".tgi[0].ni[94].nvs" 18304;
	setAttr ".tgi[0].ni[95].x" 125.71428680419922;
	setAttr ".tgi[0].ni[95].y" 3567.142822265625;
	setAttr ".tgi[0].ni[95].nvs" 18304;
	setAttr ".tgi[0].ni[96].x" 48.571430206298828;
	setAttr ".tgi[0].ni[96].y" 2740;
	setAttr ".tgi[0].ni[96].nvs" 18304;
	setAttr ".tgi[0].ni[97].x" 2362.857177734375;
	setAttr ".tgi[0].ni[97].y" 70;
	setAttr ".tgi[0].ni[97].nvs" 18304;
	setAttr ".tgi[0].ni[98].x" 48.571430206298828;
	setAttr ".tgi[0].ni[98].y" 6554.28564453125;
	setAttr ".tgi[0].ni[98].nvs" 18304;
	setAttr ".tgi[0].ni[99].x" -258.57144165039062;
	setAttr ".tgi[0].ni[99].y" 1977.142822265625;
	setAttr ".tgi[0].ni[99].nvs" 18304;
	setAttr ".tgi[0].ni[100].x" -181.42857360839844;
	setAttr ".tgi[0].ni[100].y" 2931.428466796875;
	setAttr ".tgi[0].ni[100].nvs" 18304;
	setAttr ".tgi[0].ni[101].x" -258.57144165039062;
	setAttr ".tgi[0].ni[101].y" 5791.4287109375;
	setAttr ".tgi[0].ni[101].nvs" 18304;
	setAttr ".tgi[0].ni[102].x" 48.571430206298828;
	setAttr ".tgi[0].ni[102].y" 5028.5712890625;
	setAttr ".tgi[0].ni[102].nvs" 18304;
	setAttr ".tgi[0].ni[103].x" -258.57144165039062;
	setAttr ".tgi[0].ni[103].y" 5410;
	setAttr ".tgi[0].ni[103].nvs" 18304;
	setAttr ".tgi[0].ni[104].x" 432.85714721679688;
	setAttr ".tgi[0].ni[104].y" 3312.857177734375;
	setAttr ".tgi[0].ni[104].nvs" 18304;
	setAttr ".tgi[0].ni[105].x" 48.571430206298828;
	setAttr ".tgi[0].ni[105].y" -4634.28564453125;
	setAttr ".tgi[0].ni[105].nvs" 18304;
	setAttr ".tgi[0].ni[106].x" 48.571430206298828;
	setAttr ".tgi[0].ni[106].y" 3121.428466796875;
	setAttr ".tgi[0].ni[106].nvs" 18304;
	setAttr ".tgi[0].ni[107].x" 48.571430206298828;
	setAttr ".tgi[0].ni[107].y" 4011.428466796875;
	setAttr ".tgi[0].ni[107].nvs" 18304;
	setAttr ".tgi[0].ni[108].x" -181.42857360839844;
	setAttr ".tgi[0].ni[108].y" 2295.71435546875;
	setAttr ".tgi[0].ni[108].nvs" 18304;
	setAttr ".tgi[0].ni[109].x" 48.571430206298828;
	setAttr ".tgi[0].ni[109].y" 5537.14306640625;
	setAttr ".tgi[0].ni[109].nvs" 18304;
	setAttr ".tgi[0].ni[110].x" 48.571430206298828;
	setAttr ".tgi[0].ni[110].y" -1455.7142333984375;
	setAttr ".tgi[0].ni[110].nvs" 18304;
	setAttr ".tgi[0].ni[111].x" -565.71429443359375;
	setAttr ".tgi[0].ni[111].y" 6300;
	setAttr ".tgi[0].ni[111].nvs" 18304;
	setAttr ".tgi[0].ni[112].x" -181.42857360839844;
	setAttr ".tgi[0].ni[112].y" 3185.71435546875;
	setAttr ".tgi[0].ni[112].nvs" 18304;
	setAttr ".tgi[0].ni[113].x" 432.85714721679688;
	setAttr ".tgi[0].ni[113].y" 2677.142822265625;
	setAttr ".tgi[0].ni[113].nvs" 18304;
	setAttr ".tgi[0].ni[114].x" -258.57144165039062;
	setAttr ".tgi[0].ni[114].y" 4647.14306640625;
	setAttr ".tgi[0].ni[114].nvs" 18304;
	setAttr ".tgi[0].ni[115].x" -565.71429443359375;
	setAttr ".tgi[0].ni[115].y" 5918.5712890625;
	setAttr ".tgi[0].ni[115].nvs" 18304;
	setAttr ".tgi[0].ni[116].x" 48.571430206298828;
	setAttr ".tgi[0].ni[116].y" -3235.71435546875;
	setAttr ".tgi[0].ni[116].nvs" 18304;
	setAttr ".tgi[0].ni[117].x" -565.71429443359375;
	setAttr ".tgi[0].ni[117].y" 6554.28564453125;
	setAttr ".tgi[0].ni[117].nvs" 18304;
	setAttr ".tgi[0].ni[118].x" -258.57144165039062;
	setAttr ".tgi[0].ni[118].y" 6681.4287109375;
	setAttr ".tgi[0].ni[118].nvs" 18304;
	setAttr ".tgi[0].ni[119].x" 48.571430206298828;
	setAttr ".tgi[0].ni[119].y" 5918.5712890625;
	setAttr ".tgi[0].ni[119].nvs" 18304;
	setAttr ".tgi[0].ni[120].x" 48.571430206298828;
	setAttr ".tgi[0].ni[120].y" 2867.142822265625;
	setAttr ".tgi[0].ni[120].nvs" 18304;
	setAttr ".tgi[0].ni[121].x" 48.571430206298828;
	setAttr ".tgi[0].ni[121].y" -6795.71435546875;
	setAttr ".tgi[0].ni[121].nvs" 18304;
	setAttr ".tgi[0].ni[122].x" 432.85714721679688;
	setAttr ".tgi[0].ni[122].y" -1645.7142333984375;
	setAttr ".tgi[0].ni[122].nvs" 18304;
	setAttr ".tgi[0].ni[123].x" 48.571430206298828;
	setAttr ".tgi[0].ni[123].y" -2854.28564453125;
	setAttr ".tgi[0].ni[123].nvs" 18304;
	setAttr ".tgi[0].ni[124].x" 48.571430206298828;
	setAttr ".tgi[0].ni[124].y" 2231.428466796875;
	setAttr ".tgi[0].ni[124].nvs" 18304;
	setAttr ".tgi[0].ni[125].x" -567.14288330078125;
	setAttr ".tgi[0].ni[125].y" 6808.5712890625;
	setAttr ".tgi[0].ni[125].nvs" 18304;
	setAttr ".tgi[0].ni[126].x" 48.571430206298828;
	setAttr ".tgi[0].ni[126].y" -5524.28564453125;
	setAttr ".tgi[0].ni[126].nvs" 18304;
	setAttr ".tgi[0].ni[127].x" 48.571430206298828;
	setAttr ".tgi[0].ni[127].y" -4507.14306640625;
	setAttr ".tgi[0].ni[127].nvs" 18304;
	setAttr ".tgi[0].ni[128].x" 432.85714721679688;
	setAttr ".tgi[0].ni[128].y" 515.71429443359375;
	setAttr ".tgi[0].ni[128].nvs" 18304;
	setAttr ".tgi[0].ni[129].x" 48.571430206298828;
	setAttr ".tgi[0].ni[129].y" -1837.142822265625;
	setAttr ".tgi[0].ni[129].nvs" 18304;
	setAttr ".tgi[0].ni[130].x" -260;
	setAttr ".tgi[0].ni[130].y" 6935.71435546875;
	setAttr ".tgi[0].ni[130].nvs" 18304;
	setAttr ".tgi[0].ni[131].x" 79365.7109375;
	setAttr ".tgi[0].ni[131].y" -1678.5714111328125;
	setAttr ".tgi[0].ni[131].nvs" 18304;
	setAttr ".tgi[0].ni[132].x" 48.571430206298828;
	setAttr ".tgi[0].ni[132].y" -5651.4287109375;
	setAttr ".tgi[0].ni[132].nvs" 18304;
	setAttr ".tgi[0].ni[133].x" -258.57144165039062;
	setAttr ".tgi[0].ni[133].y" 5537.14306640625;
	setAttr ".tgi[0].ni[133].nvs" 18304;
	setAttr ".tgi[0].ni[134].x" 48.571430206298828;
	setAttr ".tgi[0].ni[134].y" 3375.71435546875;
	setAttr ".tgi[0].ni[134].nvs" 18304;
	setAttr ".tgi[0].ni[135].x" -565.71429443359375;
	setAttr ".tgi[0].ni[135].y" 6427.14306640625;
	setAttr ".tgi[0].ni[135].nvs" 18304;
	setAttr ".tgi[0].ni[136].x" 48.571430206298828;
	setAttr ".tgi[0].ni[136].y" -311.42855834960938;
	setAttr ".tgi[0].ni[136].nvs" 18304;
	setAttr ".tgi[0].ni[137].x" 432.85714721679688;
	setAttr ".tgi[0].ni[137].y" 897.14288330078125;
	setAttr ".tgi[0].ni[137].nvs" 18304;
	setAttr ".tgi[0].ni[138].x" 48.571430206298828;
	setAttr ".tgi[0].ni[138].y" -1964.2857666015625;
	setAttr ".tgi[0].ni[138].nvs" 18304;
	setAttr ".tgi[0].ni[139].x" 432.85714721679688;
	setAttr ".tgi[0].ni[139].y" -2154.28564453125;
	setAttr ".tgi[0].ni[139].nvs" 18304;
	setAttr ".tgi[0].ni[140].x" -68948.5703125;
	setAttr ".tgi[0].ni[140].y" 5801.4287109375;
	setAttr ".tgi[0].ni[140].nvs" 18304;
	setAttr ".tgi[0].ni[141].x" 41622.85546875;
	setAttr ".tgi[0].ni[141].y" 6405.71435546875;
	setAttr ".tgi[0].ni[141].nvs" 18304;
	setAttr ".tgi[0].ni[142].x" 42544.28515625;
	setAttr ".tgi[0].ni[142].y" 6302.85693359375;
	setAttr ".tgi[0].ni[142].nvs" 18304;
	setAttr ".tgi[0].ni[143].x" 42851.4296875;
	setAttr ".tgi[0].ni[143].y" 6310;
	setAttr ".tgi[0].ni[143].nvs" 18304;
	setAttr ".tgi[0].ni[144].x" 43772.85546875;
	setAttr ".tgi[0].ni[144].y" 6214.28564453125;
	setAttr ".tgi[0].ni[144].nvs" 18304;
	setAttr ".tgi[0].ni[145].x" 43465.71484375;
	setAttr ".tgi[0].ni[145].y" 6265.71435546875;
	setAttr ".tgi[0].ni[145].nvs" 18304;
	setAttr ".tgi[0].ni[146].x" 44387.14453125;
	setAttr ".tgi[0].ni[146].y" 6171.4287109375;
	setAttr ".tgi[0].ni[146].nvs" 18304;
	setAttr ".tgi[0].ni[147].x" 44080;
	setAttr ".tgi[0].ni[147].y" 6227.14306640625;
	setAttr ".tgi[0].ni[147].nvs" 18304;
	setAttr ".tgi[0].ni[148].x" 44694.28515625;
	setAttr ".tgi[0].ni[148].y" 6230;
	setAttr ".tgi[0].ni[148].nvs" 18304;
	setAttr ".tgi[0].ni[149].x" 27187.142578125;
	setAttr ".tgi[0].ni[149].y" 6202.85693359375;
	setAttr ".tgi[0].ni[149].nvs" 18304;
	setAttr ".tgi[0].ni[150].x" 45001.4296875;
	setAttr ".tgi[0].ni[150].y" 6237.14306640625;
	setAttr ".tgi[0].ni[150].nvs" 18304;
	setAttr ".tgi[0].ni[151].x" 45308.5703125;
	setAttr ".tgi[0].ni[151].y" 6291.4287109375;
	setAttr ".tgi[0].ni[151].nvs" 18304;
	setAttr ".tgi[0].ni[152].x" -68027.140625;
	setAttr ".tgi[0].ni[152].y" 5801.4287109375;
	setAttr ".tgi[0].ni[152].nvs" 18304;
	setAttr ".tgi[0].ni[153].x" -67412.859375;
	setAttr ".tgi[0].ni[153].y" 5801.4287109375;
	setAttr ".tgi[0].ni[153].nvs" 18304;
	setAttr ".tgi[0].ni[154].x" -66798.5703125;
	setAttr ".tgi[0].ni[154].y" 5801.4287109375;
	setAttr ".tgi[0].ni[154].nvs" 18304;
	setAttr ".tgi[0].ni[155].x" 48.571430206298828;
	setAttr ".tgi[0].ni[155].y" -3362.857177734375;
	setAttr ".tgi[0].ni[155].nvs" 18304;
	setAttr ".tgi[0].ni[156].x" 432.85714721679688;
	setAttr ".tgi[0].ni[156].y" -1772.857177734375;
	setAttr ".tgi[0].ni[156].nvs" 18304;
	setAttr ".tgi[0].ni[157].x" 48.571430206298828;
	setAttr ".tgi[0].ni[157].y" 1278.5714111328125;
	setAttr ".tgi[0].ni[157].nvs" 18304;
	setAttr ".tgi[0].ni[158].x" 48.571430206298828;
	setAttr ".tgi[0].ni[158].y" -3617.142822265625;
	setAttr ".tgi[0].ni[158].nvs" 18304;
	setAttr ".tgi[0].ni[159].x" 48.571430206298828;
	setAttr ".tgi[0].ni[159].y" -4380;
	setAttr ".tgi[0].ni[159].nvs" 18304;
	setAttr ".tgi[0].ni[160].x" -181.42857360839844;
	setAttr ".tgi[0].ni[160].y" 1787.142822265625;
	setAttr ".tgi[0].ni[160].nvs" 18304;
	setAttr ".tgi[0].ni[161].x" 48.571430206298828;
	setAttr ".tgi[0].ni[161].y" 1914.2857666015625;
	setAttr ".tgi[0].ni[161].nvs" 18304;
	setAttr ".tgi[0].ni[162].x" 125.71428680419922;
	setAttr ".tgi[0].ni[162].y" 3312.857177734375;
	setAttr ".tgi[0].ni[162].nvs" 18304;
	setAttr ".tgi[0].ni[163].x" 48.571430206298828;
	setAttr ".tgi[0].ni[163].y" -565.71429443359375;
	setAttr ".tgi[0].ni[163].nvs" 18304;
	setAttr ".tgi[0].ni[164].x" -565.71429443359375;
	setAttr ".tgi[0].ni[164].y" 6681.4287109375;
	setAttr ".tgi[0].ni[164].nvs" 18304;
	setAttr ".tgi[0].ni[165].x" 48.571430206298828;
	setAttr ".tgi[0].ni[165].y" 70;
	setAttr ".tgi[0].ni[165].nvs" 18304;
	setAttr ".tgi[0].ni[166].x" 48.571430206298828;
	setAttr ".tgi[0].ni[166].y" -882.85711669921875;
	setAttr ".tgi[0].ni[166].nvs" 18304;
	setAttr ".tgi[0].ni[167].x" 47.142856597900391;
	setAttr ".tgi[0].ni[167].y" 6808.5712890625;
	setAttr ".tgi[0].ni[167].nvs" 18304;
	setAttr ".tgi[0].ni[168].x" 48.571430206298828;
	setAttr ".tgi[0].ni[168].y" 5155.71435546875;
	setAttr ".tgi[0].ni[168].nvs" 18304;
	setAttr ".tgi[0].ni[169].x" 48.571430206298828;
	setAttr ".tgi[0].ni[169].y" -1010;
	setAttr ".tgi[0].ni[169].nvs" 18304;
	setAttr ".tgi[0].ni[170].x" 432.85714721679688;
	setAttr ".tgi[0].ni[170].y" -1264.2857666015625;
	setAttr ".tgi[0].ni[170].nvs" 18304;
	setAttr ".tgi[0].ni[171].x" -565.71429443359375;
	setAttr ".tgi[0].ni[171].y" 2485.71435546875;
	setAttr ".tgi[0].ni[171].nvs" 18304;
	setAttr ".tgi[0].ni[172].x" 48.571430206298828;
	setAttr ".tgi[0].ni[172].y" -3490;
	setAttr ".tgi[0].ni[172].nvs" 18304;
	setAttr ".tgi[0].ni[173].x" 48.571430206298828;
	setAttr ".tgi[0].ni[173].y" 578.5714111328125;
	setAttr ".tgi[0].ni[173].nvs" 18304;
	setAttr ".tgi[0].ni[174].x" -258.57144165039062;
	setAttr ".tgi[0].ni[174].y" 3630;
	setAttr ".tgi[0].ni[174].nvs" 18304;
	setAttr ".tgi[0].ni[175].x" 48.571430206298828;
	setAttr ".tgi[0].ni[175].y" -6414.28564453125;
	setAttr ".tgi[0].ni[175].nvs" 18304;
	setAttr ".tgi[0].ni[176].x" 432.85714721679688;
	setAttr ".tgi[0].ni[176].y" -1900;
	setAttr ".tgi[0].ni[176].nvs" 18304;
	setAttr ".tgi[0].ni[177].x" 48.571430206298828;
	setAttr ".tgi[0].ni[177].y" -1137.142822265625;
	setAttr ".tgi[0].ni[177].nvs" 18304;
	setAttr ".tgi[0].ni[178].x" 432.85714721679688;
	setAttr ".tgi[0].ni[178].y" 7.1428570747375488;
	setAttr ".tgi[0].ni[178].nvs" 18304;
	setAttr ".tgi[0].ni[179].x" -565.71429443359375;
	setAttr ".tgi[0].ni[179].y" 2994.28564453125;
	setAttr ".tgi[0].ni[179].nvs" 18304;
	setAttr ".tgi[0].ni[180].x" 25651.427734375;
	setAttr ".tgi[0].ni[180].y" 6172.85693359375;
	setAttr ".tgi[0].ni[180].nvs" 18304;
	setAttr ".tgi[0].ni[181].x" 25344.28515625;
	setAttr ".tgi[0].ni[181].y" 6208.5712890625;
	setAttr ".tgi[0].ni[181].nvs" 18304;
	setAttr ".tgi[0].ni[182].x" 26265.71484375;
	setAttr ".tgi[0].ni[182].y" 6138.5712890625;
	setAttr ".tgi[0].ni[182].nvs" 18304;
	setAttr ".tgi[0].ni[183].x" 25958.572265625;
	setAttr ".tgi[0].ni[183].y" 6177.14306640625;
	setAttr ".tgi[0].ni[183].nvs" 18304;
	setAttr ".tgi[0].ni[184].x" 26572.857421875;
	setAttr ".tgi[0].ni[184].y" 6182.85693359375;
	setAttr ".tgi[0].ni[184].nvs" 18304;
	setAttr ".tgi[0].ni[185].x" 26880;
	setAttr ".tgi[0].ni[185].y" 6202.85693359375;
	setAttr ".tgi[0].ni[185].nvs" 18304;
	setAttr ".tgi[0].ni[186].x" 40394.28515625;
	setAttr ".tgi[0].ni[186].y" 6311.4287109375;
	setAttr ".tgi[0].ni[186].nvs" 18304;
	setAttr ".tgi[0].ni[187].x" -69870;
	setAttr ".tgi[0].ni[187].y" 5801.4287109375;
	setAttr ".tgi[0].ni[187].nvs" 18304;
	setAttr ".tgi[0].ni[188].x" 40701.4296875;
	setAttr ".tgi[0].ni[188].y" 6330;
	setAttr ".tgi[0].ni[188].nvs" 18304;
	setAttr ".tgi[0].ni[189].x" 41008.5703125;
	setAttr ".tgi[0].ni[189].y" 6387.14306640625;
	setAttr ".tgi[0].ni[189].nvs" 18304;
	setAttr ".tgi[0].ni[190].x" 41315.71484375;
	setAttr ".tgi[0].ni[190].y" 6405.71435546875;
	setAttr ".tgi[0].ni[190].nvs" 18304;
	setAttr ".tgi[0].ni[191].x" 41930;
	setAttr ".tgi[0].ni[191].y" 6351.4287109375;
	setAttr ".tgi[0].ni[191].nvs" 18304;
	setAttr ".tgi[0].ni[192].x" 27494.28515625;
	setAttr ".tgi[0].ni[192].y" 6164.28564453125;
	setAttr ".tgi[0].ni[192].nvs" 18304;
	setAttr ".tgi[0].ni[193].x" 28108.572265625;
	setAttr ".tgi[0].ni[193].y" 6100;
	setAttr ".tgi[0].ni[193].nvs" 18304;
	setAttr ".tgi[0].ni[194].x" 31794.28515625;
	setAttr ".tgi[0].ni[194].y" 5992.85693359375;
	setAttr ".tgi[0].ni[194].nvs" 18304;
	setAttr ".tgi[0].ni[195].x" 37937.14453125;
	setAttr ".tgi[0].ni[195].y" 6250;
	setAttr ".tgi[0].ni[195].nvs" 18304;
	setAttr ".tgi[0].ni[196].x" 40087.14453125;
	setAttr ".tgi[0].ni[196].y" 6255.71435546875;
	setAttr ".tgi[0].ni[196].nvs" 18304;
	setAttr ".tgi[0].ni[197].x" 48.571430206298828;
	setAttr ".tgi[0].ni[197].y" -1328.5714111328125;
	setAttr ".tgi[0].ni[197].nvs" 18304;
	setAttr ".tgi[0].ni[198].x" -565.71429443359375;
	setAttr ".tgi[0].ni[198].y" 2740;
	setAttr ".tgi[0].ni[198].nvs" 18304;
	setAttr ".tgi[0].ni[199].x" -258.57144165039062;
	setAttr ".tgi[0].ni[199].y" 4138.5712890625;
	setAttr ".tgi[0].ni[199].nvs" 18304;
	setAttr ".tgi[0].ni[200].x" -56970;
	setAttr ".tgi[0].ni[200].y" 6177.14306640625;
	setAttr ".tgi[0].ni[200].nvs" 18304;
	setAttr ".tgi[0].ni[201].x" -565.71429443359375;
	setAttr ".tgi[0].ni[201].y" 2104.28564453125;
	setAttr ".tgi[0].ni[201].nvs" 18304;
	setAttr ".tgi[0].ni[202].x" -258.57144165039062;
	setAttr ".tgi[0].ni[202].y" 3502.857177734375;
	setAttr ".tgi[0].ni[202].nvs" 18304;
	setAttr ".tgi[0].ni[203].x" -565.71429443359375;
	setAttr ".tgi[0].ni[203].y" 6045.71435546875;
	setAttr ".tgi[0].ni[203].nvs" 18304;
	setAttr ".tgi[0].ni[204].x" 432.85714721679688;
	setAttr ".tgi[0].ni[204].y" 3185.71435546875;
	setAttr ".tgi[0].ni[204].nvs" 18304;
	setAttr ".tgi[0].ni[205].x" -565.71429443359375;
	setAttr ".tgi[0].ni[205].y" 4774.28564453125;
	setAttr ".tgi[0].ni[205].nvs" 18304;
	setAttr ".tgi[0].ni[206].x" 48.571430206298828;
	setAttr ".tgi[0].ni[206].y" 3630;
	setAttr ".tgi[0].ni[206].nvs" 18304;
	setAttr ".tgi[0].ni[207].x" -565.71429443359375;
	setAttr ".tgi[0].ni[207].y" 1278.5714111328125;
	setAttr ".tgi[0].ni[207].nvs" 18304;
	setAttr ".tgi[0].ni[208].x" 432.85714721679688;
	setAttr ".tgi[0].ni[208].y" -3552.857177734375;
	setAttr ".tgi[0].ni[208].nvs" 18304;
	setAttr ".tgi[0].ni[209].x" 48.571430206298828;
	setAttr ".tgi[0].ni[209].y" 1722.857177734375;
	setAttr ".tgi[0].ni[209].nvs" 18304;
	setAttr ".tgi[0].ni[210].x" -258.57144165039062;
	setAttr ".tgi[0].ni[210].y" 1278.5714111328125;
	setAttr ".tgi[0].ni[210].nvs" 18304;
	setAttr ".tgi[0].ni[211].x" 48.571430206298828;
	setAttr ".tgi[0].ni[211].y" -1074.2857666015625;
	setAttr ".tgi[0].ni[211].nvs" 18304;
	setAttr ".tgi[0].ni[212].x" 432.85714721679688;
	setAttr ".tgi[0].ni[212].y" -1518.5714111328125;
	setAttr ".tgi[0].ni[212].nvs" 18304;
	setAttr ".tgi[0].ni[213].x" 432.85714721679688;
	setAttr ".tgi[0].ni[213].y" 642.85711669921875;
	setAttr ".tgi[0].ni[213].nvs" 18304;
	setAttr ".tgi[0].ni[214].x" -565.71429443359375;
	setAttr ".tgi[0].ni[214].y" 3121.428466796875;
	setAttr ".tgi[0].ni[214].nvs" 18304;
	setAttr ".tgi[0].ni[215].x" -565.71429443359375;
	setAttr ".tgi[0].ni[215].y" 3630;
	setAttr ".tgi[0].ni[215].nvs" 18304;
	setAttr ".tgi[0].ni[216].x" 48.571430206298828;
	setAttr ".tgi[0].ni[216].y" 6300;
	setAttr ".tgi[0].ni[216].nvs" 18304;
	setAttr ".tgi[0].ni[217].x" 432.85714721679688;
	setAttr ".tgi[0].ni[217].y" -3680;
	setAttr ".tgi[0].ni[217].nvs" 18304;
	setAttr ".tgi[0].ni[218].x" 48.571430206298828;
	setAttr ".tgi[0].ni[218].y" 1468.5714111328125;
	setAttr ".tgi[0].ni[218].nvs" 18304;
	setAttr ".tgi[0].ni[219].x" -565.71429443359375;
	setAttr ".tgi[0].ni[219].y" 1977.142822265625;
	setAttr ".tgi[0].ni[219].nvs" 18304;
	setAttr ".tgi[0].ni[220].x" 48.571430206298828;
	setAttr ".tgi[0].ni[220].y" -2091.428466796875;
	setAttr ".tgi[0].ni[220].nvs" 18304;
	setAttr ".tgi[0].ni[221].x" 432.85714721679688;
	setAttr ".tgi[0].ni[221].y" -2662.857177734375;
	setAttr ".tgi[0].ni[221].nvs" 18304;
	setAttr ".tgi[0].ni[222].x" -258.57144165039062;
	setAttr ".tgi[0].ni[222].y" 3757.142822265625;
	setAttr ".tgi[0].ni[222].nvs" 18304;
	setAttr ".tgi[0].ni[223].x" 48.571430206298828;
	setAttr ".tgi[0].ni[223].y" 705.71429443359375;
	setAttr ".tgi[0].ni[223].nvs" 18304;
	setAttr ".tgi[0].ni[224].x" -258.57144165039062;
	setAttr ".tgi[0].ni[224].y" 4774.28564453125;
	setAttr ".tgi[0].ni[224].nvs" 18304;
	setAttr ".tgi[0].ni[225].x" 125.71428680419922;
	setAttr ".tgi[0].ni[225].y" 3185.71435546875;
	setAttr ".tgi[0].ni[225].nvs" 18304;
	setAttr ".tgi[0].ni[226].x" -258.57144165039062;
	setAttr ".tgi[0].ni[226].y" 2612.857177734375;
	setAttr ".tgi[0].ni[226].nvs" 18304;
	setAttr ".tgi[0].ni[227].x" -260;
	setAttr ".tgi[0].ni[227].y" 6808.5712890625;
	setAttr ".tgi[0].ni[227].nvs" 18304;
	setAttr ".tgi[0].ni[228].x" 48.571430206298828;
	setAttr ".tgi[0].ni[228].y" -882.85711669921875;
	setAttr ".tgi[0].ni[228].nvs" 18304;
	setAttr ".tgi[0].ni[229].x" -258.57144165039062;
	setAttr ".tgi[0].ni[229].y" 4392.85693359375;
	setAttr ".tgi[0].ni[229].nvs" 18304;
	setAttr ".tgi[0].ni[230].x" 48.571430206298828;
	setAttr ".tgi[0].ni[230].y" -57.142856597900391;
	setAttr ".tgi[0].ni[230].nvs" 18304;
	setAttr ".tgi[0].ni[231].x" 432.85714721679688;
	setAttr ".tgi[0].ni[231].y" 2295.71435546875;
	setAttr ".tgi[0].ni[231].nvs" 18304;
	setAttr ".tgi[0].ni[232].x" -565.71429443359375;
	setAttr ".tgi[0].ni[232].y" 5791.4287109375;
	setAttr ".tgi[0].ni[232].nvs" 18304;
	setAttr ".tgi[0].ni[233].x" 48.571430206298828;
	setAttr ".tgi[0].ni[233].y" -947.14288330078125;
	setAttr ".tgi[0].ni[233].nvs" 18304;
	setAttr ".tgi[0].ni[234].x" 432.85714721679688;
	setAttr ".tgi[0].ni[234].y" 261.42855834960938;
	setAttr ".tgi[0].ni[234].nvs" 18304;
	setAttr ".tgi[0].ni[235].x" -258.57144165039062;
	setAttr ".tgi[0].ni[235].y" 2358.571533203125;
	setAttr ".tgi[0].ni[235].nvs" 18304;
	setAttr ".tgi[0].ni[236].x" -258.57144165039062;
	setAttr ".tgi[0].ni[236].y" 6554.28564453125;
	setAttr ".tgi[0].ni[236].nvs" 18304;
	setAttr ".tgi[0].ni[237].x" -258.57144165039062;
	setAttr ".tgi[0].ni[237].y" 5028.5712890625;
	setAttr ".tgi[0].ni[237].nvs" 18304;
	setAttr ".tgi[0].ni[238].x" 48.571430206298828;
	setAttr ".tgi[0].ni[238].y" 1087.142822265625;
	setAttr ".tgi[0].ni[238].nvs" 18304;
	setAttr ".tgi[0].ni[239].x" 125.71428680419922;
	setAttr ".tgi[0].ni[239].y" 1787.142822265625;
	setAttr ".tgi[0].ni[239].nvs" 18304;
	setAttr ".tgi[0].ni[240].x" 48.571430206298828;
	setAttr ".tgi[0].ni[240].y" -1264.2857666015625;
	setAttr ".tgi[0].ni[240].nvs" 18304;
	setAttr ".tgi[0].ni[241].x" 48.571430206298828;
	setAttr ".tgi[0].ni[241].y" 1341.4285888671875;
	setAttr ".tgi[0].ni[241].nvs" 18304;
	setAttr ".tgi[0].ni[242].x" -565.71429443359375;
	setAttr ".tgi[0].ni[242].y" 1405.7142333984375;
	setAttr ".tgi[0].ni[242].nvs" 18304;
	setAttr ".tgi[0].ni[243].x" 48.571430206298828;
	setAttr ".tgi[0].ni[243].y" -184.28572082519531;
	setAttr ".tgi[0].ni[243].nvs" 18304;
	setAttr ".tgi[0].ni[244].x" 48.571430206298828;
	setAttr ".tgi[0].ni[244].y" 197.14285278320312;
	setAttr ".tgi[0].ni[244].nvs" 18304;
	setAttr ".tgi[0].ni[245].x" 48.571430206298828;
	setAttr ".tgi[0].ni[245].y" -4252.85693359375;
	setAttr ".tgi[0].ni[245].nvs" 18304;
	setAttr ".tgi[0].ni[246].x" -38541.4296875;
	setAttr ".tgi[0].ni[246].y" 6725.71435546875;
	setAttr ".tgi[0].ni[246].nvs" 18304;
	setAttr ".tgi[0].ni[247].x" -23491.427734375;
	setAttr ".tgi[0].ni[247].y" 6338.5712890625;
	setAttr ".tgi[0].ni[247].nvs" 18304;
	setAttr ".tgi[0].ni[248].x" -22570;
	setAttr ".tgi[0].ni[248].y" 6270;
	setAttr ".tgi[0].ni[248].nvs" 18304;
	setAttr ".tgi[0].ni[249].x" -12127.142578125;
	setAttr ".tgi[0].ni[249].y" 6267.14306640625;
	setAttr ".tgi[0].ni[249].nvs" 18304;
	setAttr ".tgi[0].ni[250].x" -12434.2861328125;
	setAttr ".tgi[0].ni[250].y" 6292.85693359375;
	setAttr ".tgi[0].ni[250].nvs" 18304;
	setAttr ".tgi[0].ni[251].x" 11522.857421875;
	setAttr ".tgi[0].ni[251].y" 6838.5712890625;
	setAttr ".tgi[0].ni[251].nvs" 18304;
	setAttr ".tgi[0].ni[252].x" 11215.7138671875;
	setAttr ".tgi[0].ni[252].y" 6867.14306640625;
	setAttr ".tgi[0].ni[252].nvs" 18304;
	setAttr ".tgi[0].ni[253].x" 12137.142578125;
	setAttr ".tgi[0].ni[253].y" 6834.28564453125;
	setAttr ".tgi[0].ni[253].nvs" 18304;
	setAttr ".tgi[0].ni[254].x" 11830;
	setAttr ".tgi[0].ni[254].y" 6862.85693359375;
	setAttr ".tgi[0].ni[254].nvs" 18304;
	setAttr ".tgi[0].ni[255].x" 33637.14453125;
	setAttr ".tgi[0].ni[255].y" 6132.85693359375;
	setAttr ".tgi[0].ni[255].nvs" 18304;
	setAttr ".tgi[0].ni[256].x" 73258.5703125;
	setAttr ".tgi[0].ni[256].y" 3770;
	setAttr ".tgi[0].ni[256].nvs" 18304;
	setAttr ".tgi[0].ni[257].x" 72951.4296875;
	setAttr ".tgi[0].ni[257].y" 3830;
	setAttr ".tgi[0].ni[257].nvs" 18304;
	setAttr ".tgi[0].ni[258].x" 74487.140625;
	setAttr ".tgi[0].ni[258].y" 3650;
	setAttr ".tgi[0].ni[258].nvs" 18304;
	setAttr ".tgi[0].ni[259].x" 74180;
	setAttr ".tgi[0].ni[259].y" 3708.571533203125;
	setAttr ".tgi[0].ni[259].nvs" 18304;
	setAttr ".tgi[0].ni[260].x" 75101.4296875;
	setAttr ".tgi[0].ni[260].y" 3588.571533203125;
	setAttr ".tgi[0].ni[260].nvs" 18304;
	setAttr ".tgi[0].ni[261].x" 74794.2890625;
	setAttr ".tgi[0].ni[261].y" 3648.571533203125;
	setAttr ".tgi[0].ni[261].nvs" 18304;
	setAttr ".tgi[0].ni[262].x" 75715.7109375;
	setAttr ".tgi[0].ni[262].y" 3527.142822265625;
	setAttr ".tgi[0].ni[262].nvs" 18304;
	setAttr ".tgi[0].ni[263].x" 75408.5703125;
	setAttr ".tgi[0].ni[263].y" 3587.142822265625;
	setAttr ".tgi[0].ni[263].nvs" 18304;
	setAttr ".tgi[0].ni[264].x" 76330;
	setAttr ".tgi[0].ni[264].y" 3444.28564453125;
	setAttr ".tgi[0].ni[264].nvs" 18304;
	setAttr ".tgi[0].ni[265].x" 58515.71484375;
	setAttr ".tgi[0].ni[265].y" -338.57144165039062;
	setAttr ".tgi[0].ni[265].nvs" 18304;
	setAttr ".tgi[0].ni[266].x" 79644.2890625;
	setAttr ".tgi[0].ni[266].y" -3542.857177734375;
	setAttr ".tgi[0].ni[266].nvs" 18304;
	setAttr ".tgi[0].ni[267].x" 78444.2890625;
	setAttr ".tgi[0].ni[267].y" -1501.4285888671875;
	setAttr ".tgi[0].ni[267].nvs" 18304;
	setAttr ".tgi[0].ni[268].x" 78751.4296875;
	setAttr ".tgi[0].ni[268].y" -1470;
	setAttr ".tgi[0].ni[268].nvs" 18304;
	setAttr ".tgi[0].ni[269].x" -56662.85546875;
	setAttr ".tgi[0].ni[269].y" 6217.14306640625;
	setAttr ".tgi[0].ni[269].nvs" 18304;
	setAttr ".tgi[0].ni[270].x" 48.571430206298828;
	setAttr ".tgi[0].ni[270].y" 1151.4285888671875;
	setAttr ".tgi[0].ni[270].nvs" 18304;
	setAttr ".tgi[0].ni[271].x" 48.571430206298828;
	setAttr ".tgi[0].ni[271].y" -2472.857177734375;
	setAttr ".tgi[0].ni[271].nvs" 18304;
	setAttr ".tgi[0].ni[272].x" 48.571430206298828;
	setAttr ".tgi[0].ni[272].y" -6032.85693359375;
	setAttr ".tgi[0].ni[272].nvs" 18304;
	setAttr ".tgi[0].ni[273].x" 125.71428680419922;
	setAttr ".tgi[0].ni[273].y" 2931.428466796875;
	setAttr ".tgi[0].ni[273].nvs" 18304;
	setAttr ".tgi[0].ni[274].x" 432.85714721679688;
	setAttr ".tgi[0].ni[274].y" -1010;
	setAttr ".tgi[0].ni[274].nvs" 18304;
	setAttr ".tgi[0].ni[275].x" 48.571430206298828;
	setAttr ".tgi[0].ni[275].y" 1214.2857666015625;
	setAttr ".tgi[0].ni[275].nvs" 18304;
	setAttr ".tgi[0].ni[276].x" 432.85714721679688;
	setAttr ".tgi[0].ni[276].y" 134.28572082519531;
	setAttr ".tgi[0].ni[276].nvs" 18304;
	setAttr ".tgi[0].ni[277].x" -565.71429443359375;
	setAttr ".tgi[0].ni[277].y" 3375.71435546875;
	setAttr ".tgi[0].ni[277].nvs" 18304;
	setAttr ".tgi[0].ni[278].x" -258.57144165039062;
	setAttr ".tgi[0].ni[278].y" 2994.28564453125;
	setAttr ".tgi[0].ni[278].nvs" 18304;
	setAttr ".tgi[0].ni[279].x" 48.571430206298828;
	setAttr ".tgi[0].ni[279].y" -6160;
	setAttr ".tgi[0].ni[279].nvs" 18304;
	setAttr ".tgi[0].ni[280].x" 48.571430206298828;
	setAttr ".tgi[0].ni[280].y" 832.85711669921875;
	setAttr ".tgi[0].ni[280].nvs" 18304;
	setAttr ".tgi[0].ni[281].x" 48.571430206298828;
	setAttr ".tgi[0].ni[281].y" 5664.28564453125;
	setAttr ".tgi[0].ni[281].nvs" 18304;
	setAttr ".tgi[0].ni[282].x" -258.57144165039062;
	setAttr ".tgi[0].ni[282].y" 4520;
	setAttr ".tgi[0].ni[282].nvs" 18304;
	setAttr ".tgi[0].ni[283].x" 48.571430206298828;
	setAttr ".tgi[0].ni[283].y" 4392.85693359375;
	setAttr ".tgi[0].ni[283].nvs" 18304;
	setAttr ".tgi[0].ni[284].x" 48.571430206298828;
	setAttr ".tgi[0].ni[284].y" 4774.28564453125;
	setAttr ".tgi[0].ni[284].nvs" 18304;
	setAttr ".tgi[0].ni[285].x" -565.71429443359375;
	setAttr ".tgi[0].ni[285].y" 5410;
	setAttr ".tgi[0].ni[285].nvs" 18304;
	setAttr ".tgi[0].ni[286].x" 48.571430206298828;
	setAttr ".tgi[0].ni[286].y" -2345.71435546875;
	setAttr ".tgi[0].ni[286].nvs" 18304;
	setAttr ".tgi[0].ni[287].x" 48.571430206298828;
	setAttr ".tgi[0].ni[287].y" -5778.5712890625;
	setAttr ".tgi[0].ni[287].nvs" 18304;
	setAttr ".tgi[0].ni[288].x" 125.71428680419922;
	setAttr ".tgi[0].ni[288].y" 1914.2857666015625;
	setAttr ".tgi[0].ni[288].nvs" 18304;
	setAttr ".tgi[0].ni[289].x" 48.571430206298828;
	setAttr ".tgi[0].ni[289].y" -5270;
	setAttr ".tgi[0].ni[289].nvs" 18304;
	setAttr ".tgi[0].ni[290].x" 125.71428680419922;
	setAttr ".tgi[0].ni[290].y" 2677.142822265625;
	setAttr ".tgi[0].ni[290].nvs" 18304;
	setAttr ".tgi[0].ni[291].x" 48.571430206298828;
	setAttr ".tgi[0].ni[291].y" 1405.7142333984375;
	setAttr ".tgi[0].ni[291].nvs" 18304;
	setAttr ".tgi[0].ni[292].x" 79672.859375;
	setAttr ".tgi[0].ni[292].y" -1711.4285888671875;
	setAttr ".tgi[0].ni[292].nvs" 18304;
	setAttr ".tgi[0].ni[293].x" 48.571430206298828;
	setAttr ".tgi[0].ni[293].y" 4138.5712890625;
	setAttr ".tgi[0].ni[293].nvs" 18304;
	setAttr ".tgi[0].ni[294].x" -565.71429443359375;
	setAttr ".tgi[0].ni[294].y" 4520;
	setAttr ".tgi[0].ni[294].nvs" 18304;
	setAttr ".tgi[0].ni[295].x" -258.57144165039062;
	setAttr ".tgi[0].ni[295].y" 4265.71435546875;
	setAttr ".tgi[0].ni[295].nvs" 18304;
	setAttr ".tgi[0].ni[296].x" 48.571430206298828;
	setAttr ".tgi[0].ni[296].y" -1582.857177734375;
	setAttr ".tgi[0].ni[296].nvs" 18304;
	setAttr ".tgi[0].ni[297].x" -258.57144165039062;
	setAttr ".tgi[0].ni[297].y" 3375.71435546875;
	setAttr ".tgi[0].ni[297].nvs" 18304;
	setAttr ".tgi[0].ni[298].x" 47.142856597900391;
	setAttr ".tgi[0].ni[298].y" 7062.85693359375;
	setAttr ".tgi[0].ni[298].nvs" 18304;
	setAttr ".tgi[0].ni[299].x" 48.571430206298828;
	setAttr ".tgi[0].ni[299].y" -6541.4287109375;
	setAttr ".tgi[0].ni[299].nvs" 18304;
	setAttr ".tgi[0].ni[300].x" -258.57144165039062;
	setAttr ".tgi[0].ni[300].y" 1914.2857666015625;
	setAttr ".tgi[0].ni[300].nvs" 18304;
	setAttr ".tgi[0].ni[301].x" -258.57144165039062;
	setAttr ".tgi[0].ni[301].y" 6172.85693359375;
	setAttr ".tgi[0].ni[301].nvs" 18304;
	setAttr ".tgi[0].ni[302].x" -1867.142822265625;
	setAttr ".tgi[0].ni[302].y" -110;
	setAttr ".tgi[0].ni[302].nvs" 18304;
	setAttr ".tgi[0].ni[303].x" 48.571430206298828;
	setAttr ".tgi[0].ni[303].y" -5015.71435546875;
	setAttr ".tgi[0].ni[303].nvs" 18304;
	setAttr ".tgi[0].ni[304].x" -258.57144165039062;
	setAttr ".tgi[0].ni[304].y" 2231.428466796875;
	setAttr ".tgi[0].ni[304].nvs" 18304;
	setAttr ".tgi[0].ni[305].x" -258.57144165039062;
	setAttr ".tgi[0].ni[305].y" 6300;
	setAttr ".tgi[0].ni[305].nvs" 18304;
	setAttr ".tgi[0].ni[306].x" -258.57144165039062;
	setAttr ".tgi[0].ni[306].y" 6427.14306640625;
	setAttr ".tgi[0].ni[306].nvs" 18304;
	setAttr ".tgi[0].ni[307].x" 125.71428680419922;
	setAttr ".tgi[0].ni[307].y" 2295.71435546875;
	setAttr ".tgi[0].ni[307].nvs" 18304;
	setAttr ".tgi[0].ni[308].x" 48.571430206298828;
	setAttr ".tgi[0].ni[308].y" -4761.4287109375;
	setAttr ".tgi[0].ni[308].nvs" 18304;
	setAttr ".tgi[0].ni[309].x" -258.57144165039062;
	setAttr ".tgi[0].ni[309].y" 1405.7142333984375;
	setAttr ".tgi[0].ni[309].nvs" 18304;
	setAttr ".tgi[0].ni[310].x" 48.571430206298828;
	setAttr ".tgi[0].ni[310].y" 4647.14306640625;
	setAttr ".tgi[0].ni[310].nvs" 18304;
	setAttr ".tgi[0].ni[311].x" -565.71429443359375;
	setAttr ".tgi[0].ni[311].y" 3757.142822265625;
	setAttr ".tgi[0].ni[311].nvs" 18304;
	setAttr ".tgi[0].ni[312].x" 48.571430206298828;
	setAttr ".tgi[0].ni[312].y" -1710;
	setAttr ".tgi[0].ni[312].nvs" 18304;
	setAttr ".tgi[0].ni[313].x" 48.571430206298828;
	setAttr ".tgi[0].ni[313].y" -6287.14306640625;
	setAttr ".tgi[0].ni[313].nvs" 18304;
	setAttr ".tgi[0].ni[314].x" 48.571430206298828;
	setAttr ".tgi[0].ni[314].y" -438.57144165039062;
	setAttr ".tgi[0].ni[314].nvs" 18304;
	setAttr ".tgi[0].ni[315].x" 48.571430206298828;
	setAttr ".tgi[0].ni[315].y" 2994.28564453125;
	setAttr ".tgi[0].ni[315].nvs" 18304;
	setAttr ".tgi[0].ni[316].x" 48.571430206298828;
	setAttr ".tgi[0].ni[316].y" 1977.142822265625;
	setAttr ".tgi[0].ni[316].nvs" 18304;
	setAttr ".tgi[0].ni[317].x" -565.71429443359375;
	setAttr ".tgi[0].ni[317].y" 5537.14306640625;
	setAttr ".tgi[0].ni[317].nvs" 18304;
	setAttr ".tgi[0].ni[318].x" 48.571430206298828;
	setAttr ".tgi[0].ni[318].y" 2104.28564453125;
	setAttr ".tgi[0].ni[318].nvs" 18304;
	setAttr ".tgi[0].ni[319].x" -258.57144165039062;
	setAttr ".tgi[0].ni[319].y" 5155.71435546875;
	setAttr ".tgi[0].ni[319].nvs" 18304;
	setAttr ".tgi[0].ni[320].x" 48.571430206298828;
	setAttr ".tgi[0].ni[320].y" 3884.28564453125;
	setAttr ".tgi[0].ni[320].nvs" 18304;
	setAttr ".tgi[0].ni[321].x" -565.71429443359375;
	setAttr ".tgi[0].ni[321].y" 4392.85693359375;
	setAttr ".tgi[0].ni[321].nvs" 18304;
	setAttr ".tgi[0].ni[322].x" 432.85714721679688;
	setAttr ".tgi[0].ni[322].y" -3298.571533203125;
	setAttr ".tgi[0].ni[322].nvs" 18304;
	setAttr ".tgi[0].ni[323].x" -565.71429443359375;
	setAttr ".tgi[0].ni[323].y" 2612.857177734375;
	setAttr ".tgi[0].ni[323].nvs" 18304;
	setAttr ".tgi[0].ni[324].x" 48.571430206298828;
	setAttr ".tgi[0].ni[324].y" 451.42855834960938;
	setAttr ".tgi[0].ni[324].nvs" 18304;
	setAttr ".tgi[0].ni[325].x" 48.571430206298828;
	setAttr ".tgi[0].ni[325].y" -1201.4285888671875;
	setAttr ".tgi[0].ni[325].nvs" 18304;
	setAttr ".tgi[0].ni[326].x" 48.571430206298828;
	setAttr ".tgi[0].ni[326].y" 1595.7142333984375;
	setAttr ".tgi[0].ni[326].nvs" 18304;
	setAttr ".tgi[0].ni[327].x" 48.571430206298828;
	setAttr ".tgi[0].ni[327].y" 4265.71435546875;
	setAttr ".tgi[0].ni[327].nvs" 18304;
	setAttr ".tgi[0].ni[328].x" -258.57144165039062;
	setAttr ".tgi[0].ni[328].y" 4901.4287109375;
	setAttr ".tgi[0].ni[328].nvs" 18304;
	setAttr ".tgi[0].ni[329].x" 48.571430206298828;
	setAttr ".tgi[0].ni[329].y" -5905.71435546875;
	setAttr ".tgi[0].ni[329].nvs" 18304;
	setAttr ".tgi[0].ni[330].x" -567.14288330078125;
	setAttr ".tgi[0].ni[330].y" 7062.85693359375;
	setAttr ".tgi[0].ni[330].nvs" 18304;
	setAttr ".tgi[0].ni[331].x" -258.57144165039062;
	setAttr ".tgi[0].ni[331].y" 2104.28564453125;
	setAttr ".tgi[0].ni[331].nvs" 18304;
	setAttr ".tgi[0].ni[332].x" 432.85714721679688;
	setAttr ".tgi[0].ni[332].y" -2027.142822265625;
	setAttr ".tgi[0].ni[332].nvs" 18304;
	setAttr ".tgi[0].ni[333].x" 48.571430206298828;
	setAttr ".tgi[0].ni[333].y" 6172.85693359375;
	setAttr ".tgi[0].ni[333].nvs" 18304;
	setAttr ".tgi[0].ni[334].x" -565.71429443359375;
	setAttr ".tgi[0].ni[334].y" 5664.28564453125;
	setAttr ".tgi[0].ni[334].nvs" 18304;
	setAttr ".tgi[0].ni[335].x" 48.571430206298828;
	setAttr ".tgi[0].ni[335].y" -755.71429443359375;
	setAttr ".tgi[0].ni[335].nvs" 18304;
	setAttr ".tgi[0].ni[336].x" 48.571430206298828;
	setAttr ".tgi[0].ni[336].y" 6045.71435546875;
	setAttr ".tgi[0].ni[336].nvs" 18304;
	setAttr ".tgi[0].ni[337].x" -565.71429443359375;
	setAttr ".tgi[0].ni[337].y" 4011.428466796875;
	setAttr ".tgi[0].ni[337].nvs" 18304;
	setAttr ".tgi[0].ni[338].x" 48.571430206298828;
	setAttr ".tgi[0].ni[338].y" 4901.4287109375;
	setAttr ".tgi[0].ni[338].nvs" 18304;
	setAttr ".tgi[0].ni[339].x" -565.71429443359375;
	setAttr ".tgi[0].ni[339].y" 5282.85693359375;
	setAttr ".tgi[0].ni[339].nvs" 18304;
	setAttr ".tgi[0].ni[340].x" -181.42857360839844;
	setAttr ".tgi[0].ni[340].y" 3567.142822265625;
	setAttr ".tgi[0].ni[340].nvs" 18304;
	setAttr ".tgi[0].ni[341].x" -258.57144165039062;
	setAttr ".tgi[0].ni[341].y" 2867.142822265625;
	setAttr ".tgi[0].ni[341].nvs" 18304;
	setAttr ".tgi[0].ni[342].x" 48.571430206298828;
	setAttr ".tgi[0].ni[342].y" 3757.142822265625;
	setAttr ".tgi[0].ni[342].nvs" 18304;
	setAttr ".tgi[0].ni[343].x" -565.71429443359375;
	setAttr ".tgi[0].ni[343].y" 3884.28564453125;
	setAttr ".tgi[0].ni[343].nvs" 18304;
	setAttr ".tgi[0].ni[344].x" 48.571430206298828;
	setAttr ".tgi[0].ni[344].y" 6427.14306640625;
	setAttr ".tgi[0].ni[344].nvs" 18304;
	setAttr ".tgi[0].ni[345].x" 432.85714721679688;
	setAttr ".tgi[0].ni[345].y" -247.14285278320312;
	setAttr ".tgi[0].ni[345].nvs" 18304;
	setAttr ".tgi[0].ni[346].x" 432.85714721679688;
	setAttr ".tgi[0].ni[346].y" 770;
	setAttr ".tgi[0].ni[346].nvs" 18304;
	setAttr ".tgi[0].ni[347].x" 125.71428680419922;
	setAttr ".tgi[0].ni[347].y" 2804.28564453125;
	setAttr ".tgi[0].ni[347].nvs" 18304;
	setAttr ".tgi[0].ni[348].x" 79528.5703125;
	setAttr ".tgi[0].ni[348].y" -2318.571533203125;
	setAttr ".tgi[0].ni[348].nvs" 18304;
	setAttr ".tgi[0].ni[349].x" 80015.7109375;
	setAttr ".tgi[0].ni[349].y" -4255.71435546875;
	setAttr ".tgi[0].ni[349].nvs" 18304;
	setAttr ".tgi[0].ni[350].x" 75627.140625;
	setAttr ".tgi[0].ni[350].y" -5960;
	setAttr ".tgi[0].ni[350].nvs" 18304;
	setAttr ".tgi[0].ni[351].x" 79708.5703125;
	setAttr ".tgi[0].ni[351].y" -4255.71435546875;
	setAttr ".tgi[0].ni[351].nvs" 18304;
	setAttr ".tgi[0].ni[352].x" 75598.5703125;
	setAttr ".tgi[0].ni[352].y" -5795.71435546875;
	setAttr ".tgi[0].ni[352].nvs" 18304;
	setAttr ".tgi[0].ni[353].x" 80015.7109375;
	setAttr ".tgi[0].ni[353].y" -5895.71435546875;
	setAttr ".tgi[0].ni[353].nvs" 18304;
	setAttr ".tgi[0].ni[354].x" 79708.5703125;
	setAttr ".tgi[0].ni[354].y" -1872.857177734375;
	setAttr ".tgi[0].ni[354].nvs" 18304;
	setAttr ".tgi[0].ni[355].x" 79708.5703125;
	setAttr ".tgi[0].ni[355].y" -5604.28564453125;
	setAttr ".tgi[0].ni[355].nvs" 18304;
	setAttr ".tgi[0].ni[356].x" 80015.7109375;
	setAttr ".tgi[0].ni[356].y" -5604.28564453125;
	setAttr ".tgi[0].ni[356].nvs" 18304;
	setAttr ".tgi[0].ni[357].x" 79708.5703125;
	setAttr ".tgi[0].ni[357].y" -5458.5712890625;
	setAttr ".tgi[0].ni[357].nvs" 18304;
	setAttr ".tgi[0].ni[358].x" 80015.7109375;
	setAttr ".tgi[0].ni[358].y" -5458.5712890625;
	setAttr ".tgi[0].ni[358].nvs" 18304;
	setAttr ".tgi[0].ni[359].x" 79708.5703125;
	setAttr ".tgi[0].ni[359].y" -5312.85693359375;
	setAttr ".tgi[0].ni[359].nvs" 18304;
	setAttr ".tgi[0].ni[360].x" 80015.7109375;
	setAttr ".tgi[0].ni[360].y" -5312.85693359375;
	setAttr ".tgi[0].ni[360].nvs" 18304;
	setAttr ".tgi[0].ni[361].x" 79708.5703125;
	setAttr ".tgi[0].ni[361].y" -5167.14306640625;
	setAttr ".tgi[0].ni[361].nvs" 18304;
	setAttr ".tgi[0].ni[362].x" 80015.7109375;
	setAttr ".tgi[0].ni[362].y" -5167.14306640625;
	setAttr ".tgi[0].ni[362].nvs" 18304;
	setAttr ".tgi[0].ni[363].x" 79708.5703125;
	setAttr ".tgi[0].ni[363].y" -5021.4287109375;
	setAttr ".tgi[0].ni[363].nvs" 18304;
	setAttr ".tgi[0].ni[364].x" 77251.4296875;
	setAttr ".tgi[0].ni[364].y" -830;
	setAttr ".tgi[0].ni[364].nvs" 18304;
	setAttr ".tgi[0].ni[365].x" 77865.7109375;
	setAttr ".tgi[0].ni[365].y" -951.4285888671875;
	setAttr ".tgi[0].ni[365].nvs" 18304;
	setAttr ".tgi[0].ni[366].x" -70484.2890625;
	setAttr ".tgi[0].ni[366].y" 5801.4287109375;
	setAttr ".tgi[0].ni[366].nvs" 18304;
	setAttr ".tgi[0].ni[367].x" -70177.140625;
	setAttr ".tgi[0].ni[367].y" 5801.4287109375;
	setAttr ".tgi[0].ni[367].nvs" 18304;
	setAttr ".tgi[0].ni[368].x" -65262.85546875;
	setAttr ".tgi[0].ni[368].y" 5801.4287109375;
	setAttr ".tgi[0].ni[368].nvs" 18304;
	setAttr ".tgi[0].ni[369].x" -64955.71484375;
	setAttr ".tgi[0].ni[369].y" 5801.4287109375;
	setAttr ".tgi[0].ni[369].nvs" 18304;
	setAttr ".tgi[0].ni[370].x" -64648.5703125;
	setAttr ".tgi[0].ni[370].y" 5801.4287109375;
	setAttr ".tgi[0].ni[370].nvs" 18304;
	setAttr ".tgi[0].ni[371].x" -64341.4296875;
	setAttr ".tgi[0].ni[371].y" 5801.4287109375;
	setAttr ".tgi[0].ni[371].nvs" 18304;
	setAttr ".tgi[0].ni[372].x" -64034.28515625;
	setAttr ".tgi[0].ni[372].y" 5801.4287109375;
	setAttr ".tgi[0].ni[372].nvs" 18304;
	setAttr ".tgi[0].ni[373].x" -63420;
	setAttr ".tgi[0].ni[373].y" 5801.4287109375;
	setAttr ".tgi[0].ni[373].nvs" 18304;
	setAttr ".tgi[0].ni[374].x" -63727.14453125;
	setAttr ".tgi[0].ni[374].y" 5801.4287109375;
	setAttr ".tgi[0].ni[374].nvs" 18304;
	setAttr ".tgi[0].ni[375].x" -63112.85546875;
	setAttr ".tgi[0].ni[375].y" 5801.4287109375;
	setAttr ".tgi[0].ni[375].nvs" 18304;
	setAttr ".tgi[0].ni[376].x" -62498.5703125;
	setAttr ".tgi[0].ni[376].y" 5801.4287109375;
	setAttr ".tgi[0].ni[376].nvs" 18304;
	setAttr ".tgi[0].ni[377].x" -62805.71484375;
	setAttr ".tgi[0].ni[377].y" 5801.4287109375;
	setAttr ".tgi[0].ni[377].nvs" 18304;
	setAttr ".tgi[0].ni[378].x" -62191.4296875;
	setAttr ".tgi[0].ni[378].y" 5798.5712890625;
	setAttr ".tgi[0].ni[378].nvs" 18304;
	setAttr ".tgi[0].ni[379].x" -61577.14453125;
	setAttr ".tgi[0].ni[379].y" 5845.71435546875;
	setAttr ".tgi[0].ni[379].nvs" 18304;
	setAttr ".tgi[0].ni[380].x" -61884.28515625;
	setAttr ".tgi[0].ni[380].y" 5851.4287109375;
	setAttr ".tgi[0].ni[380].nvs" 18304;
	setAttr ".tgi[0].ni[381].x" -60962.85546875;
	setAttr ".tgi[0].ni[381].y" 5887.14306640625;
	setAttr ".tgi[0].ni[381].nvs" 18304;
	setAttr ".tgi[0].ni[382].x" -61270;
	setAttr ".tgi[0].ni[382].y" 5897.14306640625;
	setAttr ".tgi[0].ni[382].nvs" 18304;
	setAttr ".tgi[0].ni[383].x" -60655.71484375;
	setAttr ".tgi[0].ni[383].y" 5935.71435546875;
	setAttr ".tgi[0].ni[383].nvs" 18304;
	setAttr ".tgi[0].ni[384].x" -31784.28515625;
	setAttr ".tgi[0].ni[384].y" 6662.85693359375;
	setAttr ".tgi[0].ni[384].nvs" 18304;
	setAttr ".tgi[0].ni[385].x" -32091.427734375;
	setAttr ".tgi[0].ni[385].y" 6697.14306640625;
	setAttr ".tgi[0].ni[385].nvs" 18304;
	setAttr ".tgi[0].ni[386].x" -31170;
	setAttr ".tgi[0].ni[386].y" 6661.4287109375;
	setAttr ".tgi[0].ni[386].nvs" 18304;
	setAttr ".tgi[0].ni[387].x" -31477.142578125;
	setAttr ".tgi[0].ni[387].y" 6692.85693359375;
	setAttr ".tgi[0].ni[387].nvs" 18304;
	setAttr ".tgi[0].ni[388].x" -30555.71484375;
	setAttr ".tgi[0].ni[388].y" 6650;
	setAttr ".tgi[0].ni[388].nvs" 18304;
	setAttr ".tgi[0].ni[389].x" -30862.857421875;
	setAttr ".tgi[0].ni[389].y" 6692.85693359375;
	setAttr ".tgi[0].ni[389].nvs" 18304;
	setAttr ".tgi[0].ni[390].x" -30248.572265625;
	setAttr ".tgi[0].ni[390].y" 6624.28564453125;
	setAttr ".tgi[0].ni[390].nvs" 18304;
	setAttr ".tgi[0].ni[391].x" -29634.28515625;
	setAttr ".tgi[0].ni[391].y" 6565.71435546875;
	setAttr ".tgi[0].ni[391].nvs" 18304;
	setAttr ".tgi[0].ni[392].x" -29941.427734375;
	setAttr ".tgi[0].ni[392].y" 6624.28564453125;
	setAttr ".tgi[0].ni[392].nvs" 18304;
	setAttr ".tgi[0].ni[393].x" -29327.142578125;
	setAttr ".tgi[0].ni[393].y" 6508.5712890625;
	setAttr ".tgi[0].ni[393].nvs" 18304;
	setAttr ".tgi[0].ni[394].x" -28712.857421875;
	setAttr ".tgi[0].ni[394].y" 6477.14306640625;
	setAttr ".tgi[0].ni[394].nvs" 18304;
	setAttr ".tgi[0].ni[395].x" -29020;
	setAttr ".tgi[0].ni[395].y" 6511.4287109375;
	setAttr ".tgi[0].ni[395].nvs" 18304;
	setAttr ".tgi[0].ni[396].x" -28098.572265625;
	setAttr ".tgi[0].ni[396].y" 6474.28564453125;
	setAttr ".tgi[0].ni[396].nvs" 18304;
	setAttr ".tgi[0].ni[397].x" -28405.71484375;
	setAttr ".tgi[0].ni[397].y" 6510;
	setAttr ".tgi[0].ni[397].nvs" 18304;
	setAttr ".tgi[0].ni[398].x" -27484.28515625;
	setAttr ".tgi[0].ni[398].y" 6470;
	setAttr ".tgi[0].ni[398].nvs" 18304;
	setAttr ".tgi[0].ni[399].x" -27791.427734375;
	setAttr ".tgi[0].ni[399].y" 6508.5712890625;
	setAttr ".tgi[0].ni[399].nvs" 18304;
	setAttr ".tgi[0].ni[400].x" -26870;
	setAttr ".tgi[0].ni[400].y" 6481.4287109375;
	setAttr ".tgi[0].ni[400].nvs" 18304;
	setAttr ".tgi[0].ni[401].x" -27177.142578125;
	setAttr ".tgi[0].ni[401].y" 6505.71435546875;
	setAttr ".tgi[0].ni[401].nvs" 18304;
	setAttr ".tgi[0].ni[402].x" -26255.71484375;
	setAttr ".tgi[0].ni[402].y" 6472.85693359375;
	setAttr ".tgi[0].ni[402].nvs" 18304;
	setAttr ".tgi[0].ni[403].x" -26562.857421875;
	setAttr ".tgi[0].ni[403].y" 6495.71435546875;
	setAttr ".tgi[0].ni[403].nvs" 18304;
	setAttr ".tgi[0].ni[404].x" -20727.142578125;
	setAttr ".tgi[0].ni[404].y" 6182.85693359375;
	setAttr ".tgi[0].ni[404].nvs" 18304;
	setAttr ".tgi[0].ni[405].x" -21034.28515625;
	setAttr ".tgi[0].ni[405].y" 6241.4287109375;
	setAttr ".tgi[0].ni[405].nvs" 18304;
	setAttr ".tgi[0].ni[406].x" -20112.857421875;
	setAttr ".tgi[0].ni[406].y" 6192.85693359375;
	setAttr ".tgi[0].ni[406].nvs" 18304;
	setAttr ".tgi[0].ni[407].x" -20420;
	setAttr ".tgi[0].ni[407].y" 6218.5712890625;
	setAttr ".tgi[0].ni[407].nvs" 18304;
	setAttr ".tgi[0].ni[408].x" -19805.71484375;
	setAttr ".tgi[0].ni[408].y" 6162.85693359375;
	setAttr ".tgi[0].ni[408].nvs" 18304;
	setAttr ".tgi[0].ni[409].x" -19191.427734375;
	setAttr ".tgi[0].ni[409].y" 6191.4287109375;
	setAttr ".tgi[0].ni[409].nvs" 18304;
	setAttr ".tgi[0].ni[410].x" -19498.572265625;
	setAttr ".tgi[0].ni[410].y" 6218.5712890625;
	setAttr ".tgi[0].ni[410].nvs" 18304;
	setAttr ".tgi[0].ni[411].x" -18577.142578125;
	setAttr ".tgi[0].ni[411].y" 6194.28564453125;
	setAttr ".tgi[0].ni[411].nvs" 18304;
	setAttr ".tgi[0].ni[412].x" -18884.28515625;
	setAttr ".tgi[0].ni[412].y" 6218.5712890625;
	setAttr ".tgi[0].ni[412].nvs" 18304;
	setAttr ".tgi[0].ni[413].x" -17962.857421875;
	setAttr ".tgi[0].ni[413].y" 6187.14306640625;
	setAttr ".tgi[0].ni[413].nvs" 18304;
	setAttr ".tgi[0].ni[414].x" -3527.142822265625;
	setAttr ".tgi[0].ni[414].y" 6520;
	setAttr ".tgi[0].ni[414].nvs" 18304;
	setAttr ".tgi[0].ni[415].x" -3834.28564453125;
	setAttr ".tgi[0].ni[415].y" 6547.14306640625;
	setAttr ".tgi[0].ni[415].nvs" 18304;
	setAttr ".tgi[0].ni[416].x" -2912.857177734375;
	setAttr ".tgi[0].ni[416].y" 6511.4287109375;
	setAttr ".tgi[0].ni[416].nvs" 18304;
	setAttr ".tgi[0].ni[417].x" -3220;
	setAttr ".tgi[0].ni[417].y" 6538.5712890625;
	setAttr ".tgi[0].ni[417].nvs" 18304;
	setAttr ".tgi[0].ni[418].x" 12751.4287109375;
	setAttr ".tgi[0].ni[418].y" 6831.4287109375;
	setAttr ".tgi[0].ni[418].nvs" 18304;
	setAttr ".tgi[0].ni[419].x" 32101.427734375;
	setAttr ".tgi[0].ni[419].y" 5992.85693359375;
	setAttr ".tgi[0].ni[419].nvs" 18304;
	setAttr ".tgi[0].ni[420].x" 32408.572265625;
	setAttr ".tgi[0].ni[420].y" 6004.28564453125;
	setAttr ".tgi[0].ni[420].nvs" 18304;
	setAttr ".tgi[0].ni[421].x" 38244.28515625;
	setAttr ".tgi[0].ni[421].y" 6248.5712890625;
	setAttr ".tgi[0].ni[421].nvs" 18304;
	setAttr ".tgi[0].ni[422].x" 38858.5703125;
	setAttr ".tgi[0].ni[422].y" 6178.5712890625;
	setAttr ".tgi[0].ni[422].nvs" 18304;
	setAttr ".tgi[0].ni[423].x" 39165.71484375;
	setAttr ".tgi[0].ni[423].y" 6174.28564453125;
	setAttr ".tgi[0].ni[423].nvs" 18304;
	setAttr ".tgi[0].ni[424].x" 39472.85546875;
	setAttr ".tgi[0].ni[424].y" 6191.4287109375;
	setAttr ".tgi[0].ni[424].nvs" 18304;
	setAttr ".tgi[0].ni[425].x" 39780;
	setAttr ".tgi[0].ni[425].y" 6237.14306640625;
	setAttr ".tgi[0].ni[425].nvs" 18304;
	setAttr ".tgi[0].ni[426].x" 45922.85546875;
	setAttr ".tgi[0].ni[426].y" 6347.14306640625;
	setAttr ".tgi[0].ni[426].nvs" 18304;
	setAttr ".tgi[0].ni[427].x" 45615.71484375;
	setAttr ".tgi[0].ni[427].y" 6295.71435546875;
	setAttr ".tgi[0].ni[427].nvs" 18304;
	setAttr ".tgi[0].ni[428].x" 46230;
	setAttr ".tgi[0].ni[428].y" 6347.14306640625;
	setAttr ".tgi[0].ni[428].nvs" 18304;
	setAttr ".tgi[0].ni[429].x" 57287.14453125;
	setAttr ".tgi[0].ni[429].y" 5944.28564453125;
	setAttr ".tgi[0].ni[429].nvs" 18304;
	setAttr ".tgi[0].ni[430].x" 57901.4296875;
	setAttr ".tgi[0].ni[430].y" 5812.85693359375;
	setAttr ".tgi[0].ni[430].nvs" 18304;
	setAttr ".tgi[0].ni[431].x" 58515.71484375;
	setAttr ".tgi[0].ni[431].y" 5735.71435546875;
	setAttr ".tgi[0].ni[431].nvs" 18304;
	setAttr ".tgi[0].ni[432].x" 58208.5703125;
	setAttr ".tgi[0].ni[432].y" 5802.85693359375;
	setAttr ".tgi[0].ni[432].nvs" 18304;
	setAttr ".tgi[0].ni[433].x" 76022.859375;
	setAttr ".tgi[0].ni[433].y" 3504.28564453125;
	setAttr ".tgi[0].ni[433].nvs" 18304;
	setAttr ".tgi[0].ni[434].x" 58822.85546875;
	setAttr ".tgi[0].ni[434].y" -370;
	setAttr ".tgi[0].ni[434].nvs" 18304;
	setAttr ".tgi[0].ni[435].x" 59130;
	setAttr ".tgi[0].ni[435].y" -577.14288330078125;
	setAttr ".tgi[0].ni[435].nvs" 18304;
	setAttr ".tgi[0].ni[436].x" 80015.7109375;
	setAttr ".tgi[0].ni[436].y" -4875.71435546875;
	setAttr ".tgi[0].ni[436].nvs" 18304;
	setAttr ".tgi[0].ni[437].x" 79708.5703125;
	setAttr ".tgi[0].ni[437].y" -4875.71435546875;
	setAttr ".tgi[0].ni[437].nvs" 18304;
	setAttr ".tgi[0].ni[438].x" 75467.140625;
	setAttr ".tgi[0].ni[438].y" -2072.857177734375;
	setAttr ".tgi[0].ni[438].nvs" 18304;
	setAttr ".tgi[0].ni[439].x" 75160;
	setAttr ".tgi[0].ni[439].y" -2072.857177734375;
	setAttr ".tgi[0].ni[439].nvs" 18304;
	setAttr ".tgi[0].ni[440].x" 79951.4296875;
	setAttr ".tgi[0].ni[440].y" -3360;
	setAttr ".tgi[0].ni[440].nvs" 18304;
	setAttr ".tgi[0].ni[441].x" 79644.2890625;
	setAttr ".tgi[0].ni[441].y" -3360;
	setAttr ".tgi[0].ni[441].nvs" 18304;
	setAttr ".tgi[0].ni[442].x" 79951.4296875;
	setAttr ".tgi[0].ni[442].y" -3542.857177734375;
	setAttr ".tgi[0].ni[442].nvs" 18304;
	setAttr ".tgi[0].ni[443].x" -2174.28564453125;
	setAttr ".tgi[0].ni[443].y" -110;
	setAttr ".tgi[0].ni[443].nvs" 18304;
	setAttr ".tgi[0].ni[444].x" 70494.2890625;
	setAttr ".tgi[0].ni[444].y" -102.85713958740234;
	setAttr ".tgi[0].ni[444].nvs" 18304;
	setAttr ".tgi[0].ni[445].x" 75637.140625;
	setAttr ".tgi[0].ni[445].y" -7745.71435546875;
	setAttr ".tgi[0].ni[445].nvs" 18304;
	setAttr ".tgi[0].ni[446].x" -24720;
	setAttr ".tgi[0].ni[446].y" 6357.14306640625;
	setAttr ".tgi[0].ni[446].nvs" 18304;
	setAttr ".tgi[0].ni[447].x" -23798.572265625;
	setAttr ".tgi[0].ni[447].y" 6308.5712890625;
	setAttr ".tgi[0].ni[447].nvs" 18304;
	setAttr ".tgi[0].ni[448].x" 10294.2861328125;
	setAttr ".tgi[0].ni[448].y" 6840;
	setAttr ".tgi[0].ni[448].nvs" 18304;
	setAttr ".tgi[0].ni[449].x" 9065.7138671875;
	setAttr ".tgi[0].ni[449].y" 6847.14306640625;
	setAttr ".tgi[0].ni[449].nvs" 18304;
	setAttr ".tgi[0].ni[450].x" 8758.5712890625;
	setAttr ".tgi[0].ni[450].y" 6877.14306640625;
	setAttr ".tgi[0].ni[450].nvs" 18304;
	setAttr ".tgi[0].ni[451].x" 9680;
	setAttr ".tgi[0].ni[451].y" 6847.14306640625;
	setAttr ".tgi[0].ni[451].nvs" 18304;
	setAttr ".tgi[0].ni[452].x" -38234.28515625;
	setAttr ".tgi[0].ni[452].y" 6757.14306640625;
	setAttr ".tgi[0].ni[452].nvs" 18304;
	setAttr ".tgi[0].ni[453].x" -37312.85546875;
	setAttr ".tgi[0].ni[453].y" 6734.28564453125;
	setAttr ".tgi[0].ni[453].nvs" 18304;
	setAttr ".tgi[0].ni[454].x" -25641.427734375;
	setAttr ".tgi[0].ni[454].y" 6414.28564453125;
	setAttr ".tgi[0].ni[454].nvs" 18304;
	setAttr ".tgi[0].ni[455].x" -25948.572265625;
	setAttr ".tgi[0].ni[455].y" 6472.85693359375;
	setAttr ".tgi[0].ni[455].nvs" 18304;
	setAttr ".tgi[0].ni[456].x" -24412.857421875;
	setAttr ".tgi[0].ni[456].y" 6317.14306640625;
	setAttr ".tgi[0].ni[456].nvs" 18304;
	setAttr ".tgi[0].ni[457].x" 7837.14306640625;
	setAttr ".tgi[0].ni[457].y" 6788.5712890625;
	setAttr ".tgi[0].ni[457].nvs" 18304;
	setAttr ".tgi[0].ni[458].x" 8144.28564453125;
	setAttr ".tgi[0].ni[458].y" 6818.5712890625;
	setAttr ".tgi[0].ni[458].nvs" 18304;
	setAttr ".tgi[0].ni[459].x" 8451.4287109375;
	setAttr ".tgi[0].ni[459].y" 6848.5712890625;
	setAttr ".tgi[0].ni[459].nvs" 18304;
	setAttr ".tgi[0].ni[460].x" -24105.71484375;
	setAttr ".tgi[0].ni[460].y" 6351.4287109375;
	setAttr ".tgi[0].ni[460].nvs" 18304;
	setAttr ".tgi[0].ni[461].x" -25334.28515625;
	setAttr ".tgi[0].ni[461].y" 6414.28564453125;
	setAttr ".tgi[0].ni[461].nvs" 18304;
	setAttr ".tgi[0].ni[462].x" -25027.142578125;
	setAttr ".tgi[0].ni[462].y" 6355.71435546875;
	setAttr ".tgi[0].ni[462].nvs" 18304;
	setAttr ".tgi[0].ni[463].x" 74180;
	setAttr ".tgi[0].ni[463].y" -321.42855834960938;
	setAttr ".tgi[0].ni[463].nvs" 18304;
	setAttr ".tgi[0].ni[464].x" 74794.2890625;
	setAttr ".tgi[0].ni[464].y" -387.14285278320312;
	setAttr ".tgi[0].ni[464].nvs" 18304;
	setAttr ".tgi[0].ni[465].x" 78172.859375;
	setAttr ".tgi[0].ni[465].y" -1030;
	setAttr ".tgi[0].ni[465].nvs" 18304;
	setAttr ".tgi[0].ni[466].x" 78787.140625;
	setAttr ".tgi[0].ni[466].y" -1121.4285888671875;
	setAttr ".tgi[0].ni[466].nvs" 18304;
	setAttr ".tgi[0].ni[467].x" -65570;
	setAttr ".tgi[0].ni[467].y" 5801.4287109375;
	setAttr ".tgi[0].ni[467].nvs" 18304;
	setAttr ".tgi[0].ni[468].x" -56355.71484375;
	setAttr ".tgi[0].ni[468].y" 6257.14306640625;
	setAttr ".tgi[0].ni[468].nvs" 18304;
	setAttr ".tgi[0].ni[469].x" -56048.5703125;
	setAttr ".tgi[0].ni[469].y" 6297.14306640625;
	setAttr ".tgi[0].ni[469].nvs" 18304;
	setAttr ".tgi[0].ni[470].x" -55741.4296875;
	setAttr ".tgi[0].ni[470].y" 6334.28564453125;
	setAttr ".tgi[0].ni[470].nvs" 18304;
	setAttr ".tgi[0].ni[471].x" -55434.28515625;
	setAttr ".tgi[0].ni[471].y" 6372.85693359375;
	setAttr ".tgi[0].ni[471].nvs" 18304;
	setAttr ".tgi[0].ni[472].x" -54820;
	setAttr ".tgi[0].ni[472].y" 6390;
	setAttr ".tgi[0].ni[472].nvs" 18304;
	setAttr ".tgi[0].ni[473].x" -55127.14453125;
	setAttr ".tgi[0].ni[473].y" 6411.4287109375;
	setAttr ".tgi[0].ni[473].nvs" 18304;
	setAttr ".tgi[0].ni[474].x" -54205.71484375;
	setAttr ".tgi[0].ni[474].y" 6408.5712890625;
	setAttr ".tgi[0].ni[474].nvs" 18304;
	setAttr ".tgi[0].ni[475].x" -54512.85546875;
	setAttr ".tgi[0].ni[475].y" 6428.5712890625;
	setAttr ".tgi[0].ni[475].nvs" 18304;
	setAttr ".tgi[0].ni[476].x" -53591.4296875;
	setAttr ".tgi[0].ni[476].y" 6425.71435546875;
	setAttr ".tgi[0].ni[476].nvs" 18304;
	setAttr ".tgi[0].ni[477].x" -53898.5703125;
	setAttr ".tgi[0].ni[477].y" 6445.71435546875;
	setAttr ".tgi[0].ni[477].nvs" 18304;
	setAttr ".tgi[0].ni[478].x" -53284.28515625;
	setAttr ".tgi[0].ni[478].y" 6464.28564453125;
	setAttr ".tgi[0].ni[478].nvs" 18304;
	setAttr ".tgi[0].ni[479].x" -52977.14453125;
	setAttr ".tgi[0].ni[479].y" 6501.4287109375;
	setAttr ".tgi[0].ni[479].nvs" 18304;
	setAttr ".tgi[0].ni[480].x" -52670;
	setAttr ".tgi[0].ni[480].y" 6538.5712890625;
	setAttr ".tgi[0].ni[480].nvs" 18304;
	setAttr ".tgi[0].ni[481].x" -52362.85546875;
	setAttr ".tgi[0].ni[481].y" 6518.5712890625;
	setAttr ".tgi[0].ni[481].nvs" 18304;
	setAttr ".tgi[0].ni[482].x" -51748.5703125;
	setAttr ".tgi[0].ni[482].y" 6534.28564453125;
	setAttr ".tgi[0].ni[482].nvs" 18304;
	setAttr ".tgi[0].ni[483].x" -52055.71484375;
	setAttr ".tgi[0].ni[483].y" 6555.71435546875;
	setAttr ".tgi[0].ni[483].nvs" 18304;
	setAttr ".tgi[0].ni[484].x" -51441.4296875;
	setAttr ".tgi[0].ni[484].y" 6571.4287109375;
	setAttr ".tgi[0].ni[484].nvs" 18304;
	setAttr ".tgi[0].ni[485].x" -51134.28515625;
	setAttr ".tgi[0].ni[485].y" 6608.5712890625;
	setAttr ".tgi[0].ni[485].nvs" 18304;
	setAttr ".tgi[0].ni[486].x" -50827.14453125;
	setAttr ".tgi[0].ni[486].y" 6585.71435546875;
	setAttr ".tgi[0].ni[486].nvs" 18304;
	setAttr ".tgi[0].ni[487].x" -50212.85546875;
	setAttr ".tgi[0].ni[487].y" 6601.4287109375;
	setAttr ".tgi[0].ni[487].nvs" 18304;
	setAttr ".tgi[0].ni[488].x" -50520;
	setAttr ".tgi[0].ni[488].y" 6622.85693359375;
	setAttr ".tgi[0].ni[488].nvs" 18304;
	setAttr ".tgi[0].ni[489].x" -39462.85546875;
	setAttr ".tgi[0].ni[489].y" 6747.14306640625;
	setAttr ".tgi[0].ni[489].nvs" 18304;
	setAttr ".tgi[0].ni[490].x" -38848.5703125;
	setAttr ".tgi[0].ni[490].y" 6752.85693359375;
	setAttr ".tgi[0].ni[490].nvs" 18304;
	setAttr ".tgi[0].ni[491].x" -37927.14453125;
	setAttr ".tgi[0].ni[491].y" 6730;
	setAttr ".tgi[0].ni[491].nvs" 18304;
	setAttr ".tgi[0].ni[492].x" 29644.28515625;
	setAttr ".tgi[0].ni[492].y" 5895.71435546875;
	setAttr ".tgi[0].ni[492].nvs" 18304;
	setAttr ".tgi[0].ni[493].x" 29337.142578125;
	setAttr ".tgi[0].ni[493].y" 5965.71435546875;
	setAttr ".tgi[0].ni[493].nvs" 18304;
	setAttr ".tgi[0].ni[494].x" 29951.427734375;
	setAttr ".tgi[0].ni[494].y" 5895.71435546875;
	setAttr ".tgi[0].ni[494].nvs" 18304;
	setAttr ".tgi[0].ni[495].x" 9372.857421875;
	setAttr ".tgi[0].ni[495].y" 6877.14306640625;
	setAttr ".tgi[0].ni[495].nvs" 18304;
	setAttr ".tgi[0].ni[496].x" 9987.142578125;
	setAttr ".tgi[0].ni[496].y" 6875.71435546875;
	setAttr ".tgi[0].ni[496].nvs" 18304;
	setAttr ".tgi[0].ni[497].x" -23184.28515625;
	setAttr ".tgi[0].ni[497].y" 6301.4287109375;
	setAttr ".tgi[0].ni[497].nvs" 18304;
	setAttr ".tgi[0].ni[498].x" -11820;
	setAttr ".tgi[0].ni[498].y" 6285.71435546875;
	setAttr ".tgi[0].ni[498].nvs" 18304;
	setAttr ".tgi[0].ni[499].x" 6915.71435546875;
	setAttr ".tgi[0].ni[499].y" 6701.4287109375;
	setAttr ".tgi[0].ni[499].nvs" 18304;
	setAttr ".tgi[0].ni[500].x" 7222.85693359375;
	setAttr ".tgi[0].ni[500].y" 6730;
	setAttr ".tgi[0].ni[500].nvs" 18304;
	setAttr ".tgi[0].ni[501].x" 7530;
	setAttr ".tgi[0].ni[501].y" 6761.4287109375;
	setAttr ".tgi[0].ni[501].nvs" 18304;
	setAttr ".tgi[0].ni[502].x" 73872.859375;
	setAttr ".tgi[0].ni[502].y" -267.14285278320312;
	setAttr ".tgi[0].ni[502].nvs" 18304;
	setAttr ".tgi[0].ni[503].x" 38551.4296875;
	setAttr ".tgi[0].ni[503].y" 6181.4287109375;
	setAttr ".tgi[0].ni[503].nvs" 18304;
	setAttr ".tgi[0].ni[504].x" 42237.14453125;
	setAttr ".tgi[0].ni[504].y" 6355.71435546875;
	setAttr ".tgi[0].ni[504].nvs" 18304;
	setAttr ".tgi[0].ni[505].x" 43158.5703125;
	setAttr ".tgi[0].ni[505].y" 6255.71435546875;
	setAttr ".tgi[0].ni[505].nvs" 18304;
	setAttr ".tgi[0].ni[506].x" 54830;
	setAttr ".tgi[0].ni[506].y" -74.285713195800781;
	setAttr ".tgi[0].ni[506].nvs" 18304;
	setAttr ".tgi[0].ni[507].x" 55137.14453125;
	setAttr ".tgi[0].ni[507].y" -100;
	setAttr ".tgi[0].ni[507].nvs" 18304;
	setAttr ".tgi[0].ni[508].x" 52065.71484375;
	setAttr ".tgi[0].ni[508].y" 6340;
	setAttr ".tgi[0].ni[508].nvs" 18304;
	setAttr ".tgi[0].ni[509].x" 73565.7109375;
	setAttr ".tgi[0].ni[509].y" 3767.142822265625;
	setAttr ".tgi[0].ni[509].nvs" 18304;
	setAttr ".tgi[0].ni[510].x" 10908.5712890625;
	setAttr ".tgi[0].ni[510].y" 6840;
	setAttr ".tgi[0].ni[510].nvs" 18304;
	setAttr ".tgi[0].ni[511].x" 10601.4287109375;
	setAttr ".tgi[0].ni[511].y" 6868.5712890625;
	setAttr ".tgi[0].ni[511].nvs" 18304;
	setAttr ".tgi[0].ni[512].x" 27801.427734375;
	setAttr ".tgi[0].ni[512].y" 6140;
	setAttr ".tgi[0].ni[512].nvs" 18304;
	setAttr ".tgi[0].ni[513].x" 63430;
	setAttr ".tgi[0].ni[513].y" 4964.28564453125;
	setAttr ".tgi[0].ni[513].nvs" 18304;
	setAttr ".tgi[0].ni[514].x" 64044.28515625;
	setAttr ".tgi[0].ni[514].y" 4887.14306640625;
	setAttr ".tgi[0].ni[514].nvs" 18304;
	setAttr ".tgi[0].ni[515].x" 63737.14453125;
	setAttr ".tgi[0].ni[515].y" 4950;
	setAttr ".tgi[0].ni[515].nvs" 18304;
	setAttr ".tgi[0].ni[516].x" 64658.5703125;
	setAttr ".tgi[0].ni[516].y" 4778.5712890625;
	setAttr ".tgi[0].ni[516].nvs" 18304;
	setAttr ".tgi[0].ni[517].x" 64351.4296875;
	setAttr ".tgi[0].ni[517].y" 4841.4287109375;
	setAttr ".tgi[0].ni[517].nvs" 18304;
	setAttr ".tgi[0].ni[518].x" 64965.71484375;
	setAttr ".tgi[0].ni[518].y" 4687.14306640625;
	setAttr ".tgi[0].ni[518].nvs" 18304;
	setAttr ".tgi[0].ni[519].x" 55444.28515625;
	setAttr ".tgi[0].ni[519].y" -127.14286041259766;
	setAttr ".tgi[0].ni[519].nvs" 18304;
	setAttr ".tgi[0].ni[520].x" 55751.4296875;
	setAttr ".tgi[0].ni[520].y" -142.85714721679688;
	setAttr ".tgi[0].ni[520].nvs" 18304;
	setAttr ".tgi[0].ni[521].x" 65580;
	setAttr ".tgi[0].ni[521].y" 4591.4287109375;
	setAttr ".tgi[0].ni[521].nvs" 18304;
	setAttr ".tgi[0].ni[522].x" 65272.85546875;
	setAttr ".tgi[0].ni[522].y" 4657.14306640625;
	setAttr ".tgi[0].ni[522].nvs" 18304;
	setAttr ".tgi[0].ni[523].x" 66194.2890625;
	setAttr ".tgi[0].ni[523].y" 4505.71435546875;
	setAttr ".tgi[0].ni[523].nvs" 18304;
	setAttr ".tgi[0].ni[524].x" 65887.140625;
	setAttr ".tgi[0].ni[524].y" 4577.14306640625;
	setAttr ".tgi[0].ni[524].nvs" 18304;
	setAttr ".tgi[0].ni[525].x" 66808.5703125;
	setAttr ".tgi[0].ni[525].y" 4434.28564453125;
	setAttr ".tgi[0].ni[525].nvs" 18304;
	setAttr ".tgi[0].ni[526].x" 66501.4296875;
	setAttr ".tgi[0].ni[526].y" 4504.28564453125;
	setAttr ".tgi[0].ni[526].nvs" 18304;
	setAttr ".tgi[0].ni[527].x" 67422.859375;
	setAttr ".tgi[0].ni[527].y" 4360;
	setAttr ".tgi[0].ni[527].nvs" 18304;
	setAttr ".tgi[0].ni[528].x" 67115.7109375;
	setAttr ".tgi[0].ni[528].y" 4424.28564453125;
	setAttr ".tgi[0].ni[528].nvs" 18304;
	setAttr ".tgi[0].ni[529].x" 68037.140625;
	setAttr ".tgi[0].ni[529].y" 4275.71435546875;
	setAttr ".tgi[0].ni[529].nvs" 18304;
	setAttr ".tgi[0].ni[530].x" 67730;
	setAttr ".tgi[0].ni[530].y" 4337.14306640625;
	setAttr ".tgi[0].ni[530].nvs" 18304;
	setAttr ".tgi[0].ni[531].x" 68651.4296875;
	setAttr ".tgi[0].ni[531].y" 4198.5712890625;
	setAttr ".tgi[0].ni[531].nvs" 18304;
	setAttr ".tgi[0].ni[532].x" 68344.2890625;
	setAttr ".tgi[0].ni[532].y" 4267.14306640625;
	setAttr ".tgi[0].ni[532].nvs" 18304;
	setAttr ".tgi[0].ni[533].x" 75637.140625;
	setAttr ".tgi[0].ni[533].y" -7308.5712890625;
	setAttr ".tgi[0].ni[533].nvs" 18304;
	setAttr ".tgi[0].ni[534].x" 80015.7109375;
	setAttr ".tgi[0].ni[534].y" -7080;
	setAttr ".tgi[0].ni[534].nvs" 18304;
	setAttr ".tgi[0].ni[535].x" 80015.7109375;
	setAttr ".tgi[0].ni[535].y" -6934.28564453125;
	setAttr ".tgi[0].ni[535].nvs" 18304;
	setAttr ".tgi[0].ni[536].x" 59437.14453125;
	setAttr ".tgi[0].ni[536].y" 168.57142639160156;
	setAttr ".tgi[0].ni[536].nvs" 18304;
	setAttr ".tgi[0].ni[537].x" 80015.7109375;
	setAttr ".tgi[0].ni[537].y" -6788.5712890625;
	setAttr ".tgi[0].ni[537].nvs" 18304;
	setAttr ".tgi[0].ni[538].x" 59437.14453125;
	setAttr ".tgi[0].ni[538].y" -757.14288330078125;
	setAttr ".tgi[0].ni[538].nvs" 18304;
	setAttr ".tgi[0].ni[539].x" 80015.7109375;
	setAttr ".tgi[0].ni[539].y" -6642.85693359375;
	setAttr ".tgi[0].ni[539].nvs" 18304;
	setAttr ".tgi[0].ni[540].x" 80015.7109375;
	setAttr ".tgi[0].ni[540].y" -6497.14306640625;
	setAttr ".tgi[0].ni[540].nvs" 18304;
	setAttr ".tgi[0].ni[541].x" -62805.71484375;
	setAttr ".tgi[0].ni[541].y" 342.85714721679688;
	setAttr ".tgi[0].ni[541].nvs" 18304;
	setAttr ".tgi[0].ni[542].x" 80015.7109375;
	setAttr ".tgi[0].ni[542].y" -1872.857177734375;
	setAttr ".tgi[0].ni[542].nvs" 18304;
	setAttr ".tgi[0].ni[543].x" 79058.5703125;
	setAttr ".tgi[0].ni[543].y" -1554.2857666015625;
	setAttr ".tgi[0].ni[543].nvs" 18304;
	setAttr ".tgi[0].ni[544].x" 78137.140625;
	setAttr ".tgi[0].ni[544].y" -1598.5714111328125;
	setAttr ".tgi[0].ni[544].nvs" 18304;
	setAttr ".tgi[0].ni[545].x" 79401.4296875;
	setAttr ".tgi[0].ni[545].y" -1931.4285888671875;
	setAttr ".tgi[0].ni[545].nvs" 18304;
	setAttr ".tgi[0].ni[546].x" 80015.7109375;
	setAttr ".tgi[0].ni[546].y" -1990;
	setAttr ".tgi[0].ni[546].nvs" 18304;
	setAttr ".tgi[0].ni[547].x" 79950;
	setAttr ".tgi[0].ni[547].y" -2830;
	setAttr ".tgi[0].ni[547].nvs" 18304;
	setAttr ".tgi[0].ni[548].x" 79642.859375;
	setAttr ".tgi[0].ni[548].y" -2830;
	setAttr ".tgi[0].ni[548].nvs" 18304;
	setAttr ".tgi[0].ni[549].x" 79951.4296875;
	setAttr ".tgi[0].ni[549].y" -3890;
	setAttr ".tgi[0].ni[549].nvs" 18304;
	setAttr ".tgi[0].ni[550].x" 79644.2890625;
	setAttr ".tgi[0].ni[550].y" -3890;
	setAttr ".tgi[0].ni[550].nvs" 18304;
	setAttr ".tgi[0].ni[551].x" 80015.7109375;
	setAttr ".tgi[0].ni[551].y" -6351.4287109375;
	setAttr ".tgi[0].ni[551].nvs" 18304;
	setAttr ".tgi[0].ni[552].x" 79845.7109375;
	setAttr ".tgi[0].ni[552].y" -2482.857177734375;
	setAttr ".tgi[0].ni[552].nvs" 18304;
	setAttr ".tgi[0].ni[553].x" 79538.5703125;
	setAttr ".tgi[0].ni[553].y" -2482.857177734375;
	setAttr ".tgi[0].ni[553].nvs" 18304;
	setAttr ".tgi[0].ni[554].x" 79951.4296875;
	setAttr ".tgi[0].ni[554].y" -3725.71435546875;
	setAttr ".tgi[0].ni[554].nvs" 18304;
	setAttr ".tgi[0].ni[555].x" 79644.2890625;
	setAttr ".tgi[0].ni[555].y" -3725.71435546875;
	setAttr ".tgi[0].ni[555].nvs" 18304;
	setAttr ".tgi[0].ni[556].x" 79835.7109375;
	setAttr ".tgi[0].ni[556].y" -2318.571533203125;
	setAttr ".tgi[0].ni[556].nvs" 18304;
	setAttr ".tgi[0].ni[557].x" 80015.7109375;
	setAttr ".tgi[0].ni[557].y" -5021.4287109375;
	setAttr ".tgi[0].ni[557].nvs" 18304;
	setAttr ".tgi[0].ni[558].x" 80015.7109375;
	setAttr ".tgi[0].ni[558].y" -5750;
	setAttr ".tgi[0].ni[558].nvs" 18304;
	setAttr ".tgi[0].ni[559].x" 79708.5703125;
	setAttr ".tgi[0].ni[559].y" -4730;
	setAttr ".tgi[0].ni[559].nvs" 18304;
	setAttr ".tgi[0].ni[560].x" 80015.7109375;
	setAttr ".tgi[0].ni[560].y" -4730;
	setAttr ".tgi[0].ni[560].nvs" 18304;
	setAttr ".tgi[0].ni[561].x" 79708.5703125;
	setAttr ".tgi[0].ni[561].y" -4584.28564453125;
	setAttr ".tgi[0].ni[561].nvs" 18304;
	setAttr ".tgi[0].ni[562].x" 80015.7109375;
	setAttr ".tgi[0].ni[562].y" -4584.28564453125;
	setAttr ".tgi[0].ni[562].nvs" 18304;
	setAttr ".tgi[0].ni[563].x" 80015.7109375;
	setAttr ".tgi[0].ni[563].y" -6205.71435546875;
	setAttr ".tgi[0].ni[563].nvs" 18304;
	setAttr ".tgi[0].ni[564].x" 75637.140625;
	setAttr ".tgi[0].ni[564].y" -6434.28564453125;
	setAttr ".tgi[0].ni[564].nvs" 18304;
	setAttr ".tgi[0].ni[565].x" 59744.28515625;
	setAttr ".tgi[0].ni[565].y" 168.57142639160156;
	setAttr ".tgi[0].ni[565].nvs" 18304;
	setAttr ".tgi[0].ni[566].x" 60358.5703125;
	setAttr ".tgi[0].ni[566].y" 165.71427917480469;
	setAttr ".tgi[0].ni[566].nvs" 18304;
	setAttr ".tgi[0].ni[567].x" 60051.4296875;
	setAttr ".tgi[0].ni[567].y" 197.14285278320312;
	setAttr ".tgi[0].ni[567].nvs" 18304;
	setAttr ".tgi[0].ni[568].x" 72644.2890625;
	setAttr ".tgi[0].ni[568].y" 3831.428466796875;
	setAttr ".tgi[0].ni[568].nvs" 18304;
	setAttr ".tgi[0].ni[569].x" 73872.859375;
	setAttr ".tgi[0].ni[569].y" 3710;
	setAttr ".tgi[0].ni[569].nvs" 18304;
	setAttr ".tgi[0].ni[570].x" 76637.140625;
	setAttr ".tgi[0].ni[570].y" 3362.857177734375;
	setAttr ".tgi[0].ni[570].nvs" 18304;
	setAttr ".tgi[0].ni[571].x" 77251.4296875;
	setAttr ".tgi[0].ni[571].y" 3302.857177734375;
	setAttr ".tgi[0].ni[571].nvs" 18304;
	setAttr ".tgi[0].ni[572].x" 76944.2890625;
	setAttr ".tgi[0].ni[572].y" 3361.428466796875;
	setAttr ".tgi[0].ni[572].nvs" 18304;
	setAttr ".tgi[0].ni[573].x" 77558.5703125;
	setAttr ".tgi[0].ni[573].y" 3352.857177734375;
	setAttr ".tgi[0].ni[573].nvs" 18304;
	setAttr ".tgi[0].ni[574].x" 77865.7109375;
	setAttr ".tgi[0].ni[574].y" 3352.857177734375;
	setAttr ".tgi[0].ni[574].nvs" 18304;
	setAttr ".tgi[0].ni[575].x" 78172.859375;
	setAttr ".tgi[0].ni[575].y" 3352.857177734375;
	setAttr ".tgi[0].ni[575].nvs" 18304;
	setAttr ".tgi[0].ni[576].x" 78480;
	setAttr ".tgi[0].ni[576].y" 3352.857177734375;
	setAttr ".tgi[0].ni[576].nvs" 18304;
	setAttr ".tgi[0].ni[577].x" 78787.140625;
	setAttr ".tgi[0].ni[577].y" 3352.857177734375;
	setAttr ".tgi[0].ni[577].nvs" 18304;
	setAttr ".tgi[0].ni[578].x" 79094.2890625;
	setAttr ".tgi[0].ni[578].y" 3351.428466796875;
	setAttr ".tgi[0].ni[578].nvs" 18304;
	setAttr ".tgi[0].ni[579].x" 79401.4296875;
	setAttr ".tgi[0].ni[579].y" 3351.428466796875;
	setAttr ".tgi[0].ni[579].nvs" 18304;
	setAttr ".tgi[0].ni[580].x" 79708.5703125;
	setAttr ".tgi[0].ni[580].y" 3350;
	setAttr ".tgi[0].ni[580].nvs" 18304;
	setAttr ".tgi[0].ni[581].x" 80015.7109375;
	setAttr ".tgi[0].ni[581].y" 3348.571533203125;
	setAttr ".tgi[0].ni[581].nvs" 18304;
	setAttr ".tgi[0].ni[582].x" 56058.5703125;
	setAttr ".tgi[0].ni[582].y" -152.85714721679688;
	setAttr ".tgi[0].ni[582].nvs" 18304;
	setAttr ".tgi[0].ni[583].x" 56365.71484375;
	setAttr ".tgi[0].ni[583].y" -182.85714721679688;
	setAttr ".tgi[0].ni[583].nvs" 18304;
	setAttr ".tgi[0].ni[584].x" 56672.85546875;
	setAttr ".tgi[0].ni[584].y" -204.28572082519531;
	setAttr ".tgi[0].ni[584].nvs" 18304;
	setAttr ".tgi[0].ni[585].x" 56980;
	setAttr ".tgi[0].ni[585].y" -215.71427917480469;
	setAttr ".tgi[0].ni[585].nvs" 18304;
	setAttr ".tgi[0].ni[586].x" 57287.14453125;
	setAttr ".tgi[0].ni[586].y" -231.42857360839844;
	setAttr ".tgi[0].ni[586].nvs" 18304;
	setAttr ".tgi[0].ni[587].x" 57594.28515625;
	setAttr ".tgi[0].ni[587].y" -251.42857360839844;
	setAttr ".tgi[0].ni[587].nvs" 18304;
	setAttr ".tgi[0].ni[588].x" 57901.4296875;
	setAttr ".tgi[0].ni[588].y" -282.85714721679688;
	setAttr ".tgi[0].ni[588].nvs" 18304;
	setAttr ".tgi[0].ni[589].x" 79708.5703125;
	setAttr ".tgi[0].ni[589].y" -4438.5712890625;
	setAttr ".tgi[0].ni[589].nvs" 18304;
	setAttr ".tgi[0].ni[590].x" 80015.7109375;
	setAttr ".tgi[0].ni[590].y" -4438.5712890625;
	setAttr ".tgi[0].ni[590].nvs" 18304;
	setAttr ".tgi[0].ni[591].x" 79951.4296875;
	setAttr ".tgi[0].ni[591].y" -3177.142822265625;
	setAttr ".tgi[0].ni[591].nvs" 18304;
	setAttr ".tgi[0].ni[592].x" 79644.2890625;
	setAttr ".tgi[0].ni[592].y" -3177.142822265625;
	setAttr ".tgi[0].ni[592].nvs" 18304;
	setAttr ".tgi[0].ni[593].x" 79835.7109375;
	setAttr ".tgi[0].ni[593].y" -2135.71435546875;
	setAttr ".tgi[0].ni[593].nvs" 18304;
	setAttr ".tgi[0].ni[594].x" 79528.5703125;
	setAttr ".tgi[0].ni[594].y" -2135.71435546875;
	setAttr ".tgi[0].ni[594].nvs" 18304;
	setAttr ".tgi[0].ni[595].x" 79950;
	setAttr ".tgi[0].ni[595].y" -2647.142822265625;
	setAttr ".tgi[0].ni[595].nvs" 18304;
	setAttr ".tgi[0].ni[596].x" 79642.859375;
	setAttr ".tgi[0].ni[596].y" -2647.142822265625;
	setAttr ".tgi[0].ni[596].nvs" 18304;
	setAttr ".tgi[0].ni[597].x" 79951.4296875;
	setAttr ".tgi[0].ni[597].y" -2994.28564453125;
	setAttr ".tgi[0].ni[597].nvs" 18304;
	setAttr ".tgi[0].ni[598].x" 79644.2890625;
	setAttr ".tgi[0].ni[598].y" -2994.28564453125;
	setAttr ".tgi[0].ni[598].nvs" 18304;
	setAttr ".tgi[0].ni[599].x" 80015.7109375;
	setAttr ".tgi[0].ni[599].y" -4054.28564453125;
	setAttr ".tgi[0].ni[599].nvs" 18304;
	setAttr ".tgi[0].ni[600].x" 79708.5703125;
	setAttr ".tgi[0].ni[600].y" -4054.28564453125;
	setAttr ".tgi[0].ni[600].nvs" 18304;
	setAttr ".tgi[0].ni[601].x" -8134.28564453125;
	setAttr ".tgi[0].ni[601].y" 6304.28564453125;
	setAttr ".tgi[0].ni[601].nvs" 18304;
	setAttr ".tgi[0].ni[602].x" -45912.85546875;
	setAttr ".tgi[0].ni[602].y" 6630;
	setAttr ".tgi[0].ni[602].nvs" 18304;
	setAttr ".tgi[0].ni[603].x" -46220;
	setAttr ".tgi[0].ni[603].y" 6654.28564453125;
	setAttr ".tgi[0].ni[603].nvs" 18304;
	setAttr ".tgi[0].ni[604].x" 61587.14453125;
	setAttr ".tgi[0].ni[604].y" 5270;
	setAttr ".tgi[0].ni[604].nvs" 18304;
	setAttr ".tgi[0].ni[605].x" 62201.4296875;
	setAttr ".tgi[0].ni[605].y" 5190;
	setAttr ".tgi[0].ni[605].nvs" 18304;
	setAttr ".tgi[0].ni[606].x" 69265.7109375;
	setAttr ".tgi[0].ni[606].y" 4128.5712890625;
	setAttr ".tgi[0].ni[606].nvs" 18304;
	setAttr ".tgi[0].ni[607].x" -42227.14453125;
	setAttr ".tgi[0].ni[607].y" 6628.5712890625;
	setAttr ".tgi[0].ni[607].nvs" 18304;
	setAttr ".tgi[0].ni[608].x" -42534.28515625;
	setAttr ".tgi[0].ni[608].y" 6652.85693359375;
	setAttr ".tgi[0].ni[608].nvs" 18304;
	setAttr ".tgi[0].ni[609].x" 68958.5703125;
	setAttr ".tgi[0].ni[609].y" 4190;
	setAttr ".tgi[0].ni[609].nvs" 18304;
	setAttr ".tgi[0].ni[610].x" 69880;
	setAttr ".tgi[0].ni[610].y" 4052.857177734375;
	setAttr ".tgi[0].ni[610].nvs" 18304;
	setAttr ".tgi[0].ni[611].x" 69572.859375;
	setAttr ".tgi[0].ni[611].y" 4112.85693359375;
	setAttr ".tgi[0].ni[611].nvs" 18304;
	setAttr ".tgi[0].ni[612].x" 70187.140625;
	setAttr ".tgi[0].ni[612].y" 4045.71435546875;
	setAttr ".tgi[0].ni[612].nvs" 18304;
	setAttr ".tgi[0].ni[613].x" 70494.2890625;
	setAttr ".tgi[0].ni[613].y" 4037.142822265625;
	setAttr ".tgi[0].ni[613].nvs" 18304;
	setAttr ".tgi[0].ni[614].x" 71108.5703125;
	setAttr ".tgi[0].ni[614].y" 3965.71435546875;
	setAttr ".tgi[0].ni[614].nvs" 18304;
	setAttr ".tgi[0].ni[615].x" -35777.14453125;
	setAttr ".tgi[0].ni[615].y" 6770;
	setAttr ".tgi[0].ni[615].nvs" 18304;
	setAttr ".tgi[0].ni[616].x" -35162.85546875;
	setAttr ".tgi[0].ni[616].y" 6714.28564453125;
	setAttr ".tgi[0].ni[616].nvs" 18304;
	setAttr ".tgi[0].ni[617].x" -34548.5703125;
	setAttr ".tgi[0].ni[617].y" 6715.71435546875;
	setAttr ".tgi[0].ni[617].nvs" 18304;
	setAttr ".tgi[0].ni[618].x" -34855.71484375;
	setAttr ".tgi[0].ni[618].y" 6744.28564453125;
	setAttr ".tgi[0].ni[618].nvs" 18304;
	setAttr ".tgi[0].ni[619].x" -40384.28515625;
	setAttr ".tgi[0].ni[619].y" 6650;
	setAttr ".tgi[0].ni[619].nvs" 18304;
	setAttr ".tgi[0].ni[620].x" -40691.4296875;
	setAttr ".tgi[0].ni[620].y" 6675.71435546875;
	setAttr ".tgi[0].ni[620].nvs" 18304;
	setAttr ".tgi[0].ni[621].x" -40077.14453125;
	setAttr ".tgi[0].ni[621].y" 6682.85693359375;
	setAttr ".tgi[0].ni[621].nvs" 18304;
	setAttr ".tgi[0].ni[622].x" -39770;
	setAttr ".tgi[0].ni[622].y" 6715.71435546875;
	setAttr ".tgi[0].ni[622].nvs" 18304;
	setAttr ".tgi[0].ni[623].x" -39155.71484375;
	setAttr ".tgi[0].ni[623].y" 6720;
	setAttr ".tgi[0].ni[623].nvs" 18304;
	setAttr ".tgi[0].ni[624].x" -37620;
	setAttr ".tgi[0].ni[624].y" 6761.4287109375;
	setAttr ".tgi[0].ni[624].nvs" 18304;
	setAttr ".tgi[0].ni[625].x" -36698.5703125;
	setAttr ".tgi[0].ni[625].y" 6737.14306640625;
	setAttr ".tgi[0].ni[625].nvs" 18304;
	setAttr ".tgi[0].ni[626].x" -37005.71484375;
	setAttr ".tgi[0].ni[626].y" 6764.28564453125;
	setAttr ".tgi[0].ni[626].nvs" 18304;
	setAttr ".tgi[0].ni[627].x" -36084.28515625;
	setAttr ".tgi[0].ni[627].y" 6740;
	setAttr ".tgi[0].ni[627].nvs" 18304;
	setAttr ".tgi[0].ni[628].x" -41612.85546875;
	setAttr ".tgi[0].ni[628].y" 6635.71435546875;
	setAttr ".tgi[0].ni[628].nvs" 18304;
	setAttr ".tgi[0].ni[629].x" -41920;
	setAttr ".tgi[0].ni[629].y" 6661.4287109375;
	setAttr ".tgi[0].ni[629].nvs" 18304;
	setAttr ".tgi[0].ni[630].x" -40998.5703125;
	setAttr ".tgi[0].ni[630].y" 6642.85693359375;
	setAttr ".tgi[0].ni[630].nvs" 18304;
	setAttr ".tgi[0].ni[631].x" -41305.71484375;
	setAttr ".tgi[0].ni[631].y" 6668.5712890625;
	setAttr ".tgi[0].ni[631].nvs" 18304;
	setAttr ".tgi[0].ni[632].x" -45298.5703125;
	setAttr ".tgi[0].ni[632].y" 6641.4287109375;
	setAttr ".tgi[0].ni[632].nvs" 18304;
	setAttr ".tgi[0].ni[633].x" -45605.71484375;
	setAttr ".tgi[0].ni[633].y" 6664.28564453125;
	setAttr ".tgi[0].ni[633].nvs" 18304;
	setAttr ".tgi[0].ni[634].x" -44684.28515625;
	setAttr ".tgi[0].ni[634].y" 6650;
	setAttr ".tgi[0].ni[634].nvs" 18304;
	setAttr ".tgi[0].ni[635].x" -44991.4296875;
	setAttr ".tgi[0].ni[635].y" 6674.28564453125;
	setAttr ".tgi[0].ni[635].nvs" 18304;
	setAttr ".tgi[0].ni[636].x" -44070;
	setAttr ".tgi[0].ni[636].y" 6660;
	setAttr ".tgi[0].ni[636].nvs" 18304;
	setAttr ".tgi[0].ni[637].x" -44377.14453125;
	setAttr ".tgi[0].ni[637].y" 6684.28564453125;
	setAttr ".tgi[0].ni[637].nvs" 18304;
	setAttr ".tgi[0].ni[638].x" -43762.85546875;
	setAttr ".tgi[0].ni[638].y" 6635.71435546875;
	setAttr ".tgi[0].ni[638].nvs" 18304;
	setAttr ".tgi[0].ni[639].x" -43148.5703125;
	setAttr ".tgi[0].ni[639].y" 6645.71435546875;
	setAttr ".tgi[0].ni[639].nvs" 18304;
	setAttr ".tgi[0].ni[640].x" -43455.71484375;
	setAttr ".tgi[0].ni[640].y" 6670;
	setAttr ".tgi[0].ni[640].nvs" 18304;
	setAttr ".tgi[0].ni[641].x" -42841.4296875;
	setAttr ".tgi[0].ni[641].y" 6620;
	setAttr ".tgi[0].ni[641].nvs" 18304;
	setAttr ".tgi[0].ni[642].x" 80015.7109375;
	setAttr ".tgi[0].ni[642].y" -6060;
	setAttr ".tgi[0].ni[642].nvs" 18304;
	setAttr ".tgi[0].ni[643].x" -36391.4296875;
	setAttr ".tgi[0].ni[643].y" 6767.14306640625;
	setAttr ".tgi[0].ni[643].nvs" 18304;
	setAttr ".tgi[0].ni[644].x" -35470;
	setAttr ".tgi[0].ni[644].y" 6742.85693359375;
	setAttr ".tgi[0].ni[644].nvs" 18304;
	setAttr ".tgi[0].ni[645].x" 17665.71484375;
	setAttr ".tgi[0].ni[645].y" 6782.85693359375;
	setAttr ".tgi[0].ni[645].nvs" 18304;
	setAttr ".tgi[0].ni[646].x" 17358.572265625;
	setAttr ".tgi[0].ni[646].y" 6817.14306640625;
	setAttr ".tgi[0].ni[646].nvs" 18304;
	setAttr ".tgi[0].ni[647].x" 18280;
	setAttr ".tgi[0].ni[647].y" 6770;
	setAttr ".tgi[0].ni[647].nvs" 18304;
	setAttr ".tgi[0].ni[648].x" 17972.857421875;
	setAttr ".tgi[0].ni[648].y" 6805.71435546875;
	setAttr ".tgi[0].ni[648].nvs" 18304;
	setAttr ".tgi[0].ni[649].x" 18894.28515625;
	setAttr ".tgi[0].ni[649].y" 6738.5712890625;
	setAttr ".tgi[0].ni[649].nvs" 18304;
	setAttr ".tgi[0].ni[650].x" 18587.142578125;
	setAttr ".tgi[0].ni[650].y" 6794.28564453125;
	setAttr ".tgi[0].ni[650].nvs" 18304;
	setAttr ".tgi[0].ni[651].x" 19508.572265625;
	setAttr ".tgi[0].ni[651].y" 6722.85693359375;
	setAttr ".tgi[0].ni[651].nvs" 18304;
	setAttr ".tgi[0].ni[652].x" 19201.427734375;
	setAttr ".tgi[0].ni[652].y" 6760;
	setAttr ".tgi[0].ni[652].nvs" 18304;
	setAttr ".tgi[0].ni[653].x" 20122.857421875;
	setAttr ".tgi[0].ni[653].y" 6704.28564453125;
	setAttr ".tgi[0].ni[653].nvs" 18304;
	setAttr ".tgi[0].ni[654].x" 19815.71484375;
	setAttr ".tgi[0].ni[654].y" 6741.4287109375;
	setAttr ".tgi[0].ni[654].nvs" 18304;
	setAttr ".tgi[0].ni[655].x" 20737.142578125;
	setAttr ".tgi[0].ni[655].y" 6675.71435546875;
	setAttr ".tgi[0].ni[655].nvs" 18304;
	setAttr ".tgi[0].ni[656].x" 20430;
	setAttr ".tgi[0].ni[656].y" 6722.85693359375;
	setAttr ".tgi[0].ni[656].nvs" 18304;
	setAttr ".tgi[0].ni[657].x" 70801.4296875;
	setAttr ".tgi[0].ni[657].y" 4031.428466796875;
	setAttr ".tgi[0].ni[657].nvs" 18304;
	setAttr ".tgi[0].ni[658].x" 71722.859375;
	setAttr ".tgi[0].ni[658].y" 3900;
	setAttr ".tgi[0].ni[658].nvs" 18304;
	setAttr ".tgi[0].ni[659].x" 71415.7109375;
	setAttr ".tgi[0].ni[659].y" 3964.28564453125;
	setAttr ".tgi[0].ni[659].nvs" 18304;
	setAttr ".tgi[0].ni[660].x" 72030;
	setAttr ".tgi[0].ni[660].y" 3895.71435546875;
	setAttr ".tgi[0].ni[660].nvs" 18304;
	setAttr ".tgi[0].ni[661].x" 14594.2861328125;
	setAttr ".tgi[0].ni[661].y" 6824.28564453125;
	setAttr ".tgi[0].ni[661].nvs" 18304;
	setAttr ".tgi[0].ni[662].x" 15208.5712890625;
	setAttr ".tgi[0].ni[662].y" 6817.14306640625;
	setAttr ".tgi[0].ni[662].nvs" 18304;
	setAttr ".tgi[0].ni[663].x" 14901.4287109375;
	setAttr ".tgi[0].ni[663].y" 6850;
	setAttr ".tgi[0].ni[663].nvs" 18304;
	setAttr ".tgi[0].ni[664].x" 15822.857421875;
	setAttr ".tgi[0].ni[664].y" 6810;
	setAttr ".tgi[0].ni[664].nvs" 18304;
	setAttr ".tgi[0].ni[665].x" 15515.7138671875;
	setAttr ".tgi[0].ni[665].y" 6844.28564453125;
	setAttr ".tgi[0].ni[665].nvs" 18304;
	setAttr ".tgi[0].ni[666].x" 16437.142578125;
	setAttr ".tgi[0].ni[666].y" 6801.4287109375;
	setAttr ".tgi[0].ni[666].nvs" 18304;
	setAttr ".tgi[0].ni[667].x" 16130;
	setAttr ".tgi[0].ni[667].y" 6837.14306640625;
	setAttr ".tgi[0].ni[667].nvs" 18304;
	setAttr ".tgi[0].ni[668].x" 12444.2861328125;
	setAttr ".tgi[0].ni[668].y" 6862.85693359375;
	setAttr ".tgi[0].ni[668].nvs" 18304;
	setAttr ".tgi[0].ni[669].x" 13365.7138671875;
	setAttr ".tgi[0].ni[669].y" 6828.5712890625;
	setAttr ".tgi[0].ni[669].nvs" 18304;
	setAttr ".tgi[0].ni[670].x" 13058.5712890625;
	setAttr ".tgi[0].ni[670].y" 6858.5712890625;
	setAttr ".tgi[0].ni[670].nvs" 18304;
	setAttr ".tgi[0].ni[671].x" 13980;
	setAttr ".tgi[0].ni[671].y" 6827.14306640625;
	setAttr ".tgi[0].ni[671].nvs" 18304;
	setAttr ".tgi[0].ni[672].x" 13672.857421875;
	setAttr ".tgi[0].ni[672].y" 6857.14306640625;
	setAttr ".tgi[0].ni[672].nvs" 18304;
	setAttr ".tgi[0].ni[673].x" 14287.142578125;
	setAttr ".tgi[0].ni[673].y" 6854.28564453125;
	setAttr ".tgi[0].ni[673].nvs" 18304;
	setAttr ".tgi[0].ni[674].x" 72337.140625;
	setAttr ".tgi[0].ni[674].y" 3891.428466796875;
	setAttr ".tgi[0].ni[674].nvs" 18304;
	setAttr ".tgi[0].ni[675].x" 21658.572265625;
	setAttr ".tgi[0].ni[675].y" 6568.5712890625;
	setAttr ".tgi[0].ni[675].nvs" 18304;
	setAttr ".tgi[0].ni[676].x" 22272.857421875;
	setAttr ".tgi[0].ni[676].y" 6511.4287109375;
	setAttr ".tgi[0].ni[676].nvs" 18304;
	setAttr ".tgi[0].ni[677].x" 21965.71484375;
	setAttr ".tgi[0].ni[677].y" 6568.5712890625;
	setAttr ".tgi[0].ni[677].nvs" 18304;
	setAttr ".tgi[0].ni[678].x" 22887.142578125;
	setAttr ".tgi[0].ni[678].y" 6454.28564453125;
	setAttr ".tgi[0].ni[678].nvs" 18304;
	setAttr ".tgi[0].ni[679].x" 22580;
	setAttr ".tgi[0].ni[679].y" 6512.85693359375;
	setAttr ".tgi[0].ni[679].nvs" 18304;
	setAttr ".tgi[0].ni[680].x" 23501.427734375;
	setAttr ".tgi[0].ni[680].y" 6398.5712890625;
	setAttr ".tgi[0].ni[680].nvs" 18304;
	setAttr ".tgi[0].ni[681].x" 23194.28515625;
	setAttr ".tgi[0].ni[681].y" 6455.71435546875;
	setAttr ".tgi[0].ni[681].nvs" 18304;
	setAttr ".tgi[0].ni[682].x" 23808.572265625;
	setAttr ".tgi[0].ni[682].y" 6341.4287109375;
	setAttr ".tgi[0].ni[682].nvs" 18304;
	setAttr ".tgi[0].ni[683].x" 32715.71484375;
	setAttr ".tgi[0].ni[683].y" 6078.5712890625;
	setAttr ".tgi[0].ni[683].nvs" 18304;
	setAttr ".tgi[0].ni[684].x" 33022.85546875;
	setAttr ".tgi[0].ni[684].y" 6084.28564453125;
	setAttr ".tgi[0].ni[684].nvs" 18304;
	setAttr ".tgi[0].ni[685].x" 33330;
	setAttr ".tgi[0].ni[685].y" 6137.14306640625;
	setAttr ".tgi[0].ni[685].nvs" 18304;
	setAttr ".tgi[0].ni[686].x" 33944.28515625;
	setAttr ".tgi[0].ni[686].y" 6132.85693359375;
	setAttr ".tgi[0].ni[686].nvs" 18304;
	setAttr ".tgi[0].ni[687].x" 34251.4296875;
	setAttr ".tgi[0].ni[687].y" 6152.85693359375;
	setAttr ".tgi[0].ni[687].nvs" 18304;
	setAttr ".tgi[0].ni[688].x" 37630;
	setAttr ".tgi[0].ni[688].y" 6252.85693359375;
	setAttr ".tgi[0].ni[688].nvs" 18304;
	setAttr ".tgi[0].ni[689].x" 46844.28515625;
	setAttr ".tgi[0].ni[689].y" 6288.5712890625;
	setAttr ".tgi[0].ni[689].nvs" 18304;
	setAttr ".tgi[0].ni[690].x" 46537.14453125;
	setAttr ".tgi[0].ni[690].y" 6330;
	setAttr ".tgi[0].ni[690].nvs" 18304;
	setAttr ".tgi[0].ni[691].x" 47458.5703125;
	setAttr ".tgi[0].ni[691].y" 6315.71435546875;
	setAttr ".tgi[0].ni[691].nvs" 18304;
	setAttr ".tgi[0].ni[692].x" 47151.4296875;
	setAttr ".tgi[0].ni[692].y" 6297.14306640625;
	setAttr ".tgi[0].ni[692].nvs" 18304;
	setAttr ".tgi[0].ni[693].x" 47765.71484375;
	setAttr ".tgi[0].ni[693].y" 6310;
	setAttr ".tgi[0].ni[693].nvs" 18304;
	setAttr ".tgi[0].ni[694].x" 52372.85546875;
	setAttr ".tgi[0].ni[694].y" 95.714286804199219;
	setAttr ".tgi[0].ni[694].nvs" 18304;
	setAttr ".tgi[0].ni[695].x" 52680;
	setAttr ".tgi[0].ni[695].y" 51.428569793701172;
	setAttr ".tgi[0].ni[695].nvs" 18304;
	setAttr ".tgi[0].ni[696].x" 48072.85546875;
	setAttr ".tgi[0].ni[696].y" 6315.71435546875;
	setAttr ".tgi[0].ni[696].nvs" 18304;
	setAttr ".tgi[0].ni[697].x" 48380;
	setAttr ".tgi[0].ni[697].y" 6322.85693359375;
	setAttr ".tgi[0].ni[697].nvs" 18304;
	setAttr ".tgi[0].ni[698].x" 52987.14453125;
	setAttr ".tgi[0].ni[698].y" 30;
	setAttr ".tgi[0].ni[698].nvs" 18304;
	setAttr ".tgi[0].ni[699].x" 53294.28515625;
	setAttr ".tgi[0].ni[699].y" 18.571428298950195;
	setAttr ".tgi[0].ni[699].nvs" 18304;
	setAttr ".tgi[0].ni[700].x" 48687.14453125;
	setAttr ".tgi[0].ni[700].y" 6335.71435546875;
	setAttr ".tgi[0].ni[700].nvs" 18304;
	setAttr ".tgi[0].ni[701].x" 48994.28515625;
	setAttr ".tgi[0].ni[701].y" 6342.85693359375;
	setAttr ".tgi[0].ni[701].nvs" 18304;
	setAttr ".tgi[0].ni[702].x" 49301.4296875;
	setAttr ".tgi[0].ni[702].y" 6348.5712890625;
	setAttr ".tgi[0].ni[702].nvs" 18304;
	setAttr ".tgi[0].ni[703].x" 49608.5703125;
	setAttr ".tgi[0].ni[703].y" 6351.4287109375;
	setAttr ".tgi[0].ni[703].nvs" 18304;
	setAttr ".tgi[0].ni[704].x" 49915.71484375;
	setAttr ".tgi[0].ni[704].y" 6357.14306640625;
	setAttr ".tgi[0].ni[704].nvs" 18304;
	setAttr ".tgi[0].ni[705].x" 50222.85546875;
	setAttr ".tgi[0].ni[705].y" 6361.4287109375;
	setAttr ".tgi[0].ni[705].nvs" 18304;
	setAttr ".tgi[0].ni[706].x" 50530;
	setAttr ".tgi[0].ni[706].y" 6370;
	setAttr ".tgi[0].ni[706].nvs" 18304;
	setAttr ".tgi[0].ni[707].x" 50837.14453125;
	setAttr ".tgi[0].ni[707].y" 6385.71435546875;
	setAttr ".tgi[0].ni[707].nvs" 18304;
	setAttr ".tgi[0].ni[708].x" 51144.28515625;
	setAttr ".tgi[0].ni[708].y" 6395.71435546875;
	setAttr ".tgi[0].ni[708].nvs" 18304;
	setAttr ".tgi[0].ni[709].x" 51451.4296875;
	setAttr ".tgi[0].ni[709].y" 6402.85693359375;
	setAttr ".tgi[0].ni[709].nvs" 18304;
	setAttr ".tgi[0].ni[710].x" 53601.4296875;
	setAttr ".tgi[0].ni[710].y" 1.4285714626312256;
	setAttr ".tgi[0].ni[710].nvs" 18304;
	setAttr ".tgi[0].ni[711].x" 53908.5703125;
	setAttr ".tgi[0].ni[711].y" -15.714285850524902;
	setAttr ".tgi[0].ni[711].nvs" 18304;
	setAttr ".tgi[0].ni[712].x" 54215.71484375;
	setAttr ".tgi[0].ni[712].y" -35.714286804199219;
	setAttr ".tgi[0].ni[712].nvs" 18304;
	setAttr ".tgi[0].ni[713].x" 54522.85546875;
	setAttr ".tgi[0].ni[713].y" -57.142856597900391;
	setAttr ".tgi[0].ni[713].nvs" 18304;
	setAttr ".tgi[0].ni[714].x" 51758.5703125;
	setAttr ".tgi[0].ni[714].y" 6405.71435546875;
	setAttr ".tgi[0].ni[714].nvs" 18304;
	setAttr ".tgi[0].ni[715].x" 52680;
	setAttr ".tgi[0].ni[715].y" 6274.28564453125;
	setAttr ".tgi[0].ni[715].nvs" 18304;
	setAttr ".tgi[0].ni[716].x" 52372.85546875;
	setAttr ".tgi[0].ni[716].y" 6331.4287109375;
	setAttr ".tgi[0].ni[716].nvs" 18304;
	setAttr ".tgi[0].ni[717].x" 53294.28515625;
	setAttr ".tgi[0].ni[717].y" 6207.14306640625;
	setAttr ".tgi[0].ni[717].nvs" 18304;
	setAttr ".tgi[0].ni[718].x" 52987.14453125;
	setAttr ".tgi[0].ni[718].y" 6265.71435546875;
	setAttr ".tgi[0].ni[718].nvs" 18304;
	setAttr ".tgi[0].ni[719].x" 53908.5703125;
	setAttr ".tgi[0].ni[719].y" 6137.14306640625;
	setAttr ".tgi[0].ni[719].nvs" 18304;
	setAttr ".tgi[0].ni[720].x" 53601.4296875;
	setAttr ".tgi[0].ni[720].y" 6204.28564453125;
	setAttr ".tgi[0].ni[720].nvs" 18304;
	setAttr ".tgi[0].ni[721].x" 54522.85546875;
	setAttr ".tgi[0].ni[721].y" 6075.71435546875;
	setAttr ".tgi[0].ni[721].nvs" 18304;
	setAttr ".tgi[0].ni[722].x" 54215.71484375;
	setAttr ".tgi[0].ni[722].y" 6130;
	setAttr ".tgi[0].ni[722].nvs" 18304;
	setAttr ".tgi[0].ni[723].x" 55137.14453125;
	setAttr ".tgi[0].ni[723].y" 6024.28564453125;
	setAttr ".tgi[0].ni[723].nvs" 18304;
	setAttr ".tgi[0].ni[724].x" 58208.5703125;
	setAttr ".tgi[0].ni[724].y" -317.14285278320312;
	setAttr ".tgi[0].ni[724].nvs" 18304;
	setAttr ".tgi[0].ni[725].x" 54830;
	setAttr ".tgi[0].ni[725].y" 6077.14306640625;
	setAttr ".tgi[0].ni[725].nvs" 18304;
	setAttr ".tgi[0].ni[726].x" 55444.28515625;
	setAttr ".tgi[0].ni[726].y" 6028.5712890625;
	setAttr ".tgi[0].ni[726].nvs" 18304;
	setAttr ".tgi[0].ni[727].x" 55751.4296875;
	setAttr ".tgi[0].ni[727].y" 6025.71435546875;
	setAttr ".tgi[0].ni[727].nvs" 18304;
	setAttr ".tgi[0].ni[728].x" 59130;
	setAttr ".tgi[0].ni[728].y" 5650;
	setAttr ".tgi[0].ni[728].nvs" 18304;
	setAttr ".tgi[0].ni[729].x" 58822.85546875;
	setAttr ".tgi[0].ni[729].y" 5710;
	setAttr ".tgi[0].ni[729].nvs" 18304;
	setAttr ".tgi[0].ni[730].x" 59744.28515625;
	setAttr ".tgi[0].ni[730].y" 5578.5712890625;
	setAttr ".tgi[0].ni[730].nvs" 18304;
	setAttr ".tgi[0].ni[731].x" 59437.14453125;
	setAttr ".tgi[0].ni[731].y" 5645.71435546875;
	setAttr ".tgi[0].ni[731].nvs" 18304;
	setAttr ".tgi[0].ni[732].x" 60358.5703125;
	setAttr ".tgi[0].ni[732].y" 5490;
	setAttr ".tgi[0].ni[732].nvs" 18304;
	setAttr ".tgi[0].ni[733].x" 60051.4296875;
	setAttr ".tgi[0].ni[733].y" 5552.85693359375;
	setAttr ".tgi[0].ni[733].nvs" 18304;
	setAttr ".tgi[0].ni[734].x" 21351.427734375;
	setAttr ".tgi[0].ni[734].y" 6625.71435546875;
	setAttr ".tgi[0].ni[734].nvs" 18304;
	setAttr ".tgi[0].ni[735].x" 21044.28515625;
	setAttr ".tgi[0].ni[735].y" 6680;
	setAttr ".tgi[0].ni[735].nvs" 18304;
	setAttr ".tgi[0].ni[736].x" -7520;
	setAttr ".tgi[0].ni[736].y" 6360;
	setAttr ".tgi[0].ni[736].nvs" 18304;
	setAttr ".tgi[0].ni[737].x" -7212.85693359375;
	setAttr ".tgi[0].ni[737].y" 6390;
	setAttr ".tgi[0].ni[737].nvs" 18304;
	setAttr ".tgi[0].ni[738].x" -6905.71435546875;
	setAttr ".tgi[0].ni[738].y" 6414.28564453125;
	setAttr ".tgi[0].ni[738].nvs" 18304;
	setAttr ".tgi[0].ni[739].x" -6291.4287109375;
	setAttr ".tgi[0].ni[739].y" 6414.28564453125;
	setAttr ".tgi[0].ni[739].nvs" 18304;
	setAttr ".tgi[0].ni[740].x" -6598.5712890625;
	setAttr ".tgi[0].ni[740].y" 6444.28564453125;
	setAttr ".tgi[0].ni[740].nvs" 18304;
	setAttr ".tgi[0].ni[741].x" -5677.14306640625;
	setAttr ".tgi[0].ni[741].y" 6477.14306640625;
	setAttr ".tgi[0].ni[741].nvs" 18304;
	setAttr ".tgi[0].ni[742].x" -34241.4296875;
	setAttr ".tgi[0].ni[742].y" 6687.14306640625;
	setAttr ".tgi[0].ni[742].nvs" 18304;
	setAttr ".tgi[0].ni[743].x" -33627.14453125;
	setAttr ".tgi[0].ni[743].y" 6687.14306640625;
	setAttr ".tgi[0].ni[743].nvs" 18304;
	setAttr ".tgi[0].ni[744].x" -33934.28515625;
	setAttr ".tgi[0].ni[744].y" 6715.71435546875;
	setAttr ".tgi[0].ni[744].nvs" 18304;
	setAttr ".tgi[0].ni[745].x" -33012.85546875;
	setAttr ".tgi[0].ni[745].y" 6684.28564453125;
	setAttr ".tgi[0].ni[745].nvs" 18304;
	setAttr ".tgi[0].ni[746].x" -33320;
	setAttr ".tgi[0].ni[746].y" 6714.28564453125;
	setAttr ".tgi[0].ni[746].nvs" 18304;
	setAttr ".tgi[0].ni[747].x" -32398.572265625;
	setAttr ".tgi[0].ni[747].y" 6681.4287109375;
	setAttr ".tgi[0].ni[747].nvs" 18304;
	setAttr ".tgi[0].ni[748].x" -32705.71484375;
	setAttr ".tgi[0].ni[748].y" 6711.4287109375;
	setAttr ".tgi[0].ni[748].nvs" 18304;
	setAttr ".tgi[0].ni[749].x" -21955.71484375;
	setAttr ".tgi[0].ni[749].y" 6234.28564453125;
	setAttr ".tgi[0].ni[749].nvs" 18304;
	setAttr ".tgi[0].ni[750].x" -22262.857421875;
	setAttr ".tgi[0].ni[750].y" 6270;
	setAttr ".tgi[0].ni[750].nvs" 18304;
	setAttr ".tgi[0].ni[751].x" -21341.427734375;
	setAttr ".tgi[0].ni[751].y" 6221.4287109375;
	setAttr ".tgi[0].ni[751].nvs" 18304;
	setAttr ".tgi[0].ni[752].x" -11512.857421875;
	setAttr ".tgi[0].ni[752].y" 6317.14306640625;
	setAttr ".tgi[0].ni[752].nvs" 18304;
	setAttr ".tgi[0].ni[753].x" -11205.7138671875;
	setAttr ".tgi[0].ni[753].y" 6272.85693359375;
	setAttr ".tgi[0].ni[753].nvs" 18304;
	setAttr ".tgi[0].ni[754].x" -10591.4287109375;
	setAttr ".tgi[0].ni[754].y" 6260;
	setAttr ".tgi[0].ni[754].nvs" 18304;
	setAttr ".tgi[0].ni[755].x" -10898.5712890625;
	setAttr ".tgi[0].ni[755].y" 6301.4287109375;
	setAttr ".tgi[0].ni[755].nvs" 18304;
	setAttr ".tgi[0].ni[756].x" -9977.142578125;
	setAttr ".tgi[0].ni[756].y" 6251.4287109375;
	setAttr ".tgi[0].ni[756].nvs" 18304;
	setAttr ".tgi[0].ni[757].x" -10284.2861328125;
	setAttr ".tgi[0].ni[757].y" 6290;
	setAttr ".tgi[0].ni[757].nvs" 18304;
	setAttr ".tgi[0].ni[758].x" -9362.857421875;
	setAttr ".tgi[0].ni[758].y" 6222.85693359375;
	setAttr ".tgi[0].ni[758].nvs" 18304;
	setAttr ".tgi[0].ni[759].x" -9670;
	setAttr ".tgi[0].ni[759].y" 6281.4287109375;
	setAttr ".tgi[0].ni[759].nvs" 18304;
	setAttr ".tgi[0].ni[760].x" -9055.7138671875;
	setAttr ".tgi[0].ni[760].y" 6222.85693359375;
	setAttr ".tgi[0].ni[760].nvs" 18304;
	setAttr ".tgi[0].ni[761].x" -8748.5712890625;
	setAttr ".tgi[0].ni[761].y" 6247.14306640625;
	setAttr ".tgi[0].ni[761].nvs" 18304;
	setAttr ".tgi[0].ni[762].x" -8441.4287109375;
	setAttr ".tgi[0].ni[762].y" 6278.5712890625;
	setAttr ".tgi[0].ni[762].nvs" 18304;
	setAttr ".tgi[0].ni[763].x" -7827.14306640625;
	setAttr ".tgi[0].ni[763].y" 6337.14306640625;
	setAttr ".tgi[0].ni[763].nvs" 18304;
	setAttr ".tgi[0].ni[764].x" 5380;
	setAttr ".tgi[0].ni[764].y" 6728.5712890625;
	setAttr ".tgi[0].ni[764].nvs" 18304;
	setAttr ".tgi[0].ni[765].x" 6301.4287109375;
	setAttr ".tgi[0].ni[765].y" 6701.4287109375;
	setAttr ".tgi[0].ni[765].nvs" 18304;
	setAttr ".tgi[0].ni[766].x" 5994.28564453125;
	setAttr ".tgi[0].ni[766].y" 6730;
	setAttr ".tgi[0].ni[766].nvs" 18304;
	setAttr ".tgi[0].ni[767].x" 6608.5712890625;
	setAttr ".tgi[0].ni[767].y" 6671.4287109375;
	setAttr ".tgi[0].ni[767].nvs" 18304;
	setAttr ".tgi[0].ni[768].x" 60665.71484375;
	setAttr ".tgi[0].ni[768].y" 5418.5712890625;
	setAttr ".tgi[0].ni[768].nvs" 18304;
	setAttr ".tgi[0].ni[769].x" 61280;
	setAttr ".tgi[0].ni[769].y" 5337.14306640625;
	setAttr ".tgi[0].ni[769].nvs" 18304;
	setAttr ".tgi[0].ni[770].x" 60972.85546875;
	setAttr ".tgi[0].ni[770].y" 5402.85693359375;
	setAttr ".tgi[0].ni[770].nvs" 18304;
	setAttr ".tgi[0].ni[771].x" 17051.427734375;
	setAttr ".tgi[0].ni[771].y" 6792.85693359375;
	setAttr ".tgi[0].ni[771].nvs" 18304;
	setAttr ".tgi[0].ni[772].x" 16744.28515625;
	setAttr ".tgi[0].ni[772].y" 6825.71435546875;
	setAttr ".tgi[0].ni[772].nvs" 18304;
	setAttr ".tgi[0].ni[773].x" 3230;
	setAttr ".tgi[0].ni[773].y" 6710;
	setAttr ".tgi[0].ni[773].nvs" 18304;
	setAttr ".tgi[0].ni[774].x" 2922.857177734375;
	setAttr ".tgi[0].ni[774].y" 6680;
	setAttr ".tgi[0].ni[774].nvs" 18304;
	setAttr ".tgi[0].ni[775].x" 3537.142822265625;
	setAttr ".tgi[0].ni[775].y" 6732.85693359375;
	setAttr ".tgi[0].ni[775].nvs" 18304;
	setAttr ".tgi[0].ni[776].x" 3844.28564453125;
	setAttr ".tgi[0].ni[776].y" 6705.71435546875;
	setAttr ".tgi[0].ni[776].nvs" 18304;
	setAttr ".tgi[0].ni[777].x" 4458.5712890625;
	setAttr ".tgi[0].ni[777].y" 6705.71435546875;
	setAttr ".tgi[0].ni[777].nvs" 18304;
	setAttr ".tgi[0].ni[778].x" 4151.4287109375;
	setAttr ".tgi[0].ni[778].y" 6732.85693359375;
	setAttr ".tgi[0].ni[778].nvs" 18304;
	setAttr ".tgi[0].ni[779].x" 5072.85693359375;
	setAttr ".tgi[0].ni[779].y" 6702.85693359375;
	setAttr ".tgi[0].ni[779].nvs" 18304;
	setAttr ".tgi[0].ni[780].x" 4765.71435546875;
	setAttr ".tgi[0].ni[780].y" 6731.4287109375;
	setAttr ".tgi[0].ni[780].nvs" 18304;
	setAttr ".tgi[0].ni[781].x" 5687.14306640625;
	setAttr ".tgi[0].ni[781].y" 6700;
	setAttr ".tgi[0].ni[781].nvs" 18304;
	setAttr ".tgi[0].ni[782].x" 60665.71484375;
	setAttr ".tgi[0].ni[782].y" 134.28572082519531;
	setAttr ".tgi[0].ni[782].nvs" 18304;
	setAttr ".tgi[0].ni[783].x" 61280;
	setAttr ".tgi[0].ni[783].y" 128.57142639160156;
	setAttr ".tgi[0].ni[783].nvs" 18304;
	setAttr ".tgi[0].ni[784].x" 60972.85546875;
	setAttr ".tgi[0].ni[784].y" 160;
	setAttr ".tgi[0].ni[784].nvs" 18304;
	setAttr ".tgi[0].ni[785].x" 63122.85546875;
	setAttr ".tgi[0].ni[785].y" 145.71427917480469;
	setAttr ".tgi[0].ni[785].nvs" 18304;
	setAttr ".tgi[0].ni[786].x" 63737.14453125;
	setAttr ".tgi[0].ni[786].y" 100;
	setAttr ".tgi[0].ni[786].nvs" 18304;
	setAttr ".tgi[0].ni[787].x" 64351.4296875;
	setAttr ".tgi[0].ni[787].y" 118.57142639160156;
	setAttr ".tgi[0].ni[787].nvs" 18304;
	setAttr ".tgi[0].ni[788].x" 64044.28515625;
	setAttr ".tgi[0].ni[788].y" 138.57142639160156;
	setAttr ".tgi[0].ni[788].nvs" 18304;
	setAttr ".tgi[0].ni[789].x" 64658.5703125;
	setAttr ".tgi[0].ni[789].y" 90;
	setAttr ".tgi[0].ni[789].nvs" 18304;
	setAttr ".tgi[0].ni[790].x" 65272.85546875;
	setAttr ".tgi[0].ni[790].y" 90;
	setAttr ".tgi[0].ni[790].nvs" 18304;
	setAttr ".tgi[0].ni[791].x" 64965.71484375;
	setAttr ".tgi[0].ni[791].y" 118.57142639160156;
	setAttr ".tgi[0].ni[791].nvs" 18304;
	setAttr ".tgi[0].ni[792].x" 65887.140625;
	setAttr ".tgi[0].ni[792].y" 91.428573608398438;
	setAttr ".tgi[0].ni[792].nvs" 18304;
	setAttr ".tgi[0].ni[793].x" 65580;
	setAttr ".tgi[0].ni[793].y" 120;
	setAttr ".tgi[0].ni[793].nvs" 18304;
	setAttr ".tgi[0].ni[794].x" 66501.4296875;
	setAttr ".tgi[0].ni[794].y" 94.285713195800781;
	setAttr ".tgi[0].ni[794].nvs" 18304;
	setAttr ".tgi[0].ni[795].x" 66194.2890625;
	setAttr ".tgi[0].ni[795].y" 122.85713958740234;
	setAttr ".tgi[0].ni[795].nvs" 18304;
	setAttr ".tgi[0].ni[796].x" 67115.7109375;
	setAttr ".tgi[0].ni[796].y" 98.571426391601562;
	setAttr ".tgi[0].ni[796].nvs" 18304;
	setAttr ".tgi[0].ni[797].x" 66808.5703125;
	setAttr ".tgi[0].ni[797].y" 125.71428680419922;
	setAttr ".tgi[0].ni[797].nvs" 18304;
	setAttr ".tgi[0].ni[798].x" 67730;
	setAttr ".tgi[0].ni[798].y" 101.42857360839844;
	setAttr ".tgi[0].ni[798].nvs" 18304;
	setAttr ".tgi[0].ni[799].x" 74487.140625;
	setAttr ".tgi[0].ni[799].y" -315.71429443359375;
	setAttr ".tgi[0].ni[799].nvs" 18304;
	setAttr ".tgi[0].ni[800].x" 75101.4296875;
	setAttr ".tgi[0].ni[800].y" -467.14285278320312;
	setAttr ".tgi[0].ni[800].nvs" 18304;
	setAttr ".tgi[0].ni[801].x" 75715.7109375;
	setAttr ".tgi[0].ni[801].y" -572.85711669921875;
	setAttr ".tgi[0].ni[801].nvs" 18304;
	setAttr ".tgi[0].ni[802].x" 78480;
	setAttr ".tgi[0].ni[802].y" -1047.142822265625;
	setAttr ".tgi[0].ni[802].nvs" 18304;
	setAttr ".tgi[0].ni[803].x" -58812.85546875;
	setAttr ".tgi[0].ni[803].y" 6154.28564453125;
	setAttr ".tgi[0].ni[803].nvs" 18304;
	setAttr ".tgi[0].ni[804].x" -57891.4296875;
	setAttr ".tgi[0].ni[804].y" 6168.5712890625;
	setAttr ".tgi[0].ni[804].nvs" 18304;
	setAttr ".tgi[0].ni[805].x" -58198.5703125;
	setAttr ".tgi[0].ni[805].y" 6184.28564453125;
	setAttr ".tgi[0].ni[805].nvs" 18304;
	setAttr ".tgi[0].ni[806].x" -57584.28515625;
	setAttr ".tgi[0].ni[806].y" 6154.28564453125;
	setAttr ".tgi[0].ni[806].nvs" 18304;
	setAttr ".tgi[0].ni[807].x" -49905.71484375;
	setAttr ".tgi[0].ni[807].y" 6578.5712890625;
	setAttr ".tgi[0].ni[807].nvs" 18304;
	setAttr ".tgi[0].ni[808].x" -49291.4296875;
	setAttr ".tgi[0].ni[808].y" 6592.85693359375;
	setAttr ".tgi[0].ni[808].nvs" 18304;
	setAttr ".tgi[0].ni[809].x" -49598.5703125;
	setAttr ".tgi[0].ni[809].y" 6615.71435546875;
	setAttr ".tgi[0].ni[809].nvs" 18304;
	setAttr ".tgi[0].ni[810].x" -48677.14453125;
	setAttr ".tgi[0].ni[810].y" 6605.71435546875;
	setAttr ".tgi[0].ni[810].nvs" 18304;
	setAttr ".tgi[0].ni[811].x" -48984.28515625;
	setAttr ".tgi[0].ni[811].y" 6628.5712890625;
	setAttr ".tgi[0].ni[811].nvs" 18304;
	setAttr ".tgi[0].ni[812].x" -48062.85546875;
	setAttr ".tgi[0].ni[812].y" 6617.14306640625;
	setAttr ".tgi[0].ni[812].nvs" 18304;
	setAttr ".tgi[0].ni[813].x" -48370;
	setAttr ".tgi[0].ni[813].y" 6640;
	setAttr ".tgi[0].ni[813].nvs" 18304;
	setAttr ".tgi[0].ni[814].x" -47448.5703125;
	setAttr ".tgi[0].ni[814].y" 6630;
	setAttr ".tgi[0].ni[814].nvs" 18304;
	setAttr ".tgi[0].ni[815].x" -47755.71484375;
	setAttr ".tgi[0].ni[815].y" 6652.85693359375;
	setAttr ".tgi[0].ni[815].nvs" 18304;
	setAttr ".tgi[0].ni[816].x" -46834.28515625;
	setAttr ".tgi[0].ni[816].y" 6642.85693359375;
	setAttr ".tgi[0].ni[816].nvs" 18304;
	setAttr ".tgi[0].ni[817].x" -47141.4296875;
	setAttr ".tgi[0].ni[817].y" 6665.71435546875;
	setAttr ".tgi[0].ni[817].nvs" 18304;
	setAttr ".tgi[0].ni[818].x" -46527.14453125;
	setAttr ".tgi[0].ni[818].y" 6620;
	setAttr ".tgi[0].ni[818].nvs" 18304;
	setAttr ".tgi[0].ni[819].x" -5984.28564453125;
	setAttr ".tgi[0].ni[819].y" 6444.28564453125;
	setAttr ".tgi[0].ni[819].nvs" 18304;
	setAttr ".tgi[0].ni[820].x" -5370;
	setAttr ".tgi[0].ni[820].y" 6508.5712890625;
	setAttr ".tgi[0].ni[820].nvs" 18304;
	setAttr ".tgi[0].ni[821].x" -2298.571533203125;
	setAttr ".tgi[0].ni[821].y" 6508.5712890625;
	setAttr ".tgi[0].ni[821].nvs" 18304;
	setAttr ".tgi[0].ni[822].x" -2605.71435546875;
	setAttr ".tgi[0].ni[822].y" 6535.71435546875;
	setAttr ".tgi[0].ni[822].nvs" 18304;
	setAttr ".tgi[0].ni[823].x" -1684.2857666015625;
	setAttr ".tgi[0].ni[823].y" 6505.71435546875;
	setAttr ".tgi[0].ni[823].nvs" 18304;
	setAttr ".tgi[0].ni[824].x" -1991.4285888671875;
	setAttr ".tgi[0].ni[824].y" 6532.85693359375;
	setAttr ".tgi[0].ni[824].nvs" 18304;
	setAttr ".tgi[0].ni[825].x" -1377.142822265625;
	setAttr ".tgi[0].ni[825].y" 6530;
	setAttr ".tgi[0].ni[825].nvs" 18304;
	setAttr ".tgi[0].ni[826].x" -1070;
	setAttr ".tgi[0].ni[826].y" 6561.4287109375;
	setAttr ".tgi[0].ni[826].nvs" 18304;
	setAttr ".tgi[0].ni[827].x" -762.85711669921875;
	setAttr ".tgi[0].ni[827].y" 6590;
	setAttr ".tgi[0].ni[827].nvs" 18304;
	setAttr ".tgi[0].ni[828].x" -148.57142639160156;
	setAttr ".tgi[0].ni[828].y" 6592.85693359375;
	setAttr ".tgi[0].ni[828].nvs" 18304;
	setAttr ".tgi[0].ni[829].x" -455.71429443359375;
	setAttr ".tgi[0].ni[829].y" 6621.4287109375;
	setAttr ".tgi[0].ni[829].nvs" 18304;
	setAttr ".tgi[0].ni[830].x" 465.71429443359375;
	setAttr ".tgi[0].ni[830].y" 6595.71435546875;
	setAttr ".tgi[0].ni[830].nvs" 18304;
	setAttr ".tgi[0].ni[831].x" 158.57142639160156;
	setAttr ".tgi[0].ni[831].y" 6622.85693359375;
	setAttr ".tgi[0].ni[831].nvs" 18304;
	setAttr ".tgi[0].ni[832].x" 772.85711669921875;
	setAttr ".tgi[0].ni[832].y" 6612.85693359375;
	setAttr ".tgi[0].ni[832].nvs" 18304;
	setAttr ".tgi[0].ni[833].x" 1080;
	setAttr ".tgi[0].ni[833].y" 6644.28564453125;
	setAttr ".tgi[0].ni[833].nvs" 18304;
	setAttr ".tgi[0].ni[834].x" 1387.142822265625;
	setAttr ".tgi[0].ni[834].y" 6674.28564453125;
	setAttr ".tgi[0].ni[834].nvs" 18304;
	setAttr ".tgi[0].ni[835].x" 2001.4285888671875;
	setAttr ".tgi[0].ni[835].y" 6664.28564453125;
	setAttr ".tgi[0].ni[835].nvs" 18304;
	setAttr ".tgi[0].ni[836].x" 1694.2857666015625;
	setAttr ".tgi[0].ni[836].y" 6692.85693359375;
	setAttr ".tgi[0].ni[836].nvs" 18304;
	setAttr ".tgi[0].ni[837].x" 2615.71435546875;
	setAttr ".tgi[0].ni[837].y" 6658.5712890625;
	setAttr ".tgi[0].ni[837].nvs" 18304;
	setAttr ".tgi[0].ni[838].x" 2308.571533203125;
	setAttr ".tgi[0].ni[838].y" 6687.14306640625;
	setAttr ".tgi[0].ni[838].nvs" 18304;
	setAttr ".tgi[0].ni[839].x" 70187.140625;
	setAttr ".tgi[0].ni[839].y" -47.142856597900391;
	setAttr ".tgi[0].ni[839].nvs" 18304;
	setAttr ".tgi[0].ni[840].x" 71108.5703125;
	setAttr ".tgi[0].ni[840].y" -147.14285278320312;
	setAttr ".tgi[0].ni[840].nvs" 18304;
	setAttr ".tgi[0].ni[841].x" 70801.4296875;
	setAttr ".tgi[0].ni[841].y" -98.571426391601562;
	setAttr ".tgi[0].ni[841].nvs" 18304;
	setAttr ".tgi[0].ni[842].x" 72337.140625;
	setAttr ".tgi[0].ni[842].y" -162.85714721679688;
	setAttr ".tgi[0].ni[842].nvs" 18304;
	setAttr ".tgi[0].ni[843].x" 72644.2890625;
	setAttr ".tgi[0].ni[843].y" -150;
	setAttr ".tgi[0].ni[843].nvs" 18304;
	setAttr ".tgi[0].ni[844].x" 72951.4296875;
	setAttr ".tgi[0].ni[844].y" -208.57142639160156;
	setAttr ".tgi[0].ni[844].nvs" 18304;
	setAttr ".tgi[0].ni[845].x" 73565.7109375;
	setAttr ".tgi[0].ni[845].y" -270;
	setAttr ".tgi[0].ni[845].nvs" 18304;
	setAttr ".tgi[0].ni[846].x" 73258.5703125;
	setAttr ".tgi[0].ni[846].y" -210;
	setAttr ".tgi[0].ni[846].nvs" 18304;
	setAttr ".tgi[0].ni[847].x" 72030;
	setAttr ".tgi[0].ni[847].y" -174.28572082519531;
	setAttr ".tgi[0].ni[847].nvs" 18304;
	setAttr ".tgi[0].ni[848].x" 71722.859375;
	setAttr ".tgi[0].ni[848].y" -187.14285278320312;
	setAttr ".tgi[0].ni[848].nvs" 18304;
	setAttr ".tgi[0].ni[849].x" 71415.7109375;
	setAttr ".tgi[0].ni[849].y" -140;
	setAttr ".tgi[0].ni[849].nvs" 18304;
	setAttr ".tgi[0].ni[850].x" -565.71429443359375;
	setAttr ".tgi[0].ni[850].y" 1151.4285888671875;
	setAttr ".tgi[0].ni[850].nvs" 18304;
	setAttr ".tgi[0].ni[851].x" 432.85714721679688;
	setAttr ".tgi[0].ni[851].y" -501.42855834960938;
	setAttr ".tgi[0].ni[851].nvs" 18304;
	setAttr ".tgi[0].ni[852].x" -565.71429443359375;
	setAttr ".tgi[0].ni[852].y" 4647.14306640625;
	setAttr ".tgi[0].ni[852].nvs" 18304;
	setAttr ".tgi[0].ni[853].x" -258.57144165039062;
	setAttr ".tgi[0].ni[853].y" 3884.28564453125;
	setAttr ".tgi[0].ni[853].nvs" 18304;
	setAttr ".tgi[0].ni[854].x" 48.571430206298828;
	setAttr ".tgi[0].ni[854].y" -5142.85693359375;
	setAttr ".tgi[0].ni[854].nvs" 18304;
	setAttr ".tgi[0].ni[855].x" 48.571430206298828;
	setAttr ".tgi[0].ni[855].y" -120;
	setAttr ".tgi[0].ni[855].nvs" 18304;
	setAttr ".tgi[0].ni[856].x" 48.571430206298828;
	setAttr ".tgi[0].ni[856].y" 7.1428570747375488;
	setAttr ".tgi[0].ni[856].nvs" 18304;
	setAttr ".tgi[0].ni[857].x" -258.57144165039062;
	setAttr ".tgi[0].ni[857].y" 4011.428466796875;
	setAttr ".tgi[0].ni[857].nvs" 18304;
	setAttr ".tgi[0].ni[858].x" 48.571430206298828;
	setAttr ".tgi[0].ni[858].y" 5791.4287109375;
	setAttr ".tgi[0].ni[858].nvs" 18304;
	setAttr ".tgi[0].ni[859].x" -17655.71484375;
	setAttr ".tgi[0].ni[859].y" 6218.5712890625;
	setAttr ".tgi[0].ni[859].nvs" 18304;
	setAttr ".tgi[0].ni[860].x" -16734.28515625;
	setAttr ".tgi[0].ni[860].y" 6174.28564453125;
	setAttr ".tgi[0].ni[860].nvs" 18304;
	setAttr ".tgi[0].ni[861].x" -65877.140625;
	setAttr ".tgi[0].ni[861].y" 5801.4287109375;
	setAttr ".tgi[0].ni[861].nvs" 18304;
	setAttr ".tgi[0].ni[862].x" -18270;
	setAttr ".tgi[0].ni[862].y" 6218.5712890625;
	setAttr ".tgi[0].ni[862].nvs" 18304;
	setAttr ".tgi[0].ni[863].x" -17348.572265625;
	setAttr ".tgi[0].ni[863].y" 6181.4287109375;
	setAttr ".tgi[0].ni[863].nvs" 18304;
	setAttr ".tgi[0].ni[864].x" -68334.2890625;
	setAttr ".tgi[0].ni[864].y" 5801.4287109375;
	setAttr ".tgi[0].ni[864].nvs" 18304;
	setAttr ".tgi[0].ni[865].x" -69562.859375;
	setAttr ".tgi[0].ni[865].y" 5801.4287109375;
	setAttr ".tgi[0].ni[865].nvs" 18304;
	setAttr ".tgi[0].ni[866].x" -68641.4296875;
	setAttr ".tgi[0].ni[866].y" 5801.4287109375;
	setAttr ".tgi[0].ni[866].nvs" 18304;
	setAttr ".tgi[0].ni[867].x" -17041.427734375;
	setAttr ".tgi[0].ni[867].y" 6215.71435546875;
	setAttr ".tgi[0].ni[867].nvs" 18304;
	setAttr ".tgi[0].ni[868].x" -66184.2890625;
	setAttr ".tgi[0].ni[868].y" 5801.4287109375;
	setAttr ".tgi[0].ni[868].nvs" 18304;
	setAttr ".tgi[0].ni[869].x" -67105.7109375;
	setAttr ".tgi[0].ni[869].y" 5801.4287109375;
	setAttr ".tgi[0].ni[869].nvs" 18304;
	setAttr ".tgi[0].ni[870].x" -16120;
	setAttr ".tgi[0].ni[870].y" 6205.71435546875;
	setAttr ".tgi[0].ni[870].nvs" 18304;
	setAttr ".tgi[0].ni[871].x" -16427.142578125;
	setAttr ".tgi[0].ni[871].y" 6217.14306640625;
	setAttr ".tgi[0].ni[871].nvs" 18304;
	setAttr ".tgi[0].ni[872].x" -15812.857421875;
	setAttr ".tgi[0].ni[872].y" 6181.4287109375;
	setAttr ".tgi[0].ni[872].nvs" 18304;
	setAttr ".tgi[0].ni[873].x" -15198.5712890625;
	setAttr ".tgi[0].ni[873].y" 6181.4287109375;
	setAttr ".tgi[0].ni[873].nvs" 18304;
	setAttr ".tgi[0].ni[874].x" -15505.7138671875;
	setAttr ".tgi[0].ni[874].y" 6202.85693359375;
	setAttr ".tgi[0].ni[874].nvs" 18304;
	setAttr ".tgi[0].ni[875].x" -14584.2861328125;
	setAttr ".tgi[0].ni[875].y" 6180;
	setAttr ".tgi[0].ni[875].nvs" 18304;
	setAttr ".tgi[0].ni[876].x" -14891.4287109375;
	setAttr ".tgi[0].ni[876].y" 6204.28564453125;
	setAttr ".tgi[0].ni[876].nvs" 18304;
	setAttr ".tgi[0].ni[877].x" -13970;
	setAttr ".tgi[0].ni[877].y" 6195.71435546875;
	setAttr ".tgi[0].ni[877].nvs" 18304;
	setAttr ".tgi[0].ni[878].x" -14277.142578125;
	setAttr ".tgi[0].ni[878].y" 6215.71435546875;
	setAttr ".tgi[0].ni[878].nvs" 18304;
	setAttr ".tgi[0].ni[879].x" -13355.7138671875;
	setAttr ".tgi[0].ni[879].y" 6258.5712890625;
	setAttr ".tgi[0].ni[879].nvs" 18304;
	setAttr ".tgi[0].ni[880].x" -13662.857421875;
	setAttr ".tgi[0].ni[880].y" 6240;
	setAttr ".tgi[0].ni[880].nvs" 18304;
	setAttr ".tgi[0].ni[881].x" -12741.4287109375;
	setAttr ".tgi[0].ni[881].y" 6258.5712890625;
	setAttr ".tgi[0].ni[881].nvs" 18304;
	setAttr ".tgi[0].ni[882].x" 24422.857421875;
	setAttr ".tgi[0].ni[882].y" 6280;
	setAttr ".tgi[0].ni[882].nvs" 18304;
	setAttr ".tgi[0].ni[883].x" 24115.71484375;
	setAttr ".tgi[0].ni[883].y" 6347.14306640625;
	setAttr ".tgi[0].ni[883].nvs" 18304;
	setAttr ".tgi[0].ni[884].x" 25037.142578125;
	setAttr ".tgi[0].ni[884].y" 6211.4287109375;
	setAttr ".tgi[0].ni[884].nvs" 18304;
	setAttr ".tgi[0].ni[885].x" 24730;
	setAttr ".tgi[0].ni[885].y" 6280;
	setAttr ".tgi[0].ni[885].nvs" 18304;
	setAttr ".tgi[0].ni[886].x" -66491.4296875;
	setAttr ".tgi[0].ni[886].y" 5801.4287109375;
	setAttr ".tgi[0].ni[886].nvs" 18304;
	setAttr ".tgi[0].ni[887].x" 48.571430206298828;
	setAttr ".tgi[0].ni[887].y" 5410;
	setAttr ".tgi[0].ni[887].nvs" 18304;
	setAttr ".tgi[0].ni[888].x" -67720;
	setAttr ".tgi[0].ni[888].y" 5801.4287109375;
	setAttr ".tgi[0].ni[888].nvs" 18304;
	setAttr ".tgi[0].ni[889].x" -69255.7109375;
	setAttr ".tgi[0].ni[889].y" 5801.4287109375;
	setAttr ".tgi[0].ni[889].nvs" 18304;
	setAttr ".tgi[0].ni[890].x" 48.571430206298828;
	setAttr ".tgi[0].ni[890].y" -3108.571533203125;
	setAttr ".tgi[0].ni[890].nvs" 18304;
	setAttr ".tgi[0].ni[891].x" 48.571430206298828;
	setAttr ".tgi[0].ni[891].y" -2727.142822265625;
	setAttr ".tgi[0].ni[891].nvs" 18304;
	setAttr ".tgi[0].ni[892].x" -258.57144165039062;
	setAttr ".tgi[0].ni[892].y" 2485.71435546875;
	setAttr ".tgi[0].ni[892].nvs" 18304;
	setAttr ".tgi[0].ni[893].x" -258.57144165039062;
	setAttr ".tgi[0].ni[893].y" 3121.428466796875;
	setAttr ".tgi[0].ni[893].nvs" 18304;
	setAttr ".tgi[0].ni[894].x" 77558.5703125;
	setAttr ".tgi[0].ni[894].y" -852.85711669921875;
	setAttr ".tgi[0].ni[894].nvs" 18304;
	setAttr ".tgi[0].ni[895].x" -258.57144165039062;
	setAttr ".tgi[0].ni[895].y" 6045.71435546875;
	setAttr ".tgi[0].ni[895].nvs" 18304;
	setAttr ".tgi[0].ni[896].x" -565.71429443359375;
	setAttr ".tgi[0].ni[896].y" 4138.5712890625;
	setAttr ".tgi[0].ni[896].nvs" 18304;
	setAttr ".tgi[0].ni[897].x" 76637.140625;
	setAttr ".tgi[0].ni[897].y" -675.71429443359375;
	setAttr ".tgi[0].ni[897].nvs" 18304;
	setAttr ".tgi[0].ni[898].x" -60348.5703125;
	setAttr ".tgi[0].ni[898].y" 5984.28564453125;
	setAttr ".tgi[0].ni[898].nvs" 18304;
	setAttr ".tgi[0].ni[899].x" -60041.4296875;
	setAttr ".tgi[0].ni[899].y" 6030;
	setAttr ".tgi[0].ni[899].nvs" 18304;
	setAttr ".tgi[0].ni[900].x" -59734.28515625;
	setAttr ".tgi[0].ni[900].y" 6077.14306640625;
	setAttr ".tgi[0].ni[900].nvs" 18304;
	setAttr ".tgi[0].ni[901].x" -565.71429443359375;
	setAttr ".tgi[0].ni[901].y" 6172.85693359375;
	setAttr ".tgi[0].ni[901].nvs" 18304;
	setAttr ".tgi[0].ni[902].x" 48.571430206298828;
	setAttr ".tgi[0].ni[902].y" -5397.14306640625;
	setAttr ".tgi[0].ni[902].nvs" 18304;
	setAttr ".tgi[0].ni[903].x" -181.42857360839844;
	setAttr ".tgi[0].ni[903].y" 3312.857177734375;
	setAttr ".tgi[0].ni[903].nvs" 18304;
	setAttr ".tgi[0].ni[904].x" 48.571430206298828;
	setAttr ".tgi[0].ni[904].y" -4125.71435546875;
	setAttr ".tgi[0].ni[904].nvs" 18304;
	setAttr ".tgi[0].ni[905].x" 76944.2890625;
	setAttr ".tgi[0].ni[905].y" -747.14288330078125;
	setAttr ".tgi[0].ni[905].nvs" 18304;
	setAttr ".tgi[0].ni[906].x" -59120;
	setAttr ".tgi[0].ni[906].y" 6108.5712890625;
	setAttr ".tgi[0].ni[906].nvs" 18304;
	setAttr ".tgi[0].ni[907].x" -59427.14453125;
	setAttr ".tgi[0].ni[907].y" 6122.85693359375;
	setAttr ".tgi[0].ni[907].nvs" 18304;
	setAttr ".tgi[0].ni[908].x" -58505.71484375;
	setAttr ".tgi[0].ni[908].y" 6140;
	setAttr ".tgi[0].ni[908].nvs" 18304;
	setAttr ".tgi[0].ni[909].x" -57277.14453125;
	setAttr ".tgi[0].ni[909].y" 6194.28564453125;
	setAttr ".tgi[0].ni[909].nvs" 18304;
	setAttr ".tgi[0].ni[910].x" 61587.14453125;
	setAttr ".tgi[0].ni[910].y" 102.85713958740234;
	setAttr ".tgi[0].ni[910].nvs" 18304;
	setAttr ".tgi[0].ni[911].x" 62201.4296875;
	setAttr ".tgi[0].ni[911].y" 108.57142639160156;
	setAttr ".tgi[0].ni[911].nvs" 18304;
	setAttr ".tgi[0].ni[912].x" 61894.28515625;
	setAttr ".tgi[0].ni[912].y" 135.71427917480469;
	setAttr ".tgi[0].ni[912].nvs" 18304;
	setAttr ".tgi[0].ni[913].x" 62815.71484375;
	setAttr ".tgi[0].ni[913].y" 114.28571319580078;
	setAttr ".tgi[0].ni[913].nvs" 18304;
	setAttr ".tgi[0].ni[914].x" 62508.5703125;
	setAttr ".tgi[0].ni[914].y" 141.42857360839844;
	setAttr ".tgi[0].ni[914].nvs" 18304;
	setAttr ".tgi[0].ni[915].x" 63430;
	setAttr ".tgi[0].ni[915].y" 118.57142639160156;
	setAttr ".tgi[0].ni[915].nvs" 18304;
	setAttr ".tgi[0].ni[916].x" 67422.859375;
	setAttr ".tgi[0].ni[916].y" 130;
	setAttr ".tgi[0].ni[916].nvs" 18304;
	setAttr ".tgi[0].ni[917].x" 48.571430206298828;
	setAttr ".tgi[0].ni[917].y" -4888.5712890625;
	setAttr ".tgi[0].ni[917].nvs" 18304;
	setAttr ".tgi[0].ni[918].x" 68344.2890625;
	setAttr ".tgi[0].ni[918].y" 105.71428680419922;
	setAttr ".tgi[0].ni[918].nvs" 18304;
	setAttr ".tgi[0].ni[919].x" 68037.140625;
	setAttr ".tgi[0].ni[919].y" 132.85714721679688;
	setAttr ".tgi[0].ni[919].nvs" 18304;
	setAttr ".tgi[0].ni[920].x" 68958.5703125;
	setAttr ".tgi[0].ni[920].y" 88.571426391601562;
	setAttr ".tgi[0].ni[920].nvs" 18304;
	setAttr ".tgi[0].ni[921].x" 68651.4296875;
	setAttr ".tgi[0].ni[921].y" 137.14285278320312;
	setAttr ".tgi[0].ni[921].nvs" 18304;
	setAttr ".tgi[0].ni[922].x" 69265.7109375;
	setAttr ".tgi[0].ni[922].y" 30;
	setAttr ".tgi[0].ni[922].nvs" 18304;
	setAttr ".tgi[0].ni[923].x" 69880;
	setAttr ".tgi[0].ni[923].y" -41.428569793701172;
	setAttr ".tgi[0].ni[923].nvs" 18304;
	setAttr ".tgi[0].ni[924].x" 69572.859375;
	setAttr ".tgi[0].ni[924].y" 21.428571701049805;
	setAttr ".tgi[0].ni[924].nvs" 18304;
	setAttr ".tgi[0].ni[925].x" 75408.5703125;
	setAttr ".tgi[0].ni[925].y" -494.28570556640625;
	setAttr ".tgi[0].ni[925].nvs" 18304;
	setAttr ".tgi[0].ni[926].x" 76330;
	setAttr ".tgi[0].ni[926].y" -661.4285888671875;
	setAttr ".tgi[0].ni[926].nvs" 18304;
	setAttr ".tgi[0].ni[927].x" 76022.859375;
	setAttr ".tgi[0].ni[927].y" -592.85711669921875;
	setAttr ".tgi[0].ni[927].nvs" 18304;
	setAttr ".tgi[0].ni[928].x" 29030;
	setAttr ".tgi[0].ni[928].y" 5965.71435546875;
	setAttr ".tgi[0].ni[928].nvs" 18304;
	setAttr ".tgi[0].ni[929].x" 28722.857421875;
	setAttr ".tgi[0].ni[929].y" 6027.14306640625;
	setAttr ".tgi[0].ni[929].nvs" 18304;
	setAttr ".tgi[0].ni[930].x" -22877.142578125;
	setAttr ".tgi[0].ni[930].y" 6328.5712890625;
	setAttr ".tgi[0].ni[930].nvs" 18304;
	setAttr ".tgi[0].ni[931].x" -13048.5712890625;
	setAttr ".tgi[0].ni[931].y" 6284.28564453125;
	setAttr ".tgi[0].ni[931].nvs" 18304;
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
	setAttr -s 4 ".dsm";
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
connectAttr "GenericMesh2_2RN.phl[1]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[642].dn"
		;
connectAttr "GenericMesh2_2RN.phl[2]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[533].dn"
		;
connectAttr "GenericMesh2_2RN.phl[3]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[534].dn"
		;
connectAttr "GenericMesh2_2RN.phl[4]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[535].dn"
		;
connectAttr "GenericMesh2_2RN.phl[5]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[536].dn"
		;
connectAttr "GenericMesh2_2RN.phl[6]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[537].dn"
		;
connectAttr "GenericMesh2_2RN.phl[7]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[538].dn"
		;
connectAttr "GenericMesh2_2RN.phl[8]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[539].dn"
		;
connectAttr "GenericMesh2_2RN.phl[9]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[540].dn"
		;
connectAttr "GenericMesh2_2RN.phl[10]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[541].dn"
		;
connectAttr "GenericMesh2_2RN.phl[11]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[542].dn"
		;
connectAttr "GenericMesh2_2RN.phl[12]" "blendShape1.ip[0].ig";
connectAttr "GenericMesh2_2RN.phl[13]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[543].dn"
		;
connectAttr "GenericMesh2_2RN.phl[14]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[544].dn"
		;
connectAttr "GenericMesh2_2RN.phl[15]" "blendShape1.orggeom[0]";
connectAttr "GenericMesh2_2RN.phl[16]" "skinCluster1.orggeom[0]";
connectAttr "GenericMesh2_2RN.phl[17]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[545].dn"
		;
connectAttr "GenericMesh2_2RN.phl[18]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[546].dn"
		;
connectAttr "GenericMesh2_2RN.phl[19]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[547].dn"
		;
connectAttr "GenericMesh2_2RN.phl[20]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[548].dn"
		;
connectAttr "GenericMesh2_2RN.phl[21]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[549].dn"
		;
connectAttr "GenericMesh2_2RN.phl[22]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[550].dn"
		;
connectAttr "GenericMesh2_2RN.phl[23]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[551].dn"
		;
connectAttr "GenericMesh2_2RN.phl[24]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[552].dn"
		;
connectAttr "GenericMesh2_2RN.phl[25]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[553].dn"
		;
connectAttr "GenericMesh2_2RN.phl[26]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[554].dn"
		;
connectAttr "GenericMesh2_2RN.phl[27]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[555].dn"
		;
connectAttr "GenericMesh2_2RN.phl[28]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[556].dn"
		;
connectAttr "GenericMesh2_2RN.phl[29]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[348].dn"
		;
connectAttr "GenericMesh2_2RN.phl[30]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[349].dn"
		;
connectAttr "GenericMesh2_2RN.phl[31]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[351].dn"
		;
connectAttr "GenericMesh2_2RN.phl[32]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[350].dn"
		;
connectAttr "GenericMesh2_2RN.phl[33]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[352].dn"
		;
connectAttr "GenericMesh2_2RN.phl[34]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[353].dn"
		;
connectAttr "GenericMesh2_2RN.phl[35]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[354].dn"
		;
connectAttr "GenericMesh2_2RN.phl[36]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[355].dn"
		;
connectAttr "GenericMesh2_2RN.phl[37]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[356].dn"
		;
connectAttr "GenericMesh2_2RN.phl[38]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[357].dn"
		;
connectAttr "GenericMesh2_2RN.phl[39]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[358].dn"
		;
connectAttr "GenericMesh2_2RN.phl[40]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[359].dn"
		;
connectAttr "GenericMesh2_2RN.phl[41]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[360].dn"
		;
connectAttr "GenericMesh2_2RN.phl[42]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[361].dn"
		;
connectAttr "GenericMesh2_2RN.phl[43]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[362].dn"
		;
connectAttr "GenericMesh2_2RN.phl[44]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[363].dn"
		;
connectAttr "GenericMesh2_2RN.phl[45]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[557].dn"
		;
connectAttr "GenericMesh2_2RN.phl[46]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "GenericMesh2_2RN.phl[47]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[558].dn"
		;
connectAttr "GenericMesh2_2RN.phl[48]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[559].dn"
		;
connectAttr "GenericMesh2_2RN.phl[49]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[560].dn"
		;
connectAttr "GenericMesh2_2RN.phl[50]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[561].dn"
		;
connectAttr "GenericMesh2_2RN.phl[51]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[562].dn"
		;
connectAttr "GenericMesh2_2RN.phl[52]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[563].dn"
		;
connectAttr "GenericMesh2_2RN.phl[53]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[564].dn"
		;
connectAttr "GenericMesh2_2RN.phl[54]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[565].dn"
		;
connectAttr "GenericMesh2_2RN.phl[55]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[566].dn"
		;
connectAttr "GenericMesh2_2RN.phl[56]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[567].dn"
		;
connectAttr "GenericMesh2_2RN.phl[57]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[782].dn"
		;
connectAttr "GenericMesh2_2RN.phl[58]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[783].dn"
		;
connectAttr "GenericMesh2_2RN.phl[59]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[784].dn"
		;
connectAttr "GenericMesh2_2RN.phl[60]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[910].dn"
		;
connectAttr "GenericMesh2_2RN.phl[61]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[911].dn"
		;
connectAttr "GenericMesh2_2RN.phl[62]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[912].dn"
		;
connectAttr "GenericMesh2_2RN.phl[63]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[913].dn"
		;
connectAttr "GenericMesh2_2RN.phl[64]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[914].dn"
		;
connectAttr "GenericMesh2_2RN.phl[65]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[915].dn"
		;
connectAttr "GenericMesh2_2RN.phl[66]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[785].dn"
		;
connectAttr "GenericMesh2_2RN.phl[67]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[786].dn"
		;
connectAttr "GenericMesh2_2RN.phl[68]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[787].dn"
		;
connectAttr "GenericMesh2_2RN.phl[69]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[788].dn"
		;
connectAttr "GenericMesh2_2RN.phl[70]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[789].dn"
		;
connectAttr "GenericMesh2_2RN.phl[71]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[790].dn"
		;
connectAttr "GenericMesh2_2RN.phl[72]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[791].dn"
		;
connectAttr "GenericMesh2_2RN.phl[73]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[792].dn"
		;
connectAttr "GenericMesh2_2RN.phl[74]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[793].dn"
		;
connectAttr "GenericMesh2_2RN.phl[75]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[794].dn"
		;
connectAttr "GenericMesh2_2RN.phl[76]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[795].dn"
		;
connectAttr "GenericMesh2_2RN.phl[77]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[796].dn"
		;
connectAttr "GenericMesh2_2RN.phl[78]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[797].dn"
		;
connectAttr "GenericMesh2_2RN.phl[79]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[798].dn"
		;
connectAttr "GenericMesh2_2RN.phl[80]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[916].dn"
		;
connectAttr "GenericMesh2_2RN.phl[81]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[918].dn"
		;
connectAttr "GenericMesh2_2RN.phl[82]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[919].dn"
		;
connectAttr "GenericMesh2_2RN.phl[83]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[920].dn"
		;
connectAttr "GenericMesh2_2RN.phl[84]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[921].dn"
		;
connectAttr "GenericMesh2_2RN.phl[85]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[922].dn"
		;
connectAttr "GenericMesh2_2RN.phl[86]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[923].dn"
		;
connectAttr "GenericMesh2_2RN.phl[87]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[924].dn"
		;
connectAttr "GenericMesh2_2RN.phl[88]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[444].dn"
		;
connectAttr "GenericMesh2_2RN.phl[89]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[839].dn"
		;
connectAttr "GenericMesh2_2RN.phl[90]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[840].dn"
		;
connectAttr "GenericMesh2_2RN.phl[91]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[841].dn"
		;
connectAttr "GenericMesh2_2RN.phl[92]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[848].dn"
		;
connectAttr "GenericMesh2_2RN.phl[93]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[849].dn"
		;
connectAttr "GenericMesh2_2RN.phl[94]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[847].dn"
		;
connectAttr "GenericMesh2_2RN.phl[95]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[842].dn"
		;
connectAttr "GenericMesh2_2RN.phl[96]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[843].dn"
		;
connectAttr "GenericMesh2_2RN.phl[97]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[844].dn"
		;
connectAttr "GenericMesh2_2RN.phl[98]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[845].dn"
		;
connectAttr "GenericMesh2_2RN.phl[99]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[846].dn"
		;
connectAttr "GenericMesh2_2RN.phl[100]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[463].dn"
		;
connectAttr "GenericMesh2_2RN.phl[101]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[502].dn"
		;
connectAttr "GenericMesh2_2RN.phl[102]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[464].dn"
		;
connectAttr "GenericMesh2_2RN.phl[103]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[799].dn"
		;
connectAttr "GenericMesh2_2RN.phl[104]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[800].dn"
		;
connectAttr "GenericMesh2_2RN.phl[105]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[801].dn"
		;
connectAttr "GenericMesh2_2RN.phl[106]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[925].dn"
		;
connectAttr "GenericMesh2_2RN.phl[107]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[926].dn"
		;
connectAttr "GenericMesh2_2RN.phl[108]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[927].dn"
		;
connectAttr "GenericMesh2_2RN.phl[109]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[905].dn"
		;
connectAttr "GenericMesh2_2RN.phl[110]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[897].dn"
		;
connectAttr "GenericMesh2_2RN.phl[111]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[364].dn"
		;
connectAttr "GenericMesh2_2RN.phl[112]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[365].dn"
		;
connectAttr "GenericMesh2_2RN.phl[113]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[894].dn"
		;
connectAttr "GenericMesh2_2RN.phl[114]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[465].dn"
		;
connectAttr "GenericMesh2_2RN.phl[115]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[466].dn"
		;
connectAttr "GenericMesh2_2RN.phl[116]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[802].dn"
		;
connectAttr "GenericMesh2_2RN.phl[117]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "GenericMesh2_2RN.phl[118]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "GenericMesh2_2RN.phl[119]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "GenericMesh2_2RN.phl[120]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "GenericMesh2_2RN.phl[121]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "GenericMesh2_2RN.phl[122]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[366].dn"
		;
connectAttr "GenericMesh2_2RN.phl[123]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[367].dn"
		;
connectAttr "GenericMesh2_2RN.phl[124]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[187].dn"
		;
connectAttr "GenericMesh2_2RN.phl[125]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[865].dn"
		;
connectAttr "GenericMesh2_2RN.phl[126]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[889].dn"
		;
connectAttr "GenericMesh2_2RN.phl[127]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[140].dn"
		;
connectAttr "GenericMesh2_2RN.phl[128]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[864].dn"
		;
connectAttr "GenericMesh2_2RN.phl[129]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[866].dn"
		;
connectAttr "GenericMesh2_2RN.phl[130]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[152].dn"
		;
connectAttr "GenericMesh2_2RN.phl[131]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[888].dn"
		;
connectAttr "GenericMesh2_2RN.phl[132]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[153].dn"
		;
connectAttr "GenericMesh2_2RN.phl[133]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[154].dn"
		;
connectAttr "GenericMesh2_2RN.phl[134]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[869].dn"
		;
connectAttr "GenericMesh2_2RN.phl[135]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[886].dn"
		;
connectAttr "GenericMesh2_2RN.phl[136]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[868].dn"
		;
connectAttr "GenericMesh2_2RN.phl[137]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[861].dn"
		;
connectAttr "GenericMesh2_2RN.phl[138]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[467].dn"
		;
connectAttr "GenericMesh2_2RN.phl[139]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[368].dn"
		;
connectAttr "GenericMesh2_2RN.phl[140]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[369].dn"
		;
connectAttr "GenericMesh2_2RN.phl[141]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[370].dn"
		;
connectAttr "GenericMesh2_2RN.phl[142]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[371].dn"
		;
connectAttr "GenericMesh2_2RN.phl[143]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[372].dn"
		;
connectAttr "GenericMesh2_2RN.phl[144]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[373].dn"
		;
connectAttr "GenericMesh2_2RN.phl[145]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[374].dn"
		;
connectAttr "GenericMesh2_2RN.phl[146]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[375].dn"
		;
connectAttr "GenericMesh2_2RN.phl[147]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[376].dn"
		;
connectAttr "GenericMesh2_2RN.phl[148]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[377].dn"
		;
connectAttr "GenericMesh2_2RN.phl[149]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[378].dn"
		;
connectAttr "GenericMesh2_2RN.phl[150]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[379].dn"
		;
connectAttr "GenericMesh2_2RN.phl[151]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[380].dn"
		;
connectAttr "GenericMesh2_2RN.phl[152]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[381].dn"
		;
connectAttr "GenericMesh2_2RN.phl[153]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[382].dn"
		;
connectAttr "GenericMesh2_2RN.phl[154]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[383].dn"
		;
connectAttr "GenericMesh2_2RN.phl[155]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[898].dn"
		;
connectAttr "GenericMesh2_2RN.phl[156]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[899].dn"
		;
connectAttr "GenericMesh2_2RN.phl[157]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[900].dn"
		;
connectAttr "GenericMesh2_2RN.phl[158]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[906].dn"
		;
connectAttr "GenericMesh2_2RN.phl[159]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[907].dn"
		;
connectAttr "GenericMesh2_2RN.phl[160]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[908].dn"
		;
connectAttr "GenericMesh2_2RN.phl[161]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[803].dn"
		;
connectAttr "GenericMesh2_2RN.phl[162]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[804].dn"
		;
connectAttr "GenericMesh2_2RN.phl[163]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[805].dn"
		;
connectAttr "GenericMesh2_2RN.phl[164]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[806].dn"
		;
connectAttr "GenericMesh2_2RN.phl[165]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[200].dn"
		;
connectAttr "GenericMesh2_2RN.phl[166]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[909].dn"
		;
connectAttr "GenericMesh2_2RN.phl[167]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[269].dn"
		;
connectAttr "GenericMesh2_2RN.phl[168]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[468].dn"
		;
connectAttr "GenericMesh2_2RN.phl[169]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[469].dn"
		;
connectAttr "GenericMesh2_2RN.phl[170]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[470].dn"
		;
connectAttr "GenericMesh2_2RN.phl[171]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[471].dn"
		;
connectAttr "GenericMesh2_2RN.phl[172]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[472].dn"
		;
connectAttr "GenericMesh2_2RN.phl[173]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[473].dn"
		;
connectAttr "GenericMesh2_2RN.phl[174]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[474].dn"
		;
connectAttr "GenericMesh2_2RN.phl[175]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[475].dn"
		;
connectAttr "GenericMesh2_2RN.phl[176]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[476].dn"
		;
connectAttr "GenericMesh2_2RN.phl[177]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[477].dn"
		;
connectAttr "GenericMesh2_2RN.phl[178]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[478].dn"
		;
connectAttr "GenericMesh2_2RN.phl[179]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[479].dn"
		;
connectAttr "GenericMesh2_2RN.phl[180]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[480].dn"
		;
connectAttr "GenericMesh2_2RN.phl[181]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[481].dn"
		;
connectAttr "GenericMesh2_2RN.phl[182]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[482].dn"
		;
connectAttr "GenericMesh2_2RN.phl[183]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[483].dn"
		;
connectAttr "GenericMesh2_2RN.phl[184]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[484].dn"
		;
connectAttr "GenericMesh2_2RN.phl[185]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[485].dn"
		;
connectAttr "GenericMesh2_2RN.phl[186]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[486].dn"
		;
connectAttr "GenericMesh2_2RN.phl[187]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[487].dn"
		;
connectAttr "GenericMesh2_2RN.phl[188]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[488].dn"
		;
connectAttr "GenericMesh2_2RN.phl[189]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[807].dn"
		;
connectAttr "GenericMesh2_2RN.phl[190]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[808].dn"
		;
connectAttr "GenericMesh2_2RN.phl[191]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[809].dn"
		;
connectAttr "GenericMesh2_2RN.phl[192]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[810].dn"
		;
connectAttr "GenericMesh2_2RN.phl[193]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[811].dn"
		;
connectAttr "GenericMesh2_2RN.phl[194]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[812].dn"
		;
connectAttr "GenericMesh2_2RN.phl[195]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[813].dn"
		;
connectAttr "GenericMesh2_2RN.phl[196]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[814].dn"
		;
connectAttr "GenericMesh2_2RN.phl[197]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[815].dn"
		;
connectAttr "GenericMesh2_2RN.phl[198]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[816].dn"
		;
connectAttr "GenericMesh2_2RN.phl[199]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[817].dn"
		;
connectAttr "GenericMesh2_2RN.phl[200]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[818].dn"
		;
connectAttr "GenericMesh2_2RN.phl[201]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[602].dn"
		;
connectAttr "GenericMesh2_2RN.phl[202]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[603].dn"
		;
connectAttr "GenericMesh2_2RN.phl[203]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[632].dn"
		;
connectAttr "GenericMesh2_2RN.phl[204]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[633].dn"
		;
connectAttr "GenericMesh2_2RN.phl[205]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[634].dn"
		;
connectAttr "GenericMesh2_2RN.phl[206]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[635].dn"
		;
connectAttr "GenericMesh2_2RN.phl[207]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[636].dn"
		;
connectAttr "GenericMesh2_2RN.phl[208]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[637].dn"
		;
connectAttr "GenericMesh2_2RN.phl[209]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[638].dn"
		;
connectAttr "GenericMesh2_2RN.phl[210]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[639].dn"
		;
connectAttr "GenericMesh2_2RN.phl[211]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[640].dn"
		;
connectAttr "GenericMesh2_2RN.phl[212]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[641].dn"
		;
connectAttr "GenericMesh2_2RN.phl[213]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[607].dn"
		;
connectAttr "GenericMesh2_2RN.phl[214]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[608].dn"
		;
connectAttr "GenericMesh2_2RN.phl[215]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[628].dn"
		;
connectAttr "GenericMesh2_2RN.phl[216]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[629].dn"
		;
connectAttr "GenericMesh2_2RN.phl[217]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[630].dn"
		;
connectAttr "GenericMesh2_2RN.phl[218]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[631].dn"
		;
connectAttr "GenericMesh2_2RN.phl[219]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[619].dn"
		;
connectAttr "GenericMesh2_2RN.phl[220]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[620].dn"
		;
connectAttr "GenericMesh2_2RN.phl[221]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[621].dn"
		;
connectAttr "GenericMesh2_2RN.phl[222]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[622].dn"
		;
connectAttr "GenericMesh2_2RN.phl[223]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[623].dn"
		;
connectAttr "GenericMesh2_2RN.phl[224]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[489].dn"
		;
connectAttr "GenericMesh2_2RN.phl[225]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[246].dn"
		;
connectAttr "GenericMesh2_2RN.phl[226]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[490].dn"
		;
connectAttr "GenericMesh2_2RN.phl[227]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[491].dn"
		;
connectAttr "GenericMesh2_2RN.phl[228]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[452].dn"
		;
connectAttr "GenericMesh2_2RN.phl[229]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[453].dn"
		;
connectAttr "GenericMesh2_2RN.phl[230]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[624].dn"
		;
connectAttr "GenericMesh2_2RN.phl[231]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[625].dn"
		;
connectAttr "GenericMesh2_2RN.phl[232]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[626].dn"
		;
connectAttr "GenericMesh2_2RN.phl[233]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[627].dn"
		;
connectAttr "GenericMesh2_2RN.phl[234]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[643].dn"
		;
connectAttr "GenericMesh2_2RN.phl[235]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[644].dn"
		;
connectAttr "GenericMesh2_2RN.phl[236]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[615].dn"
		;
connectAttr "GenericMesh2_2RN.phl[237]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[616].dn"
		;
connectAttr "GenericMesh2_2RN.phl[238]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[617].dn"
		;
connectAttr "GenericMesh2_2RN.phl[239]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[618].dn"
		;
connectAttr "GenericMesh2_2RN.phl[240]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[742].dn"
		;
connectAttr "GenericMesh2_2RN.phl[241]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[743].dn"
		;
connectAttr "GenericMesh2_2RN.phl[242]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[744].dn"
		;
connectAttr "GenericMesh2_2RN.phl[243]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[745].dn"
		;
connectAttr "GenericMesh2_2RN.phl[244]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[746].dn"
		;
connectAttr "GenericMesh2_2RN.phl[245]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[747].dn"
		;
connectAttr "GenericMesh2_2RN.phl[246]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[748].dn"
		;
connectAttr "GenericMesh2_2RN.phl[247]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[384].dn"
		;
connectAttr "GenericMesh2_2RN.phl[248]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[385].dn"
		;
connectAttr "GenericMesh2_2RN.phl[249]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[386].dn"
		;
connectAttr "GenericMesh2_2RN.phl[250]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[387].dn"
		;
connectAttr "GenericMesh2_2RN.phl[251]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[388].dn"
		;
connectAttr "GenericMesh2_2RN.phl[252]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[389].dn"
		;
connectAttr "GenericMesh2_2RN.phl[253]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[390].dn"
		;
connectAttr "GenericMesh2_2RN.phl[254]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[391].dn"
		;
connectAttr "GenericMesh2_2RN.phl[255]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[392].dn"
		;
connectAttr "GenericMesh2_2RN.phl[256]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[393].dn"
		;
connectAttr "GenericMesh2_2RN.phl[257]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[394].dn"
		;
connectAttr "GenericMesh2_2RN.phl[258]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[395].dn"
		;
connectAttr "GenericMesh2_2RN.phl[259]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[396].dn"
		;
connectAttr "GenericMesh2_2RN.phl[260]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[397].dn"
		;
connectAttr "GenericMesh2_2RN.phl[261]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[398].dn"
		;
connectAttr "GenericMesh2_2RN.phl[262]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[399].dn"
		;
connectAttr "GenericMesh2_2RN.phl[263]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[400].dn"
		;
connectAttr "GenericMesh2_2RN.phl[264]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[401].dn"
		;
connectAttr "GenericMesh2_2RN.phl[265]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[402].dn"
		;
connectAttr "GenericMesh2_2RN.phl[266]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[403].dn"
		;
connectAttr "GenericMesh2_2RN.phl[267]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[454].dn"
		;
connectAttr "GenericMesh2_2RN.phl[268]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[455].dn"
		;
connectAttr "GenericMesh2_2RN.phl[269]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[462].dn"
		;
connectAttr "GenericMesh2_2RN.phl[270]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[461].dn"
		;
connectAttr "GenericMesh2_2RN.phl[271]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[456].dn"
		;
connectAttr "GenericMesh2_2RN.phl[272]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[446].dn"
		;
connectAttr "GenericMesh2_2RN.phl[273]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[447].dn"
		;
connectAttr "GenericMesh2_2RN.phl[274]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[460].dn"
		;
connectAttr "GenericMesh2_2RN.phl[275]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[497].dn"
		;
connectAttr "GenericMesh2_2RN.phl[276]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[247].dn"
		;
connectAttr "GenericMesh2_2RN.phl[277]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[248].dn"
		;
connectAttr "GenericMesh2_2RN.phl[278]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[930].dn"
		;
connectAttr "GenericMesh2_2RN.phl[279]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[749].dn"
		;
connectAttr "GenericMesh2_2RN.phl[280]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[750].dn"
		;
connectAttr "GenericMesh2_2RN.phl[281]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[751].dn"
		;
connectAttr "GenericMesh2_2RN.phl[282]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "GenericMesh2_2RN.phl[283]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[404].dn"
		;
connectAttr "GenericMesh2_2RN.phl[284]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[405].dn"
		;
connectAttr "GenericMesh2_2RN.phl[285]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[406].dn"
		;
connectAttr "GenericMesh2_2RN.phl[286]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[407].dn"
		;
connectAttr "GenericMesh2_2RN.phl[287]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[408].dn"
		;
connectAttr "GenericMesh2_2RN.phl[288]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[409].dn"
		;
connectAttr "GenericMesh2_2RN.phl[289]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[410].dn"
		;
connectAttr "GenericMesh2_2RN.phl[290]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[411].dn"
		;
connectAttr "GenericMesh2_2RN.phl[291]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[412].dn"
		;
connectAttr "GenericMesh2_2RN.phl[292]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[413].dn"
		;
connectAttr "GenericMesh2_2RN.phl[293]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[862].dn"
		;
connectAttr "GenericMesh2_2RN.phl[294]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[863].dn"
		;
connectAttr "GenericMesh2_2RN.phl[295]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[859].dn"
		;
connectAttr "GenericMesh2_2RN.phl[296]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[860].dn"
		;
connectAttr "GenericMesh2_2RN.phl[297]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[867].dn"
		;
connectAttr "GenericMesh2_2RN.phl[298]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[870].dn"
		;
connectAttr "GenericMesh2_2RN.phl[299]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[871].dn"
		;
connectAttr "GenericMesh2_2RN.phl[300]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[872].dn"
		;
connectAttr "GenericMesh2_2RN.phl[301]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[873].dn"
		;
connectAttr "GenericMesh2_2RN.phl[302]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[874].dn"
		;
connectAttr "GenericMesh2_2RN.phl[303]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[875].dn"
		;
connectAttr "GenericMesh2_2RN.phl[304]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[876].dn"
		;
connectAttr "GenericMesh2_2RN.phl[305]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[877].dn"
		;
connectAttr "GenericMesh2_2RN.phl[306]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[878].dn"
		;
connectAttr "GenericMesh2_2RN.phl[307]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[879].dn"
		;
connectAttr "GenericMesh2_2RN.phl[308]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[880].dn"
		;
connectAttr "GenericMesh2_2RN.phl[309]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[881].dn"
		;
connectAttr "GenericMesh2_2RN.phl[310]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[931].dn"
		;
connectAttr "GenericMesh2_2RN.phl[311]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[249].dn"
		;
connectAttr "GenericMesh2_2RN.phl[312]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[250].dn"
		;
connectAttr "GenericMesh2_2RN.phl[313]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[498].dn"
		;
connectAttr "GenericMesh2_2RN.phl[314]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[752].dn"
		;
connectAttr "GenericMesh2_2RN.phl[315]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[753].dn"
		;
connectAttr "GenericMesh2_2RN.phl[316]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[754].dn"
		;
connectAttr "GenericMesh2_2RN.phl[317]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[755].dn"
		;
connectAttr "GenericMesh2_2RN.phl[318]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[756].dn"
		;
connectAttr "GenericMesh2_2RN.phl[319]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[757].dn"
		;
connectAttr "GenericMesh2_2RN.phl[320]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[758].dn"
		;
connectAttr "GenericMesh2_2RN.phl[321]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[759].dn"
		;
connectAttr "GenericMesh2_2RN.phl[322]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[760].dn"
		;
connectAttr "GenericMesh2_2RN.phl[323]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[761].dn"
		;
connectAttr "GenericMesh2_2RN.phl[324]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[762].dn"
		;
connectAttr "GenericMesh2_2RN.phl[325]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[601].dn"
		;
connectAttr "GenericMesh2_2RN.phl[326]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[763].dn"
		;
connectAttr "GenericMesh2_2RN.phl[327]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[736].dn"
		;
connectAttr "GenericMesh2_2RN.phl[328]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[737].dn"
		;
connectAttr "GenericMesh2_2RN.phl[329]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[738].dn"
		;
connectAttr "GenericMesh2_2RN.phl[330]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[739].dn"
		;
connectAttr "GenericMesh2_2RN.phl[331]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[740].dn"
		;
connectAttr "GenericMesh2_2RN.phl[332]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[741].dn"
		;
connectAttr "GenericMesh2_2RN.phl[333]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[819].dn"
		;
connectAttr "GenericMesh2_2RN.phl[334]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[820].dn"
		;
connectAttr "GenericMesh2_2RN.phl[335]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "GenericMesh2_2RN.phl[336]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "GenericMesh2_2RN.phl[337]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "GenericMesh2_2RN.phl[338]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "GenericMesh2_2RN.phl[339]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[414].dn"
		;
connectAttr "GenericMesh2_2RN.phl[340]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[415].dn"
		;
connectAttr "GenericMesh2_2RN.phl[341]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[416].dn"
		;
connectAttr "GenericMesh2_2RN.phl[342]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[417].dn"
		;
connectAttr "GenericMesh2_2RN.phl[343]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[821].dn"
		;
connectAttr "GenericMesh2_2RN.phl[344]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[822].dn"
		;
connectAttr "GenericMesh2_2RN.phl[345]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[823].dn"
		;
connectAttr "GenericMesh2_2RN.phl[346]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[824].dn"
		;
connectAttr "GenericMesh2_2RN.phl[347]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[825].dn"
		;
connectAttr "GenericMesh2_2RN.phl[348]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[826].dn"
		;
connectAttr "GenericMesh2_2RN.phl[349]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[827].dn"
		;
connectAttr "GenericMesh2_2RN.phl[350]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[828].dn"
		;
connectAttr "GenericMesh2_2RN.phl[351]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[829].dn"
		;
connectAttr "GenericMesh2_2RN.phl[352]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[830].dn"
		;
connectAttr "GenericMesh2_2RN.phl[353]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[831].dn"
		;
connectAttr "GenericMesh2_2RN.phl[354]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[832].dn"
		;
connectAttr "GenericMesh2_2RN.phl[355]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[833].dn"
		;
connectAttr "GenericMesh2_2RN.phl[356]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[834].dn"
		;
connectAttr "GenericMesh2_2RN.phl[357]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[835].dn"
		;
connectAttr "GenericMesh2_2RN.phl[358]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[836].dn"
		;
connectAttr "GenericMesh2_2RN.phl[359]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[837].dn"
		;
connectAttr "GenericMesh2_2RN.phl[360]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[838].dn"
		;
connectAttr "GenericMesh2_2RN.phl[361]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[773].dn"
		;
connectAttr "GenericMesh2_2RN.phl[362]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[774].dn"
		;
connectAttr "GenericMesh2_2RN.phl[363]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[775].dn"
		;
connectAttr "GenericMesh2_2RN.phl[364]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[776].dn"
		;
connectAttr "GenericMesh2_2RN.phl[365]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[777].dn"
		;
connectAttr "GenericMesh2_2RN.phl[366]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[778].dn"
		;
connectAttr "GenericMesh2_2RN.phl[367]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[779].dn"
		;
connectAttr "GenericMesh2_2RN.phl[368]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[780].dn"
		;
connectAttr "GenericMesh2_2RN.phl[369]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[781].dn"
		;
connectAttr "GenericMesh2_2RN.phl[370]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[764].dn"
		;
connectAttr "GenericMesh2_2RN.phl[371]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[765].dn"
		;
connectAttr "GenericMesh2_2RN.phl[372]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[766].dn"
		;
connectAttr "GenericMesh2_2RN.phl[373]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[767].dn"
		;
connectAttr "GenericMesh2_2RN.phl[374]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[499].dn"
		;
connectAttr "GenericMesh2_2RN.phl[375]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[500].dn"
		;
connectAttr "GenericMesh2_2RN.phl[376]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[501].dn"
		;
connectAttr "GenericMesh2_2RN.phl[377]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[457].dn"
		;
connectAttr "GenericMesh2_2RN.phl[378]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[458].dn"
		;
connectAttr "GenericMesh2_2RN.phl[379]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[459].dn"
		;
connectAttr "GenericMesh2_2RN.phl[380]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[449].dn"
		;
connectAttr "GenericMesh2_2RN.phl[381]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[450].dn"
		;
connectAttr "GenericMesh2_2RN.phl[382]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[451].dn"
		;
connectAttr "GenericMesh2_2RN.phl[383]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[495].dn"
		;
connectAttr "GenericMesh2_2RN.phl[384]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[448].dn"
		;
connectAttr "GenericMesh2_2RN.phl[385]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[496].dn"
		;
connectAttr "GenericMesh2_2RN.phl[386]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[510].dn"
		;
connectAttr "GenericMesh2_2RN.phl[387]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[511].dn"
		;
connectAttr "GenericMesh2_2RN.phl[388]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[251].dn"
		;
connectAttr "GenericMesh2_2RN.phl[389]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[252].dn"
		;
connectAttr "GenericMesh2_2RN.phl[390]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[253].dn"
		;
connectAttr "GenericMesh2_2RN.phl[391]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[254].dn"
		;
connectAttr "GenericMesh2_2RN.phl[392]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[418].dn"
		;
connectAttr "GenericMesh2_2RN.phl[393]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[668].dn"
		;
connectAttr "GenericMesh2_2RN.phl[394]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[669].dn"
		;
connectAttr "GenericMesh2_2RN.phl[395]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[670].dn"
		;
connectAttr "GenericMesh2_2RN.phl[396]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[671].dn"
		;
connectAttr "GenericMesh2_2RN.phl[397]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[672].dn"
		;
connectAttr "GenericMesh2_2RN.phl[398]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[661].dn"
		;
connectAttr "GenericMesh2_2RN.phl[399]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[673].dn"
		;
connectAttr "GenericMesh2_2RN.phl[400]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[662].dn"
		;
connectAttr "GenericMesh2_2RN.phl[401]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[663].dn"
		;
connectAttr "GenericMesh2_2RN.phl[402]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[664].dn"
		;
connectAttr "GenericMesh2_2RN.phl[403]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[665].dn"
		;
connectAttr "GenericMesh2_2RN.phl[404]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[666].dn"
		;
connectAttr "GenericMesh2_2RN.phl[405]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[667].dn"
		;
connectAttr "GenericMesh2_2RN.phl[406]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[771].dn"
		;
connectAttr "GenericMesh2_2RN.phl[407]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[772].dn"
		;
connectAttr "GenericMesh2_2RN.phl[408]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[645].dn"
		;
connectAttr "GenericMesh2_2RN.phl[409]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[646].dn"
		;
connectAttr "GenericMesh2_2RN.phl[410]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[647].dn"
		;
connectAttr "GenericMesh2_2RN.phl[411]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[648].dn"
		;
connectAttr "GenericMesh2_2RN.phl[412]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[649].dn"
		;
connectAttr "GenericMesh2_2RN.phl[413]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[650].dn"
		;
connectAttr "GenericMesh2_2RN.phl[414]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[651].dn"
		;
connectAttr "GenericMesh2_2RN.phl[415]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[652].dn"
		;
connectAttr "GenericMesh2_2RN.phl[416]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[653].dn"
		;
connectAttr "GenericMesh2_2RN.phl[417]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[654].dn"
		;
connectAttr "GenericMesh2_2RN.phl[418]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[655].dn"
		;
connectAttr "GenericMesh2_2RN.phl[419]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[656].dn"
		;
connectAttr "GenericMesh2_2RN.phl[420]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[734].dn"
		;
connectAttr "GenericMesh2_2RN.phl[421]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[735].dn"
		;
connectAttr "GenericMesh2_2RN.phl[422]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[675].dn"
		;
connectAttr "GenericMesh2_2RN.phl[423]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[676].dn"
		;
connectAttr "GenericMesh2_2RN.phl[424]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[677].dn"
		;
connectAttr "GenericMesh2_2RN.phl[425]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[678].dn"
		;
connectAttr "GenericMesh2_2RN.phl[426]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[679].dn"
		;
connectAttr "GenericMesh2_2RN.phl[427]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[680].dn"
		;
connectAttr "GenericMesh2_2RN.phl[428]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[681].dn"
		;
connectAttr "GenericMesh2_2RN.phl[429]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[682].dn"
		;
connectAttr "GenericMesh2_2RN.phl[430]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[882].dn"
		;
connectAttr "GenericMesh2_2RN.phl[431]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[883].dn"
		;
connectAttr "GenericMesh2_2RN.phl[432]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[884].dn"
		;
connectAttr "GenericMesh2_2RN.phl[433]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[885].dn"
		;
connectAttr "GenericMesh2_2RN.phl[434]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[180].dn"
		;
connectAttr "GenericMesh2_2RN.phl[435]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[181].dn"
		;
connectAttr "GenericMesh2_2RN.phl[436]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[182].dn"
		;
connectAttr "GenericMesh2_2RN.phl[437]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[183].dn"
		;
connectAttr "GenericMesh2_2RN.phl[438]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[184].dn"
		;
connectAttr "GenericMesh2_2RN.phl[439]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[185].dn"
		;
connectAttr "GenericMesh2_2RN.phl[440]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[149].dn"
		;
connectAttr "GenericMesh2_2RN.phl[441]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[192].dn"
		;
connectAttr "GenericMesh2_2RN.phl[442]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[193].dn"
		;
connectAttr "GenericMesh2_2RN.phl[443]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[512].dn"
		;
connectAttr "GenericMesh2_2RN.phl[444]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "GenericMesh2_2RN.phl[445]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[928].dn"
		;
connectAttr "GenericMesh2_2RN.phl[446]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[929].dn"
		;
connectAttr "GenericMesh2_2RN.phl[447]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[492].dn"
		;
connectAttr "GenericMesh2_2RN.phl[448]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[493].dn"
		;
connectAttr "GenericMesh2_2RN.phl[449]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[494].dn"
		;
connectAttr "GenericMesh2_2RN.phl[450]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "GenericMesh2_2RN.phl[451]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "GenericMesh2_2RN.phl[452]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "GenericMesh2_2RN.phl[453]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "GenericMesh2_2RN.phl[454]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "GenericMesh2_2RN.phl[455]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[194].dn"
		;
connectAttr "GenericMesh2_2RN.phl[456]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[419].dn"
		;
connectAttr "GenericMesh2_2RN.phl[457]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[420].dn"
		;
connectAttr "GenericMesh2_2RN.phl[458]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[683].dn"
		;
connectAttr "GenericMesh2_2RN.phl[459]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[684].dn"
		;
connectAttr "GenericMesh2_2RN.phl[460]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[255].dn"
		;
connectAttr "GenericMesh2_2RN.phl[461]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[685].dn"
		;
connectAttr "GenericMesh2_2RN.phl[462]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[686].dn"
		;
connectAttr "GenericMesh2_2RN.phl[463]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[687].dn"
		;
connectAttr "GenericMesh2_2RN.phl[464]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "GenericMesh2_2RN.phl[465]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "GenericMesh2_2RN.phl[466]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "GenericMesh2_2RN.phl[467]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "GenericMesh2_2RN.phl[468]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "GenericMesh2_2RN.phl[469]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "GenericMesh2_2RN.phl[470]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "GenericMesh2_2RN.phl[471]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "GenericMesh2_2RN.phl[472]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "GenericMesh2_2RN.phl[473]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "GenericMesh2_2RN.phl[474]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[688].dn"
		;
connectAttr "GenericMesh2_2RN.phl[475]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[195].dn"
		;
connectAttr "GenericMesh2_2RN.phl[476]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[503].dn"
		;
connectAttr "GenericMesh2_2RN.phl[477]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[421].dn"
		;
connectAttr "GenericMesh2_2RN.phl[478]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[422].dn"
		;
connectAttr "GenericMesh2_2RN.phl[479]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[423].dn"
		;
connectAttr "GenericMesh2_2RN.phl[480]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[424].dn"
		;
connectAttr "GenericMesh2_2RN.phl[481]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[425].dn"
		;
connectAttr "GenericMesh2_2RN.phl[482]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[196].dn"
		;
connectAttr "GenericMesh2_2RN.phl[483]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[186].dn"
		;
connectAttr "GenericMesh2_2RN.phl[484]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[188].dn"
		;
connectAttr "GenericMesh2_2RN.phl[485]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[189].dn"
		;
connectAttr "GenericMesh2_2RN.phl[486]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[190].dn"
		;
connectAttr "GenericMesh2_2RN.phl[487]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[191].dn"
		;
connectAttr "GenericMesh2_2RN.phl[488]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[141].dn"
		;
connectAttr "GenericMesh2_2RN.phl[489]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[142].dn"
		;
connectAttr "GenericMesh2_2RN.phl[490]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[504].dn"
		;
connectAttr "GenericMesh2_2RN.phl[491]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[505].dn"
		;
connectAttr "GenericMesh2_2RN.phl[492]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[143].dn"
		;
connectAttr "GenericMesh2_2RN.phl[493]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[144].dn"
		;
connectAttr "GenericMesh2_2RN.phl[494]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[145].dn"
		;
connectAttr "GenericMesh2_2RN.phl[495]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[146].dn"
		;
connectAttr "GenericMesh2_2RN.phl[496]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[147].dn"
		;
connectAttr "GenericMesh2_2RN.phl[497]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[148].dn"
		;
connectAttr "GenericMesh2_2RN.phl[498]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[150].dn"
		;
connectAttr "GenericMesh2_2RN.phl[499]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[151].dn"
		;
connectAttr "GenericMesh2_2RN.phl[500]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[426].dn"
		;
connectAttr "GenericMesh2_2RN.phl[501]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[427].dn"
		;
connectAttr "GenericMesh2_2RN.phl[502]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[428].dn"
		;
connectAttr "GenericMesh2_2RN.phl[503]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[689].dn"
		;
connectAttr "GenericMesh2_2RN.phl[504]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[690].dn"
		;
connectAttr "GenericMesh2_2RN.phl[505]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[691].dn"
		;
connectAttr "GenericMesh2_2RN.phl[506]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[692].dn"
		;
connectAttr "GenericMesh2_2RN.phl[507]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[693].dn"
		;
connectAttr "GenericMesh2_2RN.phl[508]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[694].dn"
		;
connectAttr "GenericMesh2_2RN.phl[509]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[695].dn"
		;
connectAttr "GenericMesh2_2RN.phl[510]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[696].dn"
		;
connectAttr "GenericMesh2_2RN.phl[511]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[697].dn"
		;
connectAttr "GenericMesh2_2RN.phl[512]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[698].dn"
		;
connectAttr "GenericMesh2_2RN.phl[513]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[699].dn"
		;
connectAttr "GenericMesh2_2RN.phl[514]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[700].dn"
		;
connectAttr "GenericMesh2_2RN.phl[515]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[701].dn"
		;
connectAttr "GenericMesh2_2RN.phl[516]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[702].dn"
		;
connectAttr "GenericMesh2_2RN.phl[517]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[703].dn"
		;
connectAttr "GenericMesh2_2RN.phl[518]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[704].dn"
		;
connectAttr "GenericMesh2_2RN.phl[519]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[705].dn"
		;
connectAttr "GenericMesh2_2RN.phl[520]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[706].dn"
		;
connectAttr "GenericMesh2_2RN.phl[521]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[707].dn"
		;
connectAttr "GenericMesh2_2RN.phl[522]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[708].dn"
		;
connectAttr "GenericMesh2_2RN.phl[523]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[709].dn"
		;
connectAttr "GenericMesh2_2RN.phl[524]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[710].dn"
		;
connectAttr "GenericMesh2_2RN.phl[525]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[711].dn"
		;
connectAttr "GenericMesh2_2RN.phl[526]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[712].dn"
		;
connectAttr "GenericMesh2_2RN.phl[527]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[713].dn"
		;
connectAttr "GenericMesh2_2RN.phl[528]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[506].dn"
		;
connectAttr "GenericMesh2_2RN.phl[529]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[507].dn"
		;
connectAttr "GenericMesh2_2RN.phl[530]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[508].dn"
		;
connectAttr "GenericMesh2_2RN.phl[531]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[714].dn"
		;
connectAttr "GenericMesh2_2RN.phl[532]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[715].dn"
		;
connectAttr "GenericMesh2_2RN.phl[533]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[716].dn"
		;
connectAttr "GenericMesh2_2RN.phl[534]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[717].dn"
		;
connectAttr "GenericMesh2_2RN.phl[535]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[718].dn"
		;
connectAttr "GenericMesh2_2RN.phl[536]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[719].dn"
		;
connectAttr "GenericMesh2_2RN.phl[537]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[720].dn"
		;
connectAttr "GenericMesh2_2RN.phl[538]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[721].dn"
		;
connectAttr "GenericMesh2_2RN.phl[539]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[722].dn"
		;
connectAttr "GenericMesh2_2RN.phl[540]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[723].dn"
		;
connectAttr "GenericMesh2_2RN.phl[541]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[725].dn"
		;
connectAttr "GenericMesh2_2RN.phl[542]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[726].dn"
		;
connectAttr "GenericMesh2_2RN.phl[543]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[727].dn"
		;
connectAttr "GenericMesh2_2RN.phl[544]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "GenericMesh2_2RN.phl[545]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "GenericMesh2_2RN.phl[546]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "GenericMesh2_2RN.phl[547]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "GenericMesh2_2RN.phl[548]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "GenericMesh2_2RN.phl[549]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[429].dn"
		;
connectAttr "GenericMesh2_2RN.phl[550]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[430].dn"
		;
connectAttr "GenericMesh2_2RN.phl[551]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[431].dn"
		;
connectAttr "GenericMesh2_2RN.phl[552]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[432].dn"
		;
connectAttr "GenericMesh2_2RN.phl[553]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[728].dn"
		;
connectAttr "GenericMesh2_2RN.phl[554]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[729].dn"
		;
connectAttr "GenericMesh2_2RN.phl[555]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[730].dn"
		;
connectAttr "GenericMesh2_2RN.phl[556]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[731].dn"
		;
connectAttr "GenericMesh2_2RN.phl[557]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[732].dn"
		;
connectAttr "GenericMesh2_2RN.phl[558]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[733].dn"
		;
connectAttr "GenericMesh2_2RN.phl[559]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[768].dn"
		;
connectAttr "GenericMesh2_2RN.phl[560]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[769].dn"
		;
connectAttr "GenericMesh2_2RN.phl[561]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[770].dn"
		;
connectAttr "GenericMesh2_2RN.phl[562]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[604].dn"
		;
connectAttr "GenericMesh2_2RN.phl[563]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[605].dn"
		;
connectAttr "GenericMesh2_2RN.phl[564]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "GenericMesh2_2RN.phl[565]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "GenericMesh2_2RN.phl[566]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "GenericMesh2_2RN.phl[567]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "GenericMesh2_2RN.phl[568]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[513].dn"
		;
connectAttr "GenericMesh2_2RN.phl[569]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[514].dn"
		;
connectAttr "GenericMesh2_2RN.phl[570]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[515].dn"
		;
connectAttr "GenericMesh2_2RN.phl[571]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[516].dn"
		;
connectAttr "GenericMesh2_2RN.phl[572]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[517].dn"
		;
connectAttr "GenericMesh2_2RN.phl[573]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[518].dn"
		;
connectAttr "GenericMesh2_2RN.phl[574]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[519].dn"
		;
connectAttr "GenericMesh2_2RN.phl[575]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[520].dn"
		;
connectAttr "GenericMesh2_2RN.phl[576]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[521].dn"
		;
connectAttr "GenericMesh2_2RN.phl[577]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[522].dn"
		;
connectAttr "GenericMesh2_2RN.phl[578]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[523].dn"
		;
connectAttr "GenericMesh2_2RN.phl[579]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[524].dn"
		;
connectAttr "GenericMesh2_2RN.phl[580]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[525].dn"
		;
connectAttr "GenericMesh2_2RN.phl[581]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[526].dn"
		;
connectAttr "GenericMesh2_2RN.phl[582]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[527].dn"
		;
connectAttr "GenericMesh2_2RN.phl[583]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[528].dn"
		;
connectAttr "GenericMesh2_2RN.phl[584]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[529].dn"
		;
connectAttr "GenericMesh2_2RN.phl[585]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[530].dn"
		;
connectAttr "GenericMesh2_2RN.phl[586]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[531].dn"
		;
connectAttr "GenericMesh2_2RN.phl[587]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[532].dn"
		;
connectAttr "GenericMesh2_2RN.phl[588]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[606].dn"
		;
connectAttr "GenericMesh2_2RN.phl[589]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[609].dn"
		;
connectAttr "GenericMesh2_2RN.phl[590]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[610].dn"
		;
connectAttr "GenericMesh2_2RN.phl[591]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[611].dn"
		;
connectAttr "GenericMesh2_2RN.phl[592]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[612].dn"
		;
connectAttr "GenericMesh2_2RN.phl[593]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[613].dn"
		;
connectAttr "GenericMesh2_2RN.phl[594]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[614].dn"
		;
connectAttr "GenericMesh2_2RN.phl[595]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[657].dn"
		;
connectAttr "GenericMesh2_2RN.phl[596]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[658].dn"
		;
connectAttr "GenericMesh2_2RN.phl[597]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[659].dn"
		;
connectAttr "GenericMesh2_2RN.phl[598]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[660].dn"
		;
connectAttr "GenericMesh2_2RN.phl[599]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[674].dn"
		;
connectAttr "GenericMesh2_2RN.phl[600]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[568].dn"
		;
connectAttr "GenericMesh2_2RN.phl[601]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[256].dn"
		;
connectAttr "GenericMesh2_2RN.phl[602]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[257].dn"
		;
connectAttr "GenericMesh2_2RN.phl[603]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[569].dn"
		;
connectAttr "GenericMesh2_2RN.phl[604]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[509].dn"
		;
connectAttr "GenericMesh2_2RN.phl[605]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[258].dn"
		;
connectAttr "GenericMesh2_2RN.phl[606]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[259].dn"
		;
connectAttr "GenericMesh2_2RN.phl[607]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[260].dn"
		;
connectAttr "GenericMesh2_2RN.phl[608]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[261].dn"
		;
connectAttr "GenericMesh2_2RN.phl[609]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[262].dn"
		;
connectAttr "GenericMesh2_2RN.phl[610]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[263].dn"
		;
connectAttr "GenericMesh2_2RN.phl[611]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[264].dn"
		;
connectAttr "GenericMesh2_2RN.phl[612]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[433].dn"
		;
connectAttr "GenericMesh2_2RN.phl[613]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[570].dn"
		;
connectAttr "GenericMesh2_2RN.phl[614]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[571].dn"
		;
connectAttr "GenericMesh2_2RN.phl[615]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[572].dn"
		;
connectAttr "GenericMesh2_2RN.phl[616]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[573].dn"
		;
connectAttr "GenericMesh2_2RN.phl[617]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[574].dn"
		;
connectAttr "GenericMesh2_2RN.phl[618]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[575].dn"
		;
connectAttr "GenericMesh2_2RN.phl[619]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[576].dn"
		;
connectAttr "GenericMesh2_2RN.phl[620]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[577].dn"
		;
connectAttr "GenericMesh2_2RN.phl[621]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[578].dn"
		;
connectAttr "GenericMesh2_2RN.phl[622]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[579].dn"
		;
connectAttr "GenericMesh2_2RN.phl[623]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[580].dn"
		;
connectAttr "GenericMesh2_2RN.phl[624]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[581].dn"
		;
connectAttr "GenericMesh2_2RN.phl[625]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[582].dn"
		;
connectAttr "GenericMesh2_2RN.phl[626]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[583].dn"
		;
connectAttr "GenericMesh2_2RN.phl[627]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[584].dn"
		;
connectAttr "GenericMesh2_2RN.phl[628]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[585].dn"
		;
connectAttr "GenericMesh2_2RN.phl[629]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[586].dn"
		;
connectAttr "GenericMesh2_2RN.phl[630]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[587].dn"
		;
connectAttr "GenericMesh2_2RN.phl[631]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[588].dn"
		;
connectAttr "GenericMesh2_2RN.phl[632]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[724].dn"
		;
connectAttr "GenericMesh2_2RN.phl[633]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[265].dn"
		;
connectAttr "GenericMesh2_2RN.phl[634]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[434].dn"
		;
connectAttr "GenericMesh2_2RN.phl[635]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[435].dn"
		;
connectAttr "GenericMesh2_2RN.phl[636]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[436].dn"
		;
connectAttr "GenericMesh2_2RN.phl[637]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[437].dn"
		;
connectAttr "GenericMesh2_2RN.phl[638]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[589].dn"
		;
connectAttr "GenericMesh2_2RN.phl[639]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[590].dn"
		;
connectAttr "GenericMesh2_2RN.phl[640]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[591].dn"
		;
connectAttr "GenericMesh2_2RN.phl[641]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[592].dn"
		;
connectAttr "GenericMesh2_2RN.phl[642]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[593].dn"
		;
connectAttr "GenericMesh2_2RN.phl[643]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[594].dn"
		;
connectAttr "GenericMesh2_2RN.phl[644]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[595].dn"
		;
connectAttr "GenericMesh2_2RN.phl[645]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[596].dn"
		;
connectAttr "GenericMesh2_2RN.phl[646]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[597].dn"
		;
connectAttr "GenericMesh2_2RN.phl[647]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[598].dn"
		;
connectAttr "GenericMesh2_2RN.phl[648]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[599].dn"
		;
connectAttr "GenericMesh2_2RN.phl[649]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[600].dn"
		;
connectAttr "GenericMesh2_2RN.phl[650]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[438].dn"
		;
connectAttr "GenericMesh2_2RN.phl[651]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[439].dn"
		;
connectAttr "GenericMesh2_2RN.phl[652]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[440].dn"
		;
connectAttr "GenericMesh2_2RN.phl[653]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[441].dn"
		;
connectAttr "GenericMesh2_2RN.phl[654]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[442].dn"
		;
connectAttr "GenericMesh2_2RN.phl[655]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[266].dn"
		;
connectAttr "GenericMesh2_2RN.phl[656]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[267].dn"
		;
connectAttr "GenericMesh2_2RN.phl[657]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[268].dn"
		;
connectAttr "Pelvis_J_CTRL.r" "Pelvis_J.r";
connectAttr "Joints.di" "Pelvis_J.do";
connectAttr "Pelvis_J.s" "Hips_J.is";
connectAttr "Hips_J_CTRL.r" "Hips_J.r";
connectAttr "Hips_J.s" "L_Hip_J.is";
connectAttr "L_Hip_J_CTRL.r" "L_Hip_J.r";
connectAttr "L_Hip_J.s" "L_Knee_J.is";
connectAttr "L_Knee_J_CTRL.r" "L_Knee_J.r";
connectAttr "L_Knee_J.s" "L_Ankle_J.is";
connectAttr "L_Ankle_J_CTRL.r" "L_Ankle_J.r";
connectAttr "L_Ankle_J.s" "L_Ball_J.is";
connectAttr "L_Ball_J_CTRL.r" "L_Ball_J.r";
connectAttr "Hips_J.s" "R_Hip_J.is";
connectAttr "R_Hip_J_CTRL.r" "R_Hip_J.r";
connectAttr "R_Hip_J.s" "R_Knee_J.is";
connectAttr "R_Knee_J_CTRL.r" "R_Knee_J.r";
connectAttr "R_Knee_J.s" "R_Ankle_J.is";
connectAttr "R_Ankle_J_CTRL.r" "R_Ankle_J.r";
connectAttr "R_Ankle_J.s" "R_Ball_J.is";
connectAttr "R_Ball_J_CTRL.r" "R_Ball_J.r";
connectAttr "Pelvis_J.s" "Spine_J_0.is";
connectAttr "Spine_J_0_CTRL.r" "Spine_J_0.r";
connectAttr "Spine_J_0.s" "Spine_J_.is";
connectAttr "Spine_J__CTRL.r" "Spine_J_.r";
connectAttr "Spine_J_.s" "Spine_J_2.is";
connectAttr "Spine_J_2_CTRL.r" "Spine_J_2.r";
connectAttr "Spine_J_2.s" "L_clav_J.is";
connectAttr "L_clav_J_CTRL.r" "L_clav_J.r";
connectAttr "L_clav_J.s" "L_shold_J.is";
connectAttr "L_shold_J_CTRL.r" "L_shold_J.r";
connectAttr "L_shold_J.s" "L_Elbow_J.is";
connectAttr "L_Elbow_J_CTRL.r" "L_Elbow_J.r";
connectAttr "L_Elbow_J.s" "L_Wrist_J.is";
connectAttr "L_Wrist_J_CTRL.r" "L_Wrist_J.r";
connectAttr "L_Wrist_J.s" "L_Thumb_J_0.is";
connectAttr "L_Thumb_J_0_CTRL.r" "L_Thumb_J_0.r";
connectAttr "L_Thumb_J_0.s" "L_Thumb_J_1.is";
connectAttr "L_Thumb_J_1_CTRL.r" "L_Thumb_J_1.r";
connectAttr "L_Thumb_J_1.s" "L_Thumb_J_2.is";
connectAttr "L_Thumb_J_2_CTRL.r" "L_Thumb_J_2.r";
connectAttr "L_Wrist_J.s" "L_Index_J_0.is";
connectAttr "L_Index_J_0_CTRL.r" "L_Index_J_0.r";
connectAttr "L_Index_J_0.s" "L_Index_J_1.is";
connectAttr "L_Index_J_1_CTRL.r" "L_Index_J_1.r";
connectAttr "L_Index_J_1.s" "L_Index_J_2.is";
connectAttr "L_Index_J_2_CTRL.r" "L_Index_J_2.r";
connectAttr "L_Wrist_J.s" "L_Middle_J_0.is";
connectAttr "L_Middle_J_0_CTRL.r" "L_Middle_J_0.r";
connectAttr "L_Middle_J_0.s" "L_Middle_J_1.is";
connectAttr "L_Middle_J_1_CTRL.r" "L_Middle_J_1.r";
connectAttr "L_Middle_J_1.s" "L_Middle_J_2.is";
connectAttr "L_Middle_J_2_CTRL.r" "L_Middle_J_2.r";
connectAttr "L_Wrist_J.s" "L_Ring_J_0.is";
connectAttr "L_Ring_J_0_CTRL.r" "L_Ring_J_0.r";
connectAttr "L_Ring_J_0.s" "L_Ring_J_1.is";
connectAttr "L_Ring_J_1_CTRL.r" "L_Ring_J_1.r";
connectAttr "L_Ring_J_1.s" "L_Ring_J_2.is";
connectAttr "L_Ring_J_2_CTRL.r" "L_Ring_J_2.r";
connectAttr "L_Wrist_J.s" "L_Pinky_J_0.is";
connectAttr "L_Pinky_J_0_CTRL.r" "L_Pinky_J_0.r";
connectAttr "L_Pinky_J_0.s" "L_Pinky_J_1.is";
connectAttr "L_Pinky_J_1_CTRL.r" "L_Pinky_J_1.r";
connectAttr "L_Pinky_J_1.s" "L_Pinky_J_2.is";
connectAttr "L_Pinky_J_2_CTRL.r" "L_Pinky_J_2.r";
connectAttr "Spine_J_2.s" "Neck_J_0.is";
connectAttr "Neck_J_0_CTRL.r" "Neck_J_0.r";
connectAttr "Neck_J_0.s" "Neck_J_1.is";
connectAttr "Neck_J_1_CTRL.r" "Neck_J_1.r";
connectAttr "Neck_J_1.s" "Head_J.is";
connectAttr "Head_J_CTRL.r" "Head_J.r";
connectAttr "Spine_J_2.s" "R_clav_J.is";
connectAttr "R_clav_J_CTRL.r" "R_clav_J.r";
connectAttr "R_clav_J.s" "R_shold_J.is";
connectAttr "R_shold_J_CTRL.r" "R_shold_J.r";
connectAttr "R_shold_J.s" "R_Elbow_J.is";
connectAttr "R_Elbow_J_CTRL.r" "R_Elbow_J.r";
connectAttr "R_Elbow_J.s" "R_Wrist_J.is";
connectAttr "R_Wrist_J_CTRL.r" "R_Wrist_J.r";
connectAttr "R_Wrist_J.s" "R_Thumb_J_0.is";
connectAttr "R_Thumb_J_0_CTRL.r" "R_Thumb_J_0.r";
connectAttr "R_Thumb_J_0.s" "R_Thumb_J_1.is";
connectAttr "R_Thumb_J_1_CTRL.r" "R_Thumb_J_1.r";
connectAttr "R_Thumb_J_1.s" "R_Thumb_J_2.is";
connectAttr "R_Thumb_J_2_CTRL.r" "R_Thumb_J_2.r";
connectAttr "R_Wrist_J.s" "R_Index_J_0.is";
connectAttr "R_Index_J_0_CTRL.r" "R_Index_J_0.r";
connectAttr "R_Index_J_0.s" "R_Index_J_1.is";
connectAttr "R_Index_J_1_CTRL.r" "R_Index_J_1.r";
connectAttr "R_Index_J_1.s" "R_Index_J_2.is";
connectAttr "R_Index_J_2_CTRL.r" "R_Index_J_2.r";
connectAttr "R_Wrist_J.s" "R_Middle_J_0.is";
connectAttr "R_Middle_J_0_CTRL.r" "R_Middle_J_0.r";
connectAttr "R_Middle_J_0.s" "R_Middle_J_1.is";
connectAttr "R_Middle_J_1_CTRL.r" "R_Middle_J_1.r";
connectAttr "R_Middle_J_1.s" "R_Middle_J_2.is";
connectAttr "R_Middle_J_2_CTRL.r" "R_Middle_J_2.r";
connectAttr "R_Wrist_J.s" "R_Ring_J_0.is";
connectAttr "R_Ring_J_0_CTRL.r" "R_Ring_J_0.r";
connectAttr "R_Ring_J_0.s" "R_Ring_J_1.is";
connectAttr "R_Ring_J_1_CTRL.r" "R_Ring_J_1.r";
connectAttr "R_Ring_J_1.s" "R_Ring_J_2.is";
connectAttr "R_Ring_J_2_CTRL.r" "R_Ring_J_2.r";
connectAttr "R_Wrist_J.s" "R_Pinky_J_0.is";
connectAttr "R_Pinky_J_0_CTRL.r" "R_Pinky_J_0.r";
connectAttr "R_Pinky_J_0.s" "R_Pinky_J_1.is";
connectAttr "R_Pinky_J_1_CTRL.r" "R_Pinky_J_1.r";
connectAttr "R_Pinky_J_1.s" "R_Pinky_J_2.is";
connectAttr "R_Pinky_J_2_CTRL.r" "R_Pinky_J_2.r";
connectAttr "Pelvis_J.jo" "Pelvis_J_GRP.r";
connectAttr "transformGeometry1.og" "Pelvis_J_CTRLShape.cr";
connectAttr "Hips_J.jo" "Hips_J_GRP.r";
connectAttr "transformGeometry2.og" "Hips_J_CTRLShape.cr";
connectAttr "L_Hip_J.jo" "L_Hip_J_GRP.r";
connectAttr "transformGeometry3.og" "L_Hip_J_CTRLShape.cr";
connectAttr "L_Knee_J.jo" "L_Knee_J_GRP.r";
connectAttr "transformGeometry4.og" "L_Knee_J_CTRLShape.cr";
connectAttr "L_Ankle_J.jo" "L_Ankle_J_GRP.r";
connectAttr "transformGeometry5.og" "L_Ankle_J_CTRLShape.cr";
connectAttr "L_Ball_J.jo" "L_Ball_J_GRP.r";
connectAttr "transformGeometry6.og" "L_Ball_J_CTRLShape.cr";
connectAttr "R_Hip_J.jo" "R_Hip_J_GRP.r";
connectAttr "transformGeometry7.og" "R_Hip_J_CTRLShape.cr";
connectAttr "R_Knee_J.jo" "R_Knee_J_GRP.r";
connectAttr "transformGeometry8.og" "R_Knee_J_CTRLShape.cr";
connectAttr "R_Ankle_J.jo" "R_Ankle_J_GRP.r";
connectAttr "transformGeometry9.og" "R_Ankle_J_CTRLShape.cr";
connectAttr "R_Ball_J.jo" "R_Ball_J_GRP.r";
connectAttr "transformGeometry10.og" "R_Ball_J_CTRLShape.cr";
connectAttr "Spine_J_0.jo" "Spine_J_0_GRP.r";
connectAttr "transformGeometry11.og" "Spine_J_0_CTRLShape.cr";
connectAttr "Spine_J_.jo" "Spine_J__GRP.r";
connectAttr "transformGeometry12.og" "Spine_J__CTRLShape.cr";
connectAttr "Spine_J_2.jo" "Spine_J_2_GRP.r";
connectAttr "transformGeometry13.og" "Spine_J_2_CTRLShape.cr";
connectAttr "L_clav_J.jo" "L_clav_J_GRP.r";
connectAttr "transformGeometry14.og" "L_clav_J_CTRLShape.cr";
connectAttr "L_shold_J.jo" "L_shold_J_GRP.r";
connectAttr "transformGeometry15.og" "L_shold_J_CTRLShape.cr";
connectAttr "L_Elbow_J.jo" "L_Elbow_J_GRP.r";
connectAttr "transformGeometry16.og" "L_Elbow_J_CTRLShape.cr";
connectAttr "L_Wrist_J.jo" "L_Wrist_J_GRP.r";
connectAttr "transformGeometry17.og" "L_Wrist_J_CTRLShape.cr";
connectAttr "L_Thumb_J_0.jo" "L_Thumb_J_0_GRP.r";
connectAttr "transformGeometry18.og" "L_Thumb_J_0_CTRLShape.cr";
connectAttr "L_Thumb_J_1.jo" "L_Thumb_J_1_GRP.r";
connectAttr "transformGeometry19.og" "L_Thumb_J_1_CTRLShape.cr";
connectAttr "L_Thumb_J_2.jo" "L_Thumb_J_2_GRP.r";
connectAttr "transformGeometry20.og" "L_Thumb_J_2_CTRLShape.cr";
connectAttr "L_Index_J_0.jo" "L_Index_J_0_GRP.r";
connectAttr "transformGeometry21.og" "L_Index_J_0_CTRLShape.cr";
connectAttr "L_Index_J_1.jo" "L_Index_J_1_GRP.r";
connectAttr "transformGeometry22.og" "L_Index_J_1_CTRLShape.cr";
connectAttr "L_Index_J_2.jo" "L_Index_J_2_GRP.r";
connectAttr "transformGeometry23.og" "L_Index_J_2_CTRLShape.cr";
connectAttr "L_Middle_J_0.jo" "L_Middle_J_0_GRP.r";
connectAttr "transformGeometry24.og" "L_Middle_J_0_CTRLShape.cr";
connectAttr "L_Middle_J_1.jo" "L_Middle_J_1_GRP.r";
connectAttr "transformGeometry25.og" "L_Middle_J_1_CTRLShape.cr";
connectAttr "L_Middle_J_2.jo" "L_Middle_J_2_GRP.r";
connectAttr "transformGeometry26.og" "L_Middle_J_2_CTRLShape.cr";
connectAttr "L_Ring_J_0.jo" "L_Ring_J_0_GRP.r";
connectAttr "transformGeometry27.og" "L_Ring_J_0_CTRLShape.cr";
connectAttr "L_Ring_J_1.jo" "L_Ring_J_1_GRP.r";
connectAttr "transformGeometry28.og" "L_Ring_J_1_CTRLShape.cr";
connectAttr "L_Ring_J_2.jo" "L_Ring_J_2_GRP.r";
connectAttr "transformGeometry29.og" "L_Ring_J_2_CTRLShape.cr";
connectAttr "L_Pinky_J_0.jo" "L_Pinky_J_0_GRP.r";
connectAttr "transformGeometry30.og" "L_Pinky_J_0_CTRLShape.cr";
connectAttr "L_Pinky_J_1.jo" "L_Pinky_J_1_GRP.r";
connectAttr "transformGeometry31.og" "L_Pinky_J_1_CTRLShape.cr";
connectAttr "L_Pinky_J_2.jo" "L_Pinky_J_2_GRP.r";
connectAttr "transformGeometry32.og" "L_Pinky_J_2_CTRLShape.cr";
connectAttr "Neck_J_0.jo" "Neck_J_0_GRP.r";
connectAttr "transformGeometry33.og" "Neck_J_0_CTRLShape.cr";
connectAttr "Neck_J_1.jo" "Neck_J_1_GRP.r";
connectAttr "transformGeometry34.og" "Neck_J_1_CTRLShape.cr";
connectAttr "Head_J.jo" "Head_J_GRP.r";
connectAttr "transformGeometry35.og" "Head_J_CTRLShape.cr";
connectAttr "R_clav_J.jo" "R_clav_J_GRP.r";
connectAttr "transformGeometry36.og" "R_clav_J_CTRLShape.cr";
connectAttr "R_shold_J.jo" "R_shold_J_GRP.r";
connectAttr "transformGeometry37.og" "R_shold_J_CTRLShape.cr";
connectAttr "R_Elbow_J.jo" "R_Elbow_J_GRP.r";
connectAttr "transformGeometry38.og" "R_Elbow_J_CTRLShape.cr";
connectAttr "R_Wrist_J.jo" "R_Wrist_J_GRP.r";
connectAttr "transformGeometry39.og" "R_Wrist_J_CTRLShape.cr";
connectAttr "R_Thumb_J_0.jo" "R_Thumb_J_0_GRP.r";
connectAttr "transformGeometry40.og" "R_Thumb_J_0_CTRLShape.cr";
connectAttr "R_Thumb_J_1.jo" "R_Thumb_J_1_GRP.r";
connectAttr "transformGeometry41.og" "R_Thumb_J_1_CTRLShape.cr";
connectAttr "R_Thumb_J_2.jo" "R_Thumb_J_2_GRP.r";
connectAttr "transformGeometry42.og" "R_Thumb_J_2_CTRLShape.cr";
connectAttr "R_Index_J_0.jo" "R_Index_J_0_GRP.r";
connectAttr "transformGeometry43.og" "R_Index_J_0_CTRLShape.cr";
connectAttr "R_Index_J_1.jo" "R_Index_J_1_GRP.r";
connectAttr "transformGeometry44.og" "R_Index_J_1_CTRLShape.cr";
connectAttr "R_Index_J_2.jo" "R_Index_J_2_GRP.r";
connectAttr "transformGeometry45.og" "R_Index_J_2_CTRLShape.cr";
connectAttr "R_Middle_J_0.jo" "R_Middle_J_0_GRP.r";
connectAttr "transformGeometry46.og" "R_Middle_J_0_CTRLShape.cr";
connectAttr "R_Middle_J_1.jo" "R_Middle_J_1_GRP.r";
connectAttr "transformGeometry47.og" "R_Middle_J_1_CTRLShape.cr";
connectAttr "R_Middle_J_2.jo" "R_Middle_J_2_GRP.r";
connectAttr "transformGeometry48.og" "R_Middle_J_2_CTRLShape.cr";
connectAttr "R_Ring_J_0.jo" "R_Ring_J_0_GRP.r";
connectAttr "transformGeometry49.og" "R_Ring_J_0_CTRLShape.cr";
connectAttr "R_Ring_J_1.jo" "R_Ring_J_1_GRP.r";
connectAttr "transformGeometry50.og" "R_Ring_J_1_CTRLShape.cr";
connectAttr "R_Ring_J_2.jo" "R_Ring_J_2_GRP.r";
connectAttr "transformGeometry51.og" "R_Ring_J_2_CTRLShape.cr";
connectAttr "R_Pinky_J_0.jo" "R_Pinky_J_0_GRP.r";
connectAttr "transformGeometry52.og" "R_Pinky_J_0_CTRLShape.cr";
connectAttr "R_Pinky_J_1.jo" "R_Pinky_J_1_GRP.r";
connectAttr "transformGeometry53.og" "R_Pinky_J_1_CTRLShape.cr";
connectAttr "R_Pinky_J_2.jo" "R_Pinky_J_2_GRP.r";
connectAttr "transformGeometry54.og" "R_Pinky_J_2_CTRLShape.cr";
connectAttr "skinCluster1.og[0]" "GenericMesh2ShapeDeformed.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "blendShape1.mlpr" "shapeEditorManager.bspr[0]";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "GenericMesh2_2RNfosterParent1.msg" "GenericMesh2_2RN.fp";
connectAttr "GenericMesh2_2PM.plst[0]" "GenericMesh2_2RN.pmsg";
connectAttr "sharedReferenceNode.sr" "GenericMesh2_2RN.sr";
connectAttr "blendShape1.og[0]" "skinCluster1.ip[0].ig";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "Pelvis_J.wm" "skinCluster1.ma[0]";
connectAttr "Hips_J.wm" "skinCluster1.ma[1]";
connectAttr "L_Hip_J.wm" "skinCluster1.ma[2]";
connectAttr "L_Knee_J.wm" "skinCluster1.ma[3]";
connectAttr "L_Ankle_J.wm" "skinCluster1.ma[4]";
connectAttr "L_Ball_J.wm" "skinCluster1.ma[5]";
connectAttr "R_Hip_J.wm" "skinCluster1.ma[6]";
connectAttr "R_Knee_J.wm" "skinCluster1.ma[7]";
connectAttr "R_Ankle_J.wm" "skinCluster1.ma[8]";
connectAttr "R_Ball_J.wm" "skinCluster1.ma[9]";
connectAttr "Spine_J_0.wm" "skinCluster1.ma[10]";
connectAttr "Spine_J_.wm" "skinCluster1.ma[11]";
connectAttr "Spine_J_2.wm" "skinCluster1.ma[12]";
connectAttr "L_clav_J.wm" "skinCluster1.ma[13]";
connectAttr "L_shold_J.wm" "skinCluster1.ma[14]";
connectAttr "L_Elbow_J.wm" "skinCluster1.ma[15]";
connectAttr "L_Wrist_J.wm" "skinCluster1.ma[16]";
connectAttr "L_Thumb_J_0.wm" "skinCluster1.ma[17]";
connectAttr "L_Thumb_J_1.wm" "skinCluster1.ma[18]";
connectAttr "L_Thumb_J_2.wm" "skinCluster1.ma[19]";
connectAttr "L_Index_J_0.wm" "skinCluster1.ma[20]";
connectAttr "L_Index_J_1.wm" "skinCluster1.ma[21]";
connectAttr "L_Index_J_2.wm" "skinCluster1.ma[22]";
connectAttr "L_Middle_J_0.wm" "skinCluster1.ma[23]";
connectAttr "L_Middle_J_1.wm" "skinCluster1.ma[24]";
connectAttr "L_Middle_J_2.wm" "skinCluster1.ma[25]";
connectAttr "L_Ring_J_0.wm" "skinCluster1.ma[26]";
connectAttr "L_Ring_J_1.wm" "skinCluster1.ma[27]";
connectAttr "L_Ring_J_2.wm" "skinCluster1.ma[28]";
connectAttr "L_Pinky_J_0.wm" "skinCluster1.ma[29]";
connectAttr "L_Pinky_J_1.wm" "skinCluster1.ma[30]";
connectAttr "L_Pinky_J_2.wm" "skinCluster1.ma[31]";
connectAttr "Neck_J_0.wm" "skinCluster1.ma[32]";
connectAttr "Neck_J_1.wm" "skinCluster1.ma[33]";
connectAttr "Head_J.wm" "skinCluster1.ma[34]";
connectAttr "R_clav_J.wm" "skinCluster1.ma[35]";
connectAttr "R_shold_J.wm" "skinCluster1.ma[36]";
connectAttr "R_Elbow_J.wm" "skinCluster1.ma[37]";
connectAttr "R_Wrist_J.wm" "skinCluster1.ma[38]";
connectAttr "R_Thumb_J_0.wm" "skinCluster1.ma[39]";
connectAttr "R_Thumb_J_1.wm" "skinCluster1.ma[40]";
connectAttr "R_Thumb_J_2.wm" "skinCluster1.ma[41]";
connectAttr "R_Index_J_0.wm" "skinCluster1.ma[42]";
connectAttr "R_Index_J_1.wm" "skinCluster1.ma[43]";
connectAttr "R_Index_J_2.wm" "skinCluster1.ma[44]";
connectAttr "R_Middle_J_0.wm" "skinCluster1.ma[45]";
connectAttr "R_Middle_J_1.wm" "skinCluster1.ma[46]";
connectAttr "R_Middle_J_2.wm" "skinCluster1.ma[47]";
connectAttr "R_Ring_J_0.wm" "skinCluster1.ma[48]";
connectAttr "R_Ring_J_1.wm" "skinCluster1.ma[49]";
connectAttr "R_Ring_J_2.wm" "skinCluster1.ma[50]";
connectAttr "R_Pinky_J_0.wm" "skinCluster1.ma[51]";
connectAttr "R_Pinky_J_1.wm" "skinCluster1.ma[52]";
connectAttr "R_Pinky_J_2.wm" "skinCluster1.ma[53]";
connectAttr "Pelvis_J.liw" "skinCluster1.lw[0]";
connectAttr "Hips_J.liw" "skinCluster1.lw[1]";
connectAttr "L_Hip_J.liw" "skinCluster1.lw[2]";
connectAttr "L_Knee_J.liw" "skinCluster1.lw[3]";
connectAttr "L_Ankle_J.liw" "skinCluster1.lw[4]";
connectAttr "L_Ball_J.liw" "skinCluster1.lw[5]";
connectAttr "R_Hip_J.liw" "skinCluster1.lw[6]";
connectAttr "R_Knee_J.liw" "skinCluster1.lw[7]";
connectAttr "R_Ankle_J.liw" "skinCluster1.lw[8]";
connectAttr "R_Ball_J.liw" "skinCluster1.lw[9]";
connectAttr "Spine_J_0.liw" "skinCluster1.lw[10]";
connectAttr "Spine_J_.liw" "skinCluster1.lw[11]";
connectAttr "Spine_J_2.liw" "skinCluster1.lw[12]";
connectAttr "L_clav_J.liw" "skinCluster1.lw[13]";
connectAttr "L_shold_J.liw" "skinCluster1.lw[14]";
connectAttr "L_Elbow_J.liw" "skinCluster1.lw[15]";
connectAttr "L_Wrist_J.liw" "skinCluster1.lw[16]";
connectAttr "L_Thumb_J_0.liw" "skinCluster1.lw[17]";
connectAttr "L_Thumb_J_1.liw" "skinCluster1.lw[18]";
connectAttr "L_Thumb_J_2.liw" "skinCluster1.lw[19]";
connectAttr "L_Index_J_0.liw" "skinCluster1.lw[20]";
connectAttr "L_Index_J_1.liw" "skinCluster1.lw[21]";
connectAttr "L_Index_J_2.liw" "skinCluster1.lw[22]";
connectAttr "L_Middle_J_0.liw" "skinCluster1.lw[23]";
connectAttr "L_Middle_J_1.liw" "skinCluster1.lw[24]";
connectAttr "L_Middle_J_2.liw" "skinCluster1.lw[25]";
connectAttr "L_Ring_J_0.liw" "skinCluster1.lw[26]";
connectAttr "L_Ring_J_1.liw" "skinCluster1.lw[27]";
connectAttr "L_Ring_J_2.liw" "skinCluster1.lw[28]";
connectAttr "L_Pinky_J_0.liw" "skinCluster1.lw[29]";
connectAttr "L_Pinky_J_1.liw" "skinCluster1.lw[30]";
connectAttr "L_Pinky_J_2.liw" "skinCluster1.lw[31]";
connectAttr "Neck_J_0.liw" "skinCluster1.lw[32]";
connectAttr "Neck_J_1.liw" "skinCluster1.lw[33]";
connectAttr "Head_J.liw" "skinCluster1.lw[34]";
connectAttr "R_clav_J.liw" "skinCluster1.lw[35]";
connectAttr "R_shold_J.liw" "skinCluster1.lw[36]";
connectAttr "R_Elbow_J.liw" "skinCluster1.lw[37]";
connectAttr "R_Wrist_J.liw" "skinCluster1.lw[38]";
connectAttr "R_Thumb_J_0.liw" "skinCluster1.lw[39]";
connectAttr "R_Thumb_J_1.liw" "skinCluster1.lw[40]";
connectAttr "R_Thumb_J_2.liw" "skinCluster1.lw[41]";
connectAttr "R_Index_J_0.liw" "skinCluster1.lw[42]";
connectAttr "R_Index_J_1.liw" "skinCluster1.lw[43]";
connectAttr "R_Index_J_2.liw" "skinCluster1.lw[44]";
connectAttr "R_Middle_J_0.liw" "skinCluster1.lw[45]";
connectAttr "R_Middle_J_1.liw" "skinCluster1.lw[46]";
connectAttr "R_Middle_J_2.liw" "skinCluster1.lw[47]";
connectAttr "R_Ring_J_0.liw" "skinCluster1.lw[48]";
connectAttr "R_Ring_J_1.liw" "skinCluster1.lw[49]";
connectAttr "R_Ring_J_2.liw" "skinCluster1.lw[50]";
connectAttr "R_Pinky_J_0.liw" "skinCluster1.lw[51]";
connectAttr "R_Pinky_J_1.liw" "skinCluster1.lw[52]";
connectAttr "R_Pinky_J_2.liw" "skinCluster1.lw[53]";
connectAttr "Pelvis_J.obcc" "skinCluster1.ifcl[0]";
connectAttr "Hips_J.obcc" "skinCluster1.ifcl[1]";
connectAttr "L_Hip_J.obcc" "skinCluster1.ifcl[2]";
connectAttr "L_Knee_J.obcc" "skinCluster1.ifcl[3]";
connectAttr "L_Ankle_J.obcc" "skinCluster1.ifcl[4]";
connectAttr "L_Ball_J.obcc" "skinCluster1.ifcl[5]";
connectAttr "R_Hip_J.obcc" "skinCluster1.ifcl[6]";
connectAttr "R_Knee_J.obcc" "skinCluster1.ifcl[7]";
connectAttr "R_Ankle_J.obcc" "skinCluster1.ifcl[8]";
connectAttr "R_Ball_J.obcc" "skinCluster1.ifcl[9]";
connectAttr "Spine_J_0.obcc" "skinCluster1.ifcl[10]";
connectAttr "Spine_J_.obcc" "skinCluster1.ifcl[11]";
connectAttr "Spine_J_2.obcc" "skinCluster1.ifcl[12]";
connectAttr "L_clav_J.obcc" "skinCluster1.ifcl[13]";
connectAttr "L_shold_J.obcc" "skinCluster1.ifcl[14]";
connectAttr "L_Elbow_J.obcc" "skinCluster1.ifcl[15]";
connectAttr "L_Wrist_J.obcc" "skinCluster1.ifcl[16]";
connectAttr "L_Thumb_J_0.obcc" "skinCluster1.ifcl[17]";
connectAttr "L_Thumb_J_1.obcc" "skinCluster1.ifcl[18]";
connectAttr "L_Thumb_J_2.obcc" "skinCluster1.ifcl[19]";
connectAttr "L_Index_J_0.obcc" "skinCluster1.ifcl[20]";
connectAttr "L_Index_J_1.obcc" "skinCluster1.ifcl[21]";
connectAttr "L_Index_J_2.obcc" "skinCluster1.ifcl[22]";
connectAttr "L_Middle_J_0.obcc" "skinCluster1.ifcl[23]";
connectAttr "L_Middle_J_1.obcc" "skinCluster1.ifcl[24]";
connectAttr "L_Middle_J_2.obcc" "skinCluster1.ifcl[25]";
connectAttr "L_Ring_J_0.obcc" "skinCluster1.ifcl[26]";
connectAttr "L_Ring_J_1.obcc" "skinCluster1.ifcl[27]";
connectAttr "L_Ring_J_2.obcc" "skinCluster1.ifcl[28]";
connectAttr "L_Pinky_J_0.obcc" "skinCluster1.ifcl[29]";
connectAttr "L_Pinky_J_1.obcc" "skinCluster1.ifcl[30]";
connectAttr "L_Pinky_J_2.obcc" "skinCluster1.ifcl[31]";
connectAttr "Neck_J_0.obcc" "skinCluster1.ifcl[32]";
connectAttr "Neck_J_1.obcc" "skinCluster1.ifcl[33]";
connectAttr "Head_J.obcc" "skinCluster1.ifcl[34]";
connectAttr "R_clav_J.obcc" "skinCluster1.ifcl[35]";
connectAttr "R_shold_J.obcc" "skinCluster1.ifcl[36]";
connectAttr "R_Elbow_J.obcc" "skinCluster1.ifcl[37]";
connectAttr "R_Wrist_J.obcc" "skinCluster1.ifcl[38]";
connectAttr "R_Thumb_J_0.obcc" "skinCluster1.ifcl[39]";
connectAttr "R_Thumb_J_1.obcc" "skinCluster1.ifcl[40]";
connectAttr "R_Thumb_J_2.obcc" "skinCluster1.ifcl[41]";
connectAttr "R_Index_J_0.obcc" "skinCluster1.ifcl[42]";
connectAttr "R_Index_J_1.obcc" "skinCluster1.ifcl[43]";
connectAttr "R_Index_J_2.obcc" "skinCluster1.ifcl[44]";
connectAttr "R_Middle_J_0.obcc" "skinCluster1.ifcl[45]";
connectAttr "R_Middle_J_1.obcc" "skinCluster1.ifcl[46]";
connectAttr "R_Middle_J_2.obcc" "skinCluster1.ifcl[47]";
connectAttr "R_Ring_J_0.obcc" "skinCluster1.ifcl[48]";
connectAttr "R_Ring_J_1.obcc" "skinCluster1.ifcl[49]";
connectAttr "R_Ring_J_2.obcc" "skinCluster1.ifcl[50]";
connectAttr "R_Pinky_J_0.obcc" "skinCluster1.ifcl[51]";
connectAttr "R_Pinky_J_1.obcc" "skinCluster1.ifcl[52]";
connectAttr "R_Pinky_J_2.obcc" "skinCluster1.ifcl[53]";
connectAttr "Pelvis_J.msg" "bindPose1.m[0]";
connectAttr "Hips_J.msg" "bindPose1.m[1]";
connectAttr "L_Hip_J.msg" "bindPose1.m[2]";
connectAttr "L_Knee_J.msg" "bindPose1.m[3]";
connectAttr "L_Ankle_J.msg" "bindPose1.m[4]";
connectAttr "L_Ball_J.msg" "bindPose1.m[5]";
connectAttr "R_Hip_J.msg" "bindPose1.m[6]";
connectAttr "R_Knee_J.msg" "bindPose1.m[7]";
connectAttr "R_Ankle_J.msg" "bindPose1.m[8]";
connectAttr "R_Ball_J.msg" "bindPose1.m[9]";
connectAttr "Spine_J_0.msg" "bindPose1.m[10]";
connectAttr "Spine_J_.msg" "bindPose1.m[11]";
connectAttr "Spine_J_2.msg" "bindPose1.m[12]";
connectAttr "L_clav_J.msg" "bindPose1.m[13]";
connectAttr "L_shold_J.msg" "bindPose1.m[14]";
connectAttr "L_Elbow_J.msg" "bindPose1.m[15]";
connectAttr "L_Wrist_J.msg" "bindPose1.m[16]";
connectAttr "L_Thumb_J_0.msg" "bindPose1.m[17]";
connectAttr "L_Thumb_J_1.msg" "bindPose1.m[18]";
connectAttr "L_Thumb_J_2.msg" "bindPose1.m[19]";
connectAttr "L_Index_J_0.msg" "bindPose1.m[20]";
connectAttr "L_Index_J_1.msg" "bindPose1.m[21]";
connectAttr "L_Index_J_2.msg" "bindPose1.m[22]";
connectAttr "L_Middle_J_0.msg" "bindPose1.m[23]";
connectAttr "L_Middle_J_1.msg" "bindPose1.m[24]";
connectAttr "L_Middle_J_2.msg" "bindPose1.m[25]";
connectAttr "L_Ring_J_0.msg" "bindPose1.m[26]";
connectAttr "L_Ring_J_1.msg" "bindPose1.m[27]";
connectAttr "L_Ring_J_2.msg" "bindPose1.m[28]";
connectAttr "L_Pinky_J_0.msg" "bindPose1.m[29]";
connectAttr "L_Pinky_J_1.msg" "bindPose1.m[30]";
connectAttr "L_Pinky_J_2.msg" "bindPose1.m[31]";
connectAttr "Neck_J_0.msg" "bindPose1.m[32]";
connectAttr "Neck_J_1.msg" "bindPose1.m[33]";
connectAttr "Head_J.msg" "bindPose1.m[34]";
connectAttr "R_clav_J.msg" "bindPose1.m[35]";
connectAttr "R_shold_J.msg" "bindPose1.m[36]";
connectAttr "R_Elbow_J.msg" "bindPose1.m[37]";
connectAttr "R_Wrist_J.msg" "bindPose1.m[38]";
connectAttr "R_Thumb_J_0.msg" "bindPose1.m[39]";
connectAttr "R_Thumb_J_1.msg" "bindPose1.m[40]";
connectAttr "R_Thumb_J_2.msg" "bindPose1.m[41]";
connectAttr "R_Index_J_0.msg" "bindPose1.m[42]";
connectAttr "R_Index_J_1.msg" "bindPose1.m[43]";
connectAttr "R_Index_J_2.msg" "bindPose1.m[44]";
connectAttr "R_Middle_J_0.msg" "bindPose1.m[45]";
connectAttr "R_Middle_J_1.msg" "bindPose1.m[46]";
connectAttr "R_Middle_J_2.msg" "bindPose1.m[47]";
connectAttr "R_Ring_J_0.msg" "bindPose1.m[48]";
connectAttr "R_Ring_J_1.msg" "bindPose1.m[49]";
connectAttr "R_Ring_J_2.msg" "bindPose1.m[50]";
connectAttr "R_Pinky_J_0.msg" "bindPose1.m[51]";
connectAttr "R_Pinky_J_1.msg" "bindPose1.m[52]";
connectAttr "R_Pinky_J_2.msg" "bindPose1.m[53]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[1]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[0]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[16]" "bindPose1.p[20]";
connectAttr "bindPose1.m[20]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "bindPose1.m[16]" "bindPose1.p[23]";
connectAttr "bindPose1.m[23]" "bindPose1.p[24]";
connectAttr "bindPose1.m[24]" "bindPose1.p[25]";
connectAttr "bindPose1.m[16]" "bindPose1.p[26]";
connectAttr "bindPose1.m[26]" "bindPose1.p[27]";
connectAttr "bindPose1.m[27]" "bindPose1.p[28]";
connectAttr "bindPose1.m[16]" "bindPose1.p[29]";
connectAttr "bindPose1.m[29]" "bindPose1.p[30]";
connectAttr "bindPose1.m[30]" "bindPose1.p[31]";
connectAttr "bindPose1.m[12]" "bindPose1.p[32]";
connectAttr "bindPose1.m[32]" "bindPose1.p[33]";
connectAttr "bindPose1.m[33]" "bindPose1.p[34]";
connectAttr "bindPose1.m[12]" "bindPose1.p[35]";
connectAttr "bindPose1.m[35]" "bindPose1.p[36]";
connectAttr "bindPose1.m[36]" "bindPose1.p[37]";
connectAttr "bindPose1.m[37]" "bindPose1.p[38]";
connectAttr "bindPose1.m[38]" "bindPose1.p[39]";
connectAttr "bindPose1.m[39]" "bindPose1.p[40]";
connectAttr "bindPose1.m[40]" "bindPose1.p[41]";
connectAttr "bindPose1.m[38]" "bindPose1.p[42]";
connectAttr "bindPose1.m[42]" "bindPose1.p[43]";
connectAttr "bindPose1.m[43]" "bindPose1.p[44]";
connectAttr "bindPose1.m[38]" "bindPose1.p[45]";
connectAttr "bindPose1.m[45]" "bindPose1.p[46]";
connectAttr "bindPose1.m[46]" "bindPose1.p[47]";
connectAttr "bindPose1.m[38]" "bindPose1.p[48]";
connectAttr "bindPose1.m[48]" "bindPose1.p[49]";
connectAttr "bindPose1.m[49]" "bindPose1.p[50]";
connectAttr "bindPose1.m[38]" "bindPose1.p[51]";
connectAttr "bindPose1.m[51]" "bindPose1.p[52]";
connectAttr "bindPose1.m[52]" "bindPose1.p[53]";
connectAttr "Pelvis_J.bps" "bindPose1.wm[0]";
connectAttr "Hips_J.bps" "bindPose1.wm[1]";
connectAttr "L_Hip_J.bps" "bindPose1.wm[2]";
connectAttr "L_Knee_J.bps" "bindPose1.wm[3]";
connectAttr "L_Ankle_J.bps" "bindPose1.wm[4]";
connectAttr "L_Ball_J.bps" "bindPose1.wm[5]";
connectAttr "R_Hip_J.bps" "bindPose1.wm[6]";
connectAttr "R_Knee_J.bps" "bindPose1.wm[7]";
connectAttr "R_Ankle_J.bps" "bindPose1.wm[8]";
connectAttr "R_Ball_J.bps" "bindPose1.wm[9]";
connectAttr "Spine_J_0.bps" "bindPose1.wm[10]";
connectAttr "Spine_J_.bps" "bindPose1.wm[11]";
connectAttr "Spine_J_2.bps" "bindPose1.wm[12]";
connectAttr "L_clav_J.bps" "bindPose1.wm[13]";
connectAttr "L_shold_J.bps" "bindPose1.wm[14]";
connectAttr "L_Elbow_J.bps" "bindPose1.wm[15]";
connectAttr "L_Wrist_J.bps" "bindPose1.wm[16]";
connectAttr "L_Thumb_J_0.bps" "bindPose1.wm[17]";
connectAttr "L_Thumb_J_1.bps" "bindPose1.wm[18]";
connectAttr "L_Thumb_J_2.bps" "bindPose1.wm[19]";
connectAttr "L_Index_J_0.bps" "bindPose1.wm[20]";
connectAttr "L_Index_J_1.bps" "bindPose1.wm[21]";
connectAttr "L_Index_J_2.bps" "bindPose1.wm[22]";
connectAttr "L_Middle_J_0.bps" "bindPose1.wm[23]";
connectAttr "L_Middle_J_1.bps" "bindPose1.wm[24]";
connectAttr "L_Middle_J_2.bps" "bindPose1.wm[25]";
connectAttr "L_Ring_J_0.bps" "bindPose1.wm[26]";
connectAttr "L_Ring_J_1.bps" "bindPose1.wm[27]";
connectAttr "L_Ring_J_2.bps" "bindPose1.wm[28]";
connectAttr "L_Pinky_J_0.bps" "bindPose1.wm[29]";
connectAttr "L_Pinky_J_1.bps" "bindPose1.wm[30]";
connectAttr "L_Pinky_J_2.bps" "bindPose1.wm[31]";
connectAttr "Neck_J_0.bps" "bindPose1.wm[32]";
connectAttr "Neck_J_1.bps" "bindPose1.wm[33]";
connectAttr "Head_J.bps" "bindPose1.wm[34]";
connectAttr "R_clav_J.bps" "bindPose1.wm[35]";
connectAttr "R_shold_J.bps" "bindPose1.wm[36]";
connectAttr "R_Elbow_J.bps" "bindPose1.wm[37]";
connectAttr "R_Wrist_J.bps" "bindPose1.wm[38]";
connectAttr "R_Thumb_J_0.bps" "bindPose1.wm[39]";
connectAttr "R_Thumb_J_1.bps" "bindPose1.wm[40]";
connectAttr "R_Thumb_J_2.bps" "bindPose1.wm[41]";
connectAttr "R_Index_J_0.bps" "bindPose1.wm[42]";
connectAttr "R_Index_J_1.bps" "bindPose1.wm[43]";
connectAttr "R_Index_J_2.bps" "bindPose1.wm[44]";
connectAttr "R_Middle_J_0.bps" "bindPose1.wm[45]";
connectAttr "R_Middle_J_1.bps" "bindPose1.wm[46]";
connectAttr "R_Middle_J_2.bps" "bindPose1.wm[47]";
connectAttr "R_Ring_J_0.bps" "bindPose1.wm[48]";
connectAttr "R_Ring_J_1.bps" "bindPose1.wm[49]";
connectAttr "R_Ring_J_2.bps" "bindPose1.wm[50]";
connectAttr "R_Pinky_J_0.bps" "bindPose1.wm[51]";
connectAttr "R_Pinky_J_1.bps" "bindPose1.wm[52]";
connectAttr "R_Pinky_J_2.bps" "bindPose1.wm[53]";
connectAttr "shapeEditorManager.obsv[0]" "blendShape1.tgdt[0].dpvs";
connectAttr "makeNurbCircle1.oc" "transformGeometry1.ig";
connectAttr "makeNurbCircle2.oc" "transformGeometry2.ig";
connectAttr "makeNurbCircle3.oc" "transformGeometry3.ig";
connectAttr "makeNurbCircle4.oc" "transformGeometry4.ig";
connectAttr "makeNurbCircle5.oc" "transformGeometry5.ig";
connectAttr "makeNurbCircle6.oc" "transformGeometry6.ig";
connectAttr "makeNurbCircle7.oc" "transformGeometry7.ig";
connectAttr "makeNurbCircle8.oc" "transformGeometry8.ig";
connectAttr "makeNurbCircle9.oc" "transformGeometry9.ig";
connectAttr "makeNurbCircle10.oc" "transformGeometry10.ig";
connectAttr "makeNurbCircle11.oc" "transformGeometry11.ig";
connectAttr "makeNurbCircle12.oc" "transformGeometry12.ig";
connectAttr "makeNurbCircle13.oc" "transformGeometry13.ig";
connectAttr "makeNurbCircle14.oc" "transformGeometry14.ig";
connectAttr "makeNurbCircle15.oc" "transformGeometry15.ig";
connectAttr "makeNurbCircle16.oc" "transformGeometry16.ig";
connectAttr "makeNurbCircle17.oc" "transformGeometry17.ig";
connectAttr "makeNurbCircle18.oc" "transformGeometry18.ig";
connectAttr "makeNurbCircle19.oc" "transformGeometry19.ig";
connectAttr "makeNurbCircle20.oc" "transformGeometry20.ig";
connectAttr "makeNurbCircle21.oc" "transformGeometry21.ig";
connectAttr "makeNurbCircle22.oc" "transformGeometry22.ig";
connectAttr "makeNurbCircle23.oc" "transformGeometry23.ig";
connectAttr "makeNurbCircle24.oc" "transformGeometry24.ig";
connectAttr "makeNurbCircle25.oc" "transformGeometry25.ig";
connectAttr "makeNurbCircle26.oc" "transformGeometry26.ig";
connectAttr "makeNurbCircle27.oc" "transformGeometry27.ig";
connectAttr "makeNurbCircle28.oc" "transformGeometry28.ig";
connectAttr "makeNurbCircle29.oc" "transformGeometry29.ig";
connectAttr "makeNurbCircle30.oc" "transformGeometry30.ig";
connectAttr "makeNurbCircle31.oc" "transformGeometry31.ig";
connectAttr "makeNurbCircle32.oc" "transformGeometry32.ig";
connectAttr "makeNurbCircle33.oc" "transformGeometry33.ig";
connectAttr "makeNurbCircle34.oc" "transformGeometry34.ig";
connectAttr "makeNurbCircle35.oc" "transformGeometry35.ig";
connectAttr "makeNurbCircle36.oc" "transformGeometry36.ig";
connectAttr "makeNurbCircle37.oc" "transformGeometry37.ig";
connectAttr "makeNurbCircle38.oc" "transformGeometry38.ig";
connectAttr "makeNurbCircle39.oc" "transformGeometry39.ig";
connectAttr "makeNurbCircle40.oc" "transformGeometry40.ig";
connectAttr "makeNurbCircle41.oc" "transformGeometry41.ig";
connectAttr "makeNurbCircle42.oc" "transformGeometry42.ig";
connectAttr "makeNurbCircle43.oc" "transformGeometry43.ig";
connectAttr "makeNurbCircle44.oc" "transformGeometry44.ig";
connectAttr "makeNurbCircle45.oc" "transformGeometry45.ig";
connectAttr "makeNurbCircle46.oc" "transformGeometry46.ig";
connectAttr "makeNurbCircle47.oc" "transformGeometry47.ig";
connectAttr "makeNurbCircle48.oc" "transformGeometry48.ig";
connectAttr "makeNurbCircle49.oc" "transformGeometry49.ig";
connectAttr "makeNurbCircle50.oc" "transformGeometry50.ig";
connectAttr "makeNurbCircle51.oc" "transformGeometry51.ig";
connectAttr "makeNurbCircle52.oc" "transformGeometry52.ig";
connectAttr "makeNurbCircle53.oc" "transformGeometry53.ig";
connectAttr "makeNurbCircle54.oc" "transformGeometry54.ig";
connectAttr "layerManager.dli[1]" "Joints.id";
connectAttr "GenericMesh2_2PM.aprx" "GenericMesh2_2PM.plst[0]";
connectAttr "GenericMesh2_2PM.plst[1]" "GenericMesh2_2GenericMesh2_2PM1RN.pmsg";
connectAttr "sharedReferenceNode.sr" "GenericMesh2_2GenericMesh2_2PM1RN.sr";
connectAttr "L_Thumb_J_1_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "makeNurbCircle33.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "makeNurbCircle39.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "R_Pinky_J_2_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "makeNurbCircle16.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "L_Elbow_J_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn";
connectAttr "transformGeometry32.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "L_Index_J_1_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "L_Ankle_J_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "R_Index_J_2_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "L_Knee_J_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn";
connectAttr "L_Ring_J_2_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn";
connectAttr "R_clav_J_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn";
connectAttr "R_Thumb_J_0_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn"
		;
connectAttr "Spine_J_0_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn";
connectAttr "makeNurbCircle44.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "makeNurbCircle47.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "bindPose1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn";
connectAttr "R_Ball_J_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "transformGeometry23.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "transformGeometry9.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "Neck_J_1_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "makeNurbCircle4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "GenericMesh2ShapeDeformed.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "Spine_J__CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn";
connectAttr "L_Ball_J_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn"
		;
connectAttr "R_Thumb_J_1_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "makeNurbCircle5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "L_Thumb_J_2_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "L_Hip_J_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "R_Thumb_J_2_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn"
		;
connectAttr "transformGeometry34.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn"
		;
connectAttr "R_Middle_J_2_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "R_Hip_J_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn";
connectAttr "makeNurbCircle24.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn"
		;
connectAttr "makeNurbCircle48.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "L_Thumb_J_0_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "L_Wrist_J_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "L_shold_J_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn";
connectAttr "L_Ankle_J_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn";
connectAttr "R_Index_J_1_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn"
		;
connectAttr "R_clav_J_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn";
connectAttr "Hips_J_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn";
connectAttr "R_Pinky_J_2_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn"
		;
connectAttr "R_shold_J_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn";
connectAttr "L_Thumb_J_0_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn"
		;
connectAttr "R_Knee_J_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn";
connectAttr "L_Pinky_J_1_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "transformGeometry27.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn"
		;
connectAttr "makeNurbCircle10.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "makeNurbCircle40.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "makeNurbCircle43.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "makeNurbCircle3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn"
		;
connectAttr "L_Thumb_J_2_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn"
		;
connectAttr "makeNurbCircle34.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "L_Middle_J_2_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn"
		;
connectAttr "transformGeometry45.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn"
		;
connectAttr "transformGeometry42.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn"
		;
connectAttr "R_clav_J_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn"
		;
connectAttr "transformGeometry18.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn"
		;
connectAttr "L_Pinky_J_2_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn"
		;
connectAttr "Joints.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn";
connectAttr "L_Pinky_J_0_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[98].dn"
		;
connectAttr "transformGeometry1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn"
		;
connectAttr "makeNurbCircle6.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn"
		;
connectAttr "transformGeometry13.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[101].dn"
		;
connectAttr "R_Index_J_0_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn"
		;
connectAttr "transformGeometry46.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn"
		;
connectAttr "L_shold_J_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn"
		;
connectAttr "R_Knee_J_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn";
connectAttr "L_Thumb_J_1_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[106].dn"
		;
connectAttr "R_Pinky_J_1_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[107].dn"
		;
connectAttr "makeNurbCircle11.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn"
		;
connectAttr "R_Pinky_J_0_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn"
		;
connectAttr "R_Middle_J_1_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[110].dn"
		;
connectAttr "makeNurbCircle22.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn"
		;
connectAttr "makeNurbCircle14.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn"
		;
connectAttr "L_Elbow_J_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[113].dn"
		;
connectAttr "transformGeometry37.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn"
		;
connectAttr "makeNurbCircle27.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn"
		;
connectAttr "R_Wrist_J_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[116].dn"
		;
connectAttr "makeNurbCircle30.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn"
		;
connectAttr "transformGeometry54.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[118].dn"
		;
connectAttr "L_Ring_J_0_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[119].dn"
		;
connectAttr "Neck_J_0_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[120].dn"
		;
connectAttr "Hips_J_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[121].dn";
connectAttr "L_Ball_J_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[122].dn";
connectAttr "R_Thumb_J_1_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[123].dn"
		;
connectAttr "L_Knee_J_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[124].dn"
		;
connectAttr "makeNurbCircle41.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[125].dn"
		;
connectAttr "R_Middle_J_2_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[126].dn"
		;
connectAttr "L_Middle_J_2_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[127].dn"
		;
connectAttr "Spine_J_0_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[128].dn"
		;
connectAttr "R_Index_J_2_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[129].dn"
		;
connectAttr "transformGeometry40.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[130].dn"
		;
connectAttr "blendShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[131].dn";
connectAttr "R_Middle_J_2_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[132].dn"
		;
connectAttr "transformGeometry52.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[133].dn"
		;
connectAttr "Head_J_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[134].dn"
		;
connectAttr "makeNurbCircle29.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[135].dn"
		;
connectAttr "L_Ring_J_1_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[136].dn"
		;
connectAttr "L_Elbow_J_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[137].dn"
		;
connectAttr "R_Index_J_2_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[138].dn"
		;
connectAttr "R_Ball_J_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[139].dn";
connectAttr "R_Elbow_J_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[155].dn";
connectAttr "L_Ball_J_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[156].dn";
connectAttr "L_Middle_J_1_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[157].dn"
		;
connectAttr "R_shold_J_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[158].dn";
connectAttr "Neck_J_1_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[159].dn";
connectAttr "makeNurbCircle17.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[160].dn"
		;
connectAttr "L_Middle_J_0_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[161].dn"
		;
connectAttr "transformGeometry15.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[162].dn"
		;
connectAttr "L_Ring_J_0_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[163].dn"
		;
connectAttr "makeNurbCircle54.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[164].dn"
		;
connectAttr "R_Ring_J_2_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[165].dn"
		;
connectAttr "L_Thumb_J_2_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[166].dn"
		;
connectAttr "R_Thumb_J_1_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[167].dn"
		;
connectAttr "R_Index_J_1_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[168].dn"
		;
connectAttr "L_Middle_J_1_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[169].dn"
		;
connectAttr "L_Ankle_J_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[170].dn";
connectAttr "makeNurbCircle20.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[171].dn"
		;
connectAttr "R_Elbow_J_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[172].dn"
		;
connectAttr "L_Index_J_0_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[173].dn"
		;
connectAttr "transformGeometry49.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[174].dn"
		;
connectAttr "L_Pinky_J_1_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[175].dn"
		;
connectAttr "R_Ankle_J_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[176].dn";
connectAttr "L_Middle_J_0_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[177].dn"
		;
connectAttr "L_Thumb_J_0_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[178].dn"
		;
connectAttr "makeNurbCircle7.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[179].dn"
		;
connectAttr "R_Middle_J_1_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[197].dn"
		;
connectAttr "makeNurbCircle32.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[198].dn"
		;
connectAttr "transformGeometry12.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[199].dn"
		;
connectAttr "makeNurbCircle2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[201].dn"
		;
connectAttr "transformGeometry48.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[202].dn"
		;
connectAttr "makeNurbCircle28.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[203].dn"
		;
connectAttr "L_clav_J_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[204].dn"
		;
connectAttr "makeNurbCircle38.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[205].dn"
		;
connectAttr "R_Ring_J_0_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[206].dn"
		;
connectAttr "makeNurbCircle25.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[207].dn"
		;
connectAttr "L_Knee_J_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[208].dn";
connectAttr "R_Pinky_J_2_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[209].dn"
		;
connectAttr "transformGeometry25.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[210].dn"
		;
connectAttr "L_clav_J_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[211].dn";
connectAttr "L_Hip_J_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[212].dn";
connectAttr "Spine_J_2_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[213].dn"
		;
connectAttr "makeNurbCircle19.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[214].dn"
		;
connectAttr "makeNurbCircle49.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[215].dn"
		;
connectAttr "L_Index_J_1_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[216].dn"
		;
connectAttr "L_Hip_J_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[217].dn";
connectAttr "R_Thumb_J_0_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[218].dn"
		;
connectAttr "makeNurbCircle1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[219].dn"
		;
connectAttr "R_Index_J_1_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[220].dn"
		;
connectAttr "Spine_J__GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[221].dn";
connectAttr "transformGeometry50.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[222].dn"
		;
connectAttr "L_Index_J_1_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[223].dn"
		;
connectAttr "transformGeometry38.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[224].dn"
		;
connectAttr "transformGeometry14.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[225].dn"
		;
connectAttr "transformGeometry31.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[226].dn"
		;
connectAttr "transformGeometry41.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[227].dn"
		;
connectAttr "L_Middle_J_1_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[228].dn"
		;
connectAttr "transformGeometry8.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[229].dn"
		;
connectAttr "R_Ring_J_2_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[230].dn"
		;
connectAttr "Spine_J_0_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[231].dn"
		;
connectAttr "makeNurbCircle13.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[232].dn"
		;
connectAttr "L_clav_J_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[233].dn";
connectAttr "Pelvis_J_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[234].dn";
connectAttr "transformGeometry5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[235].dn"
		;
connectAttr "transformGeometry30.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[236].dn"
		;
connectAttr "transformGeometry43.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[237].dn"
		;
connectAttr "L_Pinky_J_0_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[238].dn"
		;
connectAttr "transformGeometry17.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[239].dn"
		;
connectAttr "L_Middle_J_0_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[240].dn"
		;
connectAttr "R_Thumb_J_0_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[241].dn"
		;
connectAttr "makeNurbCircle26.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[242].dn"
		;
connectAttr "L_Ring_J_1_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[243].dn"
		;
connectAttr "R_Pinky_J_0_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[244].dn"
		;
connectAttr "Head_J_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[245].dn";
connectAttr "L_Index_J_2_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[270].dn"
		;
connectAttr "R_Index_J_0_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[271].dn"
		;
connectAttr "Neck_J_0_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[272].dn";
connectAttr "transformGeometry6.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[273].dn"
		;
connectAttr "R_Ball_J_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[274].dn";
connectAttr "L_Pinky_J_0_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[275].dn"
		;
connectAttr "Pelvis_J_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[276].dn";
connectAttr "makeNurbCircle35.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[277].dn"
		;
connectAttr "transformGeometry7.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[278].dn"
		;
connectAttr "L_Pinky_J_2_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[279].dn"
		;
connectAttr "L_Ring_J_2_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[280].dn"
		;
connectAttr "R_Ankle_J_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[281].dn"
		;
connectAttr "transformGeometry36.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[282].dn"
		;
connectAttr "R_Knee_J_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[283].dn"
		;
connectAttr "R_Elbow_J_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[284].dn"
		;
connectAttr "makeNurbCircle46.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[285].dn"
		;
connectAttr "R_Index_J_0_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[286].dn"
		;
connectAttr "Neck_J_1_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[287].dn";
connectAttr "transformGeometry3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[288].dn"
		;
connectAttr "R_Ring_J_0_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[289].dn"
		;
connectAttr "transformGeometry16.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[290].dn"
		;
connectAttr "L_Middle_J_2_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[291].dn"
		;
connectAttr "skinCluster1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[292].dn";
connectAttr "Spine_J__CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[293].dn"
		;
connectAttr "makeNurbCircle36.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[294].dn"
		;
connectAttr "transformGeometry47.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[295].dn"
		;
connectAttr "R_Middle_J_0_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[296].dn"
		;
connectAttr "transformGeometry35.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[297].dn"
		;
connectAttr "R_Thumb_J_2_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[298].dn"
		;
connectAttr "L_Pinky_J_1_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[299].dn"
		;
connectAttr "transformGeometry24.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[300].dn"
		;
connectAttr "transformGeometry21.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[301].dn"
		;
connectAttr "GenericMesh2_2GenericMesh2_2PM1RN.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[302].dn"
		;
connectAttr "R_Ring_J_1_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[303].dn"
		;
connectAttr "transformGeometry4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[304].dn"
		;
connectAttr "transformGeometry22.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[305].dn"
		;
connectAttr "transformGeometry29.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[306].dn"
		;
connectAttr "transformGeometry11.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[307].dn"
		;
connectAttr "R_Hip_J_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[308].dn";
connectAttr "transformGeometry26.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[309].dn"
		;
connectAttr "R_shold_J_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[310].dn"
		;
connectAttr "makeNurbCircle50.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[311].dn"
		;
connectAttr "R_Middle_J_0_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[312].dn"
		;
connectAttr "L_Pinky_J_2_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[313].dn"
		;
connectAttr "L_Ring_J_0_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[314].dn"
		;
connectAttr "R_Hip_J_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[315].dn"
		;
connectAttr "Pelvis_J_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[316].dn"
		;
connectAttr "makeNurbCircle52.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[317].dn"
		;
connectAttr "Hips_J_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[318].dn"
		;
connectAttr "transformGeometry44.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[319].dn"
		;
connectAttr "R_Ring_J_2_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[320].dn"
		;
connectAttr "makeNurbCircle8.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[321].dn"
		;
connectAttr "L_Wrist_J_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[322].dn"
		;
connectAttr "makeNurbCircle31.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[323].dn"
		;
connectAttr "L_Wrist_J_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[324].dn";
connectAttr "R_Pinky_J_1_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[325].dn"
		;
connectAttr "R_Pinky_J_0_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[326].dn"
		;
connectAttr "R_Middle_J_1_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[327].dn"
		;
connectAttr "transformGeometry39.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[328].dn"
		;
connectAttr "Neck_J_0_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[329].dn";
connectAttr "makeNurbCircle42.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[330].dn"
		;
connectAttr "transformGeometry2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[331].dn"
		;
connectAttr "R_Ankle_J_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[332].dn"
		;
connectAttr "L_Index_J_0_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[333].dn"
		;
connectAttr "makeNurbCircle9.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[334].dn"
		;
connectAttr "L_Index_J_0_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[335].dn"
		;
connectAttr "L_Ring_J_1_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[336].dn"
		;
connectAttr "makeNurbCircle53.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[337].dn"
		;
connectAttr "R_Wrist_J_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[338].dn"
		;
connectAttr "makeNurbCircle45.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[339].dn"
		;
connectAttr "makeNurbCircle18.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[340].dn"
		;
connectAttr "transformGeometry33.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[341].dn"
		;
connectAttr "R_Ring_J_1_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[342].dn"
		;
connectAttr "makeNurbCircle51.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[343].dn"
		;
connectAttr "L_Ring_J_2_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[344].dn"
		;
connectAttr "L_Thumb_J_1_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[345].dn"
		;
connectAttr "Spine_J_2_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[346].dn";
connectAttr "transformGeometry10.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[347].dn"
		;
connectAttr "GenericMesh2_2PM.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[443].dn"
		;
connectAttr "sharedReferenceNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[445].dn"
		;
connectAttr "makeNurbCircle23.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[850].dn"
		;
connectAttr "L_shold_J_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[851].dn";
connectAttr "makeNurbCircle37.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[852].dn"
		;
connectAttr "transformGeometry51.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[853].dn"
		;
connectAttr "R_Ring_J_1_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[854].dn"
		;
connectAttr "L_Index_J_2_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[855].dn"
		;
connectAttr "L_Index_J_2_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[856].dn"
		;
connectAttr "transformGeometry53.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[857].dn"
		;
connectAttr "Spine_J_2_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[858].dn"
		;
connectAttr "R_Middle_J_0_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[887].dn"
		;
connectAttr "R_Wrist_J_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[890].dn";
connectAttr "R_Thumb_J_2_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[891].dn"
		;
connectAttr "transformGeometry20.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[892].dn"
		;
connectAttr "transformGeometry19.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[893].dn"
		;
connectAttr "transformGeometry28.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[895].dn"
		;
connectAttr "makeNurbCircle12.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[896].dn"
		;
connectAttr "makeNurbCircle21.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[901].dn"
		;
connectAttr "R_Ring_J_0_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[902].dn"
		;
connectAttr "makeNurbCircle15.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[903].dn"
		;
connectAttr "Head_J_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[904].dn";
connectAttr "R_Pinky_J_1_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[917].dn"
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "GenericMesh2ShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
// End of GenericRig.ma
