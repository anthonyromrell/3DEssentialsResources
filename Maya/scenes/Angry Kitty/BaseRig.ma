//Maya ASCII 2024 scene
//Name: BaseRig.ma
//Last modified: Tue, Mar 12, 2024 05:14:42 PM
//Codeset: UTF-8
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.3.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202304191415-7fa20164c6";
fileInfo "osv" "Mac OS X 14.2.1";
fileInfo "UUID" "3593955D-3747-CF83-62E4-3E9FAD92FE51";
createNode transform -s -n "persp";
	rename -uid "425F33C5-074E-0DDA-57FF-A083BEB032D3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 16.664645044285091 2.2786446239510774 11.596676421277744 ;
	setAttr ".r" -type "double3" 0.86164721494480123 53.799999999993211 -8.4144412460736092e-17 ;
	setAttr ".rp" -type "double3" -1.7763568394002505e-15 9.9920072216264089e-16 0 ;
	setAttr ".rpt" -type "double3" 6.488713764509688e-16 -2.5360441589939463e-16 -1.525355166175746e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "77E8AA9E-234E-68FC-26D2-21B85028178A";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 20.653468826273119;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.0792480522995093e-15 2.5892317782655336 -0.60000000000000009 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "85E8FBB6-6441-A19C-C04D-C5AA44DD2279";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "37480A14-2B4E-7628-3E3C-08BFEDA18217";
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
	rename -uid "3F8EC8A1-D942-A6DC-BA45-FFA7E6A52CC1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.3083976423182571 3.9450144502898135 1000.1209292633065 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "5094073D-7A4A-D791-4AEE-3AA14C3CF72E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 999.54687324418489;
	setAttr ".ow" 14.206851025869764;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 0.24346785247325914 4.5129279113493279 0.57405601912158322 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "CA062097-4D4F-7155-B6BB-ABAC2570AF5F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1246866620332 4.6427679061889648 1.5911359786989525 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "7B965D51-684E-B572-D65C-82BAEB05744A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 999.88121880955975;
	setAttr ".ow" 9.2402796327540724;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0.243467852473259 4.6427679061889648 1.5911359786987305 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode joint -n "Root_J";
	rename -uid "427BA5D0-5E49-B31B-140F-89BC3C8C8330";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -89.999999999999901 0 ;
	setAttr ".bps" -type "matrix" 1.7763568394002505e-15 0 1 0 0 1 0 0 -1 0 1.7763568394002505e-15 0
		 0 2.0000000000000004 0 1;
	setAttr ".radi" 0.1;
createNode joint -n "Pelvis_J" -p "Root_J";
	rename -uid "10C5409B-334F-E8AD-8724-4F846EE66AE3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -3.3263841330368814e-16 0 -6.1563156860697348e-31 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -8.2694421718051442e-14 -1.2722218725854067e-14 90 ;
	setAttr ".bps" -type "matrix" 3.9443045261050599e-31 1 2.2204460492503131e-16 0 -1.7763568394002505e-15 2.2204460492503131e-16 -1 0
		 -1 0 1.7763568394002505e-15 0 2.4747048087719785e-32 2.0000000000000004 -3.3263841330368814e-16 1;
	setAttr ".radi" 0.1;
createNode joint -n "Hip_J_L" -p "Pelvis_J";
	rename -uid "FCFA41C7-4949-51B4-C70C-3590160E5708";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.5014801332494514 -0.12181212449333706 -0.56434152658354964 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 4.7123052286095689e-17 6.4319475220349389e-15 179.78718329345779 ;
	setAttr ".bps" -type "matrix" -6.5979998205085121e-18 -0.99999310180167766 -0.0037143436916290918 0
		 1.776344585738481e-15 -0.0037143436916290918 0.99999310180167766 0 -1 0 1.7763568394002505e-15 0
		 0.56434152658354986 1.498519866750549 0.12181212449333562 1;
	setAttr ".radi" 0.1;
createNode joint -n "Knee_J_L" -p "Hip_J_L";
	rename -uid "C8FD006D-0942-F3BB-63AA-BB929EC04400";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.65037824894905394 5.2735593669694936e-16 3.3306690738754696e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 9.3142761081158977e-10 -1.5801195534058305e-07 -10.665358349946013 ;
	setAttr ".bps" -type "matrix" -3.3523652190614066e-16 -0.98203067114683196 -0.18872138439218453 0
		 1.7444368991924932e-15 -0.18872138439218453 0.98203067114683196 0 -1 0 1.7763568394002505e-15 0
		 0.56434152658354952 0.84814610423964087 0.11939639614717945 1;
	setAttr ".radi" 0.1;
createNode joint -n "Ankle_J_L" -p "Knee_J_L";
	rename -uid "60A68FA3-684E-E287-9AA7-2CB66D8D83F8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.50312096110792848 0.010618521452696261 -1.3876944038315742e-09 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.5534835781262961e-07 -1.5813771710076908e-09 100.87817505648823 ;
	setAttr ".bps" -type "matrix" 1.7763568394002505e-15 -3.3306690738754696e-16 1 0
		 5.9164567891575885e-31 1 3.3306690738754696e-16 0 -1 0 1.7763568394002505e-15 0 0.56434152797124382 0.35206194706603178 0.034874425598943104 1;
	setAttr ".radi" 0.1;
createNode joint -n "Hip_J_R" -p "Pelvis_J";
	rename -uid "40F5DF12-7547-CFF7-45A9-A68B24FEC793";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.50148000000000037 -0.12181199999999945 0.56434200000000023 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.4041662059373261e-18 -7.560750858861136e-16 -0.21281670654212945 ;
	setAttr ".bps" -type "matrix" 6.5979998205057973e-18 0.99999310180167766 0.0037143436916275635 0
		 -1.776344585738481e-15 0.0037143436916275635 -0.99999310180167766 0 -1 0 1.7763568394002505e-15 0
		 -0.56434200000000001 1.4985200000000001 0.121812 1;
	setAttr ".radi" 0.1;
createNode joint -n "Knee_J_R" -p "Hip_J_R";
	rename -uid "F1683AB7-BA42-F16D-A3B4-3D9E5E5DCD8E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -0.6503784874455234 2.7076985432972211e-07 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.5857776126019663e-15 -3.8415275687733633e-14 -10.665358349946093 ;
	setAttr ".bps" -type "matrix" 3.3523652190614042e-16 0.98203067114683207 0.18872138439218439 0
		 -1.7444368991924933e-15 0.18872138439218439 -0.98203067114683207 0 -1 0 1.7763568394002505e-15 0
		 -0.56434200000000001 0.84814599999999996 0.11939599999999995 1;
	setAttr ".radi" 0.1;
createNode joint -n "Ankle_J_R" -p "Knee_J_R";
	rename -uid "FB5E6199-844F-6E55-B7BA-BC919F9D4863";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -0.50312073682824743 -0.010618855680408358 -5.5511151231257827e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.4639838898190514e-13 2.0355549961366502e-13 100.87817505648819 ;
	setAttr ".bps" -type "matrix" -1.7763568394002509e-15 8.8817841970012523e-16 -1.0000000000000002 0
		 -1.5777218104420236e-30 -1.0000000000000002 -8.8817841970012523e-16 0 -1 0 1.7763568394002505e-15 0
		 -0.56434199999999957 0.35206199999999999 0.0348744 1;
	setAttr ".radi" 0.1;
createNode pointConstraint -n "Pelvis_J_pointConstraint1" -p "Pelvis_J";
	rename -uid "BCC53156-624F-4E81-69EA-3DADB8A99B99";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Pelvis_J_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1.1102230246251565e-16 0 0 ;
	setAttr ".rst" -type "double3" -3.3263841330368814e-16 0 -6.1563156860697348e-31 ;
	setAttr -k on ".w0";
createNode joint -n "LowerBack_J" -p "Root_J";
	rename -uid "8648FE12-8A42-D077-F047-DB94F408FBD4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -8.2694421718051442e-14 -1.2722218725854067e-14 90 ;
	setAttr ".bps" -type "matrix" 3.9443045261050599e-31 1 2.2204460492503131e-16 0 -1.7763568394002505e-15 2.2204460492503131e-16 -1 0
		 -1 0 1.7763568394002505e-15 0 0 2.0000000000000004 0 1;
	setAttr ".radi" 0.1;
createNode joint -n "MiddleBack_j" -p "LowerBack_J";
	rename -uid "4D894AF5-0943-F068-7FEF-36BA6DDE0EC8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.58923177826553319 -1.4426968607360314e-16 1.3433948659359174e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 3.9443045261050599e-31 1 2.2204460492503131e-16 0 -1.7763568394002505e-15 2.2204460492503131e-16 -1 0
		 -1 0 1.7763568394002505e-15 0 -1.3433948659358686e-17 2.5892317782655336 2.7510542348784711e-16 1;
	setAttr ".radi" 0.1;
createNode joint -n "UpperBack_j" -p "MiddleBack_j";
	rename -uid "257589AA-1E46-FB18-8ADA-168499CCB82B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.58923177826553319 -1.4426968607360314e-16 1.3433948659359174e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 3.9443045261050599e-31 1 2.2204460492503131e-16 0 -1.7763568394002505e-15 2.2204460492503131e-16 -1 0
		 -1 0 1.7763568394002505e-15 0 -2.6867897318717372e-17 3.1784635565310668 5.5021084697569422e-16 1;
	setAttr ".radi" 0.1;
createNode joint -n "head_J" -p "UpperBack_j";
	rename -uid "C535D3A1-3642-4CB3-029D-46AB0CC5DA6C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.58923177826553408 -1.4426968607360304e-16 1.3433948659359174e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -90.000000000000014 ;
	setAttr ".bps" -type "matrix" 1.7763568394002505e-15 -4.4408920985006262e-16 1 0
		 7.8886090522101181e-31 1 4.4408920985006262e-16 0 -1 0 1.7763568394002505e-15 0 -4.0301845978076056e-17 3.7676953347966009 8.2531627046354142e-16 1;
	setAttr ".radi" 0.1;
createNode joint -n "Eye_J_L" -p "head_J";
	rename -uid "FDA97D87-4B4A-5CE7-1079-CF921BF9662C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.76422435045242243 1.8948126760676569 -0.7973245978355179 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.4124500153760508e-30 -2.8249000307521015e-30 0 ;
	setAttr ".bps" -type "matrix" 1.7763568394002505e-15 -4.4408920985006262e-16 1 0
		 7.8886090522101181e-31 1 4.4408920985006262e-16 0 -1 0 1.7763568394002505e-15 0 0.79732459783551923 5.6625080108642578 0.76422435045242265 1;
	setAttr ".radi" 0.1;
createNode joint -n "EyeLid_J_L" -p "Eye_J_L";
	rename -uid "FD262BF8-674E-78EF-B387-A7A196D0A73B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1.7763568394002505e-15 -4.4408920985006262e-16 1 0
		 7.8886090522101181e-31 1 4.4408920985006262e-16 0 -1 0 1.7763568394002505e-15 0 0.79732459783551912 5.6625080108642578 0.76422435045242265 1;
	setAttr ".radi" 0.1;
createNode joint -n "Eye_J_R" -p "head_J";
	rename -uid "DD847038-8D4A-8A50-4D49-67B486DBD7CD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.76422435045243264 1.8948126760676569 0.76102703809738104 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1.7763568394002505e-15 -4.4408920985006262e-16 1 0
		 7.8886090522101181e-31 1 4.4408920985006262e-16 0 -1 0 1.7763568394002505e-15 0 -0.7610270380973797 5.6625080108642578 0.76422435045243564 1;
	setAttr ".radi" 0.1;
createNode joint -n "EyeLid_J_R" -p "Eye_J_R";
	rename -uid "F3FF43A3-B943-859C-379D-D3AC4E97E07F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0 4.0614047484402735e-17 3.8450079486264225e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1.7763568394002505e-15 -4.4408920985006262e-16 1 0
		 7.8886090522101181e-31 1 4.4408920985006262e-16 0 -1 0 1.7763568394002505e-15 0 -0.76102703809738004 5.6625080108642578 0.76422435045243564 1;
	setAttr ".radi" 0.1;
createNode joint -n "Jaw_J" -p "head_J";
	rename -uid "9338760A-2246-FEC5-887C-3EB6CF31F5C3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.574056019121582 0.7452325765527279 9.7942648978742769e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1.7763568394002505e-15 -4.4408920985006262e-16 1 0
		 7.8886090522101181e-31 1 4.4408920985006262e-16 0 -1 0 1.7763568394002505e-15 0 -1.2325951644078309e-32 4.5129279113493288 0.57405601912158311 1;
	setAttr ".radi" 0.1;
createNode pointConstraint -n "head_J_pointConstraint1" -p "head_J";
	rename -uid "613A2E05-8B40-1AF9-5631-10B7138847D6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "head_J_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.58923177826553408 -1.4426968607360304e-16 1.3433948659359174e-17 ;
	setAttr -k on ".w0";
createNode joint -n "Clavical_J_L" -p "UpperBack_j";
	rename -uid "7AB2A7D7-FB4E-5CA8-FCD3-4CACC5798E43";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.057495485626243958 -8.8231165818398957e-17 -0.39735784550220615 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999844 80.537677791974374 -7.7386235367883366e-14 ;
	setAttr ".bps" -type "matrix" 0.98639392383214375 0.1643989873053574 -1.660172533524527e-15 0
		 -0.16439898730535735 0.98639392383214375 -2.1534805444922697e-15 0 1.3322676295501878e-15 2.3869795029440866e-15 1 0
		 0.39735784550220615 3.2359590421573108 -5.4640751362246623e-17 1;
	setAttr ".radi" 0.1;
createNode joint -n "Shoulder_J_L" -p "Clavical_J_L";
	rename -uid "6EA28897-C545-9494-656B-3ABA0FD9898D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.32661362968082996 0 5.3405345110167841e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -53.31655936985058 ;
	setAttr ".bps" -type "matrix" 0.72110471028743084 -0.69282609419772911 7.3520402588604054e-16 0
		 0.69282609419772923 0.72110471028743084 -2.6178476534926416e-15 0 1.3322676295501878e-15 2.3869795029440866e-15 1 0
		 0.71952754526013873 3.2896539921169663 -5.434703833229439e-16 1;
	setAttr ".radi" 0.1;
createNode joint -n "Elbow_J_L" -p "Shoulder_J_L";
	rename -uid "917361D8-3845-7309-0284-7FB20859A902";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 4.8019029000420956e-15 1.0585968300090372e-13 0 ;
	setAttr ".bps" -type "matrix" 0.72110471028743084 -0.69282609419772911 7.3520402588604054e-16 0
		 0.69282609419772923 0.72110471028743084 -2.6178476534926416e-15 0 1.3322676295501878e-15 2.3869795029440866e-15 1 0
		 1.2672160348486223 2.7634434825123444 -1.4283632105429256e-15 1;
	setAttr ".radi" 0.1;
createNode joint -n "Wrist_J_L" -p "Elbow_J_L";
	rename -uid "2DF00B11-A546-1D46-DB20-E1A59654A446";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.3557917478731984e-15 1.1210000754687811e-13 0 ;
	setAttr ".bps" -type "matrix" 0.72110471028743084 -0.69282609419772911 7.3520402588604054e-16 0
		 0.69282609419772923 0.72110471028743084 -2.6178476534926416e-15 0 1.3322676295501878e-15 2.3869795029440866e-15 1 0
		 1.5151429648675903 2.5252391772000022 -1.8972336841973182e-15 1;
	setAttr ".radi" 0.1;
createNode pointConstraint -n "Wrist_J_L_pointConstraint1" -p "Wrist_J_L";
	rename -uid "E5C1E99F-CF46-A9DF-D56C-D7A3596E8C31";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Wrist_J_L_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 5.5511151231257827e-16 -8.8817841970012523e-16 -8.3266726846886741e-17 ;
	setAttr ".rst" -type "double3" 0.3438154355144134 0 -7.2164496600635175e-16 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Elbow_J_L_pointConstraint1" -p "Elbow_J_L";
	rename -uid "B4F430ED-0B4A-3F0F-C857-B281E45E8BD8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Elbow_J_L_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 7.7715611723760958e-16 -1.7763568394002505e-15 -1.5777218104420236e-30 ;
	setAttr ".rst" -type "double3" 0.75951312170763075 4.4408920985006262e-16 -1.4432899320127051e-15 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Clavical_J_L_pointConstraint1" -p "Clavical_J_L";
	rename -uid "5C08F6FF-5345-B910-3DAA-549EA983953B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Clavical_J_L_CTRLW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 0 -5.9164567891575885e-31 5.5511151231257827e-17 ;
	setAttr ".rst" -type "double3" 0.057495485626243958 -8.8231165818398957e-17 -0.39735784550220615 ;
	setAttr -k on ".w0";
createNode joint -n "Clavical_J_R" -p "UpperBack_j";
	rename -uid "8E86A24E-0847-29A0-47D8-94A0DB077797";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.057496443468933123 1.3234680230407525e-15 0.397358 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.00000000000108 80.537677791974389 -179.99999999999881 ;
	setAttr ".bps" -type "matrix" 0.98639392383214364 -0.16439898730535707 1.7640221776721287e-15 0
		 -0.16439898730535715 -0.98639392383214364 2.0714092606978682e-15 0 1.3322676295501882e-15 -2.3314683517128283e-15 -0.99999999999999978 0
		 -0.39735799999999999 3.2359599999999999 -5.4640799999999892e-17 1;
	setAttr ".radi" 0.1;
createNode joint -n "Shoulder_J_R" -p "Clavical_J_R";
	rename -uid "9891296C-8144-EC13-8F45-D5A9897BE7F9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -0.32661311206942645 4.9319696189265017e-06 -8.731335708143279e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -51.465271300546519 ;
	setAttr ".bps" -type "matrix" 0.74311038342101532 0.66916885615804889 -5.2135368261260675e-16 0
		 0.66916885615804877 -0.74311038342101521 2.6703372270652036e-15 0 1.3322676295501882e-15 -2.3314683517128283e-15 -0.99999999999999978 0
		 -0.71952799999999995 3.28965 -5.4347000000000565e-16 1;
	setAttr ".radi" 0.1;
createNode joint -n "Elbow_J_R" -p "Shoulder_J_R";
	rename -uid "9B9663B9-244A-F864-5954-38BF55E64BBA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -0.75951136607735303 -1.8194834190410347e-06 1.4286191890562471e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.74311038342101532 0.66916885615804889 -5.2135368261260675e-16 0
		 0.66916885615804877 -0.74311038342101521 2.6703372270652036e-15 0 1.3322676295501882e-15 -2.3314683517128283e-15 -0.99999999999999978 0
		 -1.2839299999999991 2.7814100000000015 -1.5761200000000007e-15 1;
	setAttr ".radi" 0.1;
createNode joint -n "Wrist_J_R" -p "Elbow_J_R";
	rename -uid "4E165F9F-464E-823C-E188-7994CF715D91";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -0.34381295059651917 1.4548538547209944e-06 5.9091203287380647e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.74311038342101532 0.66916885615804889 -5.2135368261260675e-16 0
		 0.66916885615804877 -0.74311038342101521 2.6703372270652036e-15 0 1.3322676295501882e-15 -2.3314683517128283e-15 -0.99999999999999978 0
		 -1.5394199999999993 2.5513399999999993 -1.9877799999999974e-15 1;
	setAttr ".radi" 0.1;
createNode pointConstraint -n "Root_J_pointConstraint1" -p "Root_J";
	rename -uid "D6F9482C-0A4D-5FAA-E8B6-C88B52411320";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Root_J_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 2.0000000000000004 0 ;
	setAttr -k on ".w0";
createNode transform -n "Root_J_GRP";
	rename -uid "DCC641BC-6441-CB3C-4DD8-C586BE711268";
	setAttr ".rp" -type "double3" 0 2.0000000000000004 0 ;
	setAttr ".sp" -type "double3" 0 2.0000000000000004 0 ;
createNode transform -n "Root_J_CTRL" -p "Root_J_GRP";
	rename -uid "701F1CC3-894A-4E7A-8F48-9CB9E914C068";
	setAttr ".rp" -type "double3" 0 2.0000000000000004 0 ;
	setAttr ".sp" -type "double3" 0 2.0000000000000004 0 ;
createNode nurbsCurve -n "Root_J_CTRLShape" -p "Root_J_CTRL";
	rename -uid "24775498-EA4B-65A6-92C4-C3AA79689664";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Pelvis_J_GRP" -p "Root_J_CTRL";
	rename -uid "B4B9FF26-D141-E6C6-F788-D290EFFE43F9";
	setAttr ".rp" -type "double3" 2.0000000000000004 7.7672762315375086e-16 -6.1563156860697348e-31 ;
	setAttr ".rpt" -type "double3" -2.0000000000000009 1.9999999999999998 0 ;
	setAttr ".sp" -type "double3" 2.0000000000000004 7.7672762315375086e-16 -6.1563156860697348e-31 ;
createNode transform -n "Pelvis_J_CTRL" -p "Pelvis_J_GRP";
	rename -uid "BF9DE0DA-A844-5DF3-C6E8-ADB6B3A9C9CF";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 2.0000000000000004 7.7629912906989214e-16 -6.1563156860697348e-31 ;
	setAttr ".sp" -type "double3" 2.0000000000000004 7.7629912906989214e-16 -6.1563156860697348e-31 ;
createNode nurbsCurve -n "Pelvis_J_CTRLShape" -p "Pelvis_J_CTRL";
	rename -uid "7225457E-8B4F-DB12-044A-AB926304BAC9";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Hip_J_L_GRP" -p "Pelvis_J_CTRL";
	rename -uid "7D5FE55B-FE44-C072-2340-C28873E7471C";
	setAttr ".rp" -type "double3" -1.4989619817594939 0.11624526639529814 -0.56434152658354964 ;
	setAttr ".rpt" -type "double3" 2.9974818485100427 -0.23805739088863453 0 ;
	setAttr ".sp" -type "double3" -1.4989619817594939 0.11624526639529814 -0.56434152658354964 ;
createNode transform -n "Hip_J_L_CTRL" -p "Hip_J_L_GRP";
	rename -uid "79176545-7945-5415-C246-2889C37F492F";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -1.4989619817594941 0.11624526639529827 -0.56434152658354964 ;
	setAttr ".sp" -type "double3" -1.4989619817594941 0.11624526639529827 -0.56434152658354964 ;
createNode nurbsCurve -n "Hip_J_L_CTRLShape" -p "Hip_J_L_CTRL";
	rename -uid "64C77C07-DB47-5761-FA83-E4A9ACB749B0";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Knee_J_L_GRP" -p "Hip_J_L_CTRL";
	rename -uid "96D0E0E1-A843-36EB-D508-A788ACEC8741";
	setAttr ".rp" -type "double3" -0.85543814114935957 -0.042812383918014368 -0.5643415265835493 ;
	setAttr ".rpt" -type "double3" 0.0068544083389189825 0.15905765031331309 0 ;
	setAttr ".sp" -type "double3" -0.85543814114935957 -0.042812383918014368 -0.5643415265835493 ;
createNode transform -n "Knee_J_L_CTRL" -p "Knee_J_L_GRP";
	rename -uid "8238DE60-FF43-B32E-C291-0AB7CDCFA21A";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -0.85543814114935934 -0.042812383918014243 -0.5643415265835493 ;
	setAttr ".sp" -type "double3" -0.85543814114935934 -0.042812383918014243 -0.5643415265835493 ;
createNode nurbsCurve -n "Knee_J_L_CTRLShape" -p "Knee_J_L_CTRL";
	rename -uid "25C5B383-A643-4003-D23A-D2B55FC80A3B";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Ankle_J_L_GRP" -p "Knee_J_L_CTRL";
	rename -uid "C742C8DE-154C-2A47-38B9-12BB9031409A";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0.034874425598944089 0.35206194706603189 -0.56434152797124371 ;
	setAttr ".rpt" -type "double3" -0.38719160564037486 -0.38425580953135002 0 ;
	setAttr ".sp" -type "double3" 0.034874425598944089 0.35206194706603183 -0.5643415279712436 ;
	setAttr ".spt" -type "double3" 0 5.5511151231257839e-17 -1.1102230246251568e-16 ;
createNode transform -n "Ankle_J_L_CTRL" -p "Ankle_J_L_GRP";
	rename -uid "18ACE878-1447-7098-5C35-13BA79A158ED";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.034874425598944131 0.35206194706603194 -0.5643415279712436 ;
	setAttr ".sp" -type "double3" 0.034874425598944131 0.35206194706603194 -0.5643415279712436 ;
createNode nurbsCurve -n "Ankle_J_L_CTRLShape" -p "Ankle_J_L_CTRL";
	rename -uid "D18EA9A8-3148-FA24-B8AE-16A4D8E2030A";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Hip_J_R_GRP" -p "Pelvis_J_CTRL";
	rename -uid "35D95FEC-6345-32FC-CDFA-99B9F0F8D0BA";
	setAttr ".rp" -type "double3" 1.4989621145456147 -0.11624514140788733 0.56434200000000023 ;
	setAttr ".rpt" -type "double3" -0.00044211454561444589 -0.0055668585921114441 0 ;
	setAttr ".sp" -type "double3" 1.4989621145456147 -0.11624514140788733 0.56434200000000023 ;
createNode transform -n "Hip_J_R_CTRL" -p "Hip_J_R_GRP";
	rename -uid "03473C0E-4545-8D0B-3869-ACBCE8291614";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.4989621145456145 -0.11624514140788722 0.56434200000000023 ;
	setAttr ".sp" -type "double3" 1.4989621145456145 -0.11624514140788722 0.56434200000000023 ;
createNode nurbsCurve -n "Hip_J_R_CTRLShape" -p "Hip_J_R_CTRL";
	rename -uid "FA3F9423-B64F-8869-2386-37AA87358A32";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Knee_J_R_GRP" -p "Hip_J_R_CTRL";
	rename -uid "FC71F18B-3443-0EEA-E59B-A8BFCC927272";
	setAttr ".rp" -type "double3" 0.85543796402138972 0.042812753274447342 0.56434200000000023 ;
	setAttr ".rpt" -type "double3" -0.0068543369212987933 -0.15905762391248032 0 ;
	setAttr ".sp" -type "double3" 0.85543796402138972 0.042812753274447342 0.56434200000000023 ;
createNode transform -n "Knee_J_R_CTRL" -p "Knee_J_R_GRP";
	rename -uid "2BC356F0-484A-5A18-418F-23A5A2B3F05D";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.85543796402138972 0.042812753274447453 0.56434200000000023 ;
	setAttr ".sp" -type "double3" 0.85543796402138972 0.042812753274447453 0.56434200000000023 ;
createNode nurbsCurve -n "Knee_J_R_CTRLShape" -p "Knee_J_R_CTRL";
	rename -uid "1CEF9D17-3741-788D-C4C7-07ADDAD98B7F";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Ankle_J_R_GRP" -p "Knee_J_R_CTRL";
	rename -uid "A80AC2D6-174F-C31A-2265-CABA623DBD63";
	setAttr ".rp" -type "double3" -0.034874399999998772 -0.35206199999999976 0.56434199999999968 ;
	setAttr ".rpt" -type "double3" 0.38719162719314121 0.38425589759403894 0 ;
	setAttr ".sp" -type "double3" -0.034874399999998772 -0.35206199999999976 0.56434199999999968 ;
createNode transform -n "Ankle_J_R_CTRL" -p "Ankle_J_R_GRP";
	rename -uid "4339AB74-6C4F-4EB7-ADBF-CFB0EDB1833F";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -0.034874399999998938 -0.35206199999999954 0.56434199999999968 ;
	setAttr ".sp" -type "double3" -0.034874399999998938 -0.35206199999999954 0.56434199999999968 ;
createNode nurbsCurve -n "Ankle_J_R_CTRLShape" -p "Ankle_J_R_CTRL";
	rename -uid "DDFFC697-EB42-8936-1952-96BF0799757C";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "LowerBack_J_GRP" -p "Root_J_CTRL";
	rename -uid "AFB6DD6F-FC49-27C6-19BD-91B5C7B159F0";
	setAttr ".rp" -type "double3" 2.0000000000000004 4.4408920985006271e-16 0 ;
	setAttr ".rpt" -type "double3" -2.0000000000000004 2 0 ;
	setAttr ".sp" -type "double3" 2.0000000000000004 4.4408920985006271e-16 0 ;
createNode transform -n "LowerBack_J_CTRL" -p "LowerBack_J_GRP";
	rename -uid "AA57592D-8B45-1F5F-5A60-789F1206847A";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 2.0000000000000004 5.5511151231257837e-16 0 ;
	setAttr ".sp" -type "double3" 2.0000000000000004 5.5511151231257837e-16 0 ;
createNode nurbsCurve -n "LowerBack_J_CTRLShape" -p "LowerBack_J_CTRL";
	rename -uid "C98B194A-8D4E-9F00-0DF4-2EB226B82565";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "MiddleBack_j_GRP" -p "LowerBack_J_CTRL";
	rename -uid "B09F14FC-4041-7701-3D05-CA87BC6DEA00";
	setAttr ".rp" -type "double3" 2.5892317782655336 2.9981952377645948e-16 1.3433948659359174e-17 ;
	setAttr ".sp" -type "double3" 2.5892317782655336 2.9981952377645948e-16 1.3433948659359174e-17 ;
createNode transform -n "MiddleBack_j_CTRL" -p "MiddleBack_j_GRP";
	rename -uid "BFF56CAF-624B-832D-E3C5-45A577E47ECF";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 2.5892317782655336 4.1084182623897513e-16 1.3433948659359174e-17 ;
	setAttr ".sp" -type "double3" 2.5892317782655336 4.1084182623897513e-16 1.3433948659359174e-17 ;
createNode nurbsCurve -n "MiddleBack_j_CTRLShape" -p "MiddleBack_j_CTRL";
	rename -uid "EB63E416-844D-A544-DD44-4383C9FE0579";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "UpperBack_j_GRP" -p "MiddleBack_j_CTRL";
	rename -uid "285313C4-CF48-4F0E-1EBC-F49292F16A3E";
	setAttr ".rp" -type "double3" 3.1784635565310668 1.5554983770285633e-16 2.6867897318718349e-17 ;
	setAttr ".sp" -type "double3" 3.1784635565310668 1.5554983770285633e-16 2.6867897318718349e-17 ;
createNode transform -n "UpperBack_j_CTRL" -p "UpperBack_j_GRP";
	rename -uid "65E39E06-FF47-8805-771C-DDBC0C2CDCA6";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 3.1784635565310668 2.6657214016537199e-16 2.6867897318718349e-17 ;
	setAttr ".sp" -type "double3" 3.1784635565310668 2.6657214016537199e-16 2.6867897318718349e-17 ;
createNode nurbsCurve -n "UpperBack_j_CTRLShape" -p "UpperBack_j_CTRL";
	rename -uid "40DB9C0A-CB44-12E5-FBC0-D5B6FD104A44";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "head_J_GRP" -p "UpperBack_j_CTRL";
	rename -uid "F1BA6A37-414A-1AA1-1326-C48C16BEBD03";
	setAttr ".rp" -type "double3" -8.478765737220481e-16 3.7676953347966009 4.0301845978077523e-17 ;
	setAttr ".rpt" -type "double3" 3.7676953347966018 -3.7676953347966009 0 ;
	setAttr ".sp" -type "double3" -8.478765737220481e-16 3.7676953347966009 4.0301845978077523e-17 ;
createNode transform -n "head_J_CTRL" -p "head_J_GRP";
	rename -uid "B889D1E1-A64E-79A6-BA3D-79A3367BE26E";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -8.5915672535130149e-16 3.7676953347966009 4.0301845978077523e-17 ;
	setAttr ".sp" -type "double3" -8.5915672535130149e-16 3.7676953347966009 4.0301845978077523e-17 ;
createNode nurbsCurve -n "head_J_CTRLShape" -p "head_J_CTRL";
	rename -uid "37944004-0547-356A-BDC9-0194FC4D4B4E";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Eye_J_L_GRP" -p "head_J_CTRL";
	rename -uid "434EC433-CA49-0DAE-5C97-AC90E6E8F156";
	setAttr ".rp" -type "double3" 0.76422435045242154 5.6625080108642578 -0.7973245978355179 ;
	setAttr ".sp" -type "double3" 0.76422435045242154 5.6625080108642578 -0.7973245978355179 ;
createNode transform -n "Eye_J_L_CTRL" -p "Eye_J_L_GRP";
	rename -uid "A918F5DF-FE4B-DACE-D91C-038706F5C331";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.76422435045242154 5.6625080108642578 -0.7973245978355179 ;
	setAttr ".sp" -type "double3" 0.76422435045242154 5.6625080108642578 -0.7973245978355179 ;
createNode nurbsCurve -n "Eye_J_L_CTRLShape" -p "Eye_J_L_CTRL";
	rename -uid "7FC8D810-7447-F400-D9A0-B2BC8F2ABE2F";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "EyeLid_J_L_GRP" -p "Eye_J_L_CTRL";
	rename -uid "71B9BCF1-C948-B9A4-CDCE-0D8C867808E9";
	setAttr ".rp" -type "double3" 0.76422435045242154 5.6625080108642578 -0.7973245978355179 ;
	setAttr ".sp" -type "double3" 0.76422435045242154 5.6625080108642578 -0.7973245978355179 ;
createNode transform -n "EyeLid_J_L_CTRL" -p "EyeLid_J_L_GRP";
	rename -uid "792274F3-A44B-DD18-1D63-46A3A52AB0A9";
	setAttr -l on ".v";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rz";
	setAttr -l on ".ry";
	setAttr -l on ".rx";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.76422435045242154 5.6625080108642578 -0.7973245978355179 ;
	setAttr ".sp" -type "double3" 0.76422435045242154 5.6625080108642578 -0.7973245978355179 ;
	setAttr ".mnrl" -type "double3" -45 -45 -29.999999999999996 ;
	setAttr ".mxrl" -type "double3" 45 45 25 ;
	setAttr ".mrze" yes;
	setAttr ".xrze" yes;
createNode nurbsCurve -n "EyeLid_J_L_CTRLShape" -p "EyeLid_J_L_CTRL";
	rename -uid "F3359685-6643-7AA7-750A-889C598C38A5";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Eye_J_R_GRP" -p "head_J_CTRL";
	rename -uid "744A634E-404C-4FD4-81D0-1D9ACCB2186F";
	setAttr ".rp" -type "double3" 0.76422435045243176 5.6625080108642578 0.76102703809738104 ;
	setAttr ".sp" -type "double3" 0.76422435045243176 5.6625080108642578 0.76102703809738104 ;
createNode transform -n "Eye_J_R_CTRL" -p "Eye_J_R_GRP";
	rename -uid "E976D6E2-A343-914C-9EBC-D5965B80E188";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.76422435045243176 5.6625080108642578 0.76102703809738104 ;
	setAttr ".sp" -type "double3" 0.76422435045243176 5.6625080108642578 0.76102703809738104 ;
createNode nurbsCurve -n "Eye_J_R_CTRLShape" -p "Eye_J_R_CTRL";
	rename -uid "68A12D1A-5045-E730-D329-7FA47F4E4684";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "EyeLid_J_R_GRP" -p "Eye_J_R_CTRL";
	rename -uid "F35EEA33-7949-13CF-F13D-3DB06287B142";
	setAttr ".rp" -type "double3" 0.76422435045243176 5.6625080108642578 0.76102703809738137 ;
	setAttr ".sp" -type "double3" 0.76422435045243176 5.6625080108642578 0.76102703809738137 ;
createNode transform -n "EyeLid_J_R_CTRL" -p "EyeLid_J_R_GRP";
	rename -uid "FC8938AD-CD45-70F6-540E-13B94BF3FB7E";
	setAttr -l on ".v";
	setAttr -l on ".ry";
	setAttr -l on ".rx";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.76422435045243176 5.6625080108642578 0.76102703809738137 ;
	setAttr ".sp" -type "double3" 0.76422435045243176 5.6625080108642578 0.76102703809738137 ;
	setAttr ".mnrl" -type "double3" -45 -45 -29.999999999999996 ;
	setAttr ".mxrl" -type "double3" 45 45 25 ;
	setAttr ".mrze" yes;
	setAttr ".xrze" yes;
createNode nurbsCurve -n "EyeLid_J_R_CTRLShape" -p "EyeLid_J_R_CTRL";
	rename -uid "7F5BF8F9-8B4D-EC47-2118-FE9CBBD2073F";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Jaw_J_GRP" -p "head_J_CTRL";
	rename -uid "3E364987-1B40-FD2F-8072-6189ADF53712";
	setAttr ".rp" -type "double3" 0.57405601912158111 4.5129279113493288 1.0197283357655051e-15 ;
	setAttr ".sp" -type "double3" 0.57405601912158111 4.5129279113493288 1.0197283357655051e-15 ;
createNode transform -n "Jaw_J_CTRL" -p "Jaw_J_GRP";
	rename -uid "AC4E0CF9-B249-D830-2B9E-7CB0EFF693E7";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" 0.57405601912158111 4.5129279113493288 1.0197283357655051e-15 ;
	setAttr ".sp" -type "double3" 0.57405601912158111 4.5129279113493288 1.0197283357655051e-15 ;
createNode nurbsCurve -n "Jaw_J_CTRLShape" -p "Jaw_J_CTRL";
	rename -uid "CE8BFAE2-8F47-8372-08C7-1BB9DD154BCD";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Clavical_J_L_GRP" -p "UpperBack_j_CTRL";
	rename -uid "27758D47-3543-5657-BC4B-1DB37D72455F";
	setAttr ".rp" -type "double3" 0.9239397538826839 3.1266051095552538 8.2123419244025571e-15 ;
	setAttr ".rpt" -type "double3" 2.3120192882746271 -3.1266051095552538 -0.39735784550221448 ;
	setAttr ".sp" -type "double3" 0.9239397538826839 3.1266051095552538 8.2123419244025571e-15 ;
createNode transform -n "Clavical_J_L_CTRL" -p "Clavical_J_L_GRP";
	rename -uid "8C178A70-FB40-5C8F-7EDF-21AD7BAAA68F";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.92393975388268379 3.1266051095552538 8.1450232525180994e-15 ;
	setAttr ".sp" -type "double3" 0.92393975388268379 3.1266051095552538 8.1450232525180994e-15 ;
createNode nurbsCurve -n "Clavical_J_L_CTRLShape" -p "Clavical_J_L_CTRL";
	rename -uid "F5D7FD4A-B243-1502-2513-0A9A798CEEE6";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Shoulder_J_L_GRP" -p "Clavical_J_L_CTRL";
	rename -uid "4C716544-0741-B21D-E43E-24BB914767DE";
	setAttr ".rp" -type "double3" -1.7603034245517266 2.8706924477816562 8.1984285976282704e-15 ;
	setAttr ".rpt" -type "double3" 3.0108568081152405 0.25591266177359739 0 ;
	setAttr ".sp" -type "double3" -1.7603034245517266 2.8706924477816562 8.1984285976282704e-15 ;
createNode transform -n "Shoulder_J_L_CTRL" -p "Shoulder_J_L_GRP";
	rename -uid "C1951648-C34F-B02D-1569-84A9ACCBBB89";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -1.7603034245517273 2.8706924477816571 8.1984285976282704e-15 ;
	setAttr ".sp" -type "double3" -1.7603034245517273 2.8706924477816571 8.1984285976282704e-15 ;
createNode nurbsCurve -n "Shoulder_J_L_CTRLShape" -p "Shoulder_J_L_CTRL";
	rename -uid "E6A19F43-F245-AC38-0952-2391AF17A9BF";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Elbow_J_L_GRP" -p "Shoulder_J_L_CTRL";
	rename -uid "7575E1D7-B648-A468-AA34-35850B746446";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".rp" -type "double3" -1.0007903028440963 2.870692447781658 6.7551386656155661e-15 ;
	setAttr ".sp" -type "double3" -1.0007903028440965 2.870692447781658 6.7551386656155661e-15 ;
	setAttr ".spt" -type "double3" 2.2204460492503128e-16 0 0 ;
createNode transform -n "Elbow_J_L_CTRL" -p "Elbow_J_L_GRP";
	rename -uid "59A2DA32-9E44-F1AC-083B-62B56B801BD4";
	setAttr -l on ".v";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -1.0007903028440965 2.870692447781658 6.7551386656155653e-15 ;
	setAttr ".sp" -type "double3" -1.0007903028440965 2.870692447781658 6.7551386656155653e-15 ;
createNode nurbsCurve -n "Elbow_J_L_CTRLShape" -p "Elbow_J_L_CTRL";
	rename -uid "267263D2-CC47-F78F-ABD7-E89E0E681326";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Wrist_J_L_GRP" -p "Elbow_J_L_CTRL";
	rename -uid "EE203034-324C-194F-18B8-F68666945A9D";
	setAttr ".rp" -type "double3" -0.65697486732968313 2.8706924477816576 6.0334936996092151e-15 ;
	setAttr ".sp" -type "double3" -0.65697486732968313 2.8706924477816576 6.0334936996092151e-15 ;
createNode transform -n "Wrist_J_L_CTRL" -p "Wrist_J_L_GRP";
	rename -uid "463D5540-8644-7BF0-CB56-7BBEC97C2975";
	setAttr -l on ".v";
	setAttr -l on ".tz";
	setAttr -l on ".ty";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -0.65697486732968313 2.8706924477816576 6.0334936996092151e-15 ;
	setAttr ".sp" -type "double3" -0.65697486732968313 2.8706924477816576 6.0334936996092151e-15 ;
createNode nurbsCurve -n "Wrist_J_L_CTRLShape" -p "Wrist_J_L_CTRL";
	rename -uid "2A577F77-4F40-0B59-7600-41B7780BE191";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Clavical_J_R_GRP" -p "UpperBack_j_CTRL";
	rename -uid "9A595DE6-5642-999E-087E-878E3D870085";
	setAttr ".rp" -type "double3" -0.92394006374673676 -3.1266060289661821 -8.0516906462433824e-15 ;
	setAttr ".rpt" -type "double3" 4.1599000637467372 3.1266060289661821 0.39735800000000815 ;
	setAttr ".sp" -type "double3" -0.92394006374673676 -3.1266060289661821 -8.0516906462433824e-15 ;
createNode transform -n "Clavical_J_R_CTRL" -p "Clavical_J_R_GRP";
	rename -uid "7B1D7C63-A641-129A-EECF-8293A76DAF55";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -0.92394006374673665 -3.1266060289661817 -6.5726727854997716e-15 ;
	setAttr ".sp" -type "double3" -0.92394006374673665 -3.1266060289661817 -6.5726727854997716e-15 ;
createNode nurbsCurve -n "Clavical_J_R_CTRLShape" -p "Clavical_J_R_CTRL";
	rename -uid "60EFB903-DC4F-EEC4-B641-9F98B7B4D3E6";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Shoulder_J_R_GRP" -p "Clavical_J_R_CTRL";
	rename -uid "68975FCB-FF4A-9689-4DBF-8A9864929F79";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 1.6666425996981691 -2.9260588015546318 -6.6599861425812021e-15 ;
	setAttr ".rpt" -type "double3" -2.9171957755143323 -0.20054229544193047 0 ;
	setAttr ".sp" -type "double3" 1.6666425996981691 -2.9260588015546318 -6.6599861425812005e-15 ;
	setAttr ".spt" -type "double3" 0 0 -1.5777218104420243e-30 ;
createNode transform -n "Shoulder_J_R_CTRL" -p "Shoulder_J_R_GRP";
	rename -uid "1D2FA8FF-8841-047F-0B48-C4920AE4D08A";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.6666425996981691 -2.9260588015546323 -6.6599861425812005e-15 ;
	setAttr ".sp" -type "double3" 1.6666425996981691 -2.9260588015546323 -6.6599861425812005e-15 ;
createNode nurbsCurve -n "Shoulder_J_R_CTRLShape" -p "Shoulder_J_R_CTRL";
	rename -uid "6FC3447A-A444-7880-AB1D-24BC44B188FA";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Elbow_J_R_GRP" -p "Shoulder_J_R_CTRL";
	rename -uid "E486423C-1943-708F-4DF6-469D8C53DC4A";
	setAttr ".rp" -type "double3" 0.90713123362081594 -2.9260606210380513 -5.2313669535249542e-15 ;
	setAttr ".sp" -type "double3" 0.90713123362081594 -2.9260606210380513 -5.2313669535249542e-15 ;
createNode transform -n "Elbow_J_R_CTRL" -p "Elbow_J_R_GRP";
	rename -uid "2CB4CCBA-F441-38FE-FDB7-C8A82C4469F9";
	setAttr -l on ".v";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.90713123362081594 -2.9260606210380513 -5.2313669535249549e-15 ;
	setAttr ".sp" -type "double3" 0.90713123362081594 -2.9260606210380513 -5.2313669535249549e-15 ;
createNode nurbsCurve -n "Elbow_J_R_CTRLShape" -p "Elbow_J_R_CTRL";
	rename -uid "B97C5005-D247-A1E5-F225-078770371D3E";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Wrist_J_R_GRP" -p "Elbow_J_R_CTRL";
	rename -uid "7A6B9C38-114F-1E11-A582-C1941E016859";
	setAttr ".rp" -type "double3" 0.56331828302429721 -2.9260591661841966 -4.6404549206511493e-15 ;
	setAttr ".sp" -type "double3" 0.56331828302429721 -2.9260591661841966 -4.6404549206511493e-15 ;
createNode transform -n "Wrist_J_R_CTRL" -p "Wrist_J_R_GRP";
	rename -uid "C2237DB8-4B40-1C58-6C86-C3AD078A1EC5";
	setAttr -l on ".v";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.56331828302429721 -2.9260591661841966 -4.64045492065115e-15 ;
	setAttr ".sp" -type "double3" 0.56331828302429721 -2.9260591661841966 -4.64045492065115e-15 ;
createNode nurbsCurve -n "Wrist_J_R_CTRLShape" -p "Wrist_J_R_CTRL";
	rename -uid "3CF587C6-0542-299F-830B-5DAF46E52666";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "600CBA02-3241-DF25-B2B7-7DBCE3F5A46F";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "1661FD65-D942-C973-6697-E4BEA887F2C8";
	setAttr ".cdl" 3;
	setAttr -s 4 ".dli[1:3]"  1 2 3;
	setAttr -s 3 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "E7C5F4A4-1A43-5AA7-BC6D-F3BC66616717";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "C0F364C9-7A48-2A96-5A06-5BA69D858F4B";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "FF83EB3D-CE4E-B5AE-86C3-BEBE5F5E5A78";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "C719C1C6-9B41-0C5F-6BAE-91A8ADBA6EBB";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "63E4AE3D-794A-6C59-07D3-98A7530FA0FE";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "0A41BEBB-A04A-3F4E-1C8A-B69EEECED819";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 570\n            -height 358\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 568\n            -height 358\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 570\n            -height 358\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2254\n            -height 1322\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n"
		+ "                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n"
		+ "                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n"
		+ "            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2254\\n    -height 1322\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2254\\n    -height 1322\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "30A8CC4E-4A4C-F8A5-B53D-49B299CB5392";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode timeEditor -s -n "timeEditor";
	rename -uid "6A554A63-4B43-6BB2-0828-FC8831D4FF7F";
	setAttr ".ac" 0;
createNode displayLayer -n "joints";
	rename -uid "2F445E36-9146-56E4-1B6C-A7AB67676DA8";
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 1;
createNode groupId -n "groupId19";
	rename -uid "574DF951-084E-D484-BD7B-3697ED3C8893";
	setAttr ".ihi" 0;
createNode dagPose -n "bindPose1";
	rename -uid "B3B67334-894D-AE0D-7268-47A7779673E7";
	setAttr -s 25 ".wm";
	setAttr -s 25 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 2.0000000000000004 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.70710678118654691 0 0.70710678118654813 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.3263841330368814e-16
		 0 -6.1563156860697348e-31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654757 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.5014801332494514 -0.12181212449333706
		 -0.56434152658354964 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.99999827544893238 0.0018571750486076478 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.65037824894905405 5.134781488891349e-16
		 3.3306690738754696e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.092938493133640693 0.99567185181366269 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.50312096110792837 0.010618521452696254
		 -1.3876944038315742e-09 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.7709479179530172 0.63689819265241121 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.50148000000000037 -0.12181199999999945
		 0.56434200000000023 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.0018571750486068837 0.99999827544893238 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.6503784874455234 2.707698543435999e-07
		 -1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.092938493133641387 0.99567185181366258 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.50312073682824743 -0.010618855680408351
		 -5.5511151231257827e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.77094791795301698 0.63689819265241154 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654757 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.58923177826553319 -1.4426968607360314e-16
		 1.3433948659359174e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.58923177826553319 -1.4426968607360319e-16
		 1.3433948659359174e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.58923177826553408 -1.4426968607360292e-16
		 1.3433948659359171e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654757 0.70710678118654746 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.76422435045242243 1.8948126760676569
		 -0.7973245978355179 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.1102230246251565e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.76422435045243264 1.8948126760676569
		 0.76102703809738104 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.1102230246251565e-16
		 0 4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.574056019121582 0.7452325765527279
		 9.7942648978742769e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.057495485626243958
		 -8.8231165818398957e-17 -0.39735784550220615 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.53953660378730428 0.45705607224241229 -0.45705607224241107 0.53953660378730572 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 4.4145116487284118e-19 0 0 0 0.32661362968083008
		 4.4408920985006262e-16 5.3405345110169419e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.44866836504849145 0.89369832617316325 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.75951312170763075 0
		 -1.4432899320127051e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.34381543551441318 4.4408920985006262e-16
		 -7.2164496600635175e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.057496443468933123
		 1.3234680230407525e-15 0.39735799999999999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.45705607224241318 -0.53953660378730528 -0.53953660378730472 -0.45705607224241035 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.32661311206942645
		 4.9319696189265017e-06 -8.7313357081431212e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.4341722672774041 0.90082986314131397 1 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.75951136607735314
		 -1.8194834185969455e-06 1.4286191890562487e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.34381295059651906
		 1.4548538547209944e-06 5.9091203287380568e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr -s 25 ".m";
	setAttr -s 25 ".p";
	setAttr ".bp" yes;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "BCF5A1DF-8D4E-DE2A-2318-03ABDD56C1EC";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".c" -type "double3" 0 -2 0 ;
	setAttr ".r" 3;
	setAttr ".d" 1;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "D9F11D65-5044-7086-E5CA-51987875EED8";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 2.0000000000000004 0 1;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "2F00B69A-FF4A-CB45-DF4D-C98C3027C065";
	setAttr ".nr" -type "double3" -1 0 0 ;
	setAttr ".r" 1.7000000000000002;
	setAttr ".d" 1;
	setAttr ".s" 3;
createNode transformGeometry -n "transformGeometry2";
	rename -uid "E81B752E-1346-26DE-746C-8CA02ACAC664";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.0000000000000004 8.8774992561626651e-16 -6.1563156860697348e-31 1;
createNode makeNurbCircle -n "makeNurbCircle3";
	rename -uid "0B2632AE-C741-1E00-DEF2-F4B490DA98BE";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 0.4;
createNode transformGeometry -n "transformGeometry3";
	rename -uid "7A445D0A-334D-C7F5-B18D-6997148260D9";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.4989619817594939 0.11624526639529824 -0.56434152658354964 1;
createNode makeNurbCircle -n "makeNurbCircle4";
	rename -uid "34EF63A1-944F-BD0E-AC5F-6295F4520D94";
	setAttr ".c" -type "double3" -0.1 0.2 0 ;
	setAttr ".r" 0.3;
	setAttr ".d" 1;
createNode transformGeometry -n "transformGeometry4";
	rename -uid "100CA262-6447-CCF3-8CBF-99A6E2566592";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.85543814114935934 -0.04281238391801423 -0.5643415265835493 1;
createNode makeNurbCircle -n "makeNurbCircle5";
	rename -uid "C85DD557-8648-BF28-69FC-E3BB69110D8C";
	setAttr ".c" -type "double3" 0.5 0 0 ;
	setAttr ".r" 0.3;
	setAttr ".d" 1;
	setAttr ".s" 4;
createNode transformGeometry -n "transformGeometry5";
	rename -uid "33843711-6847-FA10-D432-5FBD0FCCA9EE";
	setAttr ".txf" -type "matrix" 1 -2.7755575615628914e-17 0 0 -2.7755575615628914e-17 0.99999999999999989 0 0
		 0 0 1 0 0.034874425598944089 0.35206194706603189 -0.5643415279712436 1;
createNode makeNurbCircle -n "makeNurbCircle6";
	rename -uid "A8D9D434-7541-9348-CF4C-588B5188CD28";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 0.4;
createNode transformGeometry -n "transformGeometry6";
	rename -uid "74885D09-554C-0462-F3FE-48911CA44123";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.4989621145456147 -0.11624514140788723 0.56434200000000023 1;
createNode makeNurbCircle -n "makeNurbCircle7";
	rename -uid "DD5E71B0-6A44-879B-C87D-469524265A1F";
	setAttr ".c" -type "double3" 0.1 -0.2 0 ;
	setAttr ".r" 0.3;
	setAttr ".d" 1;
createNode transformGeometry -n "transformGeometry7";
	rename -uid "4908A9FA-4148-7061-15F7-E7823BBCBBC8";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.85543796402138983 0.04281275327444746 0.56434200000000023 1;
createNode makeNurbCircle -n "makeNurbCircle8";
	rename -uid "D8F47D51-4348-40D1-497F-E0A515276CE4";
	setAttr ".c" -type "double3" -0.5 0 0 ;
	setAttr ".r" 0.3;
	setAttr ".d" 1;
	setAttr ".s" 4;
createNode transformGeometry -n "transformGeometry8";
	rename -uid "99AE7E4D-3E4E-A04F-3168-678E16591BC6";
	setAttr ".txf" -type "matrix" 1 -5.5511151231257827e-17 0 0 2.7755575615628914e-17 1 0 0
		 0 0 1 0 -0.034874399999998792 -0.35206199999999954 0.56434199999999968 1;
createNode makeNurbCircle -n "makeNurbCircle9";
	rename -uid "02AA1F4C-1E48-941B-06DE-F3A1A18B17F4";
	setAttr ".c" -type "double3" 0 0.60000000000000009 0 ;
	setAttr ".r" 0.29999999999999993;
	setAttr ".d" 1;
	setAttr ".s" 6;
createNode transformGeometry -n "transformGeometry9";
	rename -uid "E21B9A14-EA4D-DB95-909E-348DFA7BB0B3";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.0000000000000004 5.5511151231257837e-16 0 1;
createNode makeNurbCircle -n "makeNurbCircle10";
	rename -uid "DEAB2AEC-9C47-DD4B-2FD1-0FBC3E07230F";
	setAttr ".c" -type "double3" 0 0.60000000000000009 0 ;
	setAttr ".r" 0.29999999999999993;
	setAttr ".d" 1;
	setAttr ".s" 6;
createNode transformGeometry -n "transformGeometry10";
	rename -uid "2DE7C4CE-BC49-C9F9-4DF2-4B88C6F774AC";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.5892317782655336 4.1084182623897518e-16 1.3433948659359174e-17 1;
createNode makeNurbCircle -n "makeNurbCircle11";
	rename -uid "62A633E3-8C45-D571-43A5-8FBF0AA70344";
	setAttr ".c" -type "double3" 0 0.60000000000000009 0 ;
	setAttr ".r" 0.29999999999999993;
	setAttr ".d" 1;
	setAttr ".s" 6;
createNode transformGeometry -n "transformGeometry11";
	rename -uid "749A5E92-3D42-8B48-0425-3CB3327E99D7";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.1784635565310668 2.6657214016537204e-16 2.6867897318718349e-17 1;
createNode makeNurbCircle -n "makeNurbCircle12";
	rename -uid "51F65888-9544-7211-7DC4-FF859AF998B6";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".c" -type "double3" 0 2.1 0 ;
	setAttr ".r" 2.8000000000000003;
	setAttr ".d" 1;
	setAttr ".s" 5;
createNode transformGeometry -n "transformGeometry12";
	rename -uid "9286B04F-9045-1C7E-0D72-2D8A224273D7";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.478765737220481e-16 3.7676953347966009 4.0301845978077523e-17 1;
createNode makeNurbCircle -n "makeNurbCircle13";
	rename -uid "FE296E8B-9045-927D-0FEE-33A4053F10F2";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".c" -type "double3" 1.2000000000000002 0 0 ;
	setAttr ".r" 0.8;
	setAttr ".d" 1;
createNode transformGeometry -n "transformGeometry13";
	rename -uid "7B82BB1F-144A-7D22-D7D0-A0A21CA0D4D1";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.76422435045242154 5.6625080108642578 -0.7973245978355179 1;
createNode makeNurbCircle -n "makeNurbCircle14";
	rename -uid "A2FB3180-9245-E55E-5B02-5C8C8672F7E5";
	setAttr ".c" -type "double3" 2 0 0 ;
	setAttr ".r" 1.1;
	setAttr ".sw" 52.894621809878728;
	setAttr ".d" 1;
createNode transformGeometry -n "transformGeometry14";
	rename -uid "277C1DD7-764C-44B4-4836-9290B9714D6C";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.76422435045242154 5.6625080108642578 -0.7973245978355179 1;
createNode makeNurbCircle -n "makeNurbCircle15";
	rename -uid "A57FD814-964F-76E8-46A4-D1A78B9BE2E9";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".c" -type "double3" 1.2000000000000002 0 0 ;
	setAttr ".r" 0.8;
	setAttr ".d" 1;
createNode transformGeometry -n "transformGeometry15";
	rename -uid "49AC1D2F-9D42-4B4B-96C1-7AA622DB6E09";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.76422435045243176 5.6625080108642578 0.76102703809738104 1;
createNode makeNurbCircle -n "makeNurbCircle16";
	rename -uid "600FD957-8949-5556-C7C7-9FA3857766EC";
	setAttr ".c" -type "double3" 2 0 0 ;
	setAttr ".r" 1.1;
	setAttr ".sw" 52.894621809878728;
	setAttr ".d" 1;
createNode transformGeometry -n "transformGeometry16";
	rename -uid "6E9AAF41-9D48-77AE-DEB9-2BBB4534D784";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.76422435045243176 5.6625080108642578 0.76102703809738137 1;
createNode makeNurbCircle -n "makeNurbCircle17";
	rename -uid "D860A5CE-BE41-B913-D972-DDA53BBCDDDA";
	setAttr ".nr" -type "double3" 0 0 -1 ;
	setAttr ".c" -type "double3" 0.90000000000000013 -0.2 0 ;
	setAttr ".r" 0.7;
	setAttr ".d" 1;
	setAttr ".s" 3;
createNode transformGeometry -n "transformGeometry17";
	rename -uid "DB4C4C23-F544-9DD4-3C60-579B3F6F8C75";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.57405601912158111 4.5129279113493288 1.0197283357655051e-15 1;
createNode makeNurbCircle -n "makeNurbCircle18";
	rename -uid "9228FC6E-984B-6657-38D8-5A87829178B1";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".c" -type "double3" 0 0.1 0 ;
	setAttr ".r" 0.6;
	setAttr ".d" 1;
	setAttr ".s" 6;
createNode transformGeometry -n "transformGeometry18";
	rename -uid "34251DDB-1D40-453C-5E33-3EB2225F3329";
	setAttr ".txf" -type "matrix" 1 0 -9.8607613152626476e-32 0 2.7755575615628914e-17 1 4.6838616247497576e-31 0
		 0 -1.4791141972893971e-31 1 0 0.9239397538826839 3.1266051095552538 8.2123419244025571e-15 1;
createNode makeNurbCircle -n "makeNurbCircle19";
	rename -uid "1FA85E25-BF43-C7D6-FDE0-44B964DAEE57";
	setAttr ".nr" -type "double3" 0 0 0 ;
	setAttr ".r" 0.49999999999999994;
	setAttr ".d" 1;
	setAttr ".s" 4;
createNode transformGeometry -n "transformGeometry19";
	rename -uid "6C99C083-F34F-AFFE-A252-0283D774A5CA";
	setAttr ".txf" -type "matrix" 1 5.5511151231257827e-17 0 0 -5.5511151231257827e-17 1 0 0
		 0 0 1 0 -1.7603034245517266 2.8706924477816562 8.1984285976282688e-15 1;
createNode makeNurbCircle -n "makeNurbCircle20";
	rename -uid "016DF5C3-6D4D-A69D-36F2-0CB22B2F317A";
	setAttr ".r" 0.5;
	setAttr ".d" 1;
	setAttr ".s" 3;
createNode transformGeometry -n "transformGeometry20";
	rename -uid "7B1B4AAD-6C42-36B7-64B9-D3A509F8F807";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.0007903028440963 2.8706924477816576 6.755138665615563e-15 1;
createNode makeNurbCircle -n "makeNurbCircle21";
	rename -uid "3DBB57C1-F74E-79BC-FF9B-259B39912397";
	setAttr ".c" -type "double3" 0.40000000000000008 0 0 ;
	setAttr ".r" 0.3;
createNode transformGeometry -n "transformGeometry21";
	rename -uid "6D09B283-B14D-C5E0-6391-C0901B720DAF";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.6569748673296828 2.8706924477816576 6.033493699609212e-15 1;
createNode makeNurbCircle -n "makeNurbCircle22";
	rename -uid "C852CCAC-6743-1C91-A4A6-BCBCE16A7016";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 0.6;
	setAttr ".d" 1;
createNode transformGeometry -n "transformGeometry22";
	rename -uid "6BB94EFD-D94A-8D95-DE89-C2804F842511";
	setAttr ".txf" -type "matrix" 1 2.7755575615628914e-17 0 0 -2.7755575615628914e-17 1 1.9721522630525295e-31 0
		 0 0 1 0 -0.92394006374673654 -3.1266060289661821 -8.0516906462433856e-15 1;
createNode makeNurbCircle -n "makeNurbCircle23";
	rename -uid "E99CD39E-9449-E9DC-4E55-B792B507DF85";
	setAttr ".r" 0.5;
	setAttr ".d" 1;
	setAttr ".s" 4;
createNode transformGeometry -n "transformGeometry23";
	rename -uid "0D31D7E3-A442-BA1D-97B1-5C94FCF87179";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.6666425996981689 -2.9260588015546318 -6.6599861425812013e-15 1;
createNode makeNurbCircle -n "makeNurbCircle24";
	rename -uid "3368A253-E343-CC56-DC8A-DA8C80F0F387";
	setAttr ".nr" -type "double3" 0 0 -1 ;
	setAttr ".r" 0.5;
	setAttr ".d" 1;
	setAttr ".s" 3;
createNode transformGeometry -n "transformGeometry24";
	rename -uid "78310153-7D45-ED75-BB55-E69B9CCAF533";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.90713123362081594 -2.9260606210380509 -5.2313669535249549e-15 1;
createNode makeNurbCircle -n "makeNurbCircle25";
	rename -uid "1A3D234C-C445-6EFA-B020-64BFA075E7A1";
	setAttr ".c" -type "double3" -0.4 0 0 ;
	setAttr ".r" 0.3;
createNode transformGeometry -n "transformGeometry25";
	rename -uid "8B3CB43F-D04B-6CA9-496C-4FAED85D9D27";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.56331828302429687 -2.9260591661841966 -4.6404549206511485e-15 1;
createNode timeEditorTracks -n "Composition1";
	rename -uid "196E7E3C-FD46-E256-6944-F191BB3622A3";
createNode displayLayer -n "EyeMesh";
	rename -uid "A8D4C7C0-F04E-CCE5-A905-1B9FE451FF43";
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 2;
createNode character -n "BaseRigSet";
	rename -uid "1F1B2838-7845-3401-EE39-9F970ABEAA8A";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -s 73 ".dnsm";
	setAttr -s 10 ".lv[6:10]"  2.7594273068414377e-16 4.2424611216899214e-17 
		0 0 0;
	setAttr -s 10 ".lv";
	setAttr -s 63 ".av";
	setAttr ".am" -type "characterMapping" 73 "Shoulder_J_R_CTRL.rotateZ" 2 
		1 "Shoulder_J_R_CTRL.rotateY" 2 2 "Shoulder_J_R_CTRL.rotateX" 2 
		3 "Elbow_J_R_CTRL.rotateY" 2 4 "Elbow_J_R_CTRL.translateX" 1 
		1 "Wrist_J_R_CTRL.rotateZ" 2 5 "Wrist_J_R_CTRL.rotateY" 2 6 "Wrist_J_R_CTRL.rotateX" 
		2 7 "Wrist_J_R_CTRL.translateX" 1 2 "EyeLid_J_L_CTRL.rotateZ" 
		2 8 "Eye_J_R_CTRL.rotateZ" 2 11 "Eye_J_R_CTRL.rotateY" 2 
		12 "Eye_J_R_CTRL.rotateX" 2 13 "EyeLid_J_R_CTRL.rotateZ" 2 14 "Jaw_J_CTRL.rotateZ" 
		2 17 "Jaw_J_CTRL.rotateY" 2 18 "Jaw_J_CTRL.rotateX" 2 19 "Jaw_J_CTRL.translateZ" 
		1 3 "Jaw_J_CTRL.translateY" 1 4 "Jaw_J_CTRL.translateX" 1 
		5 "Clavical_J_L_CTRL.rotateZ" 2 20 "Clavical_J_L_CTRL.rotateY" 2 
		21 "Clavical_J_L_CTRL.rotateX" 2 22 "Shoulder_J_L_CTRL.rotateZ" 2 
		23 "Shoulder_J_L_CTRL.rotateY" 2 24 "Shoulder_J_L_CTRL.rotateX" 2 
		25 "Elbow_J_L_CTRL.rotateY" 2 26 "Elbow_J_L_CTRL.translateX" 1 
		6 "Wrist_J_L_CTRL.rotateZ" 2 27 "Wrist_J_L_CTRL.rotateY" 2 28 "Wrist_J_L_CTRL.rotateX" 
		2 29 "Wrist_J_L_CTRL.translateX" 1 7 "Clavical_J_R_CTRL.rotateZ" 
		2 30 "Clavical_J_R_CTRL.rotateY" 2 31 "Clavical_J_R_CTRL.rotateX" 
		2 32 "Hip_J_R_CTRL.rotateZ" 2 33 "Hip_J_R_CTRL.rotateY" 2 
		34 "Hip_J_R_CTRL.rotateX" 2 35 "Knee_J_R_CTRL.rotateZ" 2 36 "Ankle_J_R_CTRL.rotateZ" 
		2 37 "Ankle_J_R_CTRL.rotateY" 2 38 "Ankle_J_R_CTRL.rotateX" 2 
		39 "LowerBack_J_CTRL.rotateZ" 2 40 "LowerBack_J_CTRL.rotateY" 2 
		41 "LowerBack_J_CTRL.rotateX" 2 42 "MiddleBack_j_CTRL.rotateZ" 2 
		43 "MiddleBack_j_CTRL.rotateY" 2 44 "MiddleBack_j_CTRL.rotateX" 2 
		45 "UpperBack_j_CTRL.rotateZ" 2 46 "UpperBack_j_CTRL.rotateY" 2 
		47 "UpperBack_j_CTRL.rotateX" 2 48 "head_J_CTRL.rotateZ" 2 49 "head_J_CTRL.rotateY" 
		2 50 "head_J_CTRL.rotateX" 2 51 "Eye_J_L_CTRL.rotateZ" 2 52 "Eye_J_L_CTRL.rotateY" 
		2 53 "Eye_J_L_CTRL.rotateX" 2 54 "Ankle_J_L_CTRL.rotateZ" 2 
		55 "Ankle_J_L_CTRL.rotateY" 2 56 "Ankle_J_L_CTRL.rotateX" 2 57 "Knee_J_L_CTRL.rotateZ" 
		2 58 "Hip_J_L_CTRL.rotateZ" 2 59 "Hip_J_L_CTRL.rotateY" 2 
		60 "Hip_J_L_CTRL.rotateX" 2 61 "Root_J_CTRL.rotateZ" 2 62 "Root_J_CTRL.rotateY" 
		2 63 "Root_J_CTRL.rotateX" 2 64 "Root_J_CTRL.translateZ" 1 
		8 "Root_J_CTRL.translateY" 1 9 "Root_J_CTRL.translateX" 1 10 "Pelvis_J_CTRL.rotateZ" 
		2 65 "Pelvis_J_CTRL.rotateY" 2 66 "Pelvis_J_CTRL.rotateX" 2 
		67  ;
	setAttr ".aal" -type "attributeAlias" {"Eye_J_R_CTRL_rotateZ","angularValues[11]"
		,"Eye_J_R_CTRL_rotateY","angularValues[12]","Eye_J_R_CTRL_rotateX","angularValues[13]"
		,"EyeLid_J_R_CTRL_rotateZ","angularValues[14]","Jaw_J_CTRL_rotateZ","angularValues[17]"
		,"Jaw_J_CTRL_rotateY","angularValues[18]","Jaw_J_CTRL_rotateX","angularValues[19]"
		,"Shoulder_J_R_CTRL_rotateZ","angularValues[1]","Clavical_J_L_CTRL_rotateZ","angularValues[20]"
		,"Clavical_J_L_CTRL_rotateY","angularValues[21]","Clavical_J_L_CTRL_rotateX","angularValues[22]"
		,"Shoulder_J_L_CTRL_rotateZ","angularValues[23]","Shoulder_J_L_CTRL_rotateY","angularValues[24]"
		,"Shoulder_J_L_CTRL_rotateX","angularValues[25]","Elbow_J_L_CTRL_rotateY","angularValues[26]"
		,"Wrist_J_L_CTRL_rotateZ","angularValues[27]","Wrist_J_L_CTRL_rotateY","angularValues[28]"
		,"Wrist_J_L_CTRL_rotateX","angularValues[29]","Shoulder_J_R_CTRL_rotateY","angularValues[2]"
		,"Clavical_J_R_CTRL_rotateZ","angularValues[30]","Clavical_J_R_CTRL_rotateY","angularValues[31]"
		,"Clavical_J_R_CTRL_rotateX","angularValues[32]","Hip_J_R_CTRL_rotateZ","angularValues[33]"
		,"Hip_J_R_CTRL_rotateY","angularValues[34]","Hip_J_R_CTRL_rotateX","angularValues[35]"
		,"Knee_J_R_CTRL_rotateZ","angularValues[36]","Ankle_J_R_CTRL_rotateZ","angularValues[37]"
		,"Ankle_J_R_CTRL_rotateY","angularValues[38]","Ankle_J_R_CTRL_rotateX","angularValues[39]"
		,"Shoulder_J_R_CTRL_rotateX","angularValues[3]","LowerBack_J_CTRL_rotateZ","angularValues[40]"
		,"LowerBack_J_CTRL_rotateY","angularValues[41]","LowerBack_J_CTRL_rotateX","angularValues[42]"
		,"MiddleBack_j_CTRL_rotateZ","angularValues[43]","MiddleBack_j_CTRL_rotateY","angularValues[44]"
		,"MiddleBack_j_CTRL_rotateX","angularValues[45]","UpperBack_j_CTRL_rotateZ","angularValues[46]"
		,"UpperBack_j_CTRL_rotateY","angularValues[47]","UpperBack_j_CTRL_rotateX","angularValues[48]"
		,"head_J_CTRL_rotateZ","angularValues[49]","Elbow_J_R_CTRL_rotateY","angularValues[4]"
		,"head_J_CTRL_rotateY","angularValues[50]","head_J_CTRL_rotateX","angularValues[51]"
		,"Eye_J_L_CTRL_rotateZ","angularValues[52]","Eye_J_L_CTRL_rotateY","angularValues[53]"
		,"Eye_J_L_CTRL_rotateX","angularValues[54]","Ankle_J_L_CTRL_rotateZ","angularValues[55]"
		,"Ankle_J_L_CTRL_rotateY","angularValues[56]","Ankle_J_L_CTRL_rotateX","angularValues[57]"
		,"Knee_J_L_CTRL_rotateZ","angularValues[58]","Hip_J_L_CTRL_rotateZ","angularValues[59]"
		,"Wrist_J_R_CTRL_rotateZ","angularValues[5]","Hip_J_L_CTRL_rotateY","angularValues[60]"
		,"Hip_J_L_CTRL_rotateX","angularValues[61]","Root_J_CTRL_rotateZ","angularValues[62]"
		,"Root_J_CTRL_rotateY","angularValues[63]","Root_J_CTRL_rotateX","angularValues[64]"
		,"Pelvis_J_CTRL_rotateZ","angularValues[65]","Pelvis_J_CTRL_rotateY","angularValues[66]"
		,"Pelvis_J_CTRL_rotateX","angularValues[67]","Wrist_J_R_CTRL_rotateY","angularValues[6]"
		,"Wrist_J_R_CTRL_rotateX","angularValues[7]","EyeLid_J_L_CTRL_rotateZ","angularValues[8]"
		,"Root_J_CTRL_translateX","linearValues[10]","Elbow_J_R_CTRL_translateX","linearValues[1]"
		,"Wrist_J_R_CTRL_translateX","linearValues[2]","Jaw_J_CTRL_translateZ","linearValues[3]"
		,"Jaw_J_CTRL_translateY","linearValues[4]","Jaw_J_CTRL_translateX","linearValues[5]"
		,"Elbow_J_L_CTRL_translateX","linearValues[6]","Wrist_J_L_CTRL_translateX","linearValues[7]"
		,"Root_J_CTRL_translateZ","linearValues[8]","Root_J_CTRL_translateY","linearValues[9]"
		} ;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "AB703FB2-EA44-8DCD-9E43-87BE1ABD5F0B";
	setAttr ".version" -type "string" "5.3.3.2";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "7ACA3CE5-204E-7281-C58F-33A61EE41D92";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "F7085E21-5D4F-D41B-0D7D-24961A6FE0ED";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "93FB6DF5-D642-0479-7C5B-8DBA5C7F6A87";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "B9EBA750-6D41-E36E-7EDF-8296AF5615CA";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -4448.8093470297244 -671.21072212075273 ;
	setAttr ".tgi[0].vh" -type "double2" 4596.4283887829179 328.35359288752829 ;
	setAttr -s 7 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 470;
	setAttr ".tgi[0].ni[0].y" 21.428571701049805;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 18.571428298950195;
	setAttr ".tgi[0].ni[1].y" -321.42855834960938;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 680;
	setAttr ".tgi[0].ni[2].y" 21.428571701049805;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -2162.857177734375;
	setAttr ".tgi[0].ni[3].y" -152.85714721679688;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" -2482.857177734375;
	setAttr ".tgi[0].ni[4].y" -152.85714721679688;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -2482.857177734375;
	setAttr ".tgi[0].ni[5].y" -251.42857360839844;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" -2482.857177734375;
	setAttr ".tgi[0].ni[6].y" -54.285713195800781;
	setAttr ".tgi[0].ni[6].nvs" 18304;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 10;
	setAttr ".unw" 10;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".dli" 1;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".st";
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
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".b" 0.80000001192092896;
	setAttr ".bc" -type "float3" 1 1 1 ;
	setAttr ".s" 0.20000000298023224;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
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
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
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
select -ne :characterPartition;
connectAttr "Root_J_CTRL.r" "Root_J.r";
connectAttr "joints.di" "Root_J.do";
connectAttr "Root_J_pointConstraint1.ctx" "Root_J.tx";
connectAttr "Root_J_pointConstraint1.cty" "Root_J.ty";
connectAttr "Root_J_pointConstraint1.ctz" "Root_J.tz";
connectAttr "Root_J.s" "Pelvis_J.is";
connectAttr "Pelvis_J_CTRL.r" "Pelvis_J.r";
connectAttr "Pelvis_J.s" "Hip_J_L.is";
connectAttr "Hip_J_L_CTRL.r" "Hip_J_L.r";
connectAttr "Hip_J_L.s" "Knee_J_L.is";
connectAttr "Knee_J_L_CTRL.r" "Knee_J_L.r";
connectAttr "Knee_J_L.s" "Ankle_J_L.is";
connectAttr "Ankle_J_L_CTRL.r" "Ankle_J_L.r";
connectAttr "Pelvis_J.s" "Hip_J_R.is";
connectAttr "Hip_J_R_CTRL.r" "Hip_J_R.r";
connectAttr "Hip_J_R.s" "Knee_J_R.is";
connectAttr "Knee_J_R_CTRL.r" "Knee_J_R.r";
connectAttr "Knee_J_R.s" "Ankle_J_R.is";
connectAttr "Ankle_J_R_CTRL.r" "Ankle_J_R.r";
connectAttr "Pelvis_J.pim" "Pelvis_J_pointConstraint1.cpim";
connectAttr "Pelvis_J.rp" "Pelvis_J_pointConstraint1.crp";
connectAttr "Pelvis_J.rpt" "Pelvis_J_pointConstraint1.crt";
connectAttr "Pelvis_J_CTRL.t" "Pelvis_J_pointConstraint1.tg[0].tt";
connectAttr "Pelvis_J_CTRL.rp" "Pelvis_J_pointConstraint1.tg[0].trp";
connectAttr "Pelvis_J_CTRL.rpt" "Pelvis_J_pointConstraint1.tg[0].trt";
connectAttr "Pelvis_J_CTRL.pm" "Pelvis_J_pointConstraint1.tg[0].tpm";
connectAttr "Pelvis_J_pointConstraint1.w0" "Pelvis_J_pointConstraint1.tg[0].tw";
connectAttr "Root_J.s" "LowerBack_J.is";
connectAttr "LowerBack_J_CTRL.r" "LowerBack_J.r";
connectAttr "LowerBack_J.s" "MiddleBack_j.is";
connectAttr "MiddleBack_j_CTRL.r" "MiddleBack_j.r";
connectAttr "MiddleBack_j.s" "UpperBack_j.is";
connectAttr "UpperBack_j_CTRL.r" "UpperBack_j.r";
connectAttr "UpperBack_j.s" "head_J.is";
connectAttr "head_J_CTRL.r" "head_J.r";
connectAttr "head_J.s" "Eye_J_L.is";
connectAttr "Eye_J_L_CTRL.r" "Eye_J_L.r";
connectAttr "Eye_J_L.s" "EyeLid_J_L.is";
connectAttr "head_J.s" "Eye_J_R.is";
connectAttr "Eye_J_R_CTRL.r" "Eye_J_R.r";
connectAttr "Eye_J_R.s" "EyeLid_J_R.is";
connectAttr "head_J.s" "Jaw_J.is";
connectAttr "Jaw_J_CTRL.r" "Jaw_J.r";
connectAttr "head_J.pim" "head_J_pointConstraint1.cpim";
connectAttr "head_J.rp" "head_J_pointConstraint1.crp";
connectAttr "head_J.rpt" "head_J_pointConstraint1.crt";
connectAttr "head_J_CTRL.t" "head_J_pointConstraint1.tg[0].tt";
connectAttr "head_J_CTRL.rp" "head_J_pointConstraint1.tg[0].trp";
connectAttr "head_J_CTRL.rpt" "head_J_pointConstraint1.tg[0].trt";
connectAttr "head_J_CTRL.pm" "head_J_pointConstraint1.tg[0].tpm";
connectAttr "head_J_pointConstraint1.w0" "head_J_pointConstraint1.tg[0].tw";
connectAttr "UpperBack_j.s" "Clavical_J_L.is";
connectAttr "Clavical_J_L_CTRL.r" "Clavical_J_L.r";
connectAttr "Clavical_J_L.s" "Shoulder_J_L.is";
connectAttr "Shoulder_J_L_CTRL.r" "Shoulder_J_L.r";
connectAttr "Shoulder_J_L.s" "Elbow_J_L.is";
connectAttr "Elbow_J_L_CTRL.r" "Elbow_J_L.r";
connectAttr "Elbow_J_L_pointConstraint1.ctx" "Elbow_J_L.tx";
connectAttr "Elbow_J_L_pointConstraint1.cty" "Elbow_J_L.ty";
connectAttr "Elbow_J_L_pointConstraint1.ctz" "Elbow_J_L.tz";
connectAttr "Elbow_J_L.s" "Wrist_J_L.is";
connectAttr "Wrist_J_L_CTRL.r" "Wrist_J_L.r";
connectAttr "Wrist_J_L_pointConstraint1.ctx" "Wrist_J_L.tx";
connectAttr "Wrist_J_L_pointConstraint1.cty" "Wrist_J_L.ty";
connectAttr "Wrist_J_L_pointConstraint1.ctz" "Wrist_J_L.tz";
connectAttr "Wrist_J_L.pim" "Wrist_J_L_pointConstraint1.cpim";
connectAttr "Wrist_J_L.rp" "Wrist_J_L_pointConstraint1.crp";
connectAttr "Wrist_J_L.rpt" "Wrist_J_L_pointConstraint1.crt";
connectAttr "Wrist_J_L_CTRL.t" "Wrist_J_L_pointConstraint1.tg[0].tt";
connectAttr "Wrist_J_L_CTRL.rp" "Wrist_J_L_pointConstraint1.tg[0].trp";
connectAttr "Wrist_J_L_CTRL.rpt" "Wrist_J_L_pointConstraint1.tg[0].trt";
connectAttr "Wrist_J_L_CTRL.pm" "Wrist_J_L_pointConstraint1.tg[0].tpm";
connectAttr "Wrist_J_L_pointConstraint1.w0" "Wrist_J_L_pointConstraint1.tg[0].tw"
		;
connectAttr "Elbow_J_L.pim" "Elbow_J_L_pointConstraint1.cpim";
connectAttr "Elbow_J_L.rp" "Elbow_J_L_pointConstraint1.crp";
connectAttr "Elbow_J_L.rpt" "Elbow_J_L_pointConstraint1.crt";
connectAttr "Elbow_J_L_CTRL.t" "Elbow_J_L_pointConstraint1.tg[0].tt";
connectAttr "Elbow_J_L_CTRL.rp" "Elbow_J_L_pointConstraint1.tg[0].trp";
connectAttr "Elbow_J_L_CTRL.rpt" "Elbow_J_L_pointConstraint1.tg[0].trt";
connectAttr "Elbow_J_L_CTRL.pm" "Elbow_J_L_pointConstraint1.tg[0].tpm";
connectAttr "Elbow_J_L_pointConstraint1.w0" "Elbow_J_L_pointConstraint1.tg[0].tw"
		;
connectAttr "Clavical_J_L.pim" "Clavical_J_L_pointConstraint1.cpim";
connectAttr "Clavical_J_L.rp" "Clavical_J_L_pointConstraint1.crp";
connectAttr "Clavical_J_L.rpt" "Clavical_J_L_pointConstraint1.crt";
connectAttr "Clavical_J_L_CTRL.t" "Clavical_J_L_pointConstraint1.tg[0].tt";
connectAttr "Clavical_J_L_CTRL.rp" "Clavical_J_L_pointConstraint1.tg[0].trp";
connectAttr "Clavical_J_L_CTRL.rpt" "Clavical_J_L_pointConstraint1.tg[0].trt";
connectAttr "Clavical_J_L_CTRL.pm" "Clavical_J_L_pointConstraint1.tg[0].tpm";
connectAttr "Clavical_J_L_pointConstraint1.w0" "Clavical_J_L_pointConstraint1.tg[0].tw"
		;
connectAttr "UpperBack_j.s" "Clavical_J_R.is";
connectAttr "Clavical_J_R_CTRL.r" "Clavical_J_R.r";
connectAttr "Clavical_J_R.s" "Shoulder_J_R.is";
connectAttr "Shoulder_J_R_CTRL.r" "Shoulder_J_R.r";
connectAttr "Shoulder_J_R.s" "Elbow_J_R.is";
connectAttr "Elbow_J_R_CTRL.r" "Elbow_J_R.r";
connectAttr "Elbow_J_R.s" "Wrist_J_R.is";
connectAttr "Wrist_J_R_CTRL.r" "Wrist_J_R.r";
connectAttr "Root_J.pim" "Root_J_pointConstraint1.cpim";
connectAttr "Root_J.rp" "Root_J_pointConstraint1.crp";
connectAttr "Root_J.rpt" "Root_J_pointConstraint1.crt";
connectAttr "Root_J_CTRL.t" "Root_J_pointConstraint1.tg[0].tt";
connectAttr "Root_J_CTRL.rp" "Root_J_pointConstraint1.tg[0].trp";
connectAttr "Root_J_CTRL.rpt" "Root_J_pointConstraint1.tg[0].trt";
connectAttr "Root_J_CTRL.pm" "Root_J_pointConstraint1.tg[0].tpm";
connectAttr "Root_J_pointConstraint1.w0" "Root_J_pointConstraint1.tg[0].tw";
connectAttr "Root_J.jo" "Root_J_GRP.r";
connectAttr "BaseRigSet.av[62]" "Root_J_CTRL.rz";
connectAttr "BaseRigSet.av[63]" "Root_J_CTRL.ry";
connectAttr "BaseRigSet.av[64]" "Root_J_CTRL.rx";
connectAttr "BaseRigSet.lv[8]" "Root_J_CTRL.tz";
connectAttr "BaseRigSet.lv[9]" "Root_J_CTRL.ty";
connectAttr "BaseRigSet.lv[10]" "Root_J_CTRL.tx";
connectAttr "transformGeometry1.og" "Root_J_CTRLShape.cr";
connectAttr "Pelvis_J.jo" "Pelvis_J_GRP.r";
connectAttr "BaseRigSet.av[65]" "Pelvis_J_CTRL.rz";
connectAttr "BaseRigSet.av[66]" "Pelvis_J_CTRL.ry";
connectAttr "BaseRigSet.av[67]" "Pelvis_J_CTRL.rx";
connectAttr "transformGeometry2.og" "Pelvis_J_CTRLShape.cr";
connectAttr "Hip_J_L.jo" "Hip_J_L_GRP.r";
connectAttr "BaseRigSet.av[59]" "Hip_J_L_CTRL.rz";
connectAttr "BaseRigSet.av[60]" "Hip_J_L_CTRL.ry";
connectAttr "BaseRigSet.av[61]" "Hip_J_L_CTRL.rx";
connectAttr "transformGeometry3.og" "Hip_J_L_CTRLShape.cr";
connectAttr "Knee_J_L.jo" "Knee_J_L_GRP.r";
connectAttr "BaseRigSet.av[58]" "Knee_J_L_CTRL.rz";
connectAttr "transformGeometry4.og" "Knee_J_L_CTRLShape.cr";
connectAttr "Ankle_J_L.jo" "Ankle_J_L_GRP.r";
connectAttr "BaseRigSet.av[55]" "Ankle_J_L_CTRL.rz";
connectAttr "BaseRigSet.av[56]" "Ankle_J_L_CTRL.ry";
connectAttr "BaseRigSet.av[57]" "Ankle_J_L_CTRL.rx";
connectAttr "transformGeometry5.og" "Ankle_J_L_CTRLShape.cr";
connectAttr "Hip_J_R.jo" "Hip_J_R_GRP.r";
connectAttr "BaseRigSet.av[33]" "Hip_J_R_CTRL.rz";
connectAttr "BaseRigSet.av[34]" "Hip_J_R_CTRL.ry";
connectAttr "BaseRigSet.av[35]" "Hip_J_R_CTRL.rx";
connectAttr "transformGeometry6.og" "Hip_J_R_CTRLShape.cr";
connectAttr "Knee_J_R.jo" "Knee_J_R_GRP.r";
connectAttr "BaseRigSet.av[36]" "Knee_J_R_CTRL.rz";
connectAttr "transformGeometry7.og" "Knee_J_R_CTRLShape.cr";
connectAttr "Ankle_J_R.jo" "Ankle_J_R_GRP.r";
connectAttr "BaseRigSet.av[37]" "Ankle_J_R_CTRL.rz";
connectAttr "BaseRigSet.av[38]" "Ankle_J_R_CTRL.ry";
connectAttr "BaseRigSet.av[39]" "Ankle_J_R_CTRL.rx";
connectAttr "transformGeometry8.og" "Ankle_J_R_CTRLShape.cr";
connectAttr "LowerBack_J.jo" "LowerBack_J_GRP.r";
connectAttr "BaseRigSet.av[40]" "LowerBack_J_CTRL.rz";
connectAttr "BaseRigSet.av[41]" "LowerBack_J_CTRL.ry";
connectAttr "BaseRigSet.av[42]" "LowerBack_J_CTRL.rx";
connectAttr "transformGeometry9.og" "LowerBack_J_CTRLShape.cr";
connectAttr "MiddleBack_j.jo" "MiddleBack_j_GRP.r";
connectAttr "BaseRigSet.av[43]" "MiddleBack_j_CTRL.rz";
connectAttr "BaseRigSet.av[44]" "MiddleBack_j_CTRL.ry";
connectAttr "BaseRigSet.av[45]" "MiddleBack_j_CTRL.rx";
connectAttr "transformGeometry10.og" "MiddleBack_j_CTRLShape.cr";
connectAttr "UpperBack_j.jo" "UpperBack_j_GRP.r";
connectAttr "BaseRigSet.av[46]" "UpperBack_j_CTRL.rz";
connectAttr "BaseRigSet.av[47]" "UpperBack_j_CTRL.ry";
connectAttr "BaseRigSet.av[48]" "UpperBack_j_CTRL.rx";
connectAttr "transformGeometry11.og" "UpperBack_j_CTRLShape.cr";
connectAttr "head_J.jo" "head_J_GRP.r";
connectAttr "BaseRigSet.av[49]" "head_J_CTRL.rz";
connectAttr "BaseRigSet.av[50]" "head_J_CTRL.ry";
connectAttr "BaseRigSet.av[51]" "head_J_CTRL.rx";
connectAttr "transformGeometry12.og" "head_J_CTRLShape.cr";
connectAttr "Eye_J_L.jo" "Eye_J_L_GRP.r";
connectAttr "BaseRigSet.av[52]" "Eye_J_L_CTRL.rz";
connectAttr "BaseRigSet.av[53]" "Eye_J_L_CTRL.ry";
connectAttr "BaseRigSet.av[54]" "Eye_J_L_CTRL.rx";
connectAttr "transformGeometry13.og" "Eye_J_L_CTRLShape.cr";
connectAttr "EyeLid_J_L.jo" "EyeLid_J_L_GRP.r";
connectAttr "BaseRigSet.av[8]" "EyeLid_J_L_CTRL.rz";
connectAttr "transformGeometry14.og" "EyeLid_J_L_CTRLShape.cr";
connectAttr "Eye_J_R.jo" "Eye_J_R_GRP.r";
connectAttr "BaseRigSet.av[11]" "Eye_J_R_CTRL.rz";
connectAttr "BaseRigSet.av[12]" "Eye_J_R_CTRL.ry";
connectAttr "BaseRigSet.av[13]" "Eye_J_R_CTRL.rx";
connectAttr "transformGeometry15.og" "Eye_J_R_CTRLShape.cr";
connectAttr "EyeLid_J_R.jo" "EyeLid_J_R_GRP.r";
connectAttr "BaseRigSet.av[14]" "EyeLid_J_R_CTRL.rz";
connectAttr "transformGeometry16.og" "EyeLid_J_R_CTRLShape.cr";
connectAttr "Jaw_J.jo" "Jaw_J_GRP.r";
connectAttr "BaseRigSet.av[17]" "Jaw_J_CTRL.rz";
connectAttr "BaseRigSet.av[18]" "Jaw_J_CTRL.ry";
connectAttr "BaseRigSet.av[19]" "Jaw_J_CTRL.rx";
connectAttr "BaseRigSet.lv[3]" "Jaw_J_CTRL.tz";
connectAttr "BaseRigSet.lv[4]" "Jaw_J_CTRL.ty";
connectAttr "BaseRigSet.lv[5]" "Jaw_J_CTRL.tx";
connectAttr "transformGeometry17.og" "Jaw_J_CTRLShape.cr";
connectAttr "Clavical_J_L.jo" "Clavical_J_L_GRP.r";
connectAttr "BaseRigSet.av[20]" "Clavical_J_L_CTRL.rz";
connectAttr "BaseRigSet.av[21]" "Clavical_J_L_CTRL.ry";
connectAttr "BaseRigSet.av[22]" "Clavical_J_L_CTRL.rx";
connectAttr "transformGeometry18.og" "Clavical_J_L_CTRLShape.cr";
connectAttr "Shoulder_J_L.jo" "Shoulder_J_L_GRP.r";
connectAttr "BaseRigSet.av[23]" "Shoulder_J_L_CTRL.rz";
connectAttr "BaseRigSet.av[24]" "Shoulder_J_L_CTRL.ry";
connectAttr "BaseRigSet.av[25]" "Shoulder_J_L_CTRL.rx";
connectAttr "transformGeometry19.og" "Shoulder_J_L_CTRLShape.cr";
connectAttr "Elbow_J_L.jo" "Elbow_J_L_GRP.r";
connectAttr "BaseRigSet.lv[6]" "Elbow_J_L_CTRL.tx";
connectAttr "BaseRigSet.av[26]" "Elbow_J_L_CTRL.ry";
connectAttr "transformGeometry20.og" "Elbow_J_L_CTRLShape.cr";
connectAttr "Wrist_J_L.jo" "Wrist_J_L_GRP.r";
connectAttr "BaseRigSet.lv[7]" "Wrist_J_L_CTRL.tx";
connectAttr "BaseRigSet.av[27]" "Wrist_J_L_CTRL.rz";
connectAttr "BaseRigSet.av[28]" "Wrist_J_L_CTRL.ry";
connectAttr "BaseRigSet.av[29]" "Wrist_J_L_CTRL.rx";
connectAttr "transformGeometry21.og" "Wrist_J_L_CTRLShape.cr";
connectAttr "Clavical_J_R.jo" "Clavical_J_R_GRP.r";
connectAttr "BaseRigSet.av[30]" "Clavical_J_R_CTRL.rz";
connectAttr "BaseRigSet.av[31]" "Clavical_J_R_CTRL.ry";
connectAttr "BaseRigSet.av[32]" "Clavical_J_R_CTRL.rx";
connectAttr "transformGeometry22.og" "Clavical_J_R_CTRLShape.cr";
connectAttr "Shoulder_J_R.jo" "Shoulder_J_R_GRP.r";
connectAttr "BaseRigSet.av[1]" "Shoulder_J_R_CTRL.rz";
connectAttr "BaseRigSet.av[2]" "Shoulder_J_R_CTRL.ry";
connectAttr "BaseRigSet.av[3]" "Shoulder_J_R_CTRL.rx";
connectAttr "transformGeometry23.og" "Shoulder_J_R_CTRLShape.cr";
connectAttr "Elbow_J_R.jo" "Elbow_J_R_GRP.r";
connectAttr "BaseRigSet.lv[1]" "Elbow_J_R_CTRL.tx";
connectAttr "BaseRigSet.av[4]" "Elbow_J_R_CTRL.ry";
connectAttr "transformGeometry24.og" "Elbow_J_R_CTRLShape.cr";
connectAttr "Wrist_J_R.jo" "Wrist_J_R_GRP.r";
connectAttr "BaseRigSet.lv[2]" "Wrist_J_R_CTRL.tx";
connectAttr "BaseRigSet.av[5]" "Wrist_J_R_CTRL.rz";
connectAttr "BaseRigSet.av[6]" "Wrist_J_R_CTRL.ry";
connectAttr "BaseRigSet.av[7]" "Wrist_J_R_CTRL.rx";
connectAttr "transformGeometry25.og" "Wrist_J_R_CTRLShape.cr";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[1]" "joints.id";
connectAttr "Root_J.msg" "bindPose1.m[0]";
connectAttr "Pelvis_J.msg" "bindPose1.m[1]";
connectAttr "Hip_J_L.msg" "bindPose1.m[2]";
connectAttr "Knee_J_L.msg" "bindPose1.m[3]";
connectAttr "Ankle_J_L.msg" "bindPose1.m[4]";
connectAttr "Hip_J_R.msg" "bindPose1.m[5]";
connectAttr "Knee_J_R.msg" "bindPose1.m[6]";
connectAttr "Ankle_J_R.msg" "bindPose1.m[7]";
connectAttr "LowerBack_J.msg" "bindPose1.m[8]";
connectAttr "MiddleBack_j.msg" "bindPose1.m[9]";
connectAttr "UpperBack_j.msg" "bindPose1.m[10]";
connectAttr "head_J.msg" "bindPose1.m[11]";
connectAttr "Eye_J_L.msg" "bindPose1.m[12]";
connectAttr "EyeLid_J_L.msg" "bindPose1.m[13]";
connectAttr "Eye_J_R.msg" "bindPose1.m[14]";
connectAttr "EyeLid_J_R.msg" "bindPose1.m[15]";
connectAttr "Jaw_J.msg" "bindPose1.m[16]";
connectAttr "Clavical_J_L.msg" "bindPose1.m[17]";
connectAttr "Shoulder_J_L.msg" "bindPose1.m[18]";
connectAttr "Elbow_J_L.msg" "bindPose1.m[19]";
connectAttr "Wrist_J_L.msg" "bindPose1.m[20]";
connectAttr "Clavical_J_R.msg" "bindPose1.m[21]";
connectAttr "Shoulder_J_R.msg" "bindPose1.m[22]";
connectAttr "Elbow_J_R.msg" "bindPose1.m[23]";
connectAttr "Wrist_J_R.msg" "bindPose1.m[24]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[1]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[0]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[11]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[11]" "bindPose1.p[16]";
connectAttr "bindPose1.m[10]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[10]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "bindPose1.m[22]" "bindPose1.p[23]";
connectAttr "bindPose1.m[23]" "bindPose1.p[24]";
connectAttr "Root_J.bps" "bindPose1.wm[0]";
connectAttr "Pelvis_J.bps" "bindPose1.wm[1]";
connectAttr "Hip_J_L.bps" "bindPose1.wm[2]";
connectAttr "Knee_J_L.bps" "bindPose1.wm[3]";
connectAttr "Ankle_J_L.bps" "bindPose1.wm[4]";
connectAttr "Hip_J_R.bps" "bindPose1.wm[5]";
connectAttr "Knee_J_R.bps" "bindPose1.wm[6]";
connectAttr "Ankle_J_R.bps" "bindPose1.wm[7]";
connectAttr "LowerBack_J.bps" "bindPose1.wm[8]";
connectAttr "MiddleBack_j.bps" "bindPose1.wm[9]";
connectAttr "UpperBack_j.bps" "bindPose1.wm[10]";
connectAttr "head_J.bps" "bindPose1.wm[11]";
connectAttr "Eye_J_L.bps" "bindPose1.wm[12]";
connectAttr "EyeLid_J_L.bps" "bindPose1.wm[13]";
connectAttr "Eye_J_R.bps" "bindPose1.wm[14]";
connectAttr "EyeLid_J_R.bps" "bindPose1.wm[15]";
connectAttr "Jaw_J.bps" "bindPose1.wm[16]";
connectAttr "Clavical_J_L.bps" "bindPose1.wm[17]";
connectAttr "Shoulder_J_L.bps" "bindPose1.wm[18]";
connectAttr "Elbow_J_L.bps" "bindPose1.wm[19]";
connectAttr "Wrist_J_L.bps" "bindPose1.wm[20]";
connectAttr "Clavical_J_R.bps" "bindPose1.wm[21]";
connectAttr "Shoulder_J_R.bps" "bindPose1.wm[22]";
connectAttr "Elbow_J_R.bps" "bindPose1.wm[23]";
connectAttr "Wrist_J_R.bps" "bindPose1.wm[24]";
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
connectAttr ":timeEditor.cmp[0]" "Composition1.cmp";
connectAttr "layerManager.dli[3]" "EyeMesh.id";
connectAttr "Shoulder_J_R_CTRL.rz" "BaseRigSet.dnsm[0]";
connectAttr "Shoulder_J_R_CTRL.ry" "BaseRigSet.dnsm[1]";
connectAttr "Shoulder_J_R_CTRL.rx" "BaseRigSet.dnsm[2]";
connectAttr "Elbow_J_R_CTRL.ry" "BaseRigSet.dnsm[3]";
connectAttr "Elbow_J_R_CTRL.tx" "BaseRigSet.dnsm[4]";
connectAttr "Wrist_J_R_CTRL.rz" "BaseRigSet.dnsm[5]";
connectAttr "Wrist_J_R_CTRL.ry" "BaseRigSet.dnsm[6]";
connectAttr "Wrist_J_R_CTRL.rx" "BaseRigSet.dnsm[7]";
connectAttr "Wrist_J_R_CTRL.tx" "BaseRigSet.dnsm[8]";
connectAttr "EyeLid_J_L_CTRL.rz" "BaseRigSet.dnsm[9]";
connectAttr "Eye_J_R_CTRL.rz" "BaseRigSet.dnsm[12]";
connectAttr "Eye_J_R_CTRL.ry" "BaseRigSet.dnsm[13]";
connectAttr "Eye_J_R_CTRL.rx" "BaseRigSet.dnsm[14]";
connectAttr "EyeLid_J_R_CTRL.rz" "BaseRigSet.dnsm[15]";
connectAttr "Jaw_J_CTRL.rz" "BaseRigSet.dnsm[18]";
connectAttr "Jaw_J_CTRL.ry" "BaseRigSet.dnsm[19]";
connectAttr "Jaw_J_CTRL.rx" "BaseRigSet.dnsm[20]";
connectAttr "Jaw_J_CTRL.tz" "BaseRigSet.dnsm[21]";
connectAttr "Jaw_J_CTRL.ty" "BaseRigSet.dnsm[22]";
connectAttr "Jaw_J_CTRL.tx" "BaseRigSet.dnsm[23]";
connectAttr "Clavical_J_L_CTRL.rz" "BaseRigSet.dnsm[24]";
connectAttr "Clavical_J_L_CTRL.ry" "BaseRigSet.dnsm[25]";
connectAttr "Clavical_J_L_CTRL.rx" "BaseRigSet.dnsm[26]";
connectAttr "Shoulder_J_L_CTRL.rz" "BaseRigSet.dnsm[27]";
connectAttr "Shoulder_J_L_CTRL.ry" "BaseRigSet.dnsm[28]";
connectAttr "Shoulder_J_L_CTRL.rx" "BaseRigSet.dnsm[29]";
connectAttr "Elbow_J_L_CTRL.ry" "BaseRigSet.dnsm[30]";
connectAttr "Elbow_J_L_CTRL.tx" "BaseRigSet.dnsm[31]";
connectAttr "Wrist_J_L_CTRL.rz" "BaseRigSet.dnsm[32]";
connectAttr "Wrist_J_L_CTRL.ry" "BaseRigSet.dnsm[33]";
connectAttr "Wrist_J_L_CTRL.rx" "BaseRigSet.dnsm[34]";
connectAttr "Wrist_J_L_CTRL.tx" "BaseRigSet.dnsm[35]";
connectAttr "Clavical_J_R_CTRL.rz" "BaseRigSet.dnsm[36]";
connectAttr "Clavical_J_R_CTRL.ry" "BaseRigSet.dnsm[37]";
connectAttr "Clavical_J_R_CTRL.rx" "BaseRigSet.dnsm[38]";
connectAttr "Hip_J_R_CTRL.rz" "BaseRigSet.dnsm[39]";
connectAttr "Hip_J_R_CTRL.ry" "BaseRigSet.dnsm[40]";
connectAttr "Hip_J_R_CTRL.rx" "BaseRigSet.dnsm[41]";
connectAttr "Knee_J_R_CTRL.rz" "BaseRigSet.dnsm[42]";
connectAttr "Ankle_J_R_CTRL.rz" "BaseRigSet.dnsm[43]";
connectAttr "Ankle_J_R_CTRL.ry" "BaseRigSet.dnsm[44]";
connectAttr "Ankle_J_R_CTRL.rx" "BaseRigSet.dnsm[45]";
connectAttr "LowerBack_J_CTRL.rz" "BaseRigSet.dnsm[46]";
connectAttr "LowerBack_J_CTRL.ry" "BaseRigSet.dnsm[47]";
connectAttr "LowerBack_J_CTRL.rx" "BaseRigSet.dnsm[48]";
connectAttr "MiddleBack_j_CTRL.rz" "BaseRigSet.dnsm[49]";
connectAttr "MiddleBack_j_CTRL.ry" "BaseRigSet.dnsm[50]";
connectAttr "MiddleBack_j_CTRL.rx" "BaseRigSet.dnsm[51]";
connectAttr "UpperBack_j_CTRL.rz" "BaseRigSet.dnsm[52]";
connectAttr "UpperBack_j_CTRL.ry" "BaseRigSet.dnsm[53]";
connectAttr "UpperBack_j_CTRL.rx" "BaseRigSet.dnsm[54]";
connectAttr "head_J_CTRL.rz" "BaseRigSet.dnsm[55]";
connectAttr "head_J_CTRL.ry" "BaseRigSet.dnsm[56]";
connectAttr "head_J_CTRL.rx" "BaseRigSet.dnsm[57]";
connectAttr "Eye_J_L_CTRL.rz" "BaseRigSet.dnsm[58]";
connectAttr "Eye_J_L_CTRL.ry" "BaseRigSet.dnsm[59]";
connectAttr "Eye_J_L_CTRL.rx" "BaseRigSet.dnsm[60]";
connectAttr "Ankle_J_L_CTRL.rz" "BaseRigSet.dnsm[61]";
connectAttr "Ankle_J_L_CTRL.ry" "BaseRigSet.dnsm[62]";
connectAttr "Ankle_J_L_CTRL.rx" "BaseRigSet.dnsm[63]";
connectAttr "Knee_J_L_CTRL.rz" "BaseRigSet.dnsm[64]";
connectAttr "Hip_J_L_CTRL.rz" "BaseRigSet.dnsm[65]";
connectAttr "Hip_J_L_CTRL.ry" "BaseRigSet.dnsm[66]";
connectAttr "Hip_J_L_CTRL.rx" "BaseRigSet.dnsm[67]";
connectAttr "Root_J_CTRL.rz" "BaseRigSet.dnsm[68]";
connectAttr "Root_J_CTRL.ry" "BaseRigSet.dnsm[69]";
connectAttr "Root_J_CTRL.rx" "BaseRigSet.dnsm[70]";
connectAttr "Root_J_CTRL.tz" "BaseRigSet.dnsm[71]";
connectAttr "Root_J_CTRL.ty" "BaseRigSet.dnsm[72]";
connectAttr "Root_J_CTRL.tx" "BaseRigSet.dnsm[73]";
connectAttr "Pelvis_J_CTRL.rz" "BaseRigSet.dnsm[74]";
connectAttr "Pelvis_J_CTRL.ry" "BaseRigSet.dnsm[75]";
connectAttr "Pelvis_J_CTRL.rx" "BaseRigSet.dnsm[76]";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "Wrist_J_L_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "BaseRigSet.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "Pelvis_J_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr ":defaultArnoldRenderOptions.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr ":defaultArnoldFilter.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr ":defaultArnoldDriver.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr ":defaultArnoldDisplayDriver.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "BaseRigSet.pa" ":characterPartition.st" -na;
// End of BaseRig.ma
