//Maya ASCII 2010 scene
//Name: ball_uvu.ma
//Last modified: Wed, Jan 13, 2010 02:57:15 PM
//Codeset: 1252
requires maya "2010";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya Unlimited 2010";
fileInfo "version" "2010 x64";
fileInfo "cutIdentifier" "200907280308-756013";
fileInfo "osv" "Microsoft Windows XP x64 Service Pack 2 (Build 3790)\n";
createNode transform -s -n "persp";
	setAttr ".t" -type "double3" -2.1346636540189179 0.8935022197119793 -8.1856579817931241 ;
	setAttr ".r" -type "double3" 719.06164727316764 188.19999999995534 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v";
	setAttr ".fl" 34.999999999999993;
	setAttr ".fcp" 100000;
	setAttr ".coi" 8.4801308826185569;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.0015046020580258279 1.9999999994936517 -0.0015045616903651693 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".t" -type "double3" -0.12274221881897285 100 -0.073645331291383176 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".fcp" 100000;
	setAttr ".coi" 100;
	setAttr ".ow" 16.71139428086709;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".t" -type "double3" -0.011353314114715171 1.2262836899009366 100 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".fcp" 100000;
	setAttr ".coi" 100;
	setAttr ".ow" 8.8324679225936134;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".t" -type "double3" 100 4.1147519735248022 3.9835142043617169 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".fcp" 100000;
	setAttr ".coi" 100;
	setAttr ".ow" 20.518554723254919;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "ball";
createNode transform -n "ball_main_ctrl" -p "ball";
	addAttr -ci true -sn "AdditionalControls" -ln "AdditionalControls" -min 0 -max 
		1 -en "-------------------------:Ball by Ian" -at "enum";
	addAttr -ci true -sn "ShowBallRotate" -ln "ShowBallRotate" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ShowTail" -ln "ShowTail" -min 0 -max 1 -at "bool";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".rp" -type "double3" 0 1 0 ;
	setAttr ".sp" -type "double3" 0 1 0 ;
	setAttr ".hdl" -type "double3" 0 1 0 ;
	setAttr ".dh" yes;
	setAttr -l on -k on ".AdditionalControls";
	setAttr -k on ".ShowBallRotate";
	setAttr -k on ".ShowTail";
createNode nurbsCurve -n "ball_main_ctrlShape" -p "ball_main_ctrl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 0.39018055152560699 0.78036112399730628 1.1705416712397225 1.5607217417254857
		 1.9509024144061686 2.3410831024416172 2.7312637821422268 3.1214444428128898 3.5116250866456444
		 3.9018057582362222 4.291986371707722 4.6821669850288199 5.0723475885221401 5.4625281857735581
		 5.8527087661305135 6.2428893321020258
		17
		0.0012181986916200466 1 -1.627465419535101
		0.52369821361955582 1 -1.2614418700678358
		1.1548690717846548 1 -1.1524327070850275
		1.2638782347674649 1 -0.52126184891992833
		1.6299017842347296 1 0.0012181660080073536
		1.2638782347674649 1 0.52369818093594345
		1.1548690717846548 1 1.1548690391010434
		0.52369821361955582 1 1.2638782020838517
		0.0012181986916200466 1 1.6299017515511165
		-0.52126181623631607 1 1.2638782020838517
		-1.1524326744014153 1 1.1548690391010434
		-1.2614418373842258 1 0.52369818093594345
		-1.6329109883507813 1 0.0012181660080073536
		-1.2593708527465794 1 -0.52093554262884367
		-1.1542851786260746 1 -1.1542861366258248
		-0.52093451127234736 1 -1.2593712334816707
		0.0012181986916200466 1 -1.6329108749318468
		;
createNode transform -n "ball_SQ_base_ctrl" -p "ball_main_ctrl";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsCurve -n "ball_SQ_base_ctrlShape" -p "ball_SQ_base_ctrl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.58770871866841878 3.5985591553907627e-017 -0.5877087186684179
		-9.4825460356496901e-017 5.0891311625554901e-017 -0.83114564066579089
		-0.58770871866841823 3.5985591553907646e-017 -0.58770871866841823
		-0.83114564066579089 1.5862211523386688e-032 -2.5905812874277177e-016
		-0.58770871866841834 -3.598559155390764e-017 0.58770871866841812
		-2.7987481045449346e-016 -5.0891311625554907e-017 0.83114564066579111
		0.58770871866841801 -3.5985591553907652e-017 0.58770871866841823
		0.83114564066579089 -2.7333719833739293e-032 4.4640826414826689e-016
		0.58770871866841878 3.5985591553907627e-017 -0.5877087186684179
		-9.4825460356496901e-017 5.0891311625554901e-017 -0.83114564066579089
		-0.58770871866841823 3.5985591553907646e-017 -0.58770871866841823
		;
createNode transform -n "ball_distance_botLocator" -p "ball_SQ_base_ctrl";
	setAttr ".v" no;
createNode locator -n "ball_distance_botLocatorShape" -p "ball_distance_botLocator";
	setAttr -k off ".v";
createNode joint -n "ball_baseJ" -p "ball_SQ_base_ctrl";
	setAttr ".r" -type "double3" -2.0567998291869544e-007 -4.5670130548168917e-023 
		8.1973155360397662e-032 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
createNode joint -n "ball_tipJ" -p "ball_baseJ";
	setAttr ".t" -type "double3" 2 4.4408920985006262e-016 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.999999999999986 ;
createNode ikEffector -n "effector1" -p "ball_baseJ";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "Translate" -p "ball_baseJ";
	setAttr -l on -k off ".v";
	setAttr ".r" -type "double3" 0 0 -89.999999999999986 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "Scale" -p "Translate";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
createNode transform -n "ball_surface" -p "Scale";
	setAttr ".t" -type "double3" 0 -0.034337307422118712 0 ;
	setAttr ".rp" -type "double3" -0.00018555785818730186 0.99999999949365204 0 ;
	setAttr ".sp" -type "double3" -0.00018555785818730186 0.99999999949365204 0 ;
createNode nurbsSurface -n "ball_surfaceShape" -p "ball_surface";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode orientConstraint -n "ball_surface_orientConstraint1" -p "ball_surface";
	addAttr -ci true -sn "w0" -ln "ball_rotate_ctrlW0" -bt "W000" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".o" -type "double3" 0 0 -90 ;
	setAttr -k on ".w0";
createNode nurbsSurface -n "ball_surfaceShapeOrig" -p "ball_surface";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		9 0 0 0 1 2 3 4 4 4
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		77
		1.0574100133269513e-016 -2.3482084980879641e-032 -2.5315347264529309e-016
		1.0574100133269513e-016 -2.3482084980879641e-032 -2.5315347264529309e-016
		1.0574100133269513e-016 -2.3482084980879641e-032 -2.5315347264529309e-016
		1.0574100133269513e-016 -2.3482084980879641e-032 -2.5315347264529309e-016
		1.0574100133269513e-016 -2.3482084980879641e-032 -2.5315347264529309e-016
		1.0574100133269513e-016 -2.3482084980879641e-032 -2.5315347264529309e-016
		1.0574100133269513e-016 -2.3482084980879641e-032 -2.5315347264529309e-016
		1.0574100133269513e-016 -2.3482084980879641e-032 -2.5315347264529309e-016
		1.0574100133269513e-016 -2.3482084980879641e-032 -2.5315347264529309e-016
		1.0574100133269513e-016 -2.3482084980879641e-032 -2.5315347264529309e-016
		1.0574100133269513e-016 -2.3482084980879641e-032 -2.5315347264529309e-016
		0.19991242478044141 -4.050780675076376e-010 -0.19991679083637298
		0.28271412179048561 -1.0126965336657031e-009 -6.2206594289030728e-017
		0.1999167908363727 -4.4395863594616024e-017 0.19991679083637259
		-7.2766677162940667e-007 -6.7512181788399109e-011 0.28272503694690354
		-0.19991970153663996 -2.7005161998209836e-010 0.19991679083637273
		-0.28273522442548971 -9.4518328423948424e-010 6.720514623308502e-017
		-0.19991679083637273 4.4395863594616031e-017 -0.19991679083637262
		-9.4598007543897203e-006 -8.7767022316896106e-010 -0.28272503694690365
		0.19991242478044141 -4.050780675076376e-010 -0.19991679083637298
		0.28271412179048561 -1.0126965336657031e-009 -6.2206594289030728e-017
		0.1999167908363727 -4.4395863594616024e-017 0.19991679083637259
		0.61642706899032151 0.21638837483872408 -0.61642997969058999
		0.87175927147587196 0.21638837470369779 1.0506347929072347e-016
		0.61641615382284376 0.21638837382602658 0.61642997969058932
		2.4783718376212446e-016 0.21638837510877579 0.87176363753180319
		-0.61643070735736094 0.21638837504126363 0.61642997969058955
		-0.87177018662122996 0.21638837450115825 1.9198677543608214e-016
		-0.61642997969058932 0.21638837510877582 -0.6164299796905891
		-3.7990636643713399e-016 0.21638837510877579 -0.87176363753180319
		0.61642706899032151 0.21638837483872408 -0.61642997969058999
		0.87175927147587196 0.21638837470369779 1.0506347929072347e-016
		0.61641615382284376 0.21638837382602658 0.61642997969058932
		0.86701907266684963 0.9999999829866798 -0.86720244749154252
		1.2262239047074928 0.99999998278414037 2.9010801760341543e-016
		0.86701688963335433 0.99999998278414037 0.86720244749154185
		-0.00018555785818695868 0.99999998278414015 1.2264094625656803
		-0.86738800534972882 0.99999998278414037 0.86720244749154185
		-1.2265950204238674 0.99999998278414037 2.6278660791661894e-016
		-0.86738800534972882 0.99999998278414037 -0.86720244749154141
		-0.00018555785818769927 0.99999998278414037 -1.2264094625656803
		0.86701907266684963 0.9999999829866798 -0.86720244749154252
		1.2262239047074928 0.99999998278414037 2.9010801760341543e-016
		0.86701688963335433 0.99999998278414037 0.86720244749154185
		0.61642997969058921 1.7836116248912248 -0.61642997969058999
		0.8717380777774506 1.7836116225198182 3.0736911915646848e-016
		0.61642928867291846 1.783611624827113 0.61642997969058966
		-2.3285679559635694e-005 1.7836116227308045 0.87176363753180341
		-0.61646636357112294 1.7836116215155675 0.61642997969058966
		-0.87179791022808228 1.7836116217114406 1.816042905245113e-016
		-0.61645874449068783 1.7836116222224576 -0.61642997969058944
		-3.6383780995325758e-006 1.7836116245536602 -0.87176363753180341
		0.61642997969058921 1.7836116248912248 -0.61642997969058999
		0.8717380777774506 1.7836116225198182 3.0736911915646848e-016
		0.61642928867291846 1.783611624827113 0.61642997969058966
		0.19991508980144373 1.9999999998421802 -0.19991679083637284
		0.28272471919985215 1.9999999999705202 1.9596420542802007e-016
		0.19991679083637268 2.0000000000000004 0.19991679083637293
		-1.8043823270696108e-006 1.9999999998325917 0.28272503694690376
		-0.19991809607540709 1.9999999998789018 0.19991679083637282
		-0.28272511827211561 1.9999999999924547 5.3955617280509677e-017
		-0.1999185813159684 1.9999999998338818 -0.19991679083637273
		-3.8851381831685992e-017 2.0000000000000004 -0.28272503694690365
		0.19991508980144373 1.9999999998421802 -0.19991679083637284
		0.28272471919985215 1.9999999999705202 1.9596420542802007e-016
		0.19991679083637268 2.0000000000000004 0.19991679083637293
		1.7400374147315991e-016 2.0000000000000004 -1.6804838495427943e-017
		1.7400374147315991e-016 2.0000000000000004 -1.6804838495427943e-017
		1.7400374147315991e-016 2.0000000000000004 -1.6804838495427943e-017
		1.7400374147315991e-016 2.0000000000000004 -1.6804838495427943e-017
		1.7400374147315991e-016 2.0000000000000004 -1.6804838495427943e-017
		1.7400374147315991e-016 2.0000000000000004 -1.6804838495427943e-017
		1.7400374147315991e-016 2.0000000000000004 -1.6804838495427943e-017
		1.7400374147315991e-016 2.0000000000000004 -1.6804838495427943e-017
		1.7400374147315991e-016 2.0000000000000004 -1.6804838495427943e-017
		1.7400374147315991e-016 2.0000000000000004 -1.6804838495427943e-017
		1.7400374147315991e-016 2.0000000000000004 -1.6804838495427943e-017
		
		;
createNode transform -n "ffd1Lattice" -p "Scale";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.00018555785818730186 0.99999999949365193 0 ;
	setAttr ".s" -type "double3" 2 2 2 ;
createNode lattice -n "ffd1LatticeShape" -p "ffd1Lattice";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
	setAttr ".sd" 3;
	setAttr ".td" 3;
	setAttr ".ud" 3;
createNode lattice -n "ffd1LatticeShapeOrig" -p "ffd1Lattice";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".sd" 3;
	setAttr ".td" 3;
	setAttr ".ud" 3;
	setAttr ".cc" -type "lattice" 3 3 3 27 -0.5 -0.5 -0.5 0 -0.5 -0.5 0.5
		 -0.5 -0.5 -0.5 0 -0.5 0 0 -0.5 0.5 0 -0.5 -0.5 0.5 -0.5 0 0.5 -0.5 0.5 0.5 -0.5 -0.5
		 -0.5 0 0 -0.5 0 0.5 -0.5 0 -0.5 0 0 0 0 0 0.5 0 0 -0.5 0.5 0 0 0.5 0 0.5 0.5 0 -0.5
		 -0.5 0.5 0 -0.5 0.5 0.5 -0.5 0.5 -0.5 0 0.5 0 0 0.5 0.5 0 0.5 -0.5 0.5 0.5 0 0.5
		 0.5 0.5 0.5 0.5 ;
createNode transform -n "ffd1Base" -p "Scale";
	setAttr ".t" -type "double3" -0.00018555785818730186 0.99999999949365193 0 ;
	setAttr ".s" -type "double3" 2 2 2 ;
createNode baseLattice -n "ffd1BaseShape" -p "ffd1Base";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode transform -n "ball_rotate_ctrl" -p "ball_baseJ";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 2.2138749655114431e-016 1.001304400064478 0.0029593530277794984 ;
	setAttr ".rpt" -type "double3" 1.0013044000644777 -1.001304400064478 0 ;
	setAttr ".sp" -type "double3" 2.2138749655114431e-016 1.001304400064478 0.0029593530277794984 ;
createNode nurbsCurve -n "ball_rotate_ctrlShape" -p "ball_rotate_ctrl";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 5 2 no 3
		6 0 1 2 3 4 5
		6
		1.3112649996175347 1.0012673880231575 1.3167823134953838
		1.3078476797288818 1.0012673880231575 -1.3108110437497964
		-1.3119926451186621 1.0012673880231564 -1.3108110437497968
		-1.3119926451186625 1.0012673880231564 1.309029281097746
		1.3078476797288812 1.0012673880231575 1.3090292810977469
		1.3112649996175347 1.0012673880231575 1.3167823134953838
		;
createNode nurbsCurve -n "ball_rotate_ctrlShape1" -p "ball_rotate_ctrl";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 5 2 no 3
		6 0 1 2 3 4 5
		6
		-1.318037017571972 2.3128962103912514 -0.00089088132602431318
		1.3095563396732073 2.3094788905026018 -0.00089088132602431318
		1.3095563396732073 -0.31036143434494162 -0.00089088132602431318
		-1.3102839851743351 -0.31036143434494162 -0.00089088132602431318
		-1.3102839851743351 2.3094788905026018 -0.00089088132602431318
		-1.318037017571972 2.3128962103912514 -0.00089088132602431318
		;
createNode nurbsCurve -n "ball_rotate_ctrlShape2" -p "ball_rotate_ctrl";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 5 2 no 3
		6 0 1 2 3 4 5
		6
		-0.00036382275056490138 2.3128962103912514 1.3167823134953838
		-0.00036382275056431754 2.3094788905026018 -1.3108110437497966
		-0.00036382275056431754 -0.31036143434494162 -1.3108110437497966
		-0.00036382275056489976 -0.31036143434494162 1.3090292810977464
		-0.00036382275056489976 2.3094788905026018 1.3090292810977464
		-0.00036382275056490138 2.3128962103912514 1.3167823134953838
		;
createNode pointConstraint -n "ball_rotate_ctrl_pointConstraint1" -p "ball_rotate_ctrl";
	addAttr -ci true -sn "w0" -ln "ball_SQ_base_ctrlW0" -bt "W000" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "w1" -ln "ball_SQ_tip_ctrlW1" -bt "W001" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".ove" yes;
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
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" -0.0013044000644779619 2.2204460492503131e-016 -0.0029593530277794984 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "ball_SQ_tip_ctrl" -p "ball_main_ctrl";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 0 2 0 ;
	setAttr ".sp" -type "double3" 0 2 0 ;
	setAttr ".hdl" -type "double3" 0 2 0 ;
	setAttr ".dh" yes;
createNode nurbsCurve -n "ball_SQ_tip_ctrlShape" -p "ball_SQ_tip_ctrl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.58770871866841878 2 -0.5877087186684179
		-9.4825460356496901e-017 2 -0.83114564066579089
		-0.58770871866841823 2 -0.58770871866841823
		-0.83114564066579089 2 -2.5905812874277177e-016
		-0.58770871866841834 2 0.58770871866841812
		-2.7987481045449346e-016 2 0.83114564066579111
		0.58770871866841801 2 0.58770871866841823
		0.83114564066579089 2 4.4640826414826689e-016
		0.58770871866841878 2 -0.5877087186684179
		-9.4825460356496901e-017 2 -0.83114564066579089
		-0.58770871866841823 2 -0.58770871866841823
		;
createNode ikHandle -n "ball_ikHandle" -p "ball_SQ_tip_ctrl";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0 2 0 ;
	setAttr ".sp" -type "double3" 0 2 0 ;
	setAttr ".pv" -type "double3" 0 0 1.3333333333333333 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode transform -n "ball_distance_topLocator" -p "ball_SQ_tip_ctrl";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0 2 0 ;
	setAttr ".sp" -type "double3" 0 2 0 ;
createNode locator -n "ball_distance_topLocatorShape" -p "ball_distance_topLocator";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 0 2 0 ;
createNode transform -n "cluster_offset_grp" -p "ball_main_ctrl";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0 1 0 ;
	setAttr ".sp" -type "double3" 0 1 0 ;
createNode transform -n "cluster1Handle" -p "cluster_offset_grp";
	setAttr ".rp" -type "double3" -0.00018555785818730186 0.99999999949365193 0 ;
	setAttr ".sp" -type "double3" -0.00018555785818730186 0.99999999949365193 0 ;
	setAttr ".hdl" -type "double3" -0.00018555785818730186 0.99999999949365193 0 ;
	setAttr ".dh" yes;
createNode clusterHandle -n "cluster1HandleShape" -p "cluster1Handle";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" -0.00018555785818730186 0.99999999949365193 0 ;
createNode transform -n "ball_SQ_mid_ctrl_space" -p "ball_main_ctrl";
	setAttr ".rp" -type "double3" 0 1 1.1102230246251565e-016 ;
	setAttr ".sp" -type "double3" 0 1 1.1102230246251565e-016 ;
createNode transform -n "ball_SQ_mid_ctrl" -p "ball_SQ_mid_ctrl_space";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 0 1 0 ;
	setAttr ".sp" -type "double3" 0 1 0 ;
	setAttr ".hdl" -type "double3" 0 1 0 ;
	setAttr ".dh" yes;
createNode nurbsCurve -n "ball_SQ_mid_ctrlShape" -p "ball_SQ_mid_ctrl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.0439700559133525 1 -1.0439700559133498
		-9.0538077121326312e-018 1 -1.4763966117840599
		-1.0439700559133509 1 -1.0439700559133509
		-1.4763966117840599 1 -2.5762085454368161e-016
		-1.0439700559133518 0.99999999999999978 1.0439700559133509
		-3.3776422876261464e-016 0.99999999999999978 1.4763966117840599
		1.0439700559133498 0.99999999999999978 1.0439700559133511
		1.4763966117840599 1 9.9552677835194061e-016
		1.0439700559133525 1 -1.0439700559133498
		-9.0538077121326312e-018 1 -1.4763966117840599
		-1.0439700559133509 1 -1.0439700559133509
		;
createNode pointConstraint -n "ball_SQ_mid_ctrl_space_pointConstraint1" -p "ball_SQ_mid_ctrl_space";
	addAttr -ci true -sn "w0" -ln "ball_SQ_tip_ctrlW0" -bt "W000" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "w1" -ln "ball_SQ_base_ctrlW1" -bt "W001" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 0 0 -1.1102230246251565e-016 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode aimConstraint -n "ball_SQ_mid_ctrl_space_aimConstraint1" -p "ball_SQ_mid_ctrl_space";
	addAttr -ci true -sn "w0" -ln "ball_SQ_tip_ctrlW0" -bt "W000" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" 0 0 90 ;
	setAttr ".rsrr" -type "double3" 0 0 89.999999999999986 ;
	setAttr -k on ".w0";
createNode transform -n "ball_parts" -p "ball";
createNode transform -n "ball_distanceDim" -p "ball_parts";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.5 0.5 0.5 ;
createNode distanceDimShape -n "ball_distanceDimShape" -p "ball_distanceDim";
	setAttr -k off ".v";
createNode transform -n "Ball_parts_grp" -p "ball_parts";
	addAttr -ci true -sn "zooBrand" -ln "zooBrand" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "zooBrand_name" -ln "zooBrand_name" -dt "string";
	addAttr -ci true -sn "zooBrand_parts" -ln "zooBrand_parts" -dt "string";
	setAttr ".zooBrand_name" -type "string" "Ball";
	setAttr ".zooBrand_parts" -type "string" "Ball";
createNode transform -n "Tail_parent_space" -p "ball";
	setAttr ".s" -type "double3" 0.1 0.1 0.1 ;
createNode nurbsSurface -n "Tail_parent_spaceShape" -p "Tail_parent_space";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode normalConstraint -n "nurbsSphere1_normalConstraint1" -p "Tail_parent_space";
	addAttr -ci true -sn "w0" -ln "ball_surfaceW0" -bt "W000" -dv 1 -min 0 -at "double";
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
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".rsrr" -type "double3" 22.428987154456589 -67.500517003476901 180 ;
	setAttr -k on ".w0";
createNode transform -n "Ball_spine_A_space1" -p "Tail_parent_space";
	addAttr -ci true -sn "zooPrimOut" -ln "zooPrimOut" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.0012772279664134353 -10.000000185924335 -9.9252857330967323 ;
	setAttr ".r" -type "double3" 89.999999999999986 -7.0164775638926606e-015 -180 ;
	setAttr ".s" -type "double3" 10 10 10 ;
	setAttr ".rp" -type "double3" 0 10 10 ;
	setAttr ".rpt" -type "double3" -1.2246063538223771e-015 -1.7763568394002509e-015 
		2.2204460492503127e-015 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
	setAttr ".spt" -type "double3" 0 9 9 ;
createNode transform -n "Ball_tail_A_ctrl" -p "Ball_spine_A_space1";
	addAttr -ci true -sn "zooBrand" -ln "zooBrand" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "zooBrand_name" -ln "zooBrand_name" -dt "string";
	addAttr -ci true -sn "zooBrand_spine" -ln "zooBrand_spine" -dt "string";
	addAttr -ci true -sn "zooPrimOut" -ln "zooPrimOut" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
	setAttr ".hdl" -type "double3" 0 1 1 ;
	setAttr ".zooBrand_name" -type "string" "Ball";
	setAttr ".zooBrand_spine" -type "string" "Ball";
createNode nurbsCurve -n "Ball_tail_A_ctrlShape" -p "Ball_tail_A_ctrl";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.3555656117776587e-017 1.2213879762335895 0.85047613732261318
		-2.187174174844519e-033 1.3130898785358744 0.99336899738103557
		-1.3555656117776572e-017 1.2213879762335895 1.136261857439455
		-1.5145952129427677e-017 1 1.2473603388085066
		-1.3555656117776575e-017 0.77861202376641059 1.136261857439455
		-6.4553860884434178e-033 0.68691012146412522 0.99336899738103557
		1.3555656117776563e-017 0.77861202376641048 0.8504761373226134
		1.917059272862544e-017 0.99999999999999978 0.79128797672013451
		1.3555656117776587e-017 1.2213879762335895 0.85047613732261318
		-2.187174174844519e-033 1.3130898785358744 0.99336899738103557
		-1.3555656117776572e-017 1.2213879762335895 1.136261857439455
		;
createNode nurbsCurve -n "Ball_tail_A_ctrlShape4" -p "Ball_tail_A_ctrl";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.22138797623358997 1 0.8504761373226134
		-3.5720444663996189e-017 1 0.79128797672013451
		-0.22138797623358969 1 0.8504761373226134
		-0.31308987853587522 1 0.99336899738103557
		-0.22138797623358986 1 1.136261857439455
		-8.3294581058661893e-017 1 1.2473603388085077
		0.22138797623358961 1 1.136261857439455
		0.31308987853587522 1 0.99336899738103557
		0.22138797623358997 1 0.8504761373226134
		-3.5720444663996189e-017 1 0.79128797672013451
		-0.22138797623358969 1 0.8504761373226134
		;
createNode nurbsCurve -n "Ball_tail_A_ctrlShape5" -p "Ball_tail_A_ctrl";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.22138797623358997 1.2213879762335895 0.99336899738103557
		-3.5720444663996189e-017 1.3130898785358744 0.99336899738103557
		-0.22138797623358969 1.2213879762335895 0.99336899738103557
		-0.31308987853587522 1 0.99336899738103557
		-0.22138797623358986 0.77861202376641059 0.99336899738103557
		-1.0542793720274519e-016 0.68691012146412522 0.99336899738103557
		0.22138797623358961 0.77861202376641048 0.99336899738103557
		0.31308987853587522 0.99999999999999978 0.99336899738103557
		0.22138797623358997 1.2213879762335895 0.99336899738103557
		-3.5720444663996189e-017 1.3130898785358744 0.99336899738103557
		-0.22138797623358969 1.2213879762335895 0.99336899738103557
		;
createNode transform -n "Ball_spine_B_space1" -p "Ball_tail_A_ctrl";
	addAttr -ci true -sn "zooPrimOut" -ln "zooPrimOut" -min 0 -max 1 -at "bool";
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" 0 1 1.5 ;
	setAttr ".sp" -type "double3" 0 1 1.5 ;
createNode transform -n "Ball_tail_B_ctrl" -p "Ball_spine_B_space1";
	addAttr -ci true -sn "parent" -ln "parent" -min 0 -max 1 -en "previous:world" -at "enum";
	addAttr -ci true -sn "zooBrand" -ln "zooBrand" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "zooBrand_name" -ln "zooBrand_name" -dt "string";
	addAttr -ci true -sn "zooBrand_spine" -ln "zooBrand_spine" -dt "string";
	addAttr -ci true -sn "zooPrimOut" -ln "zooPrimOut" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 1 1.5 ;
	setAttr ".sp" -type "double3" 0 1 1.5 ;
	setAttr ".hdl" -type "double3" 0 1 1.5 ;
	setAttr ".zooBrand_name" -type "string" "Ball";
	setAttr ".zooBrand_spine" -type "string" "Ball";
createNode nurbsCurve -n "Ball_tail_B_ctrlShape" -p "Ball_tail_B_ctrl";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.7913991453708218e-017 1.2925673445641219 1.3338770721371722
		-2.8903816337266705e-033 1.4137527065900637 1.5
		-1.7913991453708199e-017 1.2925673445641219 1.6661229278628287
		-2.5334209670069844e-017 1 1.7349332976047367
		-1.7913991453708199e-017 0.70743265543587885 1.6661229278628287
		-8.5308840984179558e-033 0.58624729340993664 1.5
		1.7913991453708196e-017 0.70743265543587885 1.3338770721371722
		2.5334209670069844e-017 0.99999999999999978 1.2650667023952635
		1.7913991453708218e-017 1.2925673445641219 1.3338770721371722
		-2.8903816337266705e-033 1.4137527065900637 1.5
		-1.7913991453708199e-017 1.2925673445641219 1.6661229278628287
		;
createNode nurbsCurve -n "Ball_tail_B_ctrlShape4" -p "Ball_tail_B_ctrl";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.29256734456412198 1 1.3338770721371722
		-4.7205073282608597e-017 1 1.2650667023952635
		-0.29256734456412148 1 1.3338770721371722
		-0.41375270659006291 1 1.5
		-0.29256734456412148 1 1.6661229278628287
		-1.393245114528503e-016 1 1.7349332976047367
		0.29256734456412142 1 1.6661229278628287
		0.41375270659006291 1 1.5
		0.29256734456412198 1 1.3338770721371722
		-4.7205073282608597e-017 1 1.2650667023952635
		-0.29256734456412148 1 1.3338770721371722
		;
createNode nurbsCurve -n "Ball_tail_B_ctrlShape5" -p "Ball_tail_B_ctrl";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.29256734456412198 1.2925673445641219 1.5
		-4.7205073282608597e-017 1.4137527065900637 1.5
		-0.29256734456412148 1.2925673445641219 1.5
		-0.41375270659006291 1 1.5
		-0.29256734456412148 0.70743265543587885 1.5
		-1.393245114528503e-016 0.58624729340993664 1.5
		0.29256734456412142 0.70743265543587885 1.5
		0.41375270659006291 0.99999999999999978 1.5
		0.29256734456412198 1.2925673445641219 1.5
		-4.7205073282608597e-017 1.4137527065900637 1.5
		-0.29256734456412148 1.2925673445641219 1.5
		;
createNode transform -n "Ball_spine_C_space1" -p "Ball_tail_B_ctrl";
	addAttr -ci true -sn "zooPrimOut" -ln "zooPrimOut" -min 0 -max 1 -at "bool";
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" 0 1 2 ;
	setAttr ".sp" -type "double3" 0 1 2 ;
createNode transform -n "Ball_tail_C_ctrl" -p "Ball_spine_C_space1";
	addAttr -ci true -sn "parent" -ln "parent" -min 0 -max 1 -en "previous:world" -at "enum";
	addAttr -ci true -sn "zooBrand" -ln "zooBrand" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "zooBrand_name" -ln "zooBrand_name" -dt "string";
	addAttr -ci true -sn "zooBrand_spine" -ln "zooBrand_spine" -dt "string";
	addAttr -ci true -sn "zooPrimOut" -ln "zooPrimOut" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 1 2 ;
	setAttr ".sp" -type "double3" 0 1 2 ;
	setAttr ".hdl" -type "double3" 0 1 2 ;
	setAttr ".zooBrand_name" -type "string" "Ball";
	setAttr ".zooBrand_spine" -type "string" "Ball";
createNode nurbsCurve -n "Ball_tail_C_ctrlShape" -p "Ball_tail_C_ctrl";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.0315880866351589e-017 1.3317944709814593 1.8282472901758473
		-3.277921008325954e-033 1.4692282407823871 2
		-2.0315880866351577e-017 1.3317944709814593 2.1717527098241542
		-2.8730994252750478e-017 1 2.2428950116076485
		-2.0315880866351583e-017 0.66820552901853858 2.1717527098241542
		-9.6746961991118145e-033 0.53077175921761099 2
		2.0315880866351561e-017 0.66820552901853847 1.8282472901758473
		2.8730994252750478e-017 0.99999999999999978 1.757104988392354
		2.0315880866351589e-017 1.3317944709814593 1.8282472901758473
		-3.277921008325954e-033 1.4692282407823871 2
		-2.0315880866351577e-017 1.3317944709814593 2.1717527098241542
		;
createNode nurbsCurve -n "Ball_tail_C_ctrlShape4" -p "Ball_tail_C_ctrl";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.33179447098146148 1 1.8282472901758473
		-5.3534280597100335e-017 1 1.757104988392354
		-0.33179447098146114 1 1.8282472901758473
		-0.46922824078238873 1 2
		-0.33179447098146125 1 2.1717527098241542
		-1.5800499758823039e-016 1 2.2428950116076485
		0.33179447098146103 1 2.1717527098241542
		0.46922824078238873 1 2
		0.33179447098146148 1 1.8282472901758473
		-5.3534280597100335e-017 1 1.757104988392354
		-0.33179447098146114 1 1.8282472901758473
		;
createNode nurbsCurve -n "Ball_tail_C_ctrlShape5" -p "Ball_tail_C_ctrl";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.33179447098146148 1.3317944709814593 2
		-5.3534280597100335e-017 1.4692282407823871 2
		-0.33179447098146114 1.3317944709814593 2
		-0.46922824078238873 1 2
		-0.33179447098146125 0.66820552901853858 2
		-1.5800499758823039e-016 0.53077175921761099 2
		0.33179447098146103 0.66820552901853847 2
		0.46922824078238873 0.99999999999999978 2
		0.33179447098146148 1.3317944709814593 2
		-5.3534280597100335e-017 1.4692282407823871 2
		-0.33179447098146114 1.3317944709814593 2
		;
createNode transform -n "Ball_spine_D_space1" -p "Ball_tail_C_ctrl";
	addAttr -ci true -sn "zooPrimOut" -ln "zooPrimOut" -min 0 -max 1 -at "bool";
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" 0 1 2.5 ;
	setAttr ".sp" -type "double3" 0 1 2.5 ;
createNode transform -n "Ball_tail_D_ctrl" -p "Ball_spine_D_space1";
	addAttr -ci true -sn "parent" -ln "parent" -min 0 -max 1 -en "previous:world" -at "enum";
	addAttr -ci true -sn "zooBrand" -ln "zooBrand" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "zooBrand_name" -ln "zooBrand_name" -dt "string";
	addAttr -ci true -sn "zooBrand_spine" -ln "zooBrand_spine" -dt "string";
	addAttr -ci true -sn "zooBrand_chest" -ln "zooBrand_chest" -dt "string";
	addAttr -ci true -sn "zooPrimOut" -ln "zooPrimOut" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 1 2.5 ;
	setAttr ".sp" -type "double3" 0 1 2.5 ;
	setAttr ".hdl" -type "double3" 0 1 2.5 ;
	setAttr -l on ".parent";
	setAttr ".zooBrand_name" -type "string" "Ball";
	setAttr ".zooBrand_spine" -type "string" "Ball";
	setAttr ".zooBrand_chest" -type "string" "Ball";
createNode nurbsCurve -n "Ball_tail_D_ctrlShape" -p "Ball_tail_D_ctrl";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.2253621896622156e-017 1.3634412287207522 2.3187810648656271
		-3.5905711008129206e-033 1.5139835147824277 2.5
		-2.2253621896622137e-017 1.3634412287207522 2.6812189351343738
		-3.1471373898125924e-017 1 2.7562822758258392
		-2.225362189662215e-017 0.63655877127924987 2.6812189351343738
		-1.0597474586312905e-032 0.4860164852175729 2.5
		2.2253621896622131e-017 0.63655877127924976 2.3187810648656271
		3.1471373898125924e-017 0.99999999999999978 2.2437177241741608
		2.2253621896622156e-017 1.3634412287207522 2.3187810648656271
		-3.5905711008129206e-033 1.5139835147824277 2.5
		-2.2253621896622137e-017 1.3634412287207522 2.6812189351343738
		;
createNode nurbsCurve -n "Ball_tail_D_ctrlShape4" -p "Ball_tail_D_ctrl";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.36344122872075096 1 2.3187810648656271
		-5.864041272700624e-017 1 2.2437177241741608
		-0.36344122872075035 1 2.3187810648656271
		-0.51398351478242743 1 2.5
		-0.36344122872075041 1 2.6812189351343738
		-1.7307561002333366e-016 1 2.7562822758258392
		0.36344122872075013 1 2.6812189351343738
		0.51398351478242743 1 2.5
		0.36344122872075096 1 2.3187810648656271
		-5.864041272700624e-017 1 2.2437177241741608
		-0.36344122872075035 1 2.3187810648656271
		;
createNode nurbsCurve -n "Ball_tail_D_ctrlShape5" -p "Ball_tail_D_ctrl";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.36344122872075096 1.3634412287207522 2.5
		-5.864041272700624e-017 1.5139835147824277 2.5
		-0.36344122872075035 1.3634412287207522 2.5
		-0.51398351478242743 1 2.5
		-0.36344122872075041 0.63655877127924987 2.5
		-1.7307561002333366e-016 0.4860164852175729 2.5
		0.36344122872075013 0.63655877127924976 2.5
		0.51398351478242743 0.99999999999999978 2.5
		0.36344122872075096 1.3634412287207522 2.5
		-5.864041272700624e-017 1.5139835147824277 2.5
		-0.36344122872075035 1.3634412287207522 2.5
		;
createNode subdiv -n "subdivCylinder4Shape" -p "Ball_tail_D_ctrl";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".rtw" no;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1847 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0.15915494 0.16666666 0.15915494 
		0.16666666 0.30504698 0 0.30504698 0.33333331 0.15915494 0.33333331 0.30504698 0.49999997 
		0.15915494 0.49999997 0.30504698 0.66666663 0.15915494 0.66666663 0.30504698 0.83333325 
		0.15915494 0.83333325 0.30504698 0.99999988 0.15915494 0.99999988 0.30504698 0.16666666 
		0.450939 0 0.450939 0.33333331 0.450939 0.49999997 0.450939 0.66666663 0.450939 0.83333325 
		0.450939 0.99999988 0.450939 0.5 0 0.5 0.61009395 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0.16666666 0.15915494 0.083333328 0.15915494 0.22222222 0.10610329 
		0.33333331 0.079577468 0 0.15915494 0.25 0.079577468 0.22222222 0.10610329 0.083333328 
		0.15915494 0.5 0 0.33333331 0.079577468 0.22222222 0.10610329 0.25 0.079577468 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.15915494 0.083333328 
		0.15915494 0.083333328 0.23210096 0 0.23210096 0.16666666 0.15915494 0.16666666 0.23210096 
		0.083333328 0.23210096 0.083333328 0.15915494 0.16666666 0.30504698 0.083333328 0.30504698 
		0.083333328 0.23210096 0.16666666 0.23210096 0 0.30504698 0 0.23210096 0.083333328 
		0.23210096 0.083333328 0.30504698 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0.33333331 0.15915494 0.24999999 0.15915494 0.33333331 0.10610329 0.41666666 0.079577468 
		0.16666666 0.15915494 0.33333331 0.079577468 0.33333331 0.10610329 0.24999999 0.15915494 
		0.5 0 0.41666666 0.079577468 0.33333331 0.10610329 0.33333331 0.079577468 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.16666666 0.15915494 0.24999999 
		0.15915494 0.24999999 0.23210096 0.16666666 0.23210096 0.33333331 0.15915494 0.33333331 
		0.23210096 0.24999999 0.23210096 0.24999999 0.15915494 0.33333331 0.30504698 0.24999999 
		0.30504698 0.24999999 0.23210096 0.33333331 0.23210096 0.16666666 0.30504698 0.16666666 
		0.23210096 0.24999999 0.23210096 0.24999999 0.30504698 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0.49999997 0.15915494 0.41666663 0.15915494 0.44444442 0.10610329 
		0.5 0.079577468 0.33333331 0.15915494 0.41666666 0.079577468 0.44444442 0.10610329 
		0.41666663 0.15915494 0.5 0 0.5 0.079577468 0.44444442 0.10610329 0.41666666 0.079577468 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33333331 0.15915494 
		0.41666663 0.15915494 0.41666663 0.23210096 0.33333331 0.23210096 0.49999997 0.15915494 
		0.49999997 0.23210096 0.41666663 0.23210096 0.41666663 0.15915494 0.49999997 0.30504698 
		0.41666663 0.30504698 0.41666663 0.23210096 0.49999997 0.23210096 0.33333331 0.30504698 
		0.33333331 0.23210096 0.41666663 0.23210096 0.41666663 0.30504698 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66666663 0.15915494 0.58333331 0.15915494 0.55555552 
		0.10610329 0.58333331 0.079577468 0.49999997 0.15915494 0.5 0.079577468 0.55555552 
		0.10610329 0.58333331 0.15915494 0.5 0 0.58333331 0.079577468 0.55555552 0.10610329 
		0.5 0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.49999997 
		0.15915494 0.58333331 0.15915494 0.58333331 0.23210096 0.49999997 0.23210096 0.66666663 
		0.15915494 0.66666663 0.23210096 0.58333331 0.23210096 0.58333331 0.15915494 0.66666663 
		0.30504698 0.58333331 0.30504698 0.58333331 0.23210096 0.66666663 0.23210096 0.49999997 
		0.30504698 0.49999997 0.23210096 0.58333331 0.23210096 0.58333331 0.30504698 0 0 
		0 0 0 0;
	setAttr ".uvst[0].uvsp[250:499]" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.83333325 
		0.15915494 0.74999994 0.15915494 0.66666663 0.10610329 0.66666663 0.079577468 0.66666663 
		0.15915494 0.58333331 0.079577468 0.66666663 0.10610329 0.74999994 0.15915494 0.5 
		0 0.66666663 0.079577468 0.66666663 0.10610329 0.58333331 0.079577468 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66666663 0.15915494 0.74999994 
		0.15915494 0.74999994 0.23210096 0.66666663 0.23210096 0.83333325 0.15915494 0.83333325 
		0.23210096 0.74999994 0.23210096 0.74999994 0.15915494 0.83333325 0.30504698 0.74999994 
		0.30504698 0.74999994 0.23210096 0.83333325 0.23210096 0.66666663 0.30504698 0.66666663 
		0.23210096 0.74999994 0.23210096 0.74999994 0.30504698 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0.99999988 0.15915494 0.91666657 0.15915494 0.77777773 0.10610329 
		0.74999994 0.079577468 0.83333325 0.15915494 0.66666663 0.079577468 0.77777773 0.10610329 
		0.91666657 0.15915494 0.5 0 0.74999994 0.079577468 0.77777773 0.10610329 0.66666663 
		0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.83333325 
		0.15915494 0.91666657 0.15915494 0.91666657 0.23210096 0.83333325 0.23210096 0.99999988 
		0.15915494 0.99999988 0.23210096 0.91666657 0.23210096 0.91666657 0.15915494 0.99999988 
		0.30504698 0.91666657 0.30504698 0.91666657 0.23210096 0.99999988 0.23210096 0.83333325 
		0.30504698 0.83333325 0.23210096 0.91666657 0.23210096 0.91666657 0.30504698 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.450939 0.083333328 0.450939 0.22222222 
		0.50399065 0.25 0.53051651 0.16666666 0.450939 0.33333331 0.53051651 0.22222222 0.50399065 
		0.083333328 0.450939 0.5 0.61009401 0.25 0.53051651 0.22222222 0.50399065 0.33333331 
		0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.30504698 
		0.083333328 0.30504698 0.083333328 0.37799299 0 0.37799299 0.16666666 0.30504698 
		0.16666666 0.37799299 0.083333328 0.37799299 0.083333328 0.30504698 0.16666666 0.450939 
		0.083333328 0.450939 0.083333328 0.37799299 0.16666666 0.37799299 0 0.450939 0 0.37799299 
		0.083333328 0.37799299 0.083333328 0.450939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0.83333325 0.450939 0.91666657 0.450939 0.77777773 0.50399065 0.66666663 
		0.53051651 0.99999988 0.450939 0.74999994 0.53051651 0.77777773 0.50399065 0.91666657 
		0.450939 0.5 0.61009401 0.66666663 0.53051651 0.77777773 0.50399065 0.74999994 0.53051651 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66666663 0.30504698 
		0.74999994 0.30504698 0.74999994 0.37799299 0.66666663 0.37799299 0.83333325 0.30504698 
		0.83333325 0.37799299 0.74999994 0.37799299 0.74999994 0.30504698 0.83333325 0.450939 
		0.74999994 0.450939 0.74999994 0.37799299 0.83333325 0.37799299 0.66666663 0.450939 
		0.66666663 0.37799299 0.74999994 0.37799299 0.74999994 0.450939 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.83333325 0.30504698 0.91666657 0.30504698 
		0.91666657 0.37799299 0.83333325 0.37799299 0.99999988 0.30504698 0.99999988 0.37799299 
		0.91666657 0.37799299 0.91666657 0.30504698 0.99999988 0.450939 0.91666657 0.450939 
		0.91666657 0.37799299 0.99999988 0.37799299 0.83333325 0.450939;
	setAttr ".uvst[0].uvsp[500:749]" 0.83333325 0.37799299 0.91666657 0.37799299 
		0.91666657 0.450939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66666663 0.450939 
		0.74999994 0.450939 0.66666663 0.50399065 0.58333331 0.53051651 0.83333325 0.450939 
		0.66666663 0.53051651 0.66666663 0.50399065 0.74999994 0.450939 0.5 0.61009401 0.58333331 
		0.53051651 0.66666663 0.50399065 0.66666663 0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.49999997 0.30504698 0.58333331 0.30504698 
		0.58333331 0.37799299 0.49999997 0.37799299 0.66666663 0.30504698 0.66666663 0.37799299 
		0.58333331 0.37799299 0.58333331 0.30504698 0.66666663 0.450939 0.58333331 0.450939 
		0.58333331 0.37799299 0.66666663 0.37799299 0.49999997 0.450939 0.49999997 0.37799299 
		0.58333331 0.37799299 0.58333331 0.450939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0.49999997 0.450939 0.58333331 0.450939 0.55555552 0.50399065 0.5 0.53051651 
		0.66666663 0.450939 0.58333331 0.53051651 0.55555552 0.50399065 0.58333331 0.450939 
		0.5 0.61009401 0.5 0.53051651 0.55555552 0.50399065 0.58333331 0.53051651 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33333331 0.30504698 0.41666663 
		0.30504698 0.41666663 0.37799299 0.33333331 0.37799299 0.49999997 0.30504698 0.49999997 
		0.37799299 0.41666663 0.37799299 0.41666663 0.30504698 0.49999997 0.450939 0.41666663 
		0.450939 0.41666663 0.37799299 0.49999997 0.37799299 0.33333331 0.450939 0.33333331 
		0.37799299 0.41666663 0.37799299 0.41666663 0.450939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0.33333331 0.450939 0.41666663 0.450939 0.44444442 0.50399065 
		0.41666666 0.53051651 0.49999997 0.450939 0.5 0.53051651 0.44444442 0.50399065 0.41666663 
		0.450939 0.5 0.61009401 0.41666666 0.53051651 0.44444442 0.50399065 0.5 0.53051651 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.16666666 0.30504698 
		0.24999999 0.30504698 0.24999999 0.37799299 0.16666666 0.37799299 0.33333331 0.30504698 
		0.33333331 0.37799299 0.24999999 0.37799299 0.24999999 0.30504698 0.33333331 0.450939 
		0.24999999 0.450939 0.24999999 0.37799299 0.33333331 0.37799299 0.16666666 0.450939 
		0.16666666 0.37799299 0.24999999 0.37799299 0.24999999 0.450939 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.16666666 0.450939 0.24999999 0.450939 0.33333331 
		0.50399065 0.33333331 0.53051651 0.33333331 0.450939 0.41666666 0.53051651 0.33333331 
		0.50399065 0.24999999 0.450939 0.5 0.61009401 0.33333331 0.53051651 0.33333331 0.50399065 
		0.41666666 0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0.5 0 0.41666666 0.039788734 0.3263889 0.066314556 0.375 0.039788734 0.41666666 
		0.039788734 0.33333331 0.079577468 0.27777776 0.092840381 0.3263889 0.066314556 0.3263889 
		0.066314556 0.27777776 0.092840381 0.22222222 0.10610329 0.2361111 0.092840381 0.375 
		0.039788734 0.3263889 0.066314556 0.2361111 0.092840381 0.25 0.079577468 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0 0.625 0.039788734 0.67361104 
		0.066314556 0.58333331 0.039788734 0.625 0.039788734 0.74999994 0.079577468 0.76388884 
		0.092840381;
	setAttr ".uvst[0].uvsp[750:999]" 0.67361104 0.066314556 0.67361104 0.066314556 
		0.76388884 0.092840381 0.77777773 0.10610329 0.72222221 0.092840381 0.58333331 0.039788734 
		0.67361104 0.066314556 0.72222221 0.092840381 0.66666663 0.079577468 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0 0.58333331 0.039788734 
		0.60416663 0.066314556 0.54166663 0.039788734 0.58333331 0.039788734 0.66666663 0.079577468 
		0.66666663 0.092840381 0.60416663 0.066314556 0.60416663 0.066314556 0.66666663 0.092840381 
		0.66666663 0.10610329 0.625 0.092840381 0.54166663 0.039788734 0.60416663 0.066314556 
		0.625 0.092840381 0.58333331 0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0.5 0 0.54166663 0.039788734 0.53472221 0.066314556 0.5 0.039788734 
		0.54166663 0.039788734 0.58333331 0.079577468 0.56944442 0.092840381 0.53472221 0.066314556 
		0.53472221 0.066314556 0.56944442 0.092840381 0.55555552 0.10610329 0.52777779 0.092840381 
		0.5 0.039788734 0.53472221 0.066314556 0.52777779 0.092840381 0.5 0.079577468 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0 0.5 0.039788734 
		0.46527776 0.066314556 0.45833331 0.039788734 0.5 0.039788734 0.5 0.079577468 0.47222221 
		0.092840381 0.46527776 0.066314556 0.46527776 0.066314556 0.47222221 0.092840381 
		0.44444442 0.10610329 0.43055552 0.092840381 0.45833331 0.039788734 0.46527776 0.066314556 
		0.43055552 0.092840381 0.41666666 0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0 0.45833331 0.039788734 0.39583331 0.066314556 0.41666666 
		0.039788734 0.45833331 0.039788734 0.41666666 0.079577468 0.375 0.092840381 0.39583331 
		0.066314556 0.39583331 0.066314556 0.375 0.092840381 0.33333331 0.10610329 0.33333331 
		0.092840381 0.41666666 0.039788734 0.39583331 0.066314556 0.33333331 0.092840381 
		0.33333331 0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0.33333331 0.15915494 0.29166666 0.15915494 0.33333331 0.12599766 0.375 0.1193662 
		0.29166666 0.15915494 0.24999999 0.15915494 0.29166666 0.13262911 0.33333331 0.12599766 
		0.33333331 0.12599766 0.29166666 0.13262911 0.33333331 0.10610329 0.375 0.092840381 
		0.375 0.1193662 0.33333331 0.12599766 0.375 0.092840381 0.41666666 0.079577468 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.16666666 0.15915494 
		0.24999999 0.1193662 0.27083331 0.12599766 0.20833331 0.15915494 0.24999999 0.1193662 
		0.33333331 0.079577468 0.33333331 0.092840381 0.27083331 0.12599766 0.27083331 0.12599766 
		0.33333331 0.092840381 0.33333331 0.10610329 0.29166666 0.13262911 0.20833331 0.15915494 
		0.27083331 0.12599766 0.29166666 0.13262911 0.24999999 0.15915494 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.49999997 0.15915494 0.45833331 
		0.15915494 0.46527776 0.12599766 0.5 0.1193662 0.45833331 0.15915494 0.41666663 0.15915494 
		0.43055552 0.13262911 0.46527776 0.12599766 0.46527776 0.12599766 0.43055552 0.13262911 
		0.44444442 0.10610329 0.47222221 0.092840381 0.5 0.1193662 0.46527776 0.12599766 
		0.47222221 0.092840381 0.5 0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0.33333331 0.15915494;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.375 0.1193662 0.40277776 0.12599766 0.37499997 
		0.15915494 0.375 0.1193662 0.41666666 0.079577468 0.43055552 0.092840381 0.40277776 
		0.12599766 0.40277776 0.12599766 0.43055552 0.092840381 0.44444442 0.10610329 0.43055552 
		0.13262911 0.37499997 0.15915494 0.40277776 0.12599766 0.43055552 0.13262911 0.41666663 
		0.15915494 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66666663 
		0.15915494 0.625 0.15915494 0.59722221 0.12599766 0.625 0.1193662 0.625 0.15915494 
		0.58333331 0.15915494 0.56944442 0.13262911 0.59722221 0.12599766 0.59722221 0.12599766 
		0.56944442 0.13262911 0.55555552 0.10610329 0.56944442 0.092840381 0.625 0.1193662 
		0.59722221 0.12599766 0.56944442 0.092840381 0.58333331 0.079577468 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.49999997 0.15915494 0.5 0.1193662 
		0.53472221 0.12599766 0.54166663 0.15915494 0.5 0.1193662 0.5 0.079577468 0.52777779 
		0.092840381 0.53472221 0.12599766 0.53472221 0.12599766 0.52777779 0.092840381 0.55555552 
		0.10610329 0.56944442 0.13262911 0.54166663 0.15915494 0.53472221 0.12599766 0.56944442 
		0.13262911 0.58333331 0.15915494 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0.83333325 0.15915494 0.79166663 0.15915494 0.72916663 0.12599766 
		0.74999994 0.1193662 0.79166663 0.15915494 0.74999994 0.15915494 0.70833325 0.13262911 
		0.72916663 0.12599766 0.72916663 0.12599766 0.70833325 0.13262911 0.66666663 0.10610329 
		0.66666663 0.092840381 0.74999994 0.1193662 0.72916663 0.12599766 0.66666663 0.092840381 
		0.66666663 0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0.66666663 0.15915494 0.625 0.1193662 0.66666663 0.12599766 0.70833325 0.15915494 
		0.625 0.1193662 0.58333331 0.079577468 0.625 0.092840381 0.66666663 0.12599766 0.66666663 
		0.12599766 0.625 0.092840381 0.66666663 0.10610329 0.70833325 0.13262911 0.70833325 
		0.15915494 0.66666663 0.12599766 0.70833325 0.13262911 0.74999994 0.15915494 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99999988 0.15915494 
		0.95833325 0.15915494 0.86111104 0.12599766 0.87499988 0.1193662 0.95833325 0.15915494 
		0.91666657 0.15915494 0.84722215 0.13262911 0.86111104 0.12599766 0.86111104 0.12599766 
		0.84722215 0.13262911 0.77777773 0.10610329 0.76388884 0.092840381 0.87499988 0.1193662 
		0.86111104 0.12599766 0.76388884 0.092840381 0.74999994 0.079577468 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.83333325 0.15915494 0.74999994 
		0.1193662 0.79861104 0.12599766 0.87499988 0.15915494 0.74999994 0.1193662 0.66666663 
		0.079577468 0.72222221 0.092840381 0.79861104 0.12599766 0.79861104 0.12599766 0.72222221 
		0.092840381 0.77777773 0.10610329 0.84722215 0.13262911 0.87499988 0.15915494 0.79861104 
		0.12599766 0.84722215 0.13262911 0.91666657 0.15915494 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.16666666 0.15915494 0.12499999 0.15915494 
		0.20138888 0.12599766 0.24999999 0.1193662 0.12499999 0.15915494 0.083333328 0.15915494 
		0.15277778 0.13262911 0.20138888 0.12599766 0.20138888 0.12599766 0.15277778 0.13262911 
		0.22222222 0.10610329 0.27777776 0.092840381 0.24999999 0.1193662 0.20138888 0.12599766 
		0.27777776 0.092840381 0.33333331 0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
	setAttr ".uvst[0].uvsp[1250:1499]" 0 0 0 0 0 0 0 0 0 0 0 0.15915494 0.125 0.1193662 
		0.1388889 0.12599766 0.041666664 0.15915494 0.125 0.1193662 0.25 0.079577468 0.2361111 
		0.092840381 0.1388889 0.12599766 0.1388889 0.12599766 0.2361111 0.092840381 0.22222222 
		0.10610329 0.15277778 0.13262911 0.041666664 0.15915494 0.1388889 0.12599766 0.15277778 
		0.13262911 0.083333328 0.15915494 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0.5 0.61009401 0.375 0.57030523 0.3263889 0.54377943 0.41666666 0.57030523 
		0.375 0.57030523 0.25 0.53051651 0.2361111 0.51725358 0.3263889 0.54377943 0.3263889 
		0.54377943 0.2361111 0.51725358 0.22222222 0.50399065 0.27777776 0.51725358 0.41666666 
		0.57030523 0.3263889 0.54377943 0.27777776 0.51725358 0.33333331 0.53051651 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0.61009401 0.41666666 
		0.57030523 0.39583331 0.54377943 0.45833331 0.57030523 0.41666666 0.57030523 0.33333331 
		0.53051651 0.33333331 0.51725358 0.39583331 0.54377943 0.39583331 0.54377943 0.33333331 
		0.51725358 0.33333331 0.50399065 0.375 0.51725358 0.45833331 0.57030523 0.39583331 
		0.54377943 0.375 0.51725358 0.41666666 0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0.61009401 0.45833331 0.57030523 0.46527776 0.54377943 
		0.5 0.57030523 0.45833331 0.57030523 0.41666666 0.53051651 0.43055552 0.51725358 
		0.46527776 0.54377943 0.46527776 0.54377943 0.43055552 0.51725358 0.44444442 0.50399065 
		0.47222221 0.51725358 0.5 0.57030523 0.46527776 0.54377943 0.47222221 0.51725358 
		0.5 0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 
		0.61009401 0.5 0.57030523 0.53472221 0.54377943 0.54166663 0.57030523 0.5 0.57030523 
		0.5 0.53051651 0.52777779 0.51725358 0.53472221 0.54377943 0.53472221 0.54377943 
		0.52777779 0.51725358 0.55555552 0.50399065 0.56944442 0.51725358 0.54166663 0.57030523 
		0.53472221 0.54377943 0.56944442 0.51725358 0.58333331 0.53051651 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0.61009401 0.54166663 0.57030523 
		0.60416663 0.54377943 0.58333331 0.57030523 0.54166663 0.57030523 0.58333331 0.53051651 
		0.625 0.51725358 0.60416663 0.54377943 0.60416663 0.54377943 0.625 0.51725358 0.66666663 
		0.50399065 0.66666663 0.51725358 0.58333331 0.57030523 0.60416663 0.54377943 0.66666663 
		0.51725358 0.66666663 0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0.5 0.61009401 0.58333331 0.57030523 0.67361104 0.54377943 0.625 
		0.57030523 0.58333331 0.57030523 0.66666663 0.53051651 0.72222221 0.51725358 0.67361104 
		0.54377943 0.67361104 0.54377943 0.72222221 0.51725358 0.77777773 0.50399065 0.76388884 
		0.51725358 0.625 0.57030523 0.67361104 0.54377943 0.76388884 0.51725358 0.74999994 
		0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.83333325 
		0.450939 0.87499988 0.450939 0.79861104 0.48409629 0.74999994 0.49072775 0.87499988 
		0.450939 0.91666657 0.450939 0.84722215 0.47746482 0.79861104 0.48409629 0.79861104 
		0.48409629 0.84722215 0.47746482 0.77777773 0.50399065 0.72222221 0.51725358 0.74999994 
		0.49072775 0.79861104 0.48409629 0.72222221 0.51725358 0.66666663 0.53051651 0 0 
		0 0 0 0 0 0 0 0;
	setAttr ".uvst[0].uvsp[1500:1749]" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0.99999988 0.450939 0.87499988 0.49072775 0.86111104 0.48409629 0.95833325 0.450939 
		0.87499988 0.49072775 0.74999994 0.53051651 0.76388884 0.51725358 0.86111104 0.48409629 
		0.86111104 0.48409629 0.76388884 0.51725358 0.77777773 0.50399065 0.84722215 0.47746482 
		0.95833325 0.450939 0.86111104 0.48409629 0.84722215 0.47746482 0.91666657 0.450939 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66666663 0.450939 
		0.70833325 0.450939 0.66666663 0.48409629 0.625 0.49072775 0.70833325 0.450939 0.74999994 
		0.450939 0.70833325 0.47746482 0.66666663 0.48409629 0.66666663 0.48409629 0.70833325 
		0.47746482 0.66666663 0.50399065 0.625 0.51725358 0.625 0.49072775 0.66666663 0.48409629 
		0.625 0.51725358 0.58333331 0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0.83333325 0.450939 0.74999994 0.49072775 0.72916663 0.48409629 
		0.79166663 0.450939 0.74999994 0.49072775 0.66666663 0.53051651 0.66666663 0.51725358 
		0.72916663 0.48409629 0.72916663 0.48409629 0.66666663 0.51725358 0.66666663 0.50399065 
		0.70833325 0.47746482 0.79166663 0.450939 0.72916663 0.48409629 0.70833325 0.47746482 
		0.74999994 0.450939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0.49999997 0.450939 0.54166663 0.450939 0.53472221 0.48409629 0.5 0.49072775 0.54166663 
		0.450939 0.58333331 0.450939 0.56944442 0.47746482 0.53472221 0.48409629 0.53472221 
		0.48409629 0.56944442 0.47746482 0.55555552 0.50399065 0.52777779 0.51725358 0.5 
		0.49072775 0.53472221 0.48409629 0.52777779 0.51725358 0.5 0.53051651 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66666663 0.450939 0.625 0.49072775 
		0.59722221 0.48409629 0.625 0.450939 0.625 0.49072775 0.58333331 0.53051651 0.56944442 
		0.51725358 0.59722221 0.48409629 0.59722221 0.48409629 0.56944442 0.51725358 0.55555552 
		0.50399065 0.56944442 0.47746482 0.625 0.450939 0.59722221 0.48409629 0.56944442 
		0.47746482 0.58333331 0.450939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0.33333331 0.450939 0.37499997 0.450939 0.40277776 0.48409629 0.375 
		0.49072775 0.37499997 0.450939 0.41666663 0.450939 0.43055552 0.47746482 0.40277776 
		0.48409629 0.40277776 0.48409629 0.43055552 0.47746482 0.44444442 0.50399065 0.43055552 
		0.51725358 0.375 0.49072775 0.40277776 0.48409629 0.43055552 0.51725358 0.41666666 
		0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.49999997 
		0.450939 0.5 0.49072775 0.46527776 0.48409629 0.45833331 0.450939 0.5 0.49072775 
		0.5 0.53051651 0.47222221 0.51725358 0.46527776 0.48409629 0.46527776 0.48409629 
		0.47222221 0.51725358 0.44444442 0.50399065 0.43055552 0.47746482 0.45833331 0.450939 
		0.46527776 0.48409629 0.43055552 0.47746482 0.41666663 0.450939 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.16666666 0.450939 0.20833331 0.450939 
		0.27083331 0.48409629 0.24999999 0.49072775 0.20833331 0.450939 0.24999999 0.450939 
		0.29166666 0.47746482 0.27083331 0.48409629 0.27083331 0.48409629 0.29166666 0.47746482 
		0.33333331 0.50399065 0.33333331 0.51725358 0.24999999 0.49072775 0.27083331 0.48409629 
		0.33333331 0.51725358;
	setAttr ".uvst[0].uvsp[1750:1846]" 0.33333331 0.53051651 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33333331 0.450939 0.375 0.49072775 
		0.33333331 0.48409629 0.29166666 0.450939 0.375 0.49072775 0.41666666 0.53051651 
		0.375 0.51725358 0.33333331 0.48409629 0.33333331 0.48409629 0.375 0.51725358 0.33333331 
		0.50399065 0.29166666 0.47746482 0.29166666 0.450939 0.33333331 0.48409629 0.29166666 
		0.47746482 0.24999999 0.450939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0.450939 0.041666664 0.450939 0.1388889 0.48409629 0.125 0.49072775 
		0.041666664 0.450939 0.083333328 0.450939 0.15277778 0.47746482 0.1388889 0.48409629 
		0.1388889 0.48409629 0.15277778 0.47746482 0.22222222 0.50399065 0.2361111 0.51725358 
		0.125 0.49072775 0.1388889 0.48409629 0.2361111 0.51725358 0.25 0.53051651 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.16666666 0.450939 0.24999999 
		0.49072775 0.20138888 0.48409629 0.12499999 0.450939 0.24999999 0.49072775 0.33333331 
		0.53051651 0.27777776 0.51725358 0.20138888 0.48409629 0.20138888 0.48409629 0.27777776 
		0.51725358 0.22222222 0.50399065 0.15277778 0.47746482 0.12499999 0.450939 0.20138888 
		0.48409629 0.15277778 0.47746482 0.083333328 0.450939;
	setAttr ".dsr" 5;
	setAttr ".xsr" 4;
	setAttr ".cc" -type "subd" 
		20
		0  0.26728707493059456 1.4621771371472934 2.4849344633894304
		1  -0.26728683509534984 1.4621772964626734 2.4849344634725625
		7  -0.1820217616064731 1.3143381114269974 2.7880575808018575
		6  0.18202191673845505 1.3143380029335676 2.788057580745245
		2  -0.5345738432134558 0.99922281749510722 2.4846928902583509
		8  -0.36404363694341879 0.99906711097463163 2.7878930699646438
		3  -0.26728694130561809 0.53626832800866409 2.4844513170386509
		9  -0.18202183393543617 0.68379610335893348 2.7877285591236918
		4  0.26728688906262527 0.53626827490353723 2.4844513170109401
		10  0.18202179016276976 0.68379606719445674 2.7877285591048211
		5  0.5345738175230309 0.99922273257797856 2.4846928902140406
		11  0.36404361125299262 0.99906705314625044 2.7878930699344684
		13  -0.04105819426746813 1.0700582708520772 3.0249877613185765
		12  0.041058209364691602 1.070058246379491 3.0249877613058063
		14  -0.082116404241077703 0.99894339572401147 3.0249506530287911
		15  -0.041058210582527808 0.92782851898013119 3.0249135447381628
		16  0.041058180813337161 0.92782851082260254 3.0249135447339062
		17  0.082116378550652111 0.99894338267981109 3.0249506530219845
		18  1.3707354062074805e-008 0.99943393173856276 2.0799476966464847
		19  -8.766447936763964e-009 0.99894338267981109 3.0249506530219845
		
		24
		4  0 1 7 6 
		4  1 2 8 7 
		4  2 3 9 8 
		4  3 4 10 9 
		4  4 5 11 10 
		4  5 0 6 11 
		4  6 7 13 12 
		4  7 8 14 13 
		4  8 9 15 14 
		4  9 10 16 15 
		4  10 11 17 16 
		4  11 6 12 17 
		3  1 0 18 
		3  2 1 18 
		3  3 2 18 
		3  4 3 18 
		3  5 4 18 
		3  0 5 18 
		3  12 13 19 
		3  13 14 19 
		3  14 15 19 
		3  15 16 19 
		3  16 17 19 
		3  17 12 19 
		
		;
	setAttr ".ecr" -type "subdivEdgeCrease" 0 0
		
		;
	setAttr ".fuv[0]" -type "subdivFaceUVIds" 
		24
		0 
		4  0 1 2 3 
		4  67 4 5 71 
		4  123 6 7 127 
		4  179 8 9 183 
		4  235 10 11 239 
		4  291 12 13 295 
		4  3 71 14 15 
		4  71 127 16 407 
		4  127 183 17 16 
		4  183 239 18 17 
		4  239 295 19 18 
		4  295 13 20 463 
		3  1 0 21 
		3  4 67 43 
		3  6 123 43 
		3  8 179 43 
		3  10 235 43 
		3  12 291 43 
		3  15 14 22 
		3  407 663 379 
		3  16 607 379 
		3  17 551 379 
		3  18 463 379 
		3  19 20 379 
		
		
		0 0 1 0 4 63 1228 65 66 
		0 1 1 0 4 67 68 65 1228 
		0 2 1 0 4 71 72 65 68 
		0 3 1 0 4 75 66 65 72 
		0 0 1 1 4 67 908 121 68 
		0 1 1 1 4 123 124 121 908 
		0 2 1 1 4 127 128 121 124 
		0 3 1 1 4 71 68 121 128 
		0 0 1 2 4 123 972 177 124 
		0 1 1 2 4 179 180 177 972 
		0 2 1 2 4 183 184 177 180 
		0 3 1 2 4 127 124 177 184 
		0 0 1 3 4 179 1036 233 180 
		0 1 1 3 4 235 236 233 1036 
		0 2 1 3 4 239 240 233 236 
		0 3 1 3 4 183 180 233 240 
		0 0 1 4 4 235 1100 289 236 
		0 1 1 4 4 291 292 289 1100 
		0 2 1 4 4 295 296 289 292 
		0 3 1 4 4 239 236 289 296 
		0 0 1 5 4 291 1164 345 292 
		0 1 1 5 4 347 348 345 1164 
		0 2 1 5 4 351 352 345 354 
		0 3 1 5 4 295 292 345 352 
		0 0 1 6 4 399 72 401 402 
		0 1 1 6 4 71 404 401 72 
		0 2 1 6 4 407 1804 401 404 
		0 3 1 6 4 411 402 401 1804 
		0 0 1 7 4 71 128 657 404 
		0 1 1 7 4 127 602 657 128 
		0 2 1 7 4 663 664 657 602 
		0 3 1 7 4 407 404 657 664 
		0 0 1 8 4 127 184 601 602 
		0 1 1 8 4 183 546 601 184 
		0 2 1 8 4 607 608 601 546 
		0 3 1 8 4 663 602 601 608 
		0 0 1 9 4 183 240 545 546 
		0 1 1 9 4 239 458 545 240 
		0 2 1 9 4 551 552 545 458 
		0 3 1 9 4 607 546 545 552 
		0 0 1 10 4 239 296 457 458 
		0 1 1 10 4 295 460 457 296 
		0 2 1 10 4 463 464 457 460 
		0 3 1 10 4 551 458 457 464 
		0 0 1 11 4 295 352 489 460 
		0 1 1 11 4 491 492 489 352 
		0 2 1 11 4 495 1484 489 498 
		0 3 1 11 4 463 460 489 1484 
		0 0 1 12 4 67 36 37 38 
		0 1 1 12 4 39 40 1233 1228 
		0 2 1 12 4 43 38 37 40 
		0 0 1 13 4 123 92 93 94 
		0 1 1 13 4 67 38 913 908 
		0 2 1 13 4 711 94 93 38 
		0 0 1 14 4 179 148 149 150 
		0 1 1 14 4 123 918 977 972 
		0 2 1 14 4 711 150 149 94 
		0 0 1 15 4 235 204 205 206 
		0 1 1 15 4 179 982 1041 1036 
		0 2 1 15 4 711 206 205 150 
		0 0 1 16 4 291 260 261 262 
		0 1 1 16 4 235 1046 1105 1100 
		0 2 1 16 4 711 262 261 206 
		0 0 1 17 4 315 316 317 318 
		0 1 1 17 4 291 1110 1169 1164 
		0 2 1 17 4 711 324 317 262 
		0 0 1 18 4 371 372 373 374 
		0 1 1 18 4 407 376 1809 1804 
		0 2 1 18 4 379 374 373 376 
		0 0 1 19 4 407 664 685 376 
		0 1 1 19 4 663 1686 1745 664 
		0 2 1 19 4 1287 376 685 630 
		0 0 1 20 4 663 608 629 630 
		0 1 1 20 4 607 1622 1681 608 
		0 2 1 20 4 1287 630 629 574 
		0 0 1 21 4 607 552 573 574 
		0 1 1 21 4 551 1558 1617 552 
		0 2 1 21 4 1287 574 573 518 
		0 0 1 22 4 551 464 517 518 
		0 1 1 22 4 463 1494 1553 464 
		0 2 1 22 4 1287 518 517 430 
		0 0 1 23 4 463 428 429 430 
		0 1 1 23 4 431 432 1489 1484 
		0 2 1 23 4 1287 430 429 438 
		
		0 0 2 12 4 67 1224 1225 936 
		1 0 2 12 4 1224 1228 1229 1225 
		2 0 2 12 4 1225 1229 1233 717 
		3 0 2 12 4 936 1225 717 1238 
		0 1 2 12 4 1255 1256 1257 1258 
		1 1 2 12 4 1259 1260 722 1257 
		2 1 2 12 4 1257 722 1265 1229 
		3 1 2 12 4 1258 1257 1229 1228 
		0 2 2 12 4 711 712 713 714 
		1 2 2 12 4 712 1238 717 713 
		2 2 2 12 4 713 717 1233 722 
		3 2 2 12 4 714 713 722 726 
		0 0 2 13 4 123 904 905 906 
		1 0 2 13 4 904 908 909 905 
		2 0 2 13 4 905 909 913 877 
		3 0 2 13 4 906 905 877 918 
		0 1 2 13 4 67 936 937 938 
		1 1 2 13 4 936 1238 882 937 
		2 1 2 13 4 937 882 945 909 
		3 1 2 13 4 938 937 909 908 
		0 2 2 13 4 711 842 873 712 
		1 2 2 13 4 842 918 877 873 
		2 2 2 13 4 873 877 913 882 
		3 2 2 13 4 712 873 882 1238 
		0 0 2 14 4 179 968 969 970 
		1 0 2 14 4 968 972 973 969 
		2 0 2 14 4 969 973 977 845 
		3 0 2 14 4 970 969 845 982 
		0 1 2 14 4 123 906 1001 1002 
		1 1 2 14 4 906 1004 850 1001 
		2 1 2 14 4 1001 850 1009 973 
		3 1 2 14 4 1002 1001 973 972 
		0 2 2 14 4 711 810 841 842 
		1 2 2 14 4 810 982 845 841 
		2 2 2 14 4 841 845 977 850 
		3 2 2 14 4 842 841 850 918 
		0 0 2 15 4 235 1032 1033 1034 
		1 0 2 15 4 1032 1036 1037 1033 
		2 0 2 15 4 1033 1037 1041 813 
		3 0 2 15 4 1034 1033 813 1046 
		0 1 2 15 4 179 970 1065 1066 
		1 1 2 15 4 970 1068 818 1065 
		2 1 2 15 4 1065 818 1073 1037 
		3 1 2 15 4 1066 1065 1037 1036 
		0 2 2 15 4 711 778 809 810 
		1 2 2 15 4 778 1046 813 809 
		2 2 2 15 4 809 813 1041 818 
		3 2 2 15 4 810 809 818 982 
		0 0 2 16 4 291 1096 1097 1098 
		1 0 2 16 4 1096 1100 1101 1097 
		2 0 2 16 4 1097 1101 1105 781 
		3 0 2 16 4 1098 1097 781 1110 
		0 1 2 16 4 235 1034 1129 1130 
		1 1 2 16 4 1034 1132 786 1129 
		2 1 2 16 4 1129 786 1137 1101 
		3 1 2 16 4 1130 1129 1101 1100 
		0 2 2 16 4 711 746 777 778 
		1 2 2 16 4 746 1110 781 777 
		2 2 2 16 4 777 781 1105 786 
		3 2 2 16 4 778 777 786 1046 
		0 0 2 17 4 1159 1160 1161 1162 
		1 0 2 17 4 1160 1164 1165 1161 
		2 0 2 17 4 1161 1165 1169 749 
		3 0 2 17 4 1162 1161 749 1174 
		0 1 2 17 4 291 1098 1193 1194 
		1 1 2 17 4 1098 1196 754 1193 
		2 1 2 17 4 1193 754 1201 1165 
		3 1 2 17 4 1194 1193 1165 1164 
		0 2 2 17 4 711 744 745 746 
		1 2 2 17 4 747 748 749 745 
		2 2 2 17 4 745 749 1169 754 
		3 2 2 17 4 746 745 754 1110 
		0 0 2 18 4 1799 1800 1801 1802 
		1 0 2 18 4 1800 1804 1805 1801 
		2 0 2 18 4 1801 1805 1809 1293 
		3 0 2 18 4 1811 1801 1293 1814 
		0 1 2 18 4 407 1738 1833 1834 
		1 1 2 18 4 1738 1836 1298 1833 
		2 1 2 18 4 1833 1298 1841 1805 
		3 1 2 18 4 1834 1833 1805 1804 
		0 2 2 18 4 1287 1288 1289 1290 
		1 2 2 18 4 1288 1292 1293 1289 
		2 2 2 18 4 1289 1293 1809 1298 
		3 2 2 18 4 1290 1289 1298 1836 
		0 0 2 19 4 407 1736 1737 1738 
		1 0 2 19 4 1736 664 1741 1737 
		2 0 2 19 4 1737 1741 1745 1325 
		3 0 2 19 4 1738 1737 1325 1836 
		0 1 2 19 4 663 1674 1769 1770 
		1 1 2 19 4 1674 1772 1330 1769 
		2 1 2 19 4 1769 1330 1777 1741 
		3 1 2 19 4 1770 1769 1741 664 
		0 2 2 19 4 1287 1290 1321 1322 
		1 2 2 19 4 1290 1836 1325 1321 
		2 2 2 19 4 1321 1325 1745 1330 
		3 2 2 19 4 1322 1321 1330 1686 
		0 0 2 20 4 663 1672 1673 1674 
		1 0 2 20 4 1672 608 1677 1673 
		2 0 2 20 4 1673 1677 1681 1357 
		3 0 2 20 4 1674 1673 1357 1686 
		0 1 2 20 4 607 1610 1705 1706 
		1 1 2 20 4 1610 1708 1362 1705 
		2 1 2 20 4 1705 1362 1713 1677 
		3 1 2 20 4 1706 1705 1677 608 
		0 2 2 20 4 1287 1322 1353 1354 
		1 2 2 20 4 1322 1686 1357 1353 
		2 2 2 20 4 1353 1357 1681 1362 
		3 2 2 20 4 1354 1353 1362 1622 
		0 0 2 21 4 607 1608 1609 1610 
		1 0 2 21 4 1608 552 1613 1609 
		2 0 2 21 4 1609 1613 1617 1389 
		3 0 2 21 4 1610 1609 1389 1622 
		0 1 2 21 4 551 1546 1641 1642 
		1 1 2 21 4 1546 1644 1394 1641 
		2 1 2 21 4 1641 1394 1649 1613 
		3 1 2 21 4 1642 1641 1613 552 
		0 2 2 21 4 1287 1354 1385 1386 
		1 2 2 21 4 1354 1622 1389 1385 
		2 2 2 21 4 1385 1389 1617 1394 
		3 2 2 21 4 1386 1385 1394 1558 
		0 0 2 22 4 551 1544 1545 1546 
		1 0 2 22 4 1544 464 1549 1545 
		2 0 2 22 4 1545 1549 1553 1421 
		3 0 2 22 4 1546 1545 1421 1558 
		0 1 2 22 4 463 1482 1577 1578 
		1 1 2 22 4 1482 1580 1426 1577 
		2 1 2 22 4 1577 1426 1585 1549 
		3 1 2 22 4 1578 1577 1549 464 
		0 2 2 22 4 1287 1386 1417 1418 
		1 2 2 22 4 1386 1558 1421 1417 
		2 2 2 22 4 1417 1421 1553 1426 
		3 2 2 22 4 1418 1417 1426 1494 
		0 0 2 23 4 463 1480 1481 1482 
		1 0 2 23 4 1480 1484 1485 1481 
		2 0 2 23 4 1481 1485 1489 1453 
		3 0 2 23 4 1482 1481 1453 1494 
		0 1 2 23 4 1511 1512 1513 1514 
		1 1 2 23 4 1512 1516 1458 1513 
		2 1 2 23 4 1513 1458 1521 1485 
		3 1 2 23 4 1514 1513 1485 1484 
		0 2 2 23 4 1287 1418 1449 1450 
		1 2 2 23 4 1418 1494 1453 1449 
		2 2 2 23 4 1449 1453 1489 1458 
		3 2 2 23 4 1459 1449 1458 1462 
		;
createNode parentConstraint -n "Ball_spine_D_space1_parentConstraint1" -p "Ball_spine_D_space1";
	addAttr -ci true -sn "w0" -ln "Ball_spine_C_ctrl1W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".ove" yes;
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
	setAttr ".tg[0].tot" -type "double3" 0 0 0.5 ;
	setAttr -k on ".w0";
createNode subdiv -n "subdivCylinder3Shape" -p "Ball_tail_C_ctrl";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".rtw" no;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1847 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0.15915494 0.16666666 0.15915494 
		0.16666666 0.30504698 0 0.30504698 0.33333331 0.15915494 0.33333331 0.30504698 0.49999997 
		0.15915494 0.49999997 0.30504698 0.66666663 0.15915494 0.66666663 0.30504698 0.83333325 
		0.15915494 0.83333325 0.30504698 0.99999988 0.15915494 0.99999988 0.30504698 0.16666666 
		0.450939 0 0.450939 0.33333331 0.450939 0.49999997 0.450939 0.66666663 0.450939 0.83333325 
		0.450939 0.99999988 0.450939 0.5 0 0.5 0.61009395 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0.16666666 0.15915494 0.083333328 0.15915494 0.22222222 0.10610329 
		0.33333331 0.079577468 0 0.15915494 0.25 0.079577468 0.22222222 0.10610329 0.083333328 
		0.15915494 0.5 0 0.33333331 0.079577468 0.22222222 0.10610329 0.25 0.079577468 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.15915494 0.083333328 
		0.15915494 0.083333328 0.23210096 0 0.23210096 0.16666666 0.15915494 0.16666666 0.23210096 
		0.083333328 0.23210096 0.083333328 0.15915494 0.16666666 0.30504698 0.083333328 0.30504698 
		0.083333328 0.23210096 0.16666666 0.23210096 0 0.30504698 0 0.23210096 0.083333328 
		0.23210096 0.083333328 0.30504698 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0.33333331 0.15915494 0.24999999 0.15915494 0.33333331 0.10610329 0.41666666 0.079577468 
		0.16666666 0.15915494 0.33333331 0.079577468 0.33333331 0.10610329 0.24999999 0.15915494 
		0.5 0 0.41666666 0.079577468 0.33333331 0.10610329 0.33333331 0.079577468 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.16666666 0.15915494 0.24999999 
		0.15915494 0.24999999 0.23210096 0.16666666 0.23210096 0.33333331 0.15915494 0.33333331 
		0.23210096 0.24999999 0.23210096 0.24999999 0.15915494 0.33333331 0.30504698 0.24999999 
		0.30504698 0.24999999 0.23210096 0.33333331 0.23210096 0.16666666 0.30504698 0.16666666 
		0.23210096 0.24999999 0.23210096 0.24999999 0.30504698 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0.49999997 0.15915494 0.41666663 0.15915494 0.44444442 0.10610329 
		0.5 0.079577468 0.33333331 0.15915494 0.41666666 0.079577468 0.44444442 0.10610329 
		0.41666663 0.15915494 0.5 0 0.5 0.079577468 0.44444442 0.10610329 0.41666666 0.079577468 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33333331 0.15915494 
		0.41666663 0.15915494 0.41666663 0.23210096 0.33333331 0.23210096 0.49999997 0.15915494 
		0.49999997 0.23210096 0.41666663 0.23210096 0.41666663 0.15915494 0.49999997 0.30504698 
		0.41666663 0.30504698 0.41666663 0.23210096 0.49999997 0.23210096 0.33333331 0.30504698 
		0.33333331 0.23210096 0.41666663 0.23210096 0.41666663 0.30504698 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66666663 0.15915494 0.58333331 0.15915494 0.55555552 
		0.10610329 0.58333331 0.079577468 0.49999997 0.15915494 0.5 0.079577468 0.55555552 
		0.10610329 0.58333331 0.15915494 0.5 0 0.58333331 0.079577468 0.55555552 0.10610329 
		0.5 0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.49999997 
		0.15915494 0.58333331 0.15915494 0.58333331 0.23210096 0.49999997 0.23210096 0.66666663 
		0.15915494 0.66666663 0.23210096 0.58333331 0.23210096 0.58333331 0.15915494 0.66666663 
		0.30504698 0.58333331 0.30504698 0.58333331 0.23210096 0.66666663 0.23210096 0.49999997 
		0.30504698 0.49999997 0.23210096 0.58333331 0.23210096 0.58333331 0.30504698 0 0 
		0 0 0 0;
	setAttr ".uvst[0].uvsp[250:499]" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.83333325 
		0.15915494 0.74999994 0.15915494 0.66666663 0.10610329 0.66666663 0.079577468 0.66666663 
		0.15915494 0.58333331 0.079577468 0.66666663 0.10610329 0.74999994 0.15915494 0.5 
		0 0.66666663 0.079577468 0.66666663 0.10610329 0.58333331 0.079577468 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66666663 0.15915494 0.74999994 
		0.15915494 0.74999994 0.23210096 0.66666663 0.23210096 0.83333325 0.15915494 0.83333325 
		0.23210096 0.74999994 0.23210096 0.74999994 0.15915494 0.83333325 0.30504698 0.74999994 
		0.30504698 0.74999994 0.23210096 0.83333325 0.23210096 0.66666663 0.30504698 0.66666663 
		0.23210096 0.74999994 0.23210096 0.74999994 0.30504698 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0.99999988 0.15915494 0.91666657 0.15915494 0.77777773 0.10610329 
		0.74999994 0.079577468 0.83333325 0.15915494 0.66666663 0.079577468 0.77777773 0.10610329 
		0.91666657 0.15915494 0.5 0 0.74999994 0.079577468 0.77777773 0.10610329 0.66666663 
		0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.83333325 
		0.15915494 0.91666657 0.15915494 0.91666657 0.23210096 0.83333325 0.23210096 0.99999988 
		0.15915494 0.99999988 0.23210096 0.91666657 0.23210096 0.91666657 0.15915494 0.99999988 
		0.30504698 0.91666657 0.30504698 0.91666657 0.23210096 0.99999988 0.23210096 0.83333325 
		0.30504698 0.83333325 0.23210096 0.91666657 0.23210096 0.91666657 0.30504698 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.450939 0.083333328 0.450939 0.22222222 
		0.50399065 0.25 0.53051651 0.16666666 0.450939 0.33333331 0.53051651 0.22222222 0.50399065 
		0.083333328 0.450939 0.5 0.61009401 0.25 0.53051651 0.22222222 0.50399065 0.33333331 
		0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.30504698 
		0.083333328 0.30504698 0.083333328 0.37799299 0 0.37799299 0.16666666 0.30504698 
		0.16666666 0.37799299 0.083333328 0.37799299 0.083333328 0.30504698 0.16666666 0.450939 
		0.083333328 0.450939 0.083333328 0.37799299 0.16666666 0.37799299 0 0.450939 0 0.37799299 
		0.083333328 0.37799299 0.083333328 0.450939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0.83333325 0.450939 0.91666657 0.450939 0.77777773 0.50399065 0.66666663 
		0.53051651 0.99999988 0.450939 0.74999994 0.53051651 0.77777773 0.50399065 0.91666657 
		0.450939 0.5 0.61009401 0.66666663 0.53051651 0.77777773 0.50399065 0.74999994 0.53051651 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66666663 0.30504698 
		0.74999994 0.30504698 0.74999994 0.37799299 0.66666663 0.37799299 0.83333325 0.30504698 
		0.83333325 0.37799299 0.74999994 0.37799299 0.74999994 0.30504698 0.83333325 0.450939 
		0.74999994 0.450939 0.74999994 0.37799299 0.83333325 0.37799299 0.66666663 0.450939 
		0.66666663 0.37799299 0.74999994 0.37799299 0.74999994 0.450939 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.83333325 0.30504698 0.91666657 0.30504698 
		0.91666657 0.37799299 0.83333325 0.37799299 0.99999988 0.30504698 0.99999988 0.37799299 
		0.91666657 0.37799299 0.91666657 0.30504698 0.99999988 0.450939 0.91666657 0.450939 
		0.91666657 0.37799299 0.99999988 0.37799299 0.83333325 0.450939;
	setAttr ".uvst[0].uvsp[500:749]" 0.83333325 0.37799299 0.91666657 0.37799299 
		0.91666657 0.450939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66666663 0.450939 
		0.74999994 0.450939 0.66666663 0.50399065 0.58333331 0.53051651 0.83333325 0.450939 
		0.66666663 0.53051651 0.66666663 0.50399065 0.74999994 0.450939 0.5 0.61009401 0.58333331 
		0.53051651 0.66666663 0.50399065 0.66666663 0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.49999997 0.30504698 0.58333331 0.30504698 
		0.58333331 0.37799299 0.49999997 0.37799299 0.66666663 0.30504698 0.66666663 0.37799299 
		0.58333331 0.37799299 0.58333331 0.30504698 0.66666663 0.450939 0.58333331 0.450939 
		0.58333331 0.37799299 0.66666663 0.37799299 0.49999997 0.450939 0.49999997 0.37799299 
		0.58333331 0.37799299 0.58333331 0.450939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0.49999997 0.450939 0.58333331 0.450939 0.55555552 0.50399065 0.5 0.53051651 
		0.66666663 0.450939 0.58333331 0.53051651 0.55555552 0.50399065 0.58333331 0.450939 
		0.5 0.61009401 0.5 0.53051651 0.55555552 0.50399065 0.58333331 0.53051651 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33333331 0.30504698 0.41666663 
		0.30504698 0.41666663 0.37799299 0.33333331 0.37799299 0.49999997 0.30504698 0.49999997 
		0.37799299 0.41666663 0.37799299 0.41666663 0.30504698 0.49999997 0.450939 0.41666663 
		0.450939 0.41666663 0.37799299 0.49999997 0.37799299 0.33333331 0.450939 0.33333331 
		0.37799299 0.41666663 0.37799299 0.41666663 0.450939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0.33333331 0.450939 0.41666663 0.450939 0.44444442 0.50399065 
		0.41666666 0.53051651 0.49999997 0.450939 0.5 0.53051651 0.44444442 0.50399065 0.41666663 
		0.450939 0.5 0.61009401 0.41666666 0.53051651 0.44444442 0.50399065 0.5 0.53051651 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.16666666 0.30504698 
		0.24999999 0.30504698 0.24999999 0.37799299 0.16666666 0.37799299 0.33333331 0.30504698 
		0.33333331 0.37799299 0.24999999 0.37799299 0.24999999 0.30504698 0.33333331 0.450939 
		0.24999999 0.450939 0.24999999 0.37799299 0.33333331 0.37799299 0.16666666 0.450939 
		0.16666666 0.37799299 0.24999999 0.37799299 0.24999999 0.450939 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.16666666 0.450939 0.24999999 0.450939 0.33333331 
		0.50399065 0.33333331 0.53051651 0.33333331 0.450939 0.41666666 0.53051651 0.33333331 
		0.50399065 0.24999999 0.450939 0.5 0.61009401 0.33333331 0.53051651 0.33333331 0.50399065 
		0.41666666 0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0.5 0 0.41666666 0.039788734 0.3263889 0.066314556 0.375 0.039788734 0.41666666 
		0.039788734 0.33333331 0.079577468 0.27777776 0.092840381 0.3263889 0.066314556 0.3263889 
		0.066314556 0.27777776 0.092840381 0.22222222 0.10610329 0.2361111 0.092840381 0.375 
		0.039788734 0.3263889 0.066314556 0.2361111 0.092840381 0.25 0.079577468 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0 0.625 0.039788734 0.67361104 
		0.066314556 0.58333331 0.039788734 0.625 0.039788734 0.74999994 0.079577468 0.76388884 
		0.092840381;
	setAttr ".uvst[0].uvsp[750:999]" 0.67361104 0.066314556 0.67361104 0.066314556 
		0.76388884 0.092840381 0.77777773 0.10610329 0.72222221 0.092840381 0.58333331 0.039788734 
		0.67361104 0.066314556 0.72222221 0.092840381 0.66666663 0.079577468 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0 0.58333331 0.039788734 
		0.60416663 0.066314556 0.54166663 0.039788734 0.58333331 0.039788734 0.66666663 0.079577468 
		0.66666663 0.092840381 0.60416663 0.066314556 0.60416663 0.066314556 0.66666663 0.092840381 
		0.66666663 0.10610329 0.625 0.092840381 0.54166663 0.039788734 0.60416663 0.066314556 
		0.625 0.092840381 0.58333331 0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0.5 0 0.54166663 0.039788734 0.53472221 0.066314556 0.5 0.039788734 
		0.54166663 0.039788734 0.58333331 0.079577468 0.56944442 0.092840381 0.53472221 0.066314556 
		0.53472221 0.066314556 0.56944442 0.092840381 0.55555552 0.10610329 0.52777779 0.092840381 
		0.5 0.039788734 0.53472221 0.066314556 0.52777779 0.092840381 0.5 0.079577468 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0 0.5 0.039788734 
		0.46527776 0.066314556 0.45833331 0.039788734 0.5 0.039788734 0.5 0.079577468 0.47222221 
		0.092840381 0.46527776 0.066314556 0.46527776 0.066314556 0.47222221 0.092840381 
		0.44444442 0.10610329 0.43055552 0.092840381 0.45833331 0.039788734 0.46527776 0.066314556 
		0.43055552 0.092840381 0.41666666 0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0 0.45833331 0.039788734 0.39583331 0.066314556 0.41666666 
		0.039788734 0.45833331 0.039788734 0.41666666 0.079577468 0.375 0.092840381 0.39583331 
		0.066314556 0.39583331 0.066314556 0.375 0.092840381 0.33333331 0.10610329 0.33333331 
		0.092840381 0.41666666 0.039788734 0.39583331 0.066314556 0.33333331 0.092840381 
		0.33333331 0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0.33333331 0.15915494 0.29166666 0.15915494 0.33333331 0.12599766 0.375 0.1193662 
		0.29166666 0.15915494 0.24999999 0.15915494 0.29166666 0.13262911 0.33333331 0.12599766 
		0.33333331 0.12599766 0.29166666 0.13262911 0.33333331 0.10610329 0.375 0.092840381 
		0.375 0.1193662 0.33333331 0.12599766 0.375 0.092840381 0.41666666 0.079577468 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.16666666 0.15915494 
		0.24999999 0.1193662 0.27083331 0.12599766 0.20833331 0.15915494 0.24999999 0.1193662 
		0.33333331 0.079577468 0.33333331 0.092840381 0.27083331 0.12599766 0.27083331 0.12599766 
		0.33333331 0.092840381 0.33333331 0.10610329 0.29166666 0.13262911 0.20833331 0.15915494 
		0.27083331 0.12599766 0.29166666 0.13262911 0.24999999 0.15915494 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.49999997 0.15915494 0.45833331 
		0.15915494 0.46527776 0.12599766 0.5 0.1193662 0.45833331 0.15915494 0.41666663 0.15915494 
		0.43055552 0.13262911 0.46527776 0.12599766 0.46527776 0.12599766 0.43055552 0.13262911 
		0.44444442 0.10610329 0.47222221 0.092840381 0.5 0.1193662 0.46527776 0.12599766 
		0.47222221 0.092840381 0.5 0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0.33333331 0.15915494;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.375 0.1193662 0.40277776 0.12599766 0.37499997 
		0.15915494 0.375 0.1193662 0.41666666 0.079577468 0.43055552 0.092840381 0.40277776 
		0.12599766 0.40277776 0.12599766 0.43055552 0.092840381 0.44444442 0.10610329 0.43055552 
		0.13262911 0.37499997 0.15915494 0.40277776 0.12599766 0.43055552 0.13262911 0.41666663 
		0.15915494 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66666663 
		0.15915494 0.625 0.15915494 0.59722221 0.12599766 0.625 0.1193662 0.625 0.15915494 
		0.58333331 0.15915494 0.56944442 0.13262911 0.59722221 0.12599766 0.59722221 0.12599766 
		0.56944442 0.13262911 0.55555552 0.10610329 0.56944442 0.092840381 0.625 0.1193662 
		0.59722221 0.12599766 0.56944442 0.092840381 0.58333331 0.079577468 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.49999997 0.15915494 0.5 0.1193662 
		0.53472221 0.12599766 0.54166663 0.15915494 0.5 0.1193662 0.5 0.079577468 0.52777779 
		0.092840381 0.53472221 0.12599766 0.53472221 0.12599766 0.52777779 0.092840381 0.55555552 
		0.10610329 0.56944442 0.13262911 0.54166663 0.15915494 0.53472221 0.12599766 0.56944442 
		0.13262911 0.58333331 0.15915494 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0.83333325 0.15915494 0.79166663 0.15915494 0.72916663 0.12599766 
		0.74999994 0.1193662 0.79166663 0.15915494 0.74999994 0.15915494 0.70833325 0.13262911 
		0.72916663 0.12599766 0.72916663 0.12599766 0.70833325 0.13262911 0.66666663 0.10610329 
		0.66666663 0.092840381 0.74999994 0.1193662 0.72916663 0.12599766 0.66666663 0.092840381 
		0.66666663 0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0.66666663 0.15915494 0.625 0.1193662 0.66666663 0.12599766 0.70833325 0.15915494 
		0.625 0.1193662 0.58333331 0.079577468 0.625 0.092840381 0.66666663 0.12599766 0.66666663 
		0.12599766 0.625 0.092840381 0.66666663 0.10610329 0.70833325 0.13262911 0.70833325 
		0.15915494 0.66666663 0.12599766 0.70833325 0.13262911 0.74999994 0.15915494 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99999988 0.15915494 
		0.95833325 0.15915494 0.86111104 0.12599766 0.87499988 0.1193662 0.95833325 0.15915494 
		0.91666657 0.15915494 0.84722215 0.13262911 0.86111104 0.12599766 0.86111104 0.12599766 
		0.84722215 0.13262911 0.77777773 0.10610329 0.76388884 0.092840381 0.87499988 0.1193662 
		0.86111104 0.12599766 0.76388884 0.092840381 0.74999994 0.079577468 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.83333325 0.15915494 0.74999994 
		0.1193662 0.79861104 0.12599766 0.87499988 0.15915494 0.74999994 0.1193662 0.66666663 
		0.079577468 0.72222221 0.092840381 0.79861104 0.12599766 0.79861104 0.12599766 0.72222221 
		0.092840381 0.77777773 0.10610329 0.84722215 0.13262911 0.87499988 0.15915494 0.79861104 
		0.12599766 0.84722215 0.13262911 0.91666657 0.15915494 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.16666666 0.15915494 0.12499999 0.15915494 
		0.20138888 0.12599766 0.24999999 0.1193662 0.12499999 0.15915494 0.083333328 0.15915494 
		0.15277778 0.13262911 0.20138888 0.12599766 0.20138888 0.12599766 0.15277778 0.13262911 
		0.22222222 0.10610329 0.27777776 0.092840381 0.24999999 0.1193662 0.20138888 0.12599766 
		0.27777776 0.092840381 0.33333331 0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
	setAttr ".uvst[0].uvsp[1250:1499]" 0 0 0 0 0 0 0 0 0 0 0 0.15915494 0.125 0.1193662 
		0.1388889 0.12599766 0.041666664 0.15915494 0.125 0.1193662 0.25 0.079577468 0.2361111 
		0.092840381 0.1388889 0.12599766 0.1388889 0.12599766 0.2361111 0.092840381 0.22222222 
		0.10610329 0.15277778 0.13262911 0.041666664 0.15915494 0.1388889 0.12599766 0.15277778 
		0.13262911 0.083333328 0.15915494 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0.5 0.61009401 0.375 0.57030523 0.3263889 0.54377943 0.41666666 0.57030523 
		0.375 0.57030523 0.25 0.53051651 0.2361111 0.51725358 0.3263889 0.54377943 0.3263889 
		0.54377943 0.2361111 0.51725358 0.22222222 0.50399065 0.27777776 0.51725358 0.41666666 
		0.57030523 0.3263889 0.54377943 0.27777776 0.51725358 0.33333331 0.53051651 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0.61009401 0.41666666 
		0.57030523 0.39583331 0.54377943 0.45833331 0.57030523 0.41666666 0.57030523 0.33333331 
		0.53051651 0.33333331 0.51725358 0.39583331 0.54377943 0.39583331 0.54377943 0.33333331 
		0.51725358 0.33333331 0.50399065 0.375 0.51725358 0.45833331 0.57030523 0.39583331 
		0.54377943 0.375 0.51725358 0.41666666 0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0.61009401 0.45833331 0.57030523 0.46527776 0.54377943 
		0.5 0.57030523 0.45833331 0.57030523 0.41666666 0.53051651 0.43055552 0.51725358 
		0.46527776 0.54377943 0.46527776 0.54377943 0.43055552 0.51725358 0.44444442 0.50399065 
		0.47222221 0.51725358 0.5 0.57030523 0.46527776 0.54377943 0.47222221 0.51725358 
		0.5 0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 
		0.61009401 0.5 0.57030523 0.53472221 0.54377943 0.54166663 0.57030523 0.5 0.57030523 
		0.5 0.53051651 0.52777779 0.51725358 0.53472221 0.54377943 0.53472221 0.54377943 
		0.52777779 0.51725358 0.55555552 0.50399065 0.56944442 0.51725358 0.54166663 0.57030523 
		0.53472221 0.54377943 0.56944442 0.51725358 0.58333331 0.53051651 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0.61009401 0.54166663 0.57030523 
		0.60416663 0.54377943 0.58333331 0.57030523 0.54166663 0.57030523 0.58333331 0.53051651 
		0.625 0.51725358 0.60416663 0.54377943 0.60416663 0.54377943 0.625 0.51725358 0.66666663 
		0.50399065 0.66666663 0.51725358 0.58333331 0.57030523 0.60416663 0.54377943 0.66666663 
		0.51725358 0.66666663 0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0.5 0.61009401 0.58333331 0.57030523 0.67361104 0.54377943 0.625 
		0.57030523 0.58333331 0.57030523 0.66666663 0.53051651 0.72222221 0.51725358 0.67361104 
		0.54377943 0.67361104 0.54377943 0.72222221 0.51725358 0.77777773 0.50399065 0.76388884 
		0.51725358 0.625 0.57030523 0.67361104 0.54377943 0.76388884 0.51725358 0.74999994 
		0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.83333325 
		0.450939 0.87499988 0.450939 0.79861104 0.48409629 0.74999994 0.49072775 0.87499988 
		0.450939 0.91666657 0.450939 0.84722215 0.47746482 0.79861104 0.48409629 0.79861104 
		0.48409629 0.84722215 0.47746482 0.77777773 0.50399065 0.72222221 0.51725358 0.74999994 
		0.49072775 0.79861104 0.48409629 0.72222221 0.51725358 0.66666663 0.53051651 0 0 
		0 0 0 0 0 0 0 0;
	setAttr ".uvst[0].uvsp[1500:1749]" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0.99999988 0.450939 0.87499988 0.49072775 0.86111104 0.48409629 0.95833325 0.450939 
		0.87499988 0.49072775 0.74999994 0.53051651 0.76388884 0.51725358 0.86111104 0.48409629 
		0.86111104 0.48409629 0.76388884 0.51725358 0.77777773 0.50399065 0.84722215 0.47746482 
		0.95833325 0.450939 0.86111104 0.48409629 0.84722215 0.47746482 0.91666657 0.450939 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66666663 0.450939 
		0.70833325 0.450939 0.66666663 0.48409629 0.625 0.49072775 0.70833325 0.450939 0.74999994 
		0.450939 0.70833325 0.47746482 0.66666663 0.48409629 0.66666663 0.48409629 0.70833325 
		0.47746482 0.66666663 0.50399065 0.625 0.51725358 0.625 0.49072775 0.66666663 0.48409629 
		0.625 0.51725358 0.58333331 0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0.83333325 0.450939 0.74999994 0.49072775 0.72916663 0.48409629 
		0.79166663 0.450939 0.74999994 0.49072775 0.66666663 0.53051651 0.66666663 0.51725358 
		0.72916663 0.48409629 0.72916663 0.48409629 0.66666663 0.51725358 0.66666663 0.50399065 
		0.70833325 0.47746482 0.79166663 0.450939 0.72916663 0.48409629 0.70833325 0.47746482 
		0.74999994 0.450939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0.49999997 0.450939 0.54166663 0.450939 0.53472221 0.48409629 0.5 0.49072775 0.54166663 
		0.450939 0.58333331 0.450939 0.56944442 0.47746482 0.53472221 0.48409629 0.53472221 
		0.48409629 0.56944442 0.47746482 0.55555552 0.50399065 0.52777779 0.51725358 0.5 
		0.49072775 0.53472221 0.48409629 0.52777779 0.51725358 0.5 0.53051651 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66666663 0.450939 0.625 0.49072775 
		0.59722221 0.48409629 0.625 0.450939 0.625 0.49072775 0.58333331 0.53051651 0.56944442 
		0.51725358 0.59722221 0.48409629 0.59722221 0.48409629 0.56944442 0.51725358 0.55555552 
		0.50399065 0.56944442 0.47746482 0.625 0.450939 0.59722221 0.48409629 0.56944442 
		0.47746482 0.58333331 0.450939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0.33333331 0.450939 0.37499997 0.450939 0.40277776 0.48409629 0.375 
		0.49072775 0.37499997 0.450939 0.41666663 0.450939 0.43055552 0.47746482 0.40277776 
		0.48409629 0.40277776 0.48409629 0.43055552 0.47746482 0.44444442 0.50399065 0.43055552 
		0.51725358 0.375 0.49072775 0.40277776 0.48409629 0.43055552 0.51725358 0.41666666 
		0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.49999997 
		0.450939 0.5 0.49072775 0.46527776 0.48409629 0.45833331 0.450939 0.5 0.49072775 
		0.5 0.53051651 0.47222221 0.51725358 0.46527776 0.48409629 0.46527776 0.48409629 
		0.47222221 0.51725358 0.44444442 0.50399065 0.43055552 0.47746482 0.45833331 0.450939 
		0.46527776 0.48409629 0.43055552 0.47746482 0.41666663 0.450939 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.16666666 0.450939 0.20833331 0.450939 
		0.27083331 0.48409629 0.24999999 0.49072775 0.20833331 0.450939 0.24999999 0.450939 
		0.29166666 0.47746482 0.27083331 0.48409629 0.27083331 0.48409629 0.29166666 0.47746482 
		0.33333331 0.50399065 0.33333331 0.51725358 0.24999999 0.49072775 0.27083331 0.48409629 
		0.33333331 0.51725358;
	setAttr ".uvst[0].uvsp[1750:1846]" 0.33333331 0.53051651 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33333331 0.450939 0.375 0.49072775 
		0.33333331 0.48409629 0.29166666 0.450939 0.375 0.49072775 0.41666666 0.53051651 
		0.375 0.51725358 0.33333331 0.48409629 0.33333331 0.48409629 0.375 0.51725358 0.33333331 
		0.50399065 0.29166666 0.47746482 0.29166666 0.450939 0.33333331 0.48409629 0.29166666 
		0.47746482 0.24999999 0.450939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0.450939 0.041666664 0.450939 0.1388889 0.48409629 0.125 0.49072775 
		0.041666664 0.450939 0.083333328 0.450939 0.15277778 0.47746482 0.1388889 0.48409629 
		0.1388889 0.48409629 0.15277778 0.47746482 0.22222222 0.50399065 0.2361111 0.51725358 
		0.125 0.49072775 0.1388889 0.48409629 0.2361111 0.51725358 0.25 0.53051651 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.16666666 0.450939 0.24999999 
		0.49072775 0.20138888 0.48409629 0.12499999 0.450939 0.24999999 0.49072775 0.33333331 
		0.53051651 0.27777776 0.51725358 0.20138888 0.48409629 0.20138888 0.48409629 0.27777776 
		0.51725358 0.22222222 0.50399065 0.15277778 0.47746482 0.12499999 0.450939 0.20138888 
		0.48409629 0.15277778 0.47746482 0.083333328 0.450939;
	setAttr ".dsr" 5;
	setAttr ".xsr" 4;
	setAttr ".cc" -type "subd" 
		20
		0  0.221044373764399 1.3823492803097339 1.9785230467628945
		1  -0.22104417986711714 1.3823494120623401 1.9785230468316439
		7  -0.22556534471944892 1.3900246055360994 2.2768537128876565
		6  0.22556554310810539 1.3900244710886684 2.2768537128175006
		2  -0.44208850060041732 0.99948958264404619 1.9783232676227005
		8  -0.45113083344904265 0.99933388680976887 2.2766498474603347
		3  -0.22104426770220034 0.61662974452672092 1.9781234884092178
		9  -0.22556543435108178 0.60864315920648027 2.2764459820283807
		4  0.22104422005300367 0.61662970060918565 1.9781234883863015
		10  0.22556538625274777 0.60864311439066965 2.2764459820049954
		5  0.44208847490999081 0.99948951241822737 1.9783232675860563
		11  0.4511308077586163 0.99933381514757424 2.2766498474229406
		13  -0.26296483985307773 1.4546338355341193 2.5952069692327706
		12  0.26296507539480474 1.4546336787948493 2.5952069691509831
		14  -0.52592984972344892 0.99916527389926024 2.594969302227903
		15  -0.26296494434593881 0.54369670191561359 2.5947316352176353
		16  0.26296489253229793 0.54369664966918974 2.5947316351903726
		17  0.52592982403302335 0.99916519035523121 2.594969302184309
		18  9.1135577537148402e-009 0.99962153632170248 1.7253107072156946
		19  1.3278002386923531e-008 0.99906188578325916 2.7929437110951554
		
		24
		4  0 1 7 6 
		4  1 2 8 7 
		4  2 3 9 8 
		4  3 4 10 9 
		4  4 5 11 10 
		4  5 0 6 11 
		4  6 7 13 12 
		4  7 8 14 13 
		4  8 9 15 14 
		4  9 10 16 15 
		4  10 11 17 16 
		4  11 6 12 17 
		3  1 0 18 
		3  2 1 18 
		3  3 2 18 
		3  4 3 18 
		3  5 4 18 
		3  0 5 18 
		3  12 13 19 
		3  13 14 19 
		3  14 15 19 
		3  15 16 19 
		3  16 17 19 
		3  17 12 19 
		
		;
	setAttr ".ecr" -type "subdivEdgeCrease" 0 0
		
		;
	setAttr ".fuv[0]" -type "subdivFaceUVIds" 
		24
		0 
		4  0 1 2 3 
		4  67 4 5 71 
		4  123 6 7 127 
		4  179 8 9 183 
		4  235 10 11 239 
		4  291 12 13 295 
		4  3 71 14 15 
		4  71 127 16 407 
		4  127 183 17 16 
		4  183 239 18 17 
		4  239 295 19 18 
		4  295 13 20 463 
		3  1 0 21 
		3  4 67 43 
		3  6 123 43 
		3  8 179 43 
		3  10 235 43 
		3  12 291 43 
		3  15 14 22 
		3  407 663 379 
		3  16 607 379 
		3  17 551 379 
		3  18 463 379 
		3  19 20 379 
		
		
		0 0 1 0 4 63 1228 65 66 
		0 1 1 0 4 67 68 65 1228 
		0 2 1 0 4 71 72 65 68 
		0 3 1 0 4 75 66 65 72 
		0 0 1 1 4 67 908 121 68 
		0 1 1 1 4 123 124 121 908 
		0 2 1 1 4 127 128 121 124 
		0 3 1 1 4 71 68 121 128 
		0 0 1 2 4 123 972 177 124 
		0 1 1 2 4 179 180 177 972 
		0 2 1 2 4 183 184 177 180 
		0 3 1 2 4 127 124 177 184 
		0 0 1 3 4 179 1036 233 180 
		0 1 1 3 4 235 236 233 1036 
		0 2 1 3 4 239 240 233 236 
		0 3 1 3 4 183 180 233 240 
		0 0 1 4 4 235 1100 289 236 
		0 1 1 4 4 291 292 289 1100 
		0 2 1 4 4 295 296 289 292 
		0 3 1 4 4 239 236 289 296 
		0 0 1 5 4 291 1164 345 292 
		0 1 1 5 4 347 348 345 1164 
		0 2 1 5 4 351 352 345 354 
		0 3 1 5 4 295 292 345 352 
		0 0 1 6 4 399 72 401 402 
		0 1 1 6 4 71 404 401 72 
		0 2 1 6 4 407 1804 401 404 
		0 3 1 6 4 411 402 401 1804 
		0 0 1 7 4 71 128 657 404 
		0 1 1 7 4 127 602 657 128 
		0 2 1 7 4 663 664 657 602 
		0 3 1 7 4 407 404 657 664 
		0 0 1 8 4 127 184 601 602 
		0 1 1 8 4 183 546 601 184 
		0 2 1 8 4 607 608 601 546 
		0 3 1 8 4 663 602 601 608 
		0 0 1 9 4 183 240 545 546 
		0 1 1 9 4 239 458 545 240 
		0 2 1 9 4 551 552 545 458 
		0 3 1 9 4 607 546 545 552 
		0 0 1 10 4 239 296 457 458 
		0 1 1 10 4 295 460 457 296 
		0 2 1 10 4 463 464 457 460 
		0 3 1 10 4 551 458 457 464 
		0 0 1 11 4 295 352 489 460 
		0 1 1 11 4 491 492 489 352 
		0 2 1 11 4 495 1484 489 498 
		0 3 1 11 4 463 460 489 1484 
		0 0 1 12 4 67 36 37 38 
		0 1 1 12 4 39 40 1233 1228 
		0 2 1 12 4 43 38 37 40 
		0 0 1 13 4 123 92 93 94 
		0 1 1 13 4 67 38 913 908 
		0 2 1 13 4 711 94 93 38 
		0 0 1 14 4 179 148 149 150 
		0 1 1 14 4 123 918 977 972 
		0 2 1 14 4 711 150 149 94 
		0 0 1 15 4 235 204 205 206 
		0 1 1 15 4 179 982 1041 1036 
		0 2 1 15 4 711 206 205 150 
		0 0 1 16 4 291 260 261 262 
		0 1 1 16 4 235 1046 1105 1100 
		0 2 1 16 4 711 262 261 206 
		0 0 1 17 4 315 316 317 318 
		0 1 1 17 4 291 1110 1169 1164 
		0 2 1 17 4 711 324 317 262 
		0 0 1 18 4 371 372 373 374 
		0 1 1 18 4 407 376 1809 1804 
		0 2 1 18 4 379 374 373 376 
		0 0 1 19 4 407 664 685 376 
		0 1 1 19 4 663 1686 1745 664 
		0 2 1 19 4 1287 376 685 630 
		0 0 1 20 4 663 608 629 630 
		0 1 1 20 4 607 1622 1681 608 
		0 2 1 20 4 1287 630 629 574 
		0 0 1 21 4 607 552 573 574 
		0 1 1 21 4 551 1558 1617 552 
		0 2 1 21 4 1287 574 573 518 
		0 0 1 22 4 551 464 517 518 
		0 1 1 22 4 463 1494 1553 464 
		0 2 1 22 4 1287 518 517 430 
		0 0 1 23 4 463 428 429 430 
		0 1 1 23 4 431 432 1489 1484 
		0 2 1 23 4 1287 430 429 438 
		
		0 0 2 12 4 67 1224 1225 936 
		1 0 2 12 4 1224 1228 1229 1225 
		2 0 2 12 4 1225 1229 1233 717 
		3 0 2 12 4 936 1225 717 1238 
		0 1 2 12 4 1255 1256 1257 1258 
		1 1 2 12 4 1259 1260 722 1257 
		2 1 2 12 4 1257 722 1265 1229 
		3 1 2 12 4 1258 1257 1229 1228 
		0 2 2 12 4 711 712 713 714 
		1 2 2 12 4 712 1238 717 713 
		2 2 2 12 4 713 717 1233 722 
		3 2 2 12 4 714 713 722 726 
		0 0 2 13 4 123 904 905 906 
		1 0 2 13 4 904 908 909 905 
		2 0 2 13 4 905 909 913 877 
		3 0 2 13 4 906 905 877 918 
		0 1 2 13 4 67 936 937 938 
		1 1 2 13 4 936 1238 882 937 
		2 1 2 13 4 937 882 945 909 
		3 1 2 13 4 938 937 909 908 
		0 2 2 13 4 711 842 873 712 
		1 2 2 13 4 842 918 877 873 
		2 2 2 13 4 873 877 913 882 
		3 2 2 13 4 712 873 882 1238 
		0 0 2 14 4 179 968 969 970 
		1 0 2 14 4 968 972 973 969 
		2 0 2 14 4 969 973 977 845 
		3 0 2 14 4 970 969 845 982 
		0 1 2 14 4 123 906 1001 1002 
		1 1 2 14 4 906 1004 850 1001 
		2 1 2 14 4 1001 850 1009 973 
		3 1 2 14 4 1002 1001 973 972 
		0 2 2 14 4 711 810 841 842 
		1 2 2 14 4 810 982 845 841 
		2 2 2 14 4 841 845 977 850 
		3 2 2 14 4 842 841 850 918 
		0 0 2 15 4 235 1032 1033 1034 
		1 0 2 15 4 1032 1036 1037 1033 
		2 0 2 15 4 1033 1037 1041 813 
		3 0 2 15 4 1034 1033 813 1046 
		0 1 2 15 4 179 970 1065 1066 
		1 1 2 15 4 970 1068 818 1065 
		2 1 2 15 4 1065 818 1073 1037 
		3 1 2 15 4 1066 1065 1037 1036 
		0 2 2 15 4 711 778 809 810 
		1 2 2 15 4 778 1046 813 809 
		2 2 2 15 4 809 813 1041 818 
		3 2 2 15 4 810 809 818 982 
		0 0 2 16 4 291 1096 1097 1098 
		1 0 2 16 4 1096 1100 1101 1097 
		2 0 2 16 4 1097 1101 1105 781 
		3 0 2 16 4 1098 1097 781 1110 
		0 1 2 16 4 235 1034 1129 1130 
		1 1 2 16 4 1034 1132 786 1129 
		2 1 2 16 4 1129 786 1137 1101 
		3 1 2 16 4 1130 1129 1101 1100 
		0 2 2 16 4 711 746 777 778 
		1 2 2 16 4 746 1110 781 777 
		2 2 2 16 4 777 781 1105 786 
		3 2 2 16 4 778 777 786 1046 
		0 0 2 17 4 1159 1160 1161 1162 
		1 0 2 17 4 1160 1164 1165 1161 
		2 0 2 17 4 1161 1165 1169 749 
		3 0 2 17 4 1162 1161 749 1174 
		0 1 2 17 4 291 1098 1193 1194 
		1 1 2 17 4 1098 1196 754 1193 
		2 1 2 17 4 1193 754 1201 1165 
		3 1 2 17 4 1194 1193 1165 1164 
		0 2 2 17 4 711 744 745 746 
		1 2 2 17 4 747 748 749 745 
		2 2 2 17 4 745 749 1169 754 
		3 2 2 17 4 746 745 754 1110 
		0 0 2 18 4 1799 1800 1801 1802 
		1 0 2 18 4 1800 1804 1805 1801 
		2 0 2 18 4 1801 1805 1809 1293 
		3 0 2 18 4 1811 1801 1293 1814 
		0 1 2 18 4 407 1738 1833 1834 
		1 1 2 18 4 1738 1836 1298 1833 
		2 1 2 18 4 1833 1298 1841 1805 
		3 1 2 18 4 1834 1833 1805 1804 
		0 2 2 18 4 1287 1288 1289 1290 
		1 2 2 18 4 1288 1292 1293 1289 
		2 2 2 18 4 1289 1293 1809 1298 
		3 2 2 18 4 1290 1289 1298 1836 
		0 0 2 19 4 407 1736 1737 1738 
		1 0 2 19 4 1736 664 1741 1737 
		2 0 2 19 4 1737 1741 1745 1325 
		3 0 2 19 4 1738 1737 1325 1836 
		0 1 2 19 4 663 1674 1769 1770 
		1 1 2 19 4 1674 1772 1330 1769 
		2 1 2 19 4 1769 1330 1777 1741 
		3 1 2 19 4 1770 1769 1741 664 
		0 2 2 19 4 1287 1290 1321 1322 
		1 2 2 19 4 1290 1836 1325 1321 
		2 2 2 19 4 1321 1325 1745 1330 
		3 2 2 19 4 1322 1321 1330 1686 
		0 0 2 20 4 663 1672 1673 1674 
		1 0 2 20 4 1672 608 1677 1673 
		2 0 2 20 4 1673 1677 1681 1357 
		3 0 2 20 4 1674 1673 1357 1686 
		0 1 2 20 4 607 1610 1705 1706 
		1 1 2 20 4 1610 1708 1362 1705 
		2 1 2 20 4 1705 1362 1713 1677 
		3 1 2 20 4 1706 1705 1677 608 
		0 2 2 20 4 1287 1322 1353 1354 
		1 2 2 20 4 1322 1686 1357 1353 
		2 2 2 20 4 1353 1357 1681 1362 
		3 2 2 20 4 1354 1353 1362 1622 
		0 0 2 21 4 607 1608 1609 1610 
		1 0 2 21 4 1608 552 1613 1609 
		2 0 2 21 4 1609 1613 1617 1389 
		3 0 2 21 4 1610 1609 1389 1622 
		0 1 2 21 4 551 1546 1641 1642 
		1 1 2 21 4 1546 1644 1394 1641 
		2 1 2 21 4 1641 1394 1649 1613 
		3 1 2 21 4 1642 1641 1613 552 
		0 2 2 21 4 1287 1354 1385 1386 
		1 2 2 21 4 1354 1622 1389 1385 
		2 2 2 21 4 1385 1389 1617 1394 
		3 2 2 21 4 1386 1385 1394 1558 
		0 0 2 22 4 551 1544 1545 1546 
		1 0 2 22 4 1544 464 1549 1545 
		2 0 2 22 4 1545 1549 1553 1421 
		3 0 2 22 4 1546 1545 1421 1558 
		0 1 2 22 4 463 1482 1577 1578 
		1 1 2 22 4 1482 1580 1426 1577 
		2 1 2 22 4 1577 1426 1585 1549 
		3 1 2 22 4 1578 1577 1549 464 
		0 2 2 22 4 1287 1386 1417 1418 
		1 2 2 22 4 1386 1558 1421 1417 
		2 2 2 22 4 1417 1421 1553 1426 
		3 2 2 22 4 1418 1417 1426 1494 
		0 0 2 23 4 463 1480 1481 1482 
		1 0 2 23 4 1480 1484 1485 1481 
		2 0 2 23 4 1481 1485 1489 1453 
		3 0 2 23 4 1482 1481 1453 1494 
		0 1 2 23 4 1511 1512 1513 1514 
		1 1 2 23 4 1512 1516 1458 1513 
		2 1 2 23 4 1513 1458 1521 1485 
		3 1 2 23 4 1514 1513 1485 1484 
		0 2 2 23 4 1287 1418 1449 1450 
		1 2 2 23 4 1418 1494 1453 1449 
		2 2 2 23 4 1449 1453 1489 1458 
		3 2 2 23 4 1459 1449 1458 1462 
		;
createNode parentConstraint -n "Ball_spine_C_space1_parentConstraint1" -p "Ball_spine_C_space1";
	addAttr -ci true -sn "w0" -ln "Ball_spine_B_ctrl1W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".ove" yes;
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
	setAttr ".tg[0].tot" -type "double3" 0 0 0.5 ;
	setAttr -k on ".w0";
createNode subdiv -n "subdivCylinder2Shape" -p "Ball_tail_B_ctrl";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".rtw" no;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1847 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0.15915494 0.16666666 0.15915494 
		0.16666666 0.30504698 0 0.30504698 0.33333331 0.15915494 0.33333331 0.30504698 0.49999997 
		0.15915494 0.49999997 0.30504698 0.66666663 0.15915494 0.66666663 0.30504698 0.83333325 
		0.15915494 0.83333325 0.30504698 0.99999988 0.15915494 0.99999988 0.30504698 0.16666666 
		0.450939 0 0.450939 0.33333331 0.450939 0.49999997 0.450939 0.66666663 0.450939 0.83333325 
		0.450939 0.99999988 0.450939 0.5 0 0.5 0.61009395 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0.16666666 0.15915494 0.083333328 0.15915494 0.22222222 0.10610329 
		0.33333331 0.079577468 0 0.15915494 0.25 0.079577468 0.22222222 0.10610329 0.083333328 
		0.15915494 0.5 0 0.33333331 0.079577468 0.22222222 0.10610329 0.25 0.079577468 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.15915494 0.083333328 
		0.15915494 0.083333328 0.23210096 0 0.23210096 0.16666666 0.15915494 0.16666666 0.23210096 
		0.083333328 0.23210096 0.083333328 0.15915494 0.16666666 0.30504698 0.083333328 0.30504698 
		0.083333328 0.23210096 0.16666666 0.23210096 0 0.30504698 0 0.23210096 0.083333328 
		0.23210096 0.083333328 0.30504698 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0.33333331 0.15915494 0.24999999 0.15915494 0.33333331 0.10610329 0.41666666 0.079577468 
		0.16666666 0.15915494 0.33333331 0.079577468 0.33333331 0.10610329 0.24999999 0.15915494 
		0.5 0 0.41666666 0.079577468 0.33333331 0.10610329 0.33333331 0.079577468 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.16666666 0.15915494 0.24999999 
		0.15915494 0.24999999 0.23210096 0.16666666 0.23210096 0.33333331 0.15915494 0.33333331 
		0.23210096 0.24999999 0.23210096 0.24999999 0.15915494 0.33333331 0.30504698 0.24999999 
		0.30504698 0.24999999 0.23210096 0.33333331 0.23210096 0.16666666 0.30504698 0.16666666 
		0.23210096 0.24999999 0.23210096 0.24999999 0.30504698 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0.49999997 0.15915494 0.41666663 0.15915494 0.44444442 0.10610329 
		0.5 0.079577468 0.33333331 0.15915494 0.41666666 0.079577468 0.44444442 0.10610329 
		0.41666663 0.15915494 0.5 0 0.5 0.079577468 0.44444442 0.10610329 0.41666666 0.079577468 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33333331 0.15915494 
		0.41666663 0.15915494 0.41666663 0.23210096 0.33333331 0.23210096 0.49999997 0.15915494 
		0.49999997 0.23210096 0.41666663 0.23210096 0.41666663 0.15915494 0.49999997 0.30504698 
		0.41666663 0.30504698 0.41666663 0.23210096 0.49999997 0.23210096 0.33333331 0.30504698 
		0.33333331 0.23210096 0.41666663 0.23210096 0.41666663 0.30504698 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66666663 0.15915494 0.58333331 0.15915494 0.55555552 
		0.10610329 0.58333331 0.079577468 0.49999997 0.15915494 0.5 0.079577468 0.55555552 
		0.10610329 0.58333331 0.15915494 0.5 0 0.58333331 0.079577468 0.55555552 0.10610329 
		0.5 0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.49999997 
		0.15915494 0.58333331 0.15915494 0.58333331 0.23210096 0.49999997 0.23210096 0.66666663 
		0.15915494 0.66666663 0.23210096 0.58333331 0.23210096 0.58333331 0.15915494 0.66666663 
		0.30504698 0.58333331 0.30504698 0.58333331 0.23210096 0.66666663 0.23210096 0.49999997 
		0.30504698 0.49999997 0.23210096 0.58333331 0.23210096 0.58333331 0.30504698 0 0 
		0 0 0 0;
	setAttr ".uvst[0].uvsp[250:499]" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.83333325 
		0.15915494 0.74999994 0.15915494 0.66666663 0.10610329 0.66666663 0.079577468 0.66666663 
		0.15915494 0.58333331 0.079577468 0.66666663 0.10610329 0.74999994 0.15915494 0.5 
		0 0.66666663 0.079577468 0.66666663 0.10610329 0.58333331 0.079577468 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66666663 0.15915494 0.74999994 
		0.15915494 0.74999994 0.23210096 0.66666663 0.23210096 0.83333325 0.15915494 0.83333325 
		0.23210096 0.74999994 0.23210096 0.74999994 0.15915494 0.83333325 0.30504698 0.74999994 
		0.30504698 0.74999994 0.23210096 0.83333325 0.23210096 0.66666663 0.30504698 0.66666663 
		0.23210096 0.74999994 0.23210096 0.74999994 0.30504698 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0.99999988 0.15915494 0.91666657 0.15915494 0.77777773 0.10610329 
		0.74999994 0.079577468 0.83333325 0.15915494 0.66666663 0.079577468 0.77777773 0.10610329 
		0.91666657 0.15915494 0.5 0 0.74999994 0.079577468 0.77777773 0.10610329 0.66666663 
		0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.83333325 
		0.15915494 0.91666657 0.15915494 0.91666657 0.23210096 0.83333325 0.23210096 0.99999988 
		0.15915494 0.99999988 0.23210096 0.91666657 0.23210096 0.91666657 0.15915494 0.99999988 
		0.30504698 0.91666657 0.30504698 0.91666657 0.23210096 0.99999988 0.23210096 0.83333325 
		0.30504698 0.83333325 0.23210096 0.91666657 0.23210096 0.91666657 0.30504698 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.450939 0.083333328 0.450939 0.22222222 
		0.50399065 0.25 0.53051651 0.16666666 0.450939 0.33333331 0.53051651 0.22222222 0.50399065 
		0.083333328 0.450939 0.5 0.61009401 0.25 0.53051651 0.22222222 0.50399065 0.33333331 
		0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.30504698 
		0.083333328 0.30504698 0.083333328 0.37799299 0 0.37799299 0.16666666 0.30504698 
		0.16666666 0.37799299 0.083333328 0.37799299 0.083333328 0.30504698 0.16666666 0.450939 
		0.083333328 0.450939 0.083333328 0.37799299 0.16666666 0.37799299 0 0.450939 0 0.37799299 
		0.083333328 0.37799299 0.083333328 0.450939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0.83333325 0.450939 0.91666657 0.450939 0.77777773 0.50399065 0.66666663 
		0.53051651 0.99999988 0.450939 0.74999994 0.53051651 0.77777773 0.50399065 0.91666657 
		0.450939 0.5 0.61009401 0.66666663 0.53051651 0.77777773 0.50399065 0.74999994 0.53051651 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66666663 0.30504698 
		0.74999994 0.30504698 0.74999994 0.37799299 0.66666663 0.37799299 0.83333325 0.30504698 
		0.83333325 0.37799299 0.74999994 0.37799299 0.74999994 0.30504698 0.83333325 0.450939 
		0.74999994 0.450939 0.74999994 0.37799299 0.83333325 0.37799299 0.66666663 0.450939 
		0.66666663 0.37799299 0.74999994 0.37799299 0.74999994 0.450939 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.83333325 0.30504698 0.91666657 0.30504698 
		0.91666657 0.37799299 0.83333325 0.37799299 0.99999988 0.30504698 0.99999988 0.37799299 
		0.91666657 0.37799299 0.91666657 0.30504698 0.99999988 0.450939 0.91666657 0.450939 
		0.91666657 0.37799299 0.99999988 0.37799299 0.83333325 0.450939;
	setAttr ".uvst[0].uvsp[500:749]" 0.83333325 0.37799299 0.91666657 0.37799299 
		0.91666657 0.450939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66666663 0.450939 
		0.74999994 0.450939 0.66666663 0.50399065 0.58333331 0.53051651 0.83333325 0.450939 
		0.66666663 0.53051651 0.66666663 0.50399065 0.74999994 0.450939 0.5 0.61009401 0.58333331 
		0.53051651 0.66666663 0.50399065 0.66666663 0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.49999997 0.30504698 0.58333331 0.30504698 
		0.58333331 0.37799299 0.49999997 0.37799299 0.66666663 0.30504698 0.66666663 0.37799299 
		0.58333331 0.37799299 0.58333331 0.30504698 0.66666663 0.450939 0.58333331 0.450939 
		0.58333331 0.37799299 0.66666663 0.37799299 0.49999997 0.450939 0.49999997 0.37799299 
		0.58333331 0.37799299 0.58333331 0.450939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0.49999997 0.450939 0.58333331 0.450939 0.55555552 0.50399065 0.5 0.53051651 
		0.66666663 0.450939 0.58333331 0.53051651 0.55555552 0.50399065 0.58333331 0.450939 
		0.5 0.61009401 0.5 0.53051651 0.55555552 0.50399065 0.58333331 0.53051651 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33333331 0.30504698 0.41666663 
		0.30504698 0.41666663 0.37799299 0.33333331 0.37799299 0.49999997 0.30504698 0.49999997 
		0.37799299 0.41666663 0.37799299 0.41666663 0.30504698 0.49999997 0.450939 0.41666663 
		0.450939 0.41666663 0.37799299 0.49999997 0.37799299 0.33333331 0.450939 0.33333331 
		0.37799299 0.41666663 0.37799299 0.41666663 0.450939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0.33333331 0.450939 0.41666663 0.450939 0.44444442 0.50399065 
		0.41666666 0.53051651 0.49999997 0.450939 0.5 0.53051651 0.44444442 0.50399065 0.41666663 
		0.450939 0.5 0.61009401 0.41666666 0.53051651 0.44444442 0.50399065 0.5 0.53051651 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.16666666 0.30504698 
		0.24999999 0.30504698 0.24999999 0.37799299 0.16666666 0.37799299 0.33333331 0.30504698 
		0.33333331 0.37799299 0.24999999 0.37799299 0.24999999 0.30504698 0.33333331 0.450939 
		0.24999999 0.450939 0.24999999 0.37799299 0.33333331 0.37799299 0.16666666 0.450939 
		0.16666666 0.37799299 0.24999999 0.37799299 0.24999999 0.450939 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.16666666 0.450939 0.24999999 0.450939 0.33333331 
		0.50399065 0.33333331 0.53051651 0.33333331 0.450939 0.41666666 0.53051651 0.33333331 
		0.50399065 0.24999999 0.450939 0.5 0.61009401 0.33333331 0.53051651 0.33333331 0.50399065 
		0.41666666 0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0.5 0 0.41666666 0.039788734 0.3263889 0.066314556 0.375 0.039788734 0.41666666 
		0.039788734 0.33333331 0.079577468 0.27777776 0.092840381 0.3263889 0.066314556 0.3263889 
		0.066314556 0.27777776 0.092840381 0.22222222 0.10610329 0.2361111 0.092840381 0.375 
		0.039788734 0.3263889 0.066314556 0.2361111 0.092840381 0.25 0.079577468 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0 0.625 0.039788734 0.67361104 
		0.066314556 0.58333331 0.039788734 0.625 0.039788734 0.74999994 0.079577468 0.76388884 
		0.092840381;
	setAttr ".uvst[0].uvsp[750:999]" 0.67361104 0.066314556 0.67361104 0.066314556 
		0.76388884 0.092840381 0.77777773 0.10610329 0.72222221 0.092840381 0.58333331 0.039788734 
		0.67361104 0.066314556 0.72222221 0.092840381 0.66666663 0.079577468 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0 0.58333331 0.039788734 
		0.60416663 0.066314556 0.54166663 0.039788734 0.58333331 0.039788734 0.66666663 0.079577468 
		0.66666663 0.092840381 0.60416663 0.066314556 0.60416663 0.066314556 0.66666663 0.092840381 
		0.66666663 0.10610329 0.625 0.092840381 0.54166663 0.039788734 0.60416663 0.066314556 
		0.625 0.092840381 0.58333331 0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0.5 0 0.54166663 0.039788734 0.53472221 0.066314556 0.5 0.039788734 
		0.54166663 0.039788734 0.58333331 0.079577468 0.56944442 0.092840381 0.53472221 0.066314556 
		0.53472221 0.066314556 0.56944442 0.092840381 0.55555552 0.10610329 0.52777779 0.092840381 
		0.5 0.039788734 0.53472221 0.066314556 0.52777779 0.092840381 0.5 0.079577468 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0 0.5 0.039788734 
		0.46527776 0.066314556 0.45833331 0.039788734 0.5 0.039788734 0.5 0.079577468 0.47222221 
		0.092840381 0.46527776 0.066314556 0.46527776 0.066314556 0.47222221 0.092840381 
		0.44444442 0.10610329 0.43055552 0.092840381 0.45833331 0.039788734 0.46527776 0.066314556 
		0.43055552 0.092840381 0.41666666 0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0 0.45833331 0.039788734 0.39583331 0.066314556 0.41666666 
		0.039788734 0.45833331 0.039788734 0.41666666 0.079577468 0.375 0.092840381 0.39583331 
		0.066314556 0.39583331 0.066314556 0.375 0.092840381 0.33333331 0.10610329 0.33333331 
		0.092840381 0.41666666 0.039788734 0.39583331 0.066314556 0.33333331 0.092840381 
		0.33333331 0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0.33333331 0.15915494 0.29166666 0.15915494 0.33333331 0.12599766 0.375 0.1193662 
		0.29166666 0.15915494 0.24999999 0.15915494 0.29166666 0.13262911 0.33333331 0.12599766 
		0.33333331 0.12599766 0.29166666 0.13262911 0.33333331 0.10610329 0.375 0.092840381 
		0.375 0.1193662 0.33333331 0.12599766 0.375 0.092840381 0.41666666 0.079577468 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.16666666 0.15915494 
		0.24999999 0.1193662 0.27083331 0.12599766 0.20833331 0.15915494 0.24999999 0.1193662 
		0.33333331 0.079577468 0.33333331 0.092840381 0.27083331 0.12599766 0.27083331 0.12599766 
		0.33333331 0.092840381 0.33333331 0.10610329 0.29166666 0.13262911 0.20833331 0.15915494 
		0.27083331 0.12599766 0.29166666 0.13262911 0.24999999 0.15915494 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.49999997 0.15915494 0.45833331 
		0.15915494 0.46527776 0.12599766 0.5 0.1193662 0.45833331 0.15915494 0.41666663 0.15915494 
		0.43055552 0.13262911 0.46527776 0.12599766 0.46527776 0.12599766 0.43055552 0.13262911 
		0.44444442 0.10610329 0.47222221 0.092840381 0.5 0.1193662 0.46527776 0.12599766 
		0.47222221 0.092840381 0.5 0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0.33333331 0.15915494;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.375 0.1193662 0.40277776 0.12599766 0.37499997 
		0.15915494 0.375 0.1193662 0.41666666 0.079577468 0.43055552 0.092840381 0.40277776 
		0.12599766 0.40277776 0.12599766 0.43055552 0.092840381 0.44444442 0.10610329 0.43055552 
		0.13262911 0.37499997 0.15915494 0.40277776 0.12599766 0.43055552 0.13262911 0.41666663 
		0.15915494 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66666663 
		0.15915494 0.625 0.15915494 0.59722221 0.12599766 0.625 0.1193662 0.625 0.15915494 
		0.58333331 0.15915494 0.56944442 0.13262911 0.59722221 0.12599766 0.59722221 0.12599766 
		0.56944442 0.13262911 0.55555552 0.10610329 0.56944442 0.092840381 0.625 0.1193662 
		0.59722221 0.12599766 0.56944442 0.092840381 0.58333331 0.079577468 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.49999997 0.15915494 0.5 0.1193662 
		0.53472221 0.12599766 0.54166663 0.15915494 0.5 0.1193662 0.5 0.079577468 0.52777779 
		0.092840381 0.53472221 0.12599766 0.53472221 0.12599766 0.52777779 0.092840381 0.55555552 
		0.10610329 0.56944442 0.13262911 0.54166663 0.15915494 0.53472221 0.12599766 0.56944442 
		0.13262911 0.58333331 0.15915494 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0.83333325 0.15915494 0.79166663 0.15915494 0.72916663 0.12599766 
		0.74999994 0.1193662 0.79166663 0.15915494 0.74999994 0.15915494 0.70833325 0.13262911 
		0.72916663 0.12599766 0.72916663 0.12599766 0.70833325 0.13262911 0.66666663 0.10610329 
		0.66666663 0.092840381 0.74999994 0.1193662 0.72916663 0.12599766 0.66666663 0.092840381 
		0.66666663 0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0.66666663 0.15915494 0.625 0.1193662 0.66666663 0.12599766 0.70833325 0.15915494 
		0.625 0.1193662 0.58333331 0.079577468 0.625 0.092840381 0.66666663 0.12599766 0.66666663 
		0.12599766 0.625 0.092840381 0.66666663 0.10610329 0.70833325 0.13262911 0.70833325 
		0.15915494 0.66666663 0.12599766 0.70833325 0.13262911 0.74999994 0.15915494 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99999988 0.15915494 
		0.95833325 0.15915494 0.86111104 0.12599766 0.87499988 0.1193662 0.95833325 0.15915494 
		0.91666657 0.15915494 0.84722215 0.13262911 0.86111104 0.12599766 0.86111104 0.12599766 
		0.84722215 0.13262911 0.77777773 0.10610329 0.76388884 0.092840381 0.87499988 0.1193662 
		0.86111104 0.12599766 0.76388884 0.092840381 0.74999994 0.079577468 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.83333325 0.15915494 0.74999994 
		0.1193662 0.79861104 0.12599766 0.87499988 0.15915494 0.74999994 0.1193662 0.66666663 
		0.079577468 0.72222221 0.092840381 0.79861104 0.12599766 0.79861104 0.12599766 0.72222221 
		0.092840381 0.77777773 0.10610329 0.84722215 0.13262911 0.87499988 0.15915494 0.79861104 
		0.12599766 0.84722215 0.13262911 0.91666657 0.15915494 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.16666666 0.15915494 0.12499999 0.15915494 
		0.20138888 0.12599766 0.24999999 0.1193662 0.12499999 0.15915494 0.083333328 0.15915494 
		0.15277778 0.13262911 0.20138888 0.12599766 0.20138888 0.12599766 0.15277778 0.13262911 
		0.22222222 0.10610329 0.27777776 0.092840381 0.24999999 0.1193662 0.20138888 0.12599766 
		0.27777776 0.092840381 0.33333331 0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
	setAttr ".uvst[0].uvsp[1250:1499]" 0 0 0 0 0 0 0 0 0 0 0 0.15915494 0.125 0.1193662 
		0.1388889 0.12599766 0.041666664 0.15915494 0.125 0.1193662 0.25 0.079577468 0.2361111 
		0.092840381 0.1388889 0.12599766 0.1388889 0.12599766 0.2361111 0.092840381 0.22222222 
		0.10610329 0.15277778 0.13262911 0.041666664 0.15915494 0.1388889 0.12599766 0.15277778 
		0.13262911 0.083333328 0.15915494 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0.5 0.61009401 0.375 0.57030523 0.3263889 0.54377943 0.41666666 0.57030523 
		0.375 0.57030523 0.25 0.53051651 0.2361111 0.51725358 0.3263889 0.54377943 0.3263889 
		0.54377943 0.2361111 0.51725358 0.22222222 0.50399065 0.27777776 0.51725358 0.41666666 
		0.57030523 0.3263889 0.54377943 0.27777776 0.51725358 0.33333331 0.53051651 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0.61009401 0.41666666 
		0.57030523 0.39583331 0.54377943 0.45833331 0.57030523 0.41666666 0.57030523 0.33333331 
		0.53051651 0.33333331 0.51725358 0.39583331 0.54377943 0.39583331 0.54377943 0.33333331 
		0.51725358 0.33333331 0.50399065 0.375 0.51725358 0.45833331 0.57030523 0.39583331 
		0.54377943 0.375 0.51725358 0.41666666 0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0.61009401 0.45833331 0.57030523 0.46527776 0.54377943 
		0.5 0.57030523 0.45833331 0.57030523 0.41666666 0.53051651 0.43055552 0.51725358 
		0.46527776 0.54377943 0.46527776 0.54377943 0.43055552 0.51725358 0.44444442 0.50399065 
		0.47222221 0.51725358 0.5 0.57030523 0.46527776 0.54377943 0.47222221 0.51725358 
		0.5 0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 
		0.61009401 0.5 0.57030523 0.53472221 0.54377943 0.54166663 0.57030523 0.5 0.57030523 
		0.5 0.53051651 0.52777779 0.51725358 0.53472221 0.54377943 0.53472221 0.54377943 
		0.52777779 0.51725358 0.55555552 0.50399065 0.56944442 0.51725358 0.54166663 0.57030523 
		0.53472221 0.54377943 0.56944442 0.51725358 0.58333331 0.53051651 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0.61009401 0.54166663 0.57030523 
		0.60416663 0.54377943 0.58333331 0.57030523 0.54166663 0.57030523 0.58333331 0.53051651 
		0.625 0.51725358 0.60416663 0.54377943 0.60416663 0.54377943 0.625 0.51725358 0.66666663 
		0.50399065 0.66666663 0.51725358 0.58333331 0.57030523 0.60416663 0.54377943 0.66666663 
		0.51725358 0.66666663 0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0.5 0.61009401 0.58333331 0.57030523 0.67361104 0.54377943 0.625 
		0.57030523 0.58333331 0.57030523 0.66666663 0.53051651 0.72222221 0.51725358 0.67361104 
		0.54377943 0.67361104 0.54377943 0.72222221 0.51725358 0.77777773 0.50399065 0.76388884 
		0.51725358 0.625 0.57030523 0.67361104 0.54377943 0.76388884 0.51725358 0.74999994 
		0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.83333325 
		0.450939 0.87499988 0.450939 0.79861104 0.48409629 0.74999994 0.49072775 0.87499988 
		0.450939 0.91666657 0.450939 0.84722215 0.47746482 0.79861104 0.48409629 0.79861104 
		0.48409629 0.84722215 0.47746482 0.77777773 0.50399065 0.72222221 0.51725358 0.74999994 
		0.49072775 0.79861104 0.48409629 0.72222221 0.51725358 0.66666663 0.53051651 0 0 
		0 0 0 0 0 0 0 0;
	setAttr ".uvst[0].uvsp[1500:1749]" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0.99999988 0.450939 0.87499988 0.49072775 0.86111104 0.48409629 0.95833325 0.450939 
		0.87499988 0.49072775 0.74999994 0.53051651 0.76388884 0.51725358 0.86111104 0.48409629 
		0.86111104 0.48409629 0.76388884 0.51725358 0.77777773 0.50399065 0.84722215 0.47746482 
		0.95833325 0.450939 0.86111104 0.48409629 0.84722215 0.47746482 0.91666657 0.450939 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66666663 0.450939 
		0.70833325 0.450939 0.66666663 0.48409629 0.625 0.49072775 0.70833325 0.450939 0.74999994 
		0.450939 0.70833325 0.47746482 0.66666663 0.48409629 0.66666663 0.48409629 0.70833325 
		0.47746482 0.66666663 0.50399065 0.625 0.51725358 0.625 0.49072775 0.66666663 0.48409629 
		0.625 0.51725358 0.58333331 0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0.83333325 0.450939 0.74999994 0.49072775 0.72916663 0.48409629 
		0.79166663 0.450939 0.74999994 0.49072775 0.66666663 0.53051651 0.66666663 0.51725358 
		0.72916663 0.48409629 0.72916663 0.48409629 0.66666663 0.51725358 0.66666663 0.50399065 
		0.70833325 0.47746482 0.79166663 0.450939 0.72916663 0.48409629 0.70833325 0.47746482 
		0.74999994 0.450939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0.49999997 0.450939 0.54166663 0.450939 0.53472221 0.48409629 0.5 0.49072775 0.54166663 
		0.450939 0.58333331 0.450939 0.56944442 0.47746482 0.53472221 0.48409629 0.53472221 
		0.48409629 0.56944442 0.47746482 0.55555552 0.50399065 0.52777779 0.51725358 0.5 
		0.49072775 0.53472221 0.48409629 0.52777779 0.51725358 0.5 0.53051651 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66666663 0.450939 0.625 0.49072775 
		0.59722221 0.48409629 0.625 0.450939 0.625 0.49072775 0.58333331 0.53051651 0.56944442 
		0.51725358 0.59722221 0.48409629 0.59722221 0.48409629 0.56944442 0.51725358 0.55555552 
		0.50399065 0.56944442 0.47746482 0.625 0.450939 0.59722221 0.48409629 0.56944442 
		0.47746482 0.58333331 0.450939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0.33333331 0.450939 0.37499997 0.450939 0.40277776 0.48409629 0.375 
		0.49072775 0.37499997 0.450939 0.41666663 0.450939 0.43055552 0.47746482 0.40277776 
		0.48409629 0.40277776 0.48409629 0.43055552 0.47746482 0.44444442 0.50399065 0.43055552 
		0.51725358 0.375 0.49072775 0.40277776 0.48409629 0.43055552 0.51725358 0.41666666 
		0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.49999997 
		0.450939 0.5 0.49072775 0.46527776 0.48409629 0.45833331 0.450939 0.5 0.49072775 
		0.5 0.53051651 0.47222221 0.51725358 0.46527776 0.48409629 0.46527776 0.48409629 
		0.47222221 0.51725358 0.44444442 0.50399065 0.43055552 0.47746482 0.45833331 0.450939 
		0.46527776 0.48409629 0.43055552 0.47746482 0.41666663 0.450939 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.16666666 0.450939 0.20833331 0.450939 
		0.27083331 0.48409629 0.24999999 0.49072775 0.20833331 0.450939 0.24999999 0.450939 
		0.29166666 0.47746482 0.27083331 0.48409629 0.27083331 0.48409629 0.29166666 0.47746482 
		0.33333331 0.50399065 0.33333331 0.51725358 0.24999999 0.49072775 0.27083331 0.48409629 
		0.33333331 0.51725358;
	setAttr ".uvst[0].uvsp[1750:1846]" 0.33333331 0.53051651 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33333331 0.450939 0.375 0.49072775 
		0.33333331 0.48409629 0.29166666 0.450939 0.375 0.49072775 0.41666666 0.53051651 
		0.375 0.51725358 0.33333331 0.48409629 0.33333331 0.48409629 0.375 0.51725358 0.33333331 
		0.50399065 0.29166666 0.47746482 0.29166666 0.450939 0.33333331 0.48409629 0.29166666 
		0.47746482 0.24999999 0.450939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0.450939 0.041666664 0.450939 0.1388889 0.48409629 0.125 0.49072775 
		0.041666664 0.450939 0.083333328 0.450939 0.15277778 0.47746482 0.1388889 0.48409629 
		0.1388889 0.48409629 0.15277778 0.47746482 0.22222222 0.50399065 0.2361111 0.51725358 
		0.125 0.49072775 0.1388889 0.48409629 0.2361111 0.51725358 0.25 0.53051651 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.16666666 0.450939 0.24999999 
		0.49072775 0.20138888 0.48409629 0.12499999 0.450939 0.24999999 0.49072775 0.33333331 
		0.53051651 0.27777776 0.51725358 0.20138888 0.48409629 0.20138888 0.48409629 0.27777776 
		0.51725358 0.22222222 0.50399065 0.15277778 0.47746482 0.12499999 0.450939 0.20138888 
		0.48409629 0.15277778 0.47746482 0.083333328 0.450939;
	setAttr ".dsr" 5;
	setAttr ".xsr" 4;
	setAttr ".cc" -type "subd" 
		20
		0  0.19110814389543099 1.3307780056504068 1.442337424740185
		1  -0.19110797973710009 1.3307781195596449 1.4423374247996237
		7  -0.18338249857875358 1.3172414928440117 1.7407092722608177
		6  0.18338265506250653 1.3172413835395194 1.7407092722037818
		2  -0.3822160795231172 0.99976932348743597 1.4421647018593948
		8  -0.3667651118342195 0.99961362619558469 1.740543531592663
		3  -0.19110805567660297 0.66876051989431273 1.4419919789152416
		9  -0.1833825714484251 0.68198575233027448 1.7403777909207423
		4  0.19110801100130106 0.66876048192456672 1.4419919788954285
		10  0.18338252754058124 0.68198571589544366 1.7403777909017302
		5  0.38221605383269097 0.99976926277235967 1.4421647018277133
		11  0.36676508614379316 0.99961356793489686 1.7405435315622619
		13  -0.2273108490876023 1.3931609008132995 2.060367966474185
		12  0.22731104921026196 1.3931607653254665 2.0603679664034864
		14  -0.45462184339915157 0.99944687903562091 2.0601625234640362
		15  -0.22731093941283662 0.60573284831229113 2.0599570804492195
		16  0.22731089114110181 0.60573280314968003 2.0599570804256535
		17  0.45462181770872512 0.99944680681887876 2.060162523426353
		18  6.1396625987030816e-009 0.99995118273655159 1.0935305930702939
		19  8.758487151322682e-009 0.99935922941781219 2.2280008965217073
		
		24
		4  0 1 7 6 
		4  1 2 8 7 
		4  2 3 9 8 
		4  3 4 10 9 
		4  4 5 11 10 
		4  5 0 6 11 
		4  6 7 13 12 
		4  7 8 14 13 
		4  8 9 15 14 
		4  9 10 16 15 
		4  10 11 17 16 
		4  11 6 12 17 
		3  1 0 18 
		3  2 1 18 
		3  3 2 18 
		3  4 3 18 
		3  5 4 18 
		3  0 5 18 
		3  12 13 19 
		3  13 14 19 
		3  14 15 19 
		3  15 16 19 
		3  16 17 19 
		3  17 12 19 
		
		;
	setAttr ".ecr" -type "subdivEdgeCrease" 0 0
		
		;
	setAttr ".fuv[0]" -type "subdivFaceUVIds" 
		24
		0 
		4  0 1 2 3 
		4  67 4 5 71 
		4  123 6 7 127 
		4  179 8 9 183 
		4  235 10 11 239 
		4  291 12 13 295 
		4  3 71 14 15 
		4  71 127 16 407 
		4  127 183 17 16 
		4  183 239 18 17 
		4  239 295 19 18 
		4  295 13 20 463 
		3  1 0 21 
		3  4 67 43 
		3  6 123 43 
		3  8 179 43 
		3  10 235 43 
		3  12 291 43 
		3  15 14 22 
		3  407 663 379 
		3  16 607 379 
		3  17 551 379 
		3  18 463 379 
		3  19 20 379 
		
		
		0 0 1 0 4 63 1228 65 66 
		0 1 1 0 4 67 68 65 1228 
		0 2 1 0 4 71 72 65 68 
		0 3 1 0 4 75 66 65 72 
		0 0 1 1 4 67 908 121 68 
		0 1 1 1 4 123 124 121 908 
		0 2 1 1 4 127 128 121 124 
		0 3 1 1 4 71 68 121 128 
		0 0 1 2 4 123 972 177 124 
		0 1 1 2 4 179 180 177 972 
		0 2 1 2 4 183 184 177 180 
		0 3 1 2 4 127 124 177 184 
		0 0 1 3 4 179 1036 233 180 
		0 1 1 3 4 235 236 233 1036 
		0 2 1 3 4 239 240 233 236 
		0 3 1 3 4 183 180 233 240 
		0 0 1 4 4 235 1100 289 236 
		0 1 1 4 4 291 292 289 1100 
		0 2 1 4 4 295 296 289 292 
		0 3 1 4 4 239 236 289 296 
		0 0 1 5 4 291 1164 345 292 
		0 1 1 5 4 347 348 345 1164 
		0 2 1 5 4 351 352 345 354 
		0 3 1 5 4 295 292 345 352 
		0 0 1 6 4 399 72 401 402 
		0 1 1 6 4 71 404 401 72 
		0 2 1 6 4 407 1804 401 404 
		0 3 1 6 4 411 402 401 1804 
		0 0 1 7 4 71 128 657 404 
		0 1 1 7 4 127 602 657 128 
		0 2 1 7 4 663 664 657 602 
		0 3 1 7 4 407 404 657 664 
		0 0 1 8 4 127 184 601 602 
		0 1 1 8 4 183 546 601 184 
		0 2 1 8 4 607 608 601 546 
		0 3 1 8 4 663 602 601 608 
		0 0 1 9 4 183 240 545 546 
		0 1 1 9 4 239 458 545 240 
		0 2 1 9 4 551 552 545 458 
		0 3 1 9 4 607 546 545 552 
		0 0 1 10 4 239 296 457 458 
		0 1 1 10 4 295 460 457 296 
		0 2 1 10 4 463 464 457 460 
		0 3 1 10 4 551 458 457 464 
		0 0 1 11 4 295 352 489 460 
		0 1 1 11 4 491 492 489 352 
		0 2 1 11 4 495 1484 489 498 
		0 3 1 11 4 463 460 489 1484 
		0 0 1 12 4 67 36 37 38 
		0 1 1 12 4 39 40 1233 1228 
		0 2 1 12 4 43 38 37 40 
		0 0 1 13 4 123 92 93 94 
		0 1 1 13 4 67 38 913 908 
		0 2 1 13 4 711 94 93 38 
		0 0 1 14 4 179 148 149 150 
		0 1 1 14 4 123 918 977 972 
		0 2 1 14 4 711 150 149 94 
		0 0 1 15 4 235 204 205 206 
		0 1 1 15 4 179 982 1041 1036 
		0 2 1 15 4 711 206 205 150 
		0 0 1 16 4 291 260 261 262 
		0 1 1 16 4 235 1046 1105 1100 
		0 2 1 16 4 711 262 261 206 
		0 0 1 17 4 315 316 317 318 
		0 1 1 17 4 291 1110 1169 1164 
		0 2 1 17 4 711 324 317 262 
		0 0 1 18 4 371 372 373 374 
		0 1 1 18 4 407 376 1809 1804 
		0 2 1 18 4 379 374 373 376 
		0 0 1 19 4 407 664 685 376 
		0 1 1 19 4 663 1686 1745 664 
		0 2 1 19 4 1287 376 685 630 
		0 0 1 20 4 663 608 629 630 
		0 1 1 20 4 607 1622 1681 608 
		0 2 1 20 4 1287 630 629 574 
		0 0 1 21 4 607 552 573 574 
		0 1 1 21 4 551 1558 1617 552 
		0 2 1 21 4 1287 574 573 518 
		0 0 1 22 4 551 464 517 518 
		0 1 1 22 4 463 1494 1553 464 
		0 2 1 22 4 1287 518 517 430 
		0 0 1 23 4 463 428 429 430 
		0 1 1 23 4 431 432 1489 1484 
		0 2 1 23 4 1287 430 429 438 
		
		0 0 2 12 4 67 1224 1225 936 
		1 0 2 12 4 1224 1228 1229 1225 
		2 0 2 12 4 1225 1229 1233 717 
		3 0 2 12 4 936 1225 717 1238 
		0 1 2 12 4 1255 1256 1257 1258 
		1 1 2 12 4 1259 1260 722 1257 
		2 1 2 12 4 1257 722 1265 1229 
		3 1 2 12 4 1258 1257 1229 1228 
		0 2 2 12 4 711 712 713 714 
		1 2 2 12 4 712 1238 717 713 
		2 2 2 12 4 713 717 1233 722 
		3 2 2 12 4 714 713 722 726 
		0 0 2 13 4 123 904 905 906 
		1 0 2 13 4 904 908 909 905 
		2 0 2 13 4 905 909 913 877 
		3 0 2 13 4 906 905 877 918 
		0 1 2 13 4 67 936 937 938 
		1 1 2 13 4 936 1238 882 937 
		2 1 2 13 4 937 882 945 909 
		3 1 2 13 4 938 937 909 908 
		0 2 2 13 4 711 842 873 712 
		1 2 2 13 4 842 918 877 873 
		2 2 2 13 4 873 877 913 882 
		3 2 2 13 4 712 873 882 1238 
		0 0 2 14 4 179 968 969 970 
		1 0 2 14 4 968 972 973 969 
		2 0 2 14 4 969 973 977 845 
		3 0 2 14 4 970 969 845 982 
		0 1 2 14 4 123 906 1001 1002 
		1 1 2 14 4 906 1004 850 1001 
		2 1 2 14 4 1001 850 1009 973 
		3 1 2 14 4 1002 1001 973 972 
		0 2 2 14 4 711 810 841 842 
		1 2 2 14 4 810 982 845 841 
		2 2 2 14 4 841 845 977 850 
		3 2 2 14 4 842 841 850 918 
		0 0 2 15 4 235 1032 1033 1034 
		1 0 2 15 4 1032 1036 1037 1033 
		2 0 2 15 4 1033 1037 1041 813 
		3 0 2 15 4 1034 1033 813 1046 
		0 1 2 15 4 179 970 1065 1066 
		1 1 2 15 4 970 1068 818 1065 
		2 1 2 15 4 1065 818 1073 1037 
		3 1 2 15 4 1066 1065 1037 1036 
		0 2 2 15 4 711 778 809 810 
		1 2 2 15 4 778 1046 813 809 
		2 2 2 15 4 809 813 1041 818 
		3 2 2 15 4 810 809 818 982 
		0 0 2 16 4 291 1096 1097 1098 
		1 0 2 16 4 1096 1100 1101 1097 
		2 0 2 16 4 1097 1101 1105 781 
		3 0 2 16 4 1098 1097 781 1110 
		0 1 2 16 4 235 1034 1129 1130 
		1 1 2 16 4 1034 1132 786 1129 
		2 1 2 16 4 1129 786 1137 1101 
		3 1 2 16 4 1130 1129 1101 1100 
		0 2 2 16 4 711 746 777 778 
		1 2 2 16 4 746 1110 781 777 
		2 2 2 16 4 777 781 1105 786 
		3 2 2 16 4 778 777 786 1046 
		0 0 2 17 4 1159 1160 1161 1162 
		1 0 2 17 4 1160 1164 1165 1161 
		2 0 2 17 4 1161 1165 1169 749 
		3 0 2 17 4 1162 1161 749 1174 
		0 1 2 17 4 291 1098 1193 1194 
		1 1 2 17 4 1098 1196 754 1193 
		2 1 2 17 4 1193 754 1201 1165 
		3 1 2 17 4 1194 1193 1165 1164 
		0 2 2 17 4 711 744 745 746 
		1 2 2 17 4 747 748 749 745 
		2 2 2 17 4 745 749 1169 754 
		3 2 2 17 4 746 745 754 1110 
		0 0 2 18 4 1799 1800 1801 1802 
		1 0 2 18 4 1800 1804 1805 1801 
		2 0 2 18 4 1801 1805 1809 1293 
		3 0 2 18 4 1811 1801 1293 1814 
		0 1 2 18 4 407 1738 1833 1834 
		1 1 2 18 4 1738 1836 1298 1833 
		2 1 2 18 4 1833 1298 1841 1805 
		3 1 2 18 4 1834 1833 1805 1804 
		0 2 2 18 4 1287 1288 1289 1290 
		1 2 2 18 4 1288 1292 1293 1289 
		2 2 2 18 4 1289 1293 1809 1298 
		3 2 2 18 4 1290 1289 1298 1836 
		0 0 2 19 4 407 1736 1737 1738 
		1 0 2 19 4 1736 664 1741 1737 
		2 0 2 19 4 1737 1741 1745 1325 
		3 0 2 19 4 1738 1737 1325 1836 
		0 1 2 19 4 663 1674 1769 1770 
		1 1 2 19 4 1674 1772 1330 1769 
		2 1 2 19 4 1769 1330 1777 1741 
		3 1 2 19 4 1770 1769 1741 664 
		0 2 2 19 4 1287 1290 1321 1322 
		1 2 2 19 4 1290 1836 1325 1321 
		2 2 2 19 4 1321 1325 1745 1330 
		3 2 2 19 4 1322 1321 1330 1686 
		0 0 2 20 4 663 1672 1673 1674 
		1 0 2 20 4 1672 608 1677 1673 
		2 0 2 20 4 1673 1677 1681 1357 
		3 0 2 20 4 1674 1673 1357 1686 
		0 1 2 20 4 607 1610 1705 1706 
		1 1 2 20 4 1610 1708 1362 1705 
		2 1 2 20 4 1705 1362 1713 1677 
		3 1 2 20 4 1706 1705 1677 608 
		0 2 2 20 4 1287 1322 1353 1354 
		1 2 2 20 4 1322 1686 1357 1353 
		2 2 2 20 4 1353 1357 1681 1362 
		3 2 2 20 4 1354 1353 1362 1622 
		0 0 2 21 4 607 1608 1609 1610 
		1 0 2 21 4 1608 552 1613 1609 
		2 0 2 21 4 1609 1613 1617 1389 
		3 0 2 21 4 1610 1609 1389 1622 
		0 1 2 21 4 551 1546 1641 1642 
		1 1 2 21 4 1546 1644 1394 1641 
		2 1 2 21 4 1641 1394 1649 1613 
		3 1 2 21 4 1642 1641 1613 552 
		0 2 2 21 4 1287 1354 1385 1386 
		1 2 2 21 4 1354 1622 1389 1385 
		2 2 2 21 4 1385 1389 1617 1394 
		3 2 2 21 4 1386 1385 1394 1558 
		0 0 2 22 4 551 1544 1545 1546 
		1 0 2 22 4 1544 464 1549 1545 
		2 0 2 22 4 1545 1549 1553 1421 
		3 0 2 22 4 1546 1545 1421 1558 
		0 1 2 22 4 463 1482 1577 1578 
		1 1 2 22 4 1482 1580 1426 1577 
		2 1 2 22 4 1577 1426 1585 1549 
		3 1 2 22 4 1578 1577 1549 464 
		0 2 2 22 4 1287 1386 1417 1418 
		1 2 2 22 4 1386 1558 1421 1417 
		2 2 2 22 4 1417 1421 1553 1426 
		3 2 2 22 4 1418 1417 1426 1494 
		0 0 2 23 4 463 1480 1481 1482 
		1 0 2 23 4 1480 1484 1485 1481 
		2 0 2 23 4 1481 1485 1489 1453 
		3 0 2 23 4 1482 1481 1453 1494 
		0 1 2 23 4 1511 1512 1513 1514 
		1 1 2 23 4 1512 1516 1458 1513 
		2 1 2 23 4 1513 1458 1521 1485 
		3 1 2 23 4 1514 1513 1485 1484 
		0 2 2 23 4 1287 1418 1449 1450 
		1 2 2 23 4 1418 1494 1453 1449 
		2 2 2 23 4 1449 1453 1489 1458 
		3 2 2 23 4 1459 1449 1458 1462 
		;
createNode parentConstraint -n "Ball_spine_B_space1_parentConstraint1" -p "Ball_spine_B_space1";
	addAttr -ci true -sn "w0" -ln "Ball_spine_A_ctrl1W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".ove" yes;
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
	setAttr ".tg[0].tot" -type "double3" 0 0 0.5 ;
	setAttr -k on ".w0";
createNode subdiv -n "subdivCylinder1Shape" -p "Ball_tail_A_ctrl";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1847 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0.15915494 0.16666666 0.15915494 
		0.16666666 0.30504698 0 0.30504698 0.33333331 0.15915494 0.33333331 0.30504698 0.49999997 
		0.15915494 0.49999997 0.30504698 0.66666663 0.15915494 0.66666663 0.30504698 0.83333325 
		0.15915494 0.83333325 0.30504698 0.99999988 0.15915494 0.99999988 0.30504698 0.16666666 
		0.450939 0 0.450939 0.33333331 0.450939 0.49999997 0.450939 0.66666663 0.450939 0.83333325 
		0.450939 0.99999988 0.450939 0.5 0 0.5 0.61009395 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0.16666666 0.15915494 0.083333328 0.15915494 0.22222222 0.10610329 
		0.33333331 0.079577468 0 0.15915494 0.25 0.079577468 0.22222222 0.10610329 0.083333328 
		0.15915494 0.5 0 0.33333331 0.079577468 0.22222222 0.10610329 0.25 0.079577468 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.15915494 0.083333328 
		0.15915494 0.083333328 0.23210096 0 0.23210096 0.16666666 0.15915494 0.16666666 0.23210096 
		0.083333328 0.23210096 0.083333328 0.15915494 0.16666666 0.30504698 0.083333328 0.30504698 
		0.083333328 0.23210096 0.16666666 0.23210096 0 0.30504698 0 0.23210096 0.083333328 
		0.23210096 0.083333328 0.30504698 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0.33333331 0.15915494 0.24999999 0.15915494 0.33333331 0.10610329 0.41666666 0.079577468 
		0.16666666 0.15915494 0.33333331 0.079577468 0.33333331 0.10610329 0.24999999 0.15915494 
		0.5 0 0.41666666 0.079577468 0.33333331 0.10610329 0.33333331 0.079577468 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.16666666 0.15915494 0.24999999 
		0.15915494 0.24999999 0.23210096 0.16666666 0.23210096 0.33333331 0.15915494 0.33333331 
		0.23210096 0.24999999 0.23210096 0.24999999 0.15915494 0.33333331 0.30504698 0.24999999 
		0.30504698 0.24999999 0.23210096 0.33333331 0.23210096 0.16666666 0.30504698 0.16666666 
		0.23210096 0.24999999 0.23210096 0.24999999 0.30504698 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0.49999997 0.15915494 0.41666663 0.15915494 0.44444442 0.10610329 
		0.5 0.079577468 0.33333331 0.15915494 0.41666666 0.079577468 0.44444442 0.10610329 
		0.41666663 0.15915494 0.5 0 0.5 0.079577468 0.44444442 0.10610329 0.41666666 0.079577468 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33333331 0.15915494 
		0.41666663 0.15915494 0.41666663 0.23210096 0.33333331 0.23210096 0.49999997 0.15915494 
		0.49999997 0.23210096 0.41666663 0.23210096 0.41666663 0.15915494 0.49999997 0.30504698 
		0.41666663 0.30504698 0.41666663 0.23210096 0.49999997 0.23210096 0.33333331 0.30504698 
		0.33333331 0.23210096 0.41666663 0.23210096 0.41666663 0.30504698 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66666663 0.15915494 0.58333331 0.15915494 0.55555552 
		0.10610329 0.58333331 0.079577468 0.49999997 0.15915494 0.5 0.079577468 0.55555552 
		0.10610329 0.58333331 0.15915494 0.5 0 0.58333331 0.079577468 0.55555552 0.10610329 
		0.5 0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.49999997 
		0.15915494 0.58333331 0.15915494 0.58333331 0.23210096 0.49999997 0.23210096 0.66666663 
		0.15915494 0.66666663 0.23210096 0.58333331 0.23210096 0.58333331 0.15915494 0.66666663 
		0.30504698 0.58333331 0.30504698 0.58333331 0.23210096 0.66666663 0.23210096 0.49999997 
		0.30504698 0.49999997 0.23210096 0.58333331 0.23210096 0.58333331 0.30504698 0 0 
		0 0 0 0;
	setAttr ".uvst[0].uvsp[250:499]" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.83333325 
		0.15915494 0.74999994 0.15915494 0.66666663 0.10610329 0.66666663 0.079577468 0.66666663 
		0.15915494 0.58333331 0.079577468 0.66666663 0.10610329 0.74999994 0.15915494 0.5 
		0 0.66666663 0.079577468 0.66666663 0.10610329 0.58333331 0.079577468 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66666663 0.15915494 0.74999994 
		0.15915494 0.74999994 0.23210096 0.66666663 0.23210096 0.83333325 0.15915494 0.83333325 
		0.23210096 0.74999994 0.23210096 0.74999994 0.15915494 0.83333325 0.30504698 0.74999994 
		0.30504698 0.74999994 0.23210096 0.83333325 0.23210096 0.66666663 0.30504698 0.66666663 
		0.23210096 0.74999994 0.23210096 0.74999994 0.30504698 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0.99999988 0.15915494 0.91666657 0.15915494 0.77777773 0.10610329 
		0.74999994 0.079577468 0.83333325 0.15915494 0.66666663 0.079577468 0.77777773 0.10610329 
		0.91666657 0.15915494 0.5 0 0.74999994 0.079577468 0.77777773 0.10610329 0.66666663 
		0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.83333325 
		0.15915494 0.91666657 0.15915494 0.91666657 0.23210096 0.83333325 0.23210096 0.99999988 
		0.15915494 0.99999988 0.23210096 0.91666657 0.23210096 0.91666657 0.15915494 0.99999988 
		0.30504698 0.91666657 0.30504698 0.91666657 0.23210096 0.99999988 0.23210096 0.83333325 
		0.30504698 0.83333325 0.23210096 0.91666657 0.23210096 0.91666657 0.30504698 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.450939 0.083333328 0.450939 0.22222222 
		0.50399065 0.25 0.53051651 0.16666666 0.450939 0.33333331 0.53051651 0.22222222 0.50399065 
		0.083333328 0.450939 0.5 0.61009401 0.25 0.53051651 0.22222222 0.50399065 0.33333331 
		0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.30504698 
		0.083333328 0.30504698 0.083333328 0.37799299 0 0.37799299 0.16666666 0.30504698 
		0.16666666 0.37799299 0.083333328 0.37799299 0.083333328 0.30504698 0.16666666 0.450939 
		0.083333328 0.450939 0.083333328 0.37799299 0.16666666 0.37799299 0 0.450939 0 0.37799299 
		0.083333328 0.37799299 0.083333328 0.450939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0.83333325 0.450939 0.91666657 0.450939 0.77777773 0.50399065 0.66666663 
		0.53051651 0.99999988 0.450939 0.74999994 0.53051651 0.77777773 0.50399065 0.91666657 
		0.450939 0.5 0.61009401 0.66666663 0.53051651 0.77777773 0.50399065 0.74999994 0.53051651 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66666663 0.30504698 
		0.74999994 0.30504698 0.74999994 0.37799299 0.66666663 0.37799299 0.83333325 0.30504698 
		0.83333325 0.37799299 0.74999994 0.37799299 0.74999994 0.30504698 0.83333325 0.450939 
		0.74999994 0.450939 0.74999994 0.37799299 0.83333325 0.37799299 0.66666663 0.450939 
		0.66666663 0.37799299 0.74999994 0.37799299 0.74999994 0.450939 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.83333325 0.30504698 0.91666657 0.30504698 
		0.91666657 0.37799299 0.83333325 0.37799299 0.99999988 0.30504698 0.99999988 0.37799299 
		0.91666657 0.37799299 0.91666657 0.30504698 0.99999988 0.450939 0.91666657 0.450939 
		0.91666657 0.37799299 0.99999988 0.37799299 0.83333325 0.450939;
	setAttr ".uvst[0].uvsp[500:749]" 0.83333325 0.37799299 0.91666657 0.37799299 
		0.91666657 0.450939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66666663 0.450939 
		0.74999994 0.450939 0.66666663 0.50399065 0.58333331 0.53051651 0.83333325 0.450939 
		0.66666663 0.53051651 0.66666663 0.50399065 0.74999994 0.450939 0.5 0.61009401 0.58333331 
		0.53051651 0.66666663 0.50399065 0.66666663 0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.49999997 0.30504698 0.58333331 0.30504698 
		0.58333331 0.37799299 0.49999997 0.37799299 0.66666663 0.30504698 0.66666663 0.37799299 
		0.58333331 0.37799299 0.58333331 0.30504698 0.66666663 0.450939 0.58333331 0.450939 
		0.58333331 0.37799299 0.66666663 0.37799299 0.49999997 0.450939 0.49999997 0.37799299 
		0.58333331 0.37799299 0.58333331 0.450939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0.49999997 0.450939 0.58333331 0.450939 0.55555552 0.50399065 0.5 0.53051651 
		0.66666663 0.450939 0.58333331 0.53051651 0.55555552 0.50399065 0.58333331 0.450939 
		0.5 0.61009401 0.5 0.53051651 0.55555552 0.50399065 0.58333331 0.53051651 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33333331 0.30504698 0.41666663 
		0.30504698 0.41666663 0.37799299 0.33333331 0.37799299 0.49999997 0.30504698 0.49999997 
		0.37799299 0.41666663 0.37799299 0.41666663 0.30504698 0.49999997 0.450939 0.41666663 
		0.450939 0.41666663 0.37799299 0.49999997 0.37799299 0.33333331 0.450939 0.33333331 
		0.37799299 0.41666663 0.37799299 0.41666663 0.450939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0.33333331 0.450939 0.41666663 0.450939 0.44444442 0.50399065 
		0.41666666 0.53051651 0.49999997 0.450939 0.5 0.53051651 0.44444442 0.50399065 0.41666663 
		0.450939 0.5 0.61009401 0.41666666 0.53051651 0.44444442 0.50399065 0.5 0.53051651 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.16666666 0.30504698 
		0.24999999 0.30504698 0.24999999 0.37799299 0.16666666 0.37799299 0.33333331 0.30504698 
		0.33333331 0.37799299 0.24999999 0.37799299 0.24999999 0.30504698 0.33333331 0.450939 
		0.24999999 0.450939 0.24999999 0.37799299 0.33333331 0.37799299 0.16666666 0.450939 
		0.16666666 0.37799299 0.24999999 0.37799299 0.24999999 0.450939 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.16666666 0.450939 0.24999999 0.450939 0.33333331 
		0.50399065 0.33333331 0.53051651 0.33333331 0.450939 0.41666666 0.53051651 0.33333331 
		0.50399065 0.24999999 0.450939 0.5 0.61009401 0.33333331 0.53051651 0.33333331 0.50399065 
		0.41666666 0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0.5 0 0.41666666 0.039788734 0.3263889 0.066314556 0.375 0.039788734 0.41666666 
		0.039788734 0.33333331 0.079577468 0.27777776 0.092840381 0.3263889 0.066314556 0.3263889 
		0.066314556 0.27777776 0.092840381 0.22222222 0.10610329 0.2361111 0.092840381 0.375 
		0.039788734 0.3263889 0.066314556 0.2361111 0.092840381 0.25 0.079577468 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0 0.625 0.039788734 0.67361104 
		0.066314556 0.58333331 0.039788734 0.625 0.039788734 0.74999994 0.079577468 0.76388884 
		0.092840381;
	setAttr ".uvst[0].uvsp[750:999]" 0.67361104 0.066314556 0.67361104 0.066314556 
		0.76388884 0.092840381 0.77777773 0.10610329 0.72222221 0.092840381 0.58333331 0.039788734 
		0.67361104 0.066314556 0.72222221 0.092840381 0.66666663 0.079577468 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0 0.58333331 0.039788734 
		0.60416663 0.066314556 0.54166663 0.039788734 0.58333331 0.039788734 0.66666663 0.079577468 
		0.66666663 0.092840381 0.60416663 0.066314556 0.60416663 0.066314556 0.66666663 0.092840381 
		0.66666663 0.10610329 0.625 0.092840381 0.54166663 0.039788734 0.60416663 0.066314556 
		0.625 0.092840381 0.58333331 0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0.5 0 0.54166663 0.039788734 0.53472221 0.066314556 0.5 0.039788734 
		0.54166663 0.039788734 0.58333331 0.079577468 0.56944442 0.092840381 0.53472221 0.066314556 
		0.53472221 0.066314556 0.56944442 0.092840381 0.55555552 0.10610329 0.52777779 0.092840381 
		0.5 0.039788734 0.53472221 0.066314556 0.52777779 0.092840381 0.5 0.079577468 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0 0.5 0.039788734 
		0.46527776 0.066314556 0.45833331 0.039788734 0.5 0.039788734 0.5 0.079577468 0.47222221 
		0.092840381 0.46527776 0.066314556 0.46527776 0.066314556 0.47222221 0.092840381 
		0.44444442 0.10610329 0.43055552 0.092840381 0.45833331 0.039788734 0.46527776 0.066314556 
		0.43055552 0.092840381 0.41666666 0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0 0.45833331 0.039788734 0.39583331 0.066314556 0.41666666 
		0.039788734 0.45833331 0.039788734 0.41666666 0.079577468 0.375 0.092840381 0.39583331 
		0.066314556 0.39583331 0.066314556 0.375 0.092840381 0.33333331 0.10610329 0.33333331 
		0.092840381 0.41666666 0.039788734 0.39583331 0.066314556 0.33333331 0.092840381 
		0.33333331 0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0.33333331 0.15915494 0.29166666 0.15915494 0.33333331 0.12599766 0.375 0.1193662 
		0.29166666 0.15915494 0.24999999 0.15915494 0.29166666 0.13262911 0.33333331 0.12599766 
		0.33333331 0.12599766 0.29166666 0.13262911 0.33333331 0.10610329 0.375 0.092840381 
		0.375 0.1193662 0.33333331 0.12599766 0.375 0.092840381 0.41666666 0.079577468 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.16666666 0.15915494 
		0.24999999 0.1193662 0.27083331 0.12599766 0.20833331 0.15915494 0.24999999 0.1193662 
		0.33333331 0.079577468 0.33333331 0.092840381 0.27083331 0.12599766 0.27083331 0.12599766 
		0.33333331 0.092840381 0.33333331 0.10610329 0.29166666 0.13262911 0.20833331 0.15915494 
		0.27083331 0.12599766 0.29166666 0.13262911 0.24999999 0.15915494 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.49999997 0.15915494 0.45833331 
		0.15915494 0.46527776 0.12599766 0.5 0.1193662 0.45833331 0.15915494 0.41666663 0.15915494 
		0.43055552 0.13262911 0.46527776 0.12599766 0.46527776 0.12599766 0.43055552 0.13262911 
		0.44444442 0.10610329 0.47222221 0.092840381 0.5 0.1193662 0.46527776 0.12599766 
		0.47222221 0.092840381 0.5 0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0.33333331 0.15915494;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.375 0.1193662 0.40277776 0.12599766 0.37499997 
		0.15915494 0.375 0.1193662 0.41666666 0.079577468 0.43055552 0.092840381 0.40277776 
		0.12599766 0.40277776 0.12599766 0.43055552 0.092840381 0.44444442 0.10610329 0.43055552 
		0.13262911 0.37499997 0.15915494 0.40277776 0.12599766 0.43055552 0.13262911 0.41666663 
		0.15915494 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66666663 
		0.15915494 0.625 0.15915494 0.59722221 0.12599766 0.625 0.1193662 0.625 0.15915494 
		0.58333331 0.15915494 0.56944442 0.13262911 0.59722221 0.12599766 0.59722221 0.12599766 
		0.56944442 0.13262911 0.55555552 0.10610329 0.56944442 0.092840381 0.625 0.1193662 
		0.59722221 0.12599766 0.56944442 0.092840381 0.58333331 0.079577468 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.49999997 0.15915494 0.5 0.1193662 
		0.53472221 0.12599766 0.54166663 0.15915494 0.5 0.1193662 0.5 0.079577468 0.52777779 
		0.092840381 0.53472221 0.12599766 0.53472221 0.12599766 0.52777779 0.092840381 0.55555552 
		0.10610329 0.56944442 0.13262911 0.54166663 0.15915494 0.53472221 0.12599766 0.56944442 
		0.13262911 0.58333331 0.15915494 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0.83333325 0.15915494 0.79166663 0.15915494 0.72916663 0.12599766 
		0.74999994 0.1193662 0.79166663 0.15915494 0.74999994 0.15915494 0.70833325 0.13262911 
		0.72916663 0.12599766 0.72916663 0.12599766 0.70833325 0.13262911 0.66666663 0.10610329 
		0.66666663 0.092840381 0.74999994 0.1193662 0.72916663 0.12599766 0.66666663 0.092840381 
		0.66666663 0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0.66666663 0.15915494 0.625 0.1193662 0.66666663 0.12599766 0.70833325 0.15915494 
		0.625 0.1193662 0.58333331 0.079577468 0.625 0.092840381 0.66666663 0.12599766 0.66666663 
		0.12599766 0.625 0.092840381 0.66666663 0.10610329 0.70833325 0.13262911 0.70833325 
		0.15915494 0.66666663 0.12599766 0.70833325 0.13262911 0.74999994 0.15915494 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99999988 0.15915494 
		0.95833325 0.15915494 0.86111104 0.12599766 0.87499988 0.1193662 0.95833325 0.15915494 
		0.91666657 0.15915494 0.84722215 0.13262911 0.86111104 0.12599766 0.86111104 0.12599766 
		0.84722215 0.13262911 0.77777773 0.10610329 0.76388884 0.092840381 0.87499988 0.1193662 
		0.86111104 0.12599766 0.76388884 0.092840381 0.74999994 0.079577468 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.83333325 0.15915494 0.74999994 
		0.1193662 0.79861104 0.12599766 0.87499988 0.15915494 0.74999994 0.1193662 0.66666663 
		0.079577468 0.72222221 0.092840381 0.79861104 0.12599766 0.79861104 0.12599766 0.72222221 
		0.092840381 0.77777773 0.10610329 0.84722215 0.13262911 0.87499988 0.15915494 0.79861104 
		0.12599766 0.84722215 0.13262911 0.91666657 0.15915494 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.16666666 0.15915494 0.12499999 0.15915494 
		0.20138888 0.12599766 0.24999999 0.1193662 0.12499999 0.15915494 0.083333328 0.15915494 
		0.15277778 0.13262911 0.20138888 0.12599766 0.20138888 0.12599766 0.15277778 0.13262911 
		0.22222222 0.10610329 0.27777776 0.092840381 0.24999999 0.1193662 0.20138888 0.12599766 
		0.27777776 0.092840381 0.33333331 0.079577468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
	setAttr ".uvst[0].uvsp[1250:1499]" 0 0 0 0 0 0 0 0 0 0 0 0.15915494 0.125 0.1193662 
		0.1388889 0.12599766 0.041666664 0.15915494 0.125 0.1193662 0.25 0.079577468 0.2361111 
		0.092840381 0.1388889 0.12599766 0.1388889 0.12599766 0.2361111 0.092840381 0.22222222 
		0.10610329 0.15277778 0.13262911 0.041666664 0.15915494 0.1388889 0.12599766 0.15277778 
		0.13262911 0.083333328 0.15915494 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0.5 0.61009401 0.375 0.57030523 0.3263889 0.54377943 0.41666666 0.57030523 
		0.375 0.57030523 0.25 0.53051651 0.2361111 0.51725358 0.3263889 0.54377943 0.3263889 
		0.54377943 0.2361111 0.51725358 0.22222222 0.50399065 0.27777776 0.51725358 0.41666666 
		0.57030523 0.3263889 0.54377943 0.27777776 0.51725358 0.33333331 0.53051651 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0.61009401 0.41666666 
		0.57030523 0.39583331 0.54377943 0.45833331 0.57030523 0.41666666 0.57030523 0.33333331 
		0.53051651 0.33333331 0.51725358 0.39583331 0.54377943 0.39583331 0.54377943 0.33333331 
		0.51725358 0.33333331 0.50399065 0.375 0.51725358 0.45833331 0.57030523 0.39583331 
		0.54377943 0.375 0.51725358 0.41666666 0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0.61009401 0.45833331 0.57030523 0.46527776 0.54377943 
		0.5 0.57030523 0.45833331 0.57030523 0.41666666 0.53051651 0.43055552 0.51725358 
		0.46527776 0.54377943 0.46527776 0.54377943 0.43055552 0.51725358 0.44444442 0.50399065 
		0.47222221 0.51725358 0.5 0.57030523 0.46527776 0.54377943 0.47222221 0.51725358 
		0.5 0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 
		0.61009401 0.5 0.57030523 0.53472221 0.54377943 0.54166663 0.57030523 0.5 0.57030523 
		0.5 0.53051651 0.52777779 0.51725358 0.53472221 0.54377943 0.53472221 0.54377943 
		0.52777779 0.51725358 0.55555552 0.50399065 0.56944442 0.51725358 0.54166663 0.57030523 
		0.53472221 0.54377943 0.56944442 0.51725358 0.58333331 0.53051651 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0.61009401 0.54166663 0.57030523 
		0.60416663 0.54377943 0.58333331 0.57030523 0.54166663 0.57030523 0.58333331 0.53051651 
		0.625 0.51725358 0.60416663 0.54377943 0.60416663 0.54377943 0.625 0.51725358 0.66666663 
		0.50399065 0.66666663 0.51725358 0.58333331 0.57030523 0.60416663 0.54377943 0.66666663 
		0.51725358 0.66666663 0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0.5 0.61009401 0.58333331 0.57030523 0.67361104 0.54377943 0.625 
		0.57030523 0.58333331 0.57030523 0.66666663 0.53051651 0.72222221 0.51725358 0.67361104 
		0.54377943 0.67361104 0.54377943 0.72222221 0.51725358 0.77777773 0.50399065 0.76388884 
		0.51725358 0.625 0.57030523 0.67361104 0.54377943 0.76388884 0.51725358 0.74999994 
		0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.83333325 
		0.450939 0.87499988 0.450939 0.79861104 0.48409629 0.74999994 0.49072775 0.87499988 
		0.450939 0.91666657 0.450939 0.84722215 0.47746482 0.79861104 0.48409629 0.79861104 
		0.48409629 0.84722215 0.47746482 0.77777773 0.50399065 0.72222221 0.51725358 0.74999994 
		0.49072775 0.79861104 0.48409629 0.72222221 0.51725358 0.66666663 0.53051651 0 0 
		0 0 0 0 0 0 0 0;
	setAttr ".uvst[0].uvsp[1500:1749]" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0.99999988 0.450939 0.87499988 0.49072775 0.86111104 0.48409629 0.95833325 0.450939 
		0.87499988 0.49072775 0.74999994 0.53051651 0.76388884 0.51725358 0.86111104 0.48409629 
		0.86111104 0.48409629 0.76388884 0.51725358 0.77777773 0.50399065 0.84722215 0.47746482 
		0.95833325 0.450939 0.86111104 0.48409629 0.84722215 0.47746482 0.91666657 0.450939 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66666663 0.450939 
		0.70833325 0.450939 0.66666663 0.48409629 0.625 0.49072775 0.70833325 0.450939 0.74999994 
		0.450939 0.70833325 0.47746482 0.66666663 0.48409629 0.66666663 0.48409629 0.70833325 
		0.47746482 0.66666663 0.50399065 0.625 0.51725358 0.625 0.49072775 0.66666663 0.48409629 
		0.625 0.51725358 0.58333331 0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0.83333325 0.450939 0.74999994 0.49072775 0.72916663 0.48409629 
		0.79166663 0.450939 0.74999994 0.49072775 0.66666663 0.53051651 0.66666663 0.51725358 
		0.72916663 0.48409629 0.72916663 0.48409629 0.66666663 0.51725358 0.66666663 0.50399065 
		0.70833325 0.47746482 0.79166663 0.450939 0.72916663 0.48409629 0.70833325 0.47746482 
		0.74999994 0.450939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0.49999997 0.450939 0.54166663 0.450939 0.53472221 0.48409629 0.5 0.49072775 0.54166663 
		0.450939 0.58333331 0.450939 0.56944442 0.47746482 0.53472221 0.48409629 0.53472221 
		0.48409629 0.56944442 0.47746482 0.55555552 0.50399065 0.52777779 0.51725358 0.5 
		0.49072775 0.53472221 0.48409629 0.52777779 0.51725358 0.5 0.53051651 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66666663 0.450939 0.625 0.49072775 
		0.59722221 0.48409629 0.625 0.450939 0.625 0.49072775 0.58333331 0.53051651 0.56944442 
		0.51725358 0.59722221 0.48409629 0.59722221 0.48409629 0.56944442 0.51725358 0.55555552 
		0.50399065 0.56944442 0.47746482 0.625 0.450939 0.59722221 0.48409629 0.56944442 
		0.47746482 0.58333331 0.450939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0.33333331 0.450939 0.37499997 0.450939 0.40277776 0.48409629 0.375 
		0.49072775 0.37499997 0.450939 0.41666663 0.450939 0.43055552 0.47746482 0.40277776 
		0.48409629 0.40277776 0.48409629 0.43055552 0.47746482 0.44444442 0.50399065 0.43055552 
		0.51725358 0.375 0.49072775 0.40277776 0.48409629 0.43055552 0.51725358 0.41666666 
		0.53051651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.49999997 
		0.450939 0.5 0.49072775 0.46527776 0.48409629 0.45833331 0.450939 0.5 0.49072775 
		0.5 0.53051651 0.47222221 0.51725358 0.46527776 0.48409629 0.46527776 0.48409629 
		0.47222221 0.51725358 0.44444442 0.50399065 0.43055552 0.47746482 0.45833331 0.450939 
		0.46527776 0.48409629 0.43055552 0.47746482 0.41666663 0.450939 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.16666666 0.450939 0.20833331 0.450939 
		0.27083331 0.48409629 0.24999999 0.49072775 0.20833331 0.450939 0.24999999 0.450939 
		0.29166666 0.47746482 0.27083331 0.48409629 0.27083331 0.48409629 0.29166666 0.47746482 
		0.33333331 0.50399065 0.33333331 0.51725358 0.24999999 0.49072775 0.27083331 0.48409629 
		0.33333331 0.51725358;
	setAttr ".uvst[0].uvsp[1750:1846]" 0.33333331 0.53051651 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33333331 0.450939 0.375 0.49072775 
		0.33333331 0.48409629 0.29166666 0.450939 0.375 0.49072775 0.41666666 0.53051651 
		0.375 0.51725358 0.33333331 0.48409629 0.33333331 0.48409629 0.375 0.51725358 0.33333331 
		0.50399065 0.29166666 0.47746482 0.29166666 0.450939 0.33333331 0.48409629 0.29166666 
		0.47746482 0.24999999 0.450939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0.450939 0.041666664 0.450939 0.1388889 0.48409629 0.125 0.49072775 
		0.041666664 0.450939 0.083333328 0.450939 0.15277778 0.47746482 0.1388889 0.48409629 
		0.1388889 0.48409629 0.15277778 0.47746482 0.22222222 0.50399065 0.2361111 0.51725358 
		0.125 0.49072775 0.1388889 0.48409629 0.2361111 0.51725358 0.25 0.53051651 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.16666666 0.450939 0.24999999 
		0.49072775 0.20138888 0.48409629 0.12499999 0.450939 0.24999999 0.49072775 0.33333331 
		0.53051651 0.27777776 0.51725358 0.20138888 0.48409629 0.20138888 0.48409629 0.27777776 
		0.51725358 0.22222222 0.50399065 0.15277778 0.47746482 0.12499999 0.450939 0.20138888 
		0.48409629 0.15277778 0.47746482 0.083333328 0.450939;
	setAttr ".dsr" 5;
	setAttr ".xsr" 4;
	setAttr ".cc" -type "subd" 
		20
		0  0.12003364663252328 1.2079529319054043 0.90674439711364185
		1  -0.12003355308030988 1.2079530034509782 0.90674439715097477
		7  -0.12930413047032602 1.2238544234905067 1.2051316056117871
		6  0.12930423323203302 1.2238543464192373 1.2051316055715708
		2  -0.24006717678525458 1.0000487580775679 0.90663591111382691
		8  -0.25860833801193212 0.99989306280855728 1.2050147408481504
		3  -0.12003360077736586 0.79214450798032543 0.90652742507421413
		9  -0.12930418185117928 0.77593169703793918 1.2048978760818585
		4  0.1200335631626756 0.79214448413180083 0.90652742506176986
		10  0.12930414331553983 0.77593167134751606 1.204897876068453
		5  0.24006715109482835 1.0000487199428649 0.90663591109392805
		11  0.258608312321506 0.99989302172858818 1.2050147408267147
		13  -0.19201587001824086 1.3323506803824112 1.4422458674143217
		12  0.19201603507848009 1.3323505659320278 1.4422458673546008
		14  -0.38403186071673423 0.9997693717990096 1.4420723239249482
		15  -0.19201594631850702 0.66718805565896466 1.4418987804316317
		16  0.1920159015530144 0.66718801750883694 1.4418987804117247
		17  0.38403183502630833 0.99976931079549614 1.4420723238931161
		18  -9.2094917889688918e-010 1.0001350534086171 0.74118518103149911
		19  4.604747070327651e-009 0.99959364594617028 1.7787252668067204
		
		24
		4  0 1 7 6 
		4  1 2 8 7 
		4  2 3 9 8 
		4  3 4 10 9 
		4  4 5 11 10 
		4  5 0 6 11 
		4  6 7 13 12 
		4  7 8 14 13 
		4  8 9 15 14 
		4  9 10 16 15 
		4  10 11 17 16 
		4  11 6 12 17 
		3  1 0 18 
		3  2 1 18 
		3  3 2 18 
		3  4 3 18 
		3  5 4 18 
		3  0 5 18 
		3  12 13 19 
		3  13 14 19 
		3  14 15 19 
		3  15 16 19 
		3  16 17 19 
		3  17 12 19 
		
		;
	setAttr ".ecr" -type "subdivEdgeCrease" 0 0
		
		;
	setAttr ".fuv[0]" -type "subdivFaceUVIds" 
		24
		0 
		4  0 1 2 3 
		4  67 4 5 71 
		4  123 6 7 127 
		4  179 8 9 183 
		4  235 10 11 239 
		4  291 12 13 295 
		4  3 71 14 15 
		4  71 127 16 407 
		4  127 183 17 16 
		4  183 239 18 17 
		4  239 295 19 18 
		4  295 13 20 463 
		3  1 0 21 
		3  4 67 43 
		3  6 123 43 
		3  8 179 43 
		3  10 235 43 
		3  12 291 43 
		3  15 14 22 
		3  407 663 379 
		3  16 607 379 
		3  17 551 379 
		3  18 463 379 
		3  19 20 379 
		
		
		0 0 1 0 4 63 1228 65 66 
		0 1 1 0 4 67 68 65 1228 
		0 2 1 0 4 71 72 65 68 
		0 3 1 0 4 75 66 65 72 
		0 0 1 1 4 67 908 121 68 
		0 1 1 1 4 123 124 121 908 
		0 2 1 1 4 127 128 121 124 
		0 3 1 1 4 71 68 121 128 
		0 0 1 2 4 123 972 177 124 
		0 1 1 2 4 179 180 177 972 
		0 2 1 2 4 183 184 177 180 
		0 3 1 2 4 127 124 177 184 
		0 0 1 3 4 179 1036 233 180 
		0 1 1 3 4 235 236 233 1036 
		0 2 1 3 4 239 240 233 236 
		0 3 1 3 4 183 180 233 240 
		0 0 1 4 4 235 1100 289 236 
		0 1 1 4 4 291 292 289 1100 
		0 2 1 4 4 295 296 289 292 
		0 3 1 4 4 239 236 289 296 
		0 0 1 5 4 291 1164 345 292 
		0 1 1 5 4 347 348 345 1164 
		0 2 1 5 4 351 352 345 354 
		0 3 1 5 4 295 292 345 352 
		0 0 1 6 4 399 72 401 402 
		0 1 1 6 4 71 404 401 72 
		0 2 1 6 4 407 1804 401 404 
		0 3 1 6 4 411 402 401 1804 
		0 0 1 7 4 71 128 657 404 
		0 1 1 7 4 127 602 657 128 
		0 2 1 7 4 663 664 657 602 
		0 3 1 7 4 407 404 657 664 
		0 0 1 8 4 127 184 601 602 
		0 1 1 8 4 183 546 601 184 
		0 2 1 8 4 607 608 601 546 
		0 3 1 8 4 663 602 601 608 
		0 0 1 9 4 183 240 545 546 
		0 1 1 9 4 239 458 545 240 
		0 2 1 9 4 551 552 545 458 
		0 3 1 9 4 607 546 545 552 
		0 0 1 10 4 239 296 457 458 
		0 1 1 10 4 295 460 457 296 
		0 2 1 10 4 463 464 457 460 
		0 3 1 10 4 551 458 457 464 
		0 0 1 11 4 295 352 489 460 
		0 1 1 11 4 491 492 489 352 
		0 2 1 11 4 495 1484 489 498 
		0 3 1 11 4 463 460 489 1484 
		0 0 1 12 4 67 36 37 38 
		0 1 1 12 4 39 40 1233 1228 
		0 2 1 12 4 43 38 37 40 
		0 0 1 13 4 123 92 93 94 
		0 1 1 13 4 67 38 913 908 
		0 2 1 13 4 711 94 93 38 
		0 0 1 14 4 179 148 149 150 
		0 1 1 14 4 123 918 977 972 
		0 2 1 14 4 711 150 149 94 
		0 0 1 15 4 235 204 205 206 
		0 1 1 15 4 179 982 1041 1036 
		0 2 1 15 4 711 206 205 150 
		0 0 1 16 4 291 260 261 262 
		0 1 1 16 4 235 1046 1105 1100 
		0 2 1 16 4 711 262 261 206 
		0 0 1 17 4 315 316 317 318 
		0 1 1 17 4 291 1110 1169 1164 
		0 2 1 17 4 711 324 317 262 
		0 0 1 18 4 371 372 373 374 
		0 1 1 18 4 407 376 1809 1804 
		0 2 1 18 4 379 374 373 376 
		0 0 1 19 4 407 664 685 376 
		0 1 1 19 4 663 1686 1745 664 
		0 2 1 19 4 1287 376 685 630 
		0 0 1 20 4 663 608 629 630 
		0 1 1 20 4 607 1622 1681 608 
		0 2 1 20 4 1287 630 629 574 
		0 0 1 21 4 607 552 573 574 
		0 1 1 21 4 551 1558 1617 552 
		0 2 1 21 4 1287 574 573 518 
		0 0 1 22 4 551 464 517 518 
		0 1 1 22 4 463 1494 1553 464 
		0 2 1 22 4 1287 518 517 430 
		0 0 1 23 4 463 428 429 430 
		0 1 1 23 4 431 432 1489 1484 
		0 2 1 23 4 1287 430 429 438 
		
		0 0 2 12 4 67 1224 1225 936 
		1 0 2 12 4 1224 1228 1229 1225 
		2 0 2 12 4 1225 1229 1233 717 
		3 0 2 12 4 936 1225 717 1238 
		0 1 2 12 4 1255 1256 1257 1258 
		1 1 2 12 4 1259 1260 722 1257 
		2 1 2 12 4 1257 722 1265 1229 
		3 1 2 12 4 1258 1257 1229 1228 
		0 2 2 12 4 711 712 713 714 
		1 2 2 12 4 712 1238 717 713 
		2 2 2 12 4 713 717 1233 722 
		3 2 2 12 4 714 713 722 726 
		0 0 2 13 4 123 904 905 906 
		1 0 2 13 4 904 908 909 905 
		2 0 2 13 4 905 909 913 877 
		3 0 2 13 4 906 905 877 918 
		0 1 2 13 4 67 936 937 938 
		1 1 2 13 4 936 1238 882 937 
		2 1 2 13 4 937 882 945 909 
		3 1 2 13 4 938 937 909 908 
		0 2 2 13 4 711 842 873 712 
		1 2 2 13 4 842 918 877 873 
		2 2 2 13 4 873 877 913 882 
		3 2 2 13 4 712 873 882 1238 
		0 0 2 14 4 179 968 969 970 
		1 0 2 14 4 968 972 973 969 
		2 0 2 14 4 969 973 977 845 
		3 0 2 14 4 970 969 845 982 
		0 1 2 14 4 123 906 1001 1002 
		1 1 2 14 4 906 1004 850 1001 
		2 1 2 14 4 1001 850 1009 973 
		3 1 2 14 4 1002 1001 973 972 
		0 2 2 14 4 711 810 841 842 
		1 2 2 14 4 810 982 845 841 
		2 2 2 14 4 841 845 977 850 
		3 2 2 14 4 842 841 850 918 
		0 0 2 15 4 235 1032 1033 1034 
		1 0 2 15 4 1032 1036 1037 1033 
		2 0 2 15 4 1033 1037 1041 813 
		3 0 2 15 4 1034 1033 813 1046 
		0 1 2 15 4 179 970 1065 1066 
		1 1 2 15 4 970 1068 818 1065 
		2 1 2 15 4 1065 818 1073 1037 
		3 1 2 15 4 1066 1065 1037 1036 
		0 2 2 15 4 711 778 809 810 
		1 2 2 15 4 778 1046 813 809 
		2 2 2 15 4 809 813 1041 818 
		3 2 2 15 4 810 809 818 982 
		0 0 2 16 4 291 1096 1097 1098 
		1 0 2 16 4 1096 1100 1101 1097 
		2 0 2 16 4 1097 1101 1105 781 
		3 0 2 16 4 1098 1097 781 1110 
		0 1 2 16 4 235 1034 1129 1130 
		1 1 2 16 4 1034 1132 786 1129 
		2 1 2 16 4 1129 786 1137 1101 
		3 1 2 16 4 1130 1129 1101 1100 
		0 2 2 16 4 711 746 777 778 
		1 2 2 16 4 746 1110 781 777 
		2 2 2 16 4 777 781 1105 786 
		3 2 2 16 4 778 777 786 1046 
		0 0 2 17 4 1159 1160 1161 1162 
		1 0 2 17 4 1160 1164 1165 1161 
		2 0 2 17 4 1161 1165 1169 749 
		3 0 2 17 4 1162 1161 749 1174 
		0 1 2 17 4 291 1098 1193 1194 
		1 1 2 17 4 1098 1196 754 1193 
		2 1 2 17 4 1193 754 1201 1165 
		3 1 2 17 4 1194 1193 1165 1164 
		0 2 2 17 4 711 744 745 746 
		1 2 2 17 4 747 748 749 745 
		2 2 2 17 4 745 749 1169 754 
		3 2 2 17 4 746 745 754 1110 
		0 0 2 18 4 1799 1800 1801 1802 
		1 0 2 18 4 1800 1804 1805 1801 
		2 0 2 18 4 1801 1805 1809 1293 
		3 0 2 18 4 1811 1801 1293 1814 
		0 1 2 18 4 407 1738 1833 1834 
		1 1 2 18 4 1738 1836 1298 1833 
		2 1 2 18 4 1833 1298 1841 1805 
		3 1 2 18 4 1834 1833 1805 1804 
		0 2 2 18 4 1287 1288 1289 1290 
		1 2 2 18 4 1288 1292 1293 1289 
		2 2 2 18 4 1289 1293 1809 1298 
		3 2 2 18 4 1290 1289 1298 1836 
		0 0 2 19 4 407 1736 1737 1738 
		1 0 2 19 4 1736 664 1741 1737 
		2 0 2 19 4 1737 1741 1745 1325 
		3 0 2 19 4 1738 1737 1325 1836 
		0 1 2 19 4 663 1674 1769 1770 
		1 1 2 19 4 1674 1772 1330 1769 
		2 1 2 19 4 1769 1330 1777 1741 
		3 1 2 19 4 1770 1769 1741 664 
		0 2 2 19 4 1287 1290 1321 1322 
		1 2 2 19 4 1290 1836 1325 1321 
		2 2 2 19 4 1321 1325 1745 1330 
		3 2 2 19 4 1322 1321 1330 1686 
		0 0 2 20 4 663 1672 1673 1674 
		1 0 2 20 4 1672 608 1677 1673 
		2 0 2 20 4 1673 1677 1681 1357 
		3 0 2 20 4 1674 1673 1357 1686 
		0 1 2 20 4 607 1610 1705 1706 
		1 1 2 20 4 1610 1708 1362 1705 
		2 1 2 20 4 1705 1362 1713 1677 
		3 1 2 20 4 1706 1705 1677 608 
		0 2 2 20 4 1287 1322 1353 1354 
		1 2 2 20 4 1322 1686 1357 1353 
		2 2 2 20 4 1353 1357 1681 1362 
		3 2 2 20 4 1354 1353 1362 1622 
		0 0 2 21 4 607 1608 1609 1610 
		1 0 2 21 4 1608 552 1613 1609 
		2 0 2 21 4 1609 1613 1617 1389 
		3 0 2 21 4 1610 1609 1389 1622 
		0 1 2 21 4 551 1546 1641 1642 
		1 1 2 21 4 1546 1644 1394 1641 
		2 1 2 21 4 1641 1394 1649 1613 
		3 1 2 21 4 1642 1641 1613 552 
		0 2 2 21 4 1287 1354 1385 1386 
		1 2 2 21 4 1354 1622 1389 1385 
		2 2 2 21 4 1385 1389 1617 1394 
		3 2 2 21 4 1386 1385 1394 1558 
		0 0 2 22 4 551 1544 1545 1546 
		1 0 2 22 4 1544 464 1549 1545 
		2 0 2 22 4 1545 1549 1553 1421 
		3 0 2 22 4 1546 1545 1421 1558 
		0 1 2 22 4 463 1482 1577 1578 
		1 1 2 22 4 1482 1580 1426 1577 
		2 1 2 22 4 1577 1426 1585 1549 
		3 1 2 22 4 1578 1577 1549 464 
		0 2 2 22 4 1287 1386 1417 1418 
		1 2 2 22 4 1386 1558 1421 1417 
		2 2 2 22 4 1417 1421 1553 1426 
		3 2 2 22 4 1418 1417 1426 1494 
		0 0 2 23 4 463 1480 1481 1482 
		1 0 2 23 4 1480 1484 1485 1481 
		2 0 2 23 4 1481 1485 1489 1453 
		3 0 2 23 4 1482 1481 1453 1494 
		0 1 2 23 4 1511 1512 1513 1514 
		1 1 2 23 4 1512 1516 1458 1513 
		2 1 2 23 4 1513 1458 1521 1485 
		3 1 2 23 4 1514 1513 1485 1484 
		0 2 2 23 4 1287 1418 1449 1450 
		1 2 2 23 4 1418 1494 1453 1449 
		2 2 2 23 4 1449 1453 1489 1458 
		3 2 2 23 4 1459 1449 1458 1462 
		;
createNode transform -n "Tail_base" -p "Tail_parent_space";
	setAttr ".t" -type "double3" -0.0012772279664134353 -10.000000185924335 -9.9252857330967323 ;
	setAttr ".r" -type "double3" 89.999999999999986 -7.0164775638926606e-015 -180 ;
	setAttr ".s" -type "double3" 10 10 10 ;
	setAttr ".rp" -type "double3" 0 10 10 ;
	setAttr ".rpt" -type "double3" -1.2246063538223771e-015 -1.7763568394002509e-015 
		2.2204460492503127e-015 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
	setAttr ".spt" -type "double3" 0 9 9 ;
createNode joint -n "Tail1" -p "Tail_base";
	addAttr -ci true -sn "zooPrimOut" -ln "zooPrimOut" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 1 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -89.999999999999986 0 ;
createNode joint -n "Tail2" -p "Tail1";
	setAttr ".t" -type "double3" 0.5 0 1.1102230246251565e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "Tail3" -p "Tail2";
	setAttr ".t" -type "double3" 0.5 0 1.1102230246251565e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "Tail4" -p "Tail3";
	addAttr -ci true -sn "zooPrimOut" -ln "zooPrimOut" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.5 0 1.1102230246251565e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "Tail5" -p "Tail4";
	setAttr ".t" -type "double3" 0.5 0 1.1102230246251565e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 89.999999999999986 0 ;
createNode orientConstraint -n "Tail4_orientConstraint1" -p "Tail4";
	addAttr -ci true -sn "w0" -ln "Ball_spine_D_ctrl1W0" -bt "W000" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".o" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Tail3_orientConstraint1" -p "Tail3";
	addAttr -ci true -sn "w0" -ln "Ball_spine_C_ctrl1W0" -bt "W000" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".o" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Tail2_orientConstraint1" -p "Tail2";
	addAttr -ci true -sn "w0" -ln "Ball_spine_B_ctrl1W0" -bt "W000" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".o" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Tail1_orientConstraint1" -p "Tail1";
	addAttr -ci true -sn "w0" -ln "Ball_spine_A_ctrl1W0" -bt "W000" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".o" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k on ".w0";
createNode lightLinker -n "lightLinker1";
	setAttr -s 5 ".lnk";
	setAttr -s 6 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 4;
	setAttr -s 8 ".dli[1:7]"  1 0 0 0 2 3 4;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode ikSCsolver -n "ikSCsolver";
createNode multiplyDivide -n "ball_squashStr_scale_mulDiv";
	setAttr ".op" 2;
createNode multiplyDivide -n "ball_scale_squ_correctional_mulDiv";
	setAttr ".i2" -type "float3" 2 2 2 ;
createNode shadingEngine -n "rampShader1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode lambert -n "lambert2";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode checker -n "checker1";
createNode place2dTexture -n "place2dTexture1";
	setAttr ".re" -type "float2" 4 4 ;
createNode objectSet -n "ball_all_ctrls_qss";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n"
		+ "                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 0\n                -subdivSurfaces 0\n                -planes 0\n                -lights 0\n                -cameras 0\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 0\n                -ikHandles 0\n                -deformers 0\n                -dynamics 0\n                -fluids 0\n                -hairSystems 0\n                -follicles 0\n                -nCloths 0\n                -nParticles 0\n                -nRigids 0\n                -dynamicConstraints 0\n                -locators 0\n                -manipulators 1\n                -dimensions 0\n                -handles 0\n                -pivots 0\n                -textures 0\n                -strokes 0\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 0\n            -subdivSurfaces 0\n            -planes 0\n            -lights 0\n            -cameras 0\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -joints 0\n            -ikHandles 0\n            -deformers 0\n            -dynamics 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 0\n            -manipulators 1\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 0\n            -strokes 0\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n"
		+ "            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n"
		+ "                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 0\n                -planes 0\n                -lights 0\n                -cameras 0\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 0\n                -ikHandles 0\n                -deformers 0\n                -dynamics 0\n                -fluids 0\n                -hairSystems 0\n                -follicles 0\n                -nCloths 0\n                -nParticles 0\n                -nRigids 0\n                -dynamicConstraints 0\n                -locators 0\n                -manipulators 1\n                -dimensions 0\n                -handles 0\n"
		+ "                -pivots 0\n                -textures 0\n                -strokes 0\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 0\n            -planes 0\n            -lights 0\n            -cameras 0\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 0\n            -ikHandles 0\n            -deformers 0\n            -dynamics 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 0\n            -manipulators 1\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 0\n            -strokes 0\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n"
		+ "            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -constrainDrag 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -constrainDrag 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"integer\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"integer\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render Window Panel 1\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render Window Panel 1\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render Window Panel 1\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 0\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 0\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 100 -ast 0 -aet 300 ";
	setAttr ".st" 6;
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode projection -n "projection1";
	setAttr ".ua" 180.00000500895632;
	setAttr ".va" 90.000002504478161;
	setAttr ".t" 6;
	setAttr ".ra" 0;
	setAttr ".vt1" -type "float2" 0.49828133 0.49475116 ;
	setAttr ".vt2" -type "float2" 0.49828133 0.49475116 ;
	setAttr ".vt3" -type "float2" 0.49828133 0.49475116 ;
createNode checker -n "checker2";
createNode place2dTexture -n "place2dTexture2";
	setAttr ".re" -type "float2" 8 8 ;
createNode tweak -n "tweak1";
	setAttr -s 56 ".pl[0].cp";
	setAttr ".pl[0].cp[0:7]" -type "double3" 0 0.026865894280126867 0  0 0.026865894280126867 
		0  0 0.026865894280126867 0  0 0.026865894280126867 0  0 0.026865894280126867 0  
		0 0.026865894280126867 0  0 0.026865894280126867 0  0 0.026865894280126867 0 ;
	setAttr ".pl[0].cp[11:18]" -type "double3" 0 0.026865894280126867 0  0 0.026865894280126867 
		0  0 0.026865894280126867 0  0 0.026865894280126867 0  0 0.026865894280126867 0  
		0 0.026865894280126867 0  0 0.026865894280126867 0  0 0.026865894280126867 0 ;
	setAttr ".pl[0].cp[22:29]" -type "double3" 0 0.026865894280126867 0  0 0.026865894280126867 
		0  0 0.026865894280126867 0  0 0.026865894280126867 0  0 0.026865894280126867 0  
		0 0.026865894280126867 0  0 0.026865894280126867 0  0 0.026865894280126867 0 ;
	setAttr ".pl[0].cp[33:40]" -type "double3" 0 0.026865894280126756 0  0 0.026865894280126756 
		0  0 0.026865894280126756 0  0 0.026865894280126756 0  0 0.026865894280126756 0  
		0 0.026865894280126756 0  0 0.026865894280126756 0  0 0.026865894280126756 0 ;
	setAttr ".pl[0].cp[44:51]" -type "double3" 0 0.026865894280126978 0  0 0.026865894280126978 
		0  0 0.026865894280126978 0  0 0.026865894280126978 0  0 0.026865894280126978 0  
		0 0.026865894280126978 0  0 0.026865894280126978 0  0 0.026865894280126978 0 ;
	setAttr ".pl[0].cp[55:62]" -type "double3" 0 0.026865894280126756 0  0 0.026865894280126756 
		0  0 0.026865894280126756 0  0 0.026865894280126756 0  0 0.026865894280126756 0  
		0 0.026865894280126756 0  0 0.026865894280126756 0  0 0.026865894280126756 0 ;
	setAttr ".pl[0].cp[66:73]" -type "double3" 0 0.026865894280126756 0  0 0.026865894280126756 
		0  0 0.026865894280126756 0  0 0.026865894280126756 0  0 0.026865894280126756 0  
		0 0.026865894280126756 0  0 0.026865894280126756 0  0 0.026865894280126756 0 ;
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode ffd -n "ffd1";
	setAttr ".lis" 3;
	setAttr ".lit" 3;
	setAttr ".liu" 3;
	setAttr ".lo" yes;
	setAttr ".ot" 1;
	setAttr ".ofd" 0;
createNode objectSet -n "ffd1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "ffd1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "ffd1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode cluster -n "cluster1";
	setAttr ".rel" yes;
	setAttr ".gm[0]" -type "matrix" 2.4528189251313601 0 0 0 0 2.000000001012697 0 0
		 0 0 2.4528189251313606 0 -0.00018555785818730186 0.99999999949365193 0 1;
createNode tweak -n "tweak2";
createNode objectSet -n "cluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "pt[0:2][1][0]" "pt[0:2][1][1]" "pt[0:2][1][2]";
createNode objectSet -n "tweakSet2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "pt[*][*][*]";
createNode reverse -n "Cluster_offset_fix_rev";
createNode addDoubleLinear -n "addDoubleLinear1";
	setAttr ".i2" -1;
createNode addDoubleLinear -n "addDoubleLinear2";
	setAttr ".i2" -1;
createNode objectSet -n "tail_all_ctrls_qss";
	addAttr -ci true -sn "zooBrand" -ln "zooBrand" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "zooBrand_name" -ln "zooBrand_name" -dt "string";
	addAttr -ci true -sn "zooBrand_qss" -ln "zooBrand_qss" -dt "string";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
	setAttr ".zooBrand_name" -type "string" "Ball";
	setAttr ".zooBrand_qss" -type "string" "Ball";
createNode script -n "zooObjMenu";
	setAttr ".b" -type "string" (
		"//zooObjMenu by Hamish McKenzie\r\n//Copywright Hamish McKenzie 2005\r\n\r\nglobal proc zooObjMenu( string $parent, string $obj ) {\r\n\tstring $attrs[] = `listAttr -ud $obj`;\r\n\tstring $cmdNames[];\r\n\tint $cmdSlots[] = `zooObjMenuListCmds $obj`;\r\n\r\n\tsetParent -m $parent;\r\n\tint $numCmds = `size $cmdSlots`;\r\n\tfor( $n=0; $n<$numCmds; $n++ ) {\r\n\t\tstring $defaultCmdName = \"<empty cmd>\";\r\n\t\tstring $defaultCmdStr = ( \"zooObjMenuEditCmd \"+ $obj +\" \"+ $cmdSlots[$n] );\r\n\t\tstring $cmdName = `zooGetObjMenuCmdName $obj $cmdSlots[$n]`;\r\n\t\tstring $cmdStr = `zooGetObjMenuCmdStr $obj $cmdSlots[$n]`;\r\n\r\n\t\tif( $cmdName == \"\" ) $cmdName = $defaultCmdName;\r\n\t\tif( $cmdStr == \"\" ) $cmdStr = $defaultCmdStr;\r\n\t\t$cmdStr = `zooPopulateCmdStr $obj $cmdStr`;\r\n\t\tmenuItem -l $cmdName -c $cmdStr;\r\n\t\t}\r\n\r\n\tif( $numCmds ) {\r\n\t\tmenuItem -d 1;\r\n\t\tmenuItem -l \"edit cmd...\" -c( \"zooObjMenuEditCmd \"+ $obj + \" -1\" );\r\n\t\t}\r\n\r\n\tmenuItem -l \"new cmd...\" -c( \"zooObjMenuNewCmd \"+ $obj );\r\n\tmenuItem -d 1;\r\n\tmenuItem -d 1;\r\n\t}\r\n\r\nglobal proc zooObjMenuEditCmd( string $obj, int $cmdNum ){\r\n"
		+ "\t//check to see if the proposed attribute exists, or whether the user just wants to edit the first attribute, by using the \"*\" symbol in the $cmdAttr variable\r\n\tint $cmdList[] = `zooObjMenuListCmds $obj`;\r\n\tif( $cmdNum<0 ) $cmdNum = $cmdList[0];\r\n\r\n\tstring $windowName = \"zooObjMenuNewCmdWindow\";\r\n\tstring $cmdName = `zooGetObjMenuCmdName $obj $cmdNum`;\r\n\tstring $cmdStr = `zooGetObjMenuCmdStr $obj $cmdNum`;\r\n\r\n\tif( `window -exists $windowName` ) deleteUI $windowName;\r\n\twindow -title \"Edit Command Window\" -resizeToFitChildren 1 -maximizeButton 0 -sizeable 1 -width 400 $windowName;\r\n\t\tmenuBarLayout;\r\n\t\t\tmenu -label \"Help\";\r\n\t\t\tmenuItem -label \"Help\" -c( \"zooHelp zooObjMenu 1\" );\r\n\r\n\t\tstring $form = `formLayout`;\r\n\t\t\tstring $name = `text -l \"command name:\"`;\r\n\t\t\ttextField -tx $cmdName -cc( \"zooObjMenuSaveCmd \"+ $obj +\" \"+ $cmdNum ) zooOMTextCmdName;\r\n\r\n\t\t\tstring $currentCmd = `text -l \"current command:\"`;\r\n\t\t\tintField -width 80 -min 0 -step 1 -v $cmdNum -cc( \"zooObjMenuEditCmd \"+ $obj +\" #1\" ) zooOMIntCurrentCmd;\r\n"
		+ "\r\n\t\t\tstring $cmd = `text -l \"command sting:\"`;\r\n\t\t\tscrollField -ed 1 -tx $cmdStr -ec( \"zooObjMenuSaveCmd \"+ $obj +\" \"+ $cmdNum ) zooOMCmdText;\r\n\t\t\tstring $closeButt = `button -height 20 -label \"close\" -c( \"zooObjMenuSaveCmd \"+ $obj +\" \"+ $cmdNum +\"; deleteUI \"+ $windowName )`;\r\n\t\t\tstring $deleteButt = `button -height 20 -label \"delete\" -c( \"zooObjMenuDelCmd \"+ $obj +\" \"+ $cmdNum +\"; deleteUI \"+ $windowName )`;\r\n\r\n\t formLayout -edit\r\n\t\t-af $name \"top\"\t0\r\n\t\t-af $name \"left\"\t0\r\n\t\t-af $name \"right\"\t0\r\n\t\t-an $name \"bottom\"\r\n\r\n\t\t-ac zooOMTextCmdName \"top\"\t\t0 $name\r\n\t\t-af zooOMTextCmdName \"left\"\t0\r\n\t\t-ac zooOMTextCmdName \"right\"\t5 $currentCmd\r\n\t\t-an zooOMTextCmdName \"bottom\"\r\n\r\n\t\t-ac $currentCmd \"top\"\t2 $name\r\n\t\t-an $currentCmd \"left\"\r\n\t\t-ac $currentCmd \"right\"\t2 zooOMIntCurrentCmd\r\n\t\t-an $currentCmd \"bottom\"\r\n\r\n\t\t-ac zooOMIntCurrentCmd \"top\"\t\t0 $name\r\n\t\t-an zooOMIntCurrentCmd \"left\"\r\n\t\t-af zooOMIntCurrentCmd \"right\"\t2\r\n\t\t-an zooOMIntCurrentCmd \"bottom\"\r\n\r\n\t\t-ac $cmd \"top\"\t0 zooOMTextCmdName\r\n\t\t-af $cmd \"left\"\t0\r\n\t\t-af $cmd \"right\"\t0\r\n"
		+ "\t\t-an $cmd \"bottom\"\r\n\r\n\t\t-ac zooOMCmdText \"top\"\t\t0 $cmd\r\n\t\t-af zooOMCmdText \"left\"\t\t0\r\n\t\t-af zooOMCmdText \"right\"\t0\r\n\t\t-ac zooOMCmdText \"bottom\"\t0 $closeButt\r\n\r\n\t\t-an $closeButt \"top\"\r\n\t\t-af $closeButt \"left\"\t0\r\n\t\t-ap $closeButt \"right\"\t0 50\r\n\t\t-af $closeButt \"bottom\"\t0\r\n\r\n\t\t-an $deleteButt \"top\"\r\n\t\t-ac $deleteButt \"left\"\t\t0 $closeButt\r\n\t\t-af $deleteButt \"right\"\t\t0\r\n\t\t-af $deleteButt \"bottom\"\t0\r\n\t\t$form;\r\n\r\n\tpopupMenu -p zooOMIntCurrentCmd;\r\n\tfor( $a in $cmdList ) menuItem -l (\"command \"+$a) -c( \"zooObjMenuEditCmd \"+ $obj +\" \"+ $a );\r\n\r\n\tshowWindow $windowName;\r\n\t}\r\n\r\nglobal proc zooObjMenuSaveCmd( string $obj, string $cmdNum ){\r\n\tstring $cmdAttr = \"zooCmd\"+ $cmdNum;\r\n\tstring $cmdName = `textField -q -tx zooOMTextCmdName`;\r\n\tstring $cmdStr = `scrollField -q -tx zooOMCmdText`;\r\n\tsetAttr -type \"string\" ( $obj +\".\"+ $cmdAttr ) ( $cmdName +\"^\"+ $cmdStr );\r\n\t}\r\n\r\nglobal proc zooSetObjMenuCmdName( string $obj, string $cmdName, int $cmdNum ) {\r\n\tstring $cmdAttr = \"zooCmd\"+ $cmdNum;\r\n\tif( !`objExists $obj` ) return;\r\n"
		+ "\tif( !`objExists ( $obj +\".\"+ $cmdAttr )` ) return;\r\n\tstring $existingCmd = `zooGetObjMenuCmdStr $obj $cmdNum`;\r\n\tsetAttr -type \"string\" ( $obj +\".\"+ $cmdAttr ) ( $cmdName +\"^\"+ $existingCmd );\r\n\t}\r\n\r\nglobal proc zooSetObjMenuCmdStr( string $obj, string $cmdStr, int $cmdNum ) {\r\n\tstring $cmdName = `zooGetObjMenuCmdName $obj $cmdNum`;\r\n\tstring $cmdAttr = \"zooCmd\"+ $cmdNum;\r\n\tsetAttr -type \"string\" ( $obj +\".\"+ $cmdAttr ) ( $cmdName +\"^\"+ $cmdStr );\r\n\t}\r\n\r\nglobal proc string zooGetObjMenuCmdName( string $obj, string $cmdNum ) {\r\n\tstring $cmdInfo[] = `zooGetObjMenuCmdInfo $obj $cmdNum`;\r\n\treturn $cmdInfo[0];\r\n\t}\r\n\r\nglobal proc string zooGetObjMenuCmdStr( string $obj, string $cmdNum ) {\r\n\tstring $cmdInfo[] = `zooGetObjMenuCmdInfo $obj $cmdNum`;\r\n\treturn $cmdInfo[1];\r\n\t}\r\n\r\nglobal proc string[] zooGetObjMenuCmdInfo( string $obj, string $cmdNum ) {\r\n\tstring $cmdAttr = \"zooCmd\"+ $cmdNum;\r\n\tif( !`objExists ( $obj +\".\"+ $cmdAttr )` ) return {};\r\n\tstring $cmdInfo = `getAttr ( $obj +\".\"+ $cmdAttr )`;\r\n\tstring $buffer[];\r\n"
		+ "\ttokenize $cmdInfo \"^\" $buffer;\r\n\treturn $buffer;\r\n\t}\r\n\r\nglobal proc zooObjMenuNewCmd( string $obj ){\r\n\tint $cmdNum = `zooObjMenuAddCmd $obj`;\r\n\tzooObjMenuEditCmd $obj $cmdNum;\r\n\t}\r\n\r\nglobal proc int[] zooObjMenuListCmds( string $obj ) {\r\n\tif( !`objExists $obj` ) return {};\r\n\tstring $attrs[] = `listAttr -ud $obj`;\r\n\tint $cmdAttrs[];\r\n\r\n\tfor( $attr in $attrs ) if( `match \"^zooCmd[0-9]+$\" $attr` != \"\" ) $cmdAttrs[( `size $cmdAttrs` )] = `match \"[0-9]+$\" $attr`;\r\n\tsort $cmdAttrs;\r\n\r\n\treturn $cmdAttrs;\r\n\t}\r\n\r\nglobal proc int zooObjMenuAddCmd( string $obj ) {\r\n\tif( !`objExists $obj` ) return -1;\r\n\tint $cmdAttrs[] = `zooObjMenuListCmds $obj`;\r\n\tint $numCmds = `size $cmdAttrs`;\r\n\tint $nextNum = ( $numCmds )? $cmdAttrs[( $numCmds-1 )]+1: 0;\r\n\tfor( $n=1; $n<`size $cmdAttrs`; $n++ ) if( $cmdAttrs[$n]-1 != $cmdAttrs[( $n-1 )] ) $nextNum = $n-1;\r\n\r\n\taddAttr -ln ( \"zooCmd\"+ $nextNum ) -dt \"string\" $obj;\r\n\treturn $nextNum;\r\n\t}\r\n\r\nglobal proc string zooObjMenuProcessCmd( string $obj, string $cmdStr ) {\r\n\treturn \"\";\r\n\t}\r\n\r\nglobal proc string[] zooGetObjsWithMenus() {\r\n"
		+ "\tstring $allObjects[] = `ls -type transform`;\r\n\tstring $objMenus[];\r\n\r\n\tfor( $obj in $allObjects ) {\r\n\t\tstring $attrs[] = `listAttr -ud $obj`;\r\n\t\tfor( $attr in $attrs ) if( `match \"^zooCmd[0-9]+$\" $attr` != \"\" ) {\r\n\t\t\t$objMenus[( `size $objMenus` )] = $obj;\r\n\t\t\tbreak;\r\n\t\t\t}\r\n\t\t}\r\n\r\n\treturn $objMenus;\r\n\t}\r\n\r\nglobal proc string zooObjMenuInfo( string $function ) {\r\n\tstring $creationDate = \"15 May 2004\";\r\n\tstring $lastRevision = \"22 August 2004\";\r\n\tstring $currentVersion = \"1.5.0\";\r\n\r\n\tif( $function == \"created\" ) $info = $creationDate;\r\n\tif( $function == \"modified\" ) $info = $lastRevision;\r\n\tif( $function == \"version\" ) $info = $currentVersion;\r\n\treturn $info;\r\n\t}");
	setAttr ".st" 2;
createNode script -n "dagMenuProcMaya6";
	setAttr ".b" -type "string" (
		"proc optionalDagMenuProc( string $parent, string $item )\r\n{\r\n\r\n\tstring $object[] = `listRelatives -path -s $item`;\r\n\tstring $shape = \"\";\r\n\tint $gotVisible = 0;\r\n\r\n\tif( size($object) < 1 ) return;\r\n\r\n\tfor( $i=0; $i<size($object); $i+=1) {\r\n\t\tif( (0 == getAttr($object[$i] + \".io\")) &&\r\n\t\t\tgetAttr($object[$i] + \".v\") ) {\r\n\t\t\t$shape = $object[$i];\r\n\t\t\t$gotVisible = 1;\r\n\t\t\tbreak;\r\n\t\t}\r\n\t}\r\n\r\n\tif( !$gotVisible ) {\r\n\t\tfor( $i=0; $i<size($object); $i+=1) {\r\n\t\t\tif( 0 == getAttr($object[$i] + \".io\")) {\r\n\t\t\t\t$shape = $object[$i];\r\n\t\t\t\tbreak;\r\n\t\t\t}\r\n\t\t}\r\n\t}\r\n\r\n\tif( \"\" != $shape ) {\r\n\t\tstring $nt = `nodeType $shape`;\r\n\t\tswitch( $nt ) {\r\n\t\t  case \"subdiv\":\r\n\t\t\tsubdOptionalDagMenuProc( $parent, $item );\r\n\t\t\tmenuItem -d true;\r\n\t\t\tbreak;\r\n\r\n\t\t  default:\r\n\t\t\tbreak;\r\n\t\t}\r\n\t}\r\n}\r\n\r\nproc int objectIsTrimmed(string $item)\r\n// Return true if this is a trimmed surface\r\n{\r\n\tstring $command = (\"getAttr -size \" + $item + \".trimFace\");\r\n\tint $trimCount = eval($command);\r\n\r\n\treturn ($trimCount != 0);\r\n}\r\n\r\n\r\nproc string getControlledHandle(string $item)\r\n"
		+ "{\r\n\tstring $handle;\r\n\tif (size(`ls ($item+\".ikBlend\")`)) {\r\n\t\tstring $connHandles[] =\r\n\t\t\t`listConnections -type ikHandle ($item+\".ikBlend\")`;\r\n\t\tif (size($connHandles)) {\r\n\t\t\t$handle = $connHandles[0];\r\n\t\t}\r\n\t}\r\n\treturn $handle;\r\n}\r\n\r\nproc int isIKcontroller(string $item)\r\n{\r\n\tstring $handle = getControlledHandle($item);\r\n\treturn (size($handle) > 0);\r\n}\r\n\r\n\r\nglobal proc string[] objectSelectMasks(string $item)\r\n// Returns the component selection masks that apply to this object\r\n{\r\n\tstring $maskList[];\r\n\tstring $shape = $item;\r\n\tint $i;\r\n\r\n\t// Look at the shape child of this object\r\n\t//\r\n\tstring $object[] = `listRelatives -path -s $item`;\r\n\tint $gotVisible = 0;\r\n\r\n\tfor ($i = 0; $i < size($object); ++$i) {\r\n\t\tif( (0 == getAttr($object[$i] + \".io\")) &&\r\n\t\t\tgetAttr($object[$i] + \".v\") ) {\r\n\t\t\t$shape = $object[$i];\r\n\t\t\t$gotVisible = 1;\r\n\t\t\tbreak;\r\n\t\t}\r\n\t}\r\n\r\n\tif( !$gotVisible ) {\r\n\t\tfor ($i = 0; $i < size($object); ++$i)\r\n\t\t{\r\n\t\t\tif (getAttr($object[$i] + \".io\") == 0)\r\n\t\t\t{\r\n\t\t\t\t$shape = $object[$i];\r\n\t\t\t\tbreak;\r\n"
		+ "\t\t\t}\r\n\t\t}\r\n\t}\r\n\r\n\tstring $nt = `nodeType $shape`;\r\n\r\n\tswitch ($nt) {\r\n\t\tcase \"lattice\":\r\n\t\t\t$maskList[0] = \"latticePoint\";\r\n\t\t\tbreak;\r\n\t\tcase \"nurbsCurve\":\r\n\t\t\t$maskList[0] = \"curveParameterPoint\";\r\n\t\t\t$maskList[1] = \"controlVertex\";\r\n\t\t\t$maskList[2] = \"editPoint\";\r\n\t\t\t$maskList[3] = \"hull\";\r\n\t\t\tbreak;\r\n\t\tcase \"nurbsSurface\":\r\n\t\t\t$maskList[0] = \"isoparm\";\r\n\t\t\t$maskList[1] = \"controlVertex\";\r\n\t\t\t$maskList[2] = \"surfaceParameterPoint\";\r\n\t\t\t$maskList[3] = \"hull\";\r\n\t\t\t$maskList[4] = \"surfaceFace\";\r\n\t\t\tif (objectIsTrimmed($shape)) {\r\n\t\t\t\t$maskList[5] = \"surfaceEdge\";\r\n\t\t\t}\r\n\t\t\tbreak;\r\n\t\tcase \"mesh\":\r\n\t\t\t$maskList[0] = \"edge\";\r\n\t\t\t$maskList[1] = \"vertex\";\r\n\t\t\t$maskList[2] = \"facet\";\r\n\t\t\t$maskList[3] = \"puv\";\r\n\t\t\t$maskList[4] = \"pvf\";\r\n\t\t\tbreak;\r\n\t\tcase \"joint\":\r\n\t\t\t$maskList[0] = \"joint\";\t\t// special case\r\n\t\t\tbreak;\r\n\t\tcase \"ikHandle\":\r\n\t\t\t$maskList[0] = \"ikHandle\";\t// special case\r\n\t\t\tbreak;\r\n\t\tcase \"particle\":\r\n\t\t\t$maskList[0] = \"particle\";\t// only one choice\r\n\t\t\tbreak;\r\n\t\tcase \"spring\":\r\n\t\t\t$maskList[0] = \"springComponent\";\t// only one choice\r\n"
		+ "\t\t\tbreak;\r\n\t\tcase \"subdiv\":\r\n \t\t\t$maskList[0] = \"subdivMeshPoint\";\r\n \t\t\t$maskList[1] = \"subdivMeshEdge\";\r\n \t\t\t$maskList[2] = \"subdivMeshFace\";\r\n \t\t\t$maskList[3] = \"subdivMeshUV\";\r\n\t\t\tbreak;\r\n\t}\r\n\r\n\tif (isIKcontroller($item)) {\r\n\t\t$maskList[size($maskList)] = \"ikfkHandle\";\r\n\t}\r\n\r\n\treturn $maskList;\r\n}\r\n\r\nglobal proc createSelectMenuItems(string $parent, string $item)\r\n// Create a menu that shows the dag parenting for this object\r\n{\r\n\tstring $maskList[] = `objectSelectMasks($item)`;\r\n\tstring $radialPosition[];\r\n\tstring $uiName;\r\n\r\n\tint $i;\r\n\tint $isNurbObject     = false;\r\n\tint $isPolyObject     = false;\r\n\tint $isLatticeObject  = false;\r\n\tint $isJointObject    = false;\r\n\tint $isIkHandleObject = false;\r\n\tint $isIkFkHandleObject = false;\r\n\tint $isParticleObject = false;\r\n\tint $isSpringObject   = false;\r\n\tint $isSubdivObject   = false;\r\n\tint $hasComponents\t  = false;\r\n\r\n\r\n\tif (1 <= size($maskList)) {\r\n\t\t$isLatticeObject = ($maskList[0] == \"latticePoint\");\r\n\t\t$isJointObject = ($maskList[0] == \"joint\");\r\n\t\t$isIkHandleObject = ($maskList[0] == \"ikHandle\");\r\n"
		+ "\t\t$isParticleObject = ($maskList[0] == \"particle\");\r\n\t\t$isSpringObject = ($maskList[0] == \"springComponent\");\r\n\t\t$isSubdivObject = ($maskList[0] == \"subdivMeshPoint\");\r\n\t}\r\n\tif (2 <= size($maskList)) {\r\n\t\t$isNurbObject = ($maskList[1] == \"controlVertex\");\r\n\t\t$isPolyObject = ($maskList[1] == \"vertex\");\r\n\t}\r\n\r\n\r\n\tint $maskSize = size($maskList);\r\n\tint $maxRadialPos = size($maskList);\r\n\r\n\tif (($maskSize > 0) && ($maskList[$maskSize-1] == \"ikfkHandle\")) {\r\n\t\t$isIkFkHandleObject = true;\r\n\t\t$maxRadialPos--; // ikfkHandle does not populate like other masks\r\n\t}\r\n\r\n\t$hasComponents = $isLatticeObject ||\r\n\t\t\t\t\t $isParticleObject ||\r\n\t\t\t\t\t $isSubdivObject ||\r\n\t\t\t\t\t $isSpringObject ||\r\n\t\t\t\t\t $isNurbObject ||\r\n\t\t\t\t\t $isPolyObject;\r\n\r\n\tsetParent -menu $parent;\r\n\t$radialPosition[0] = \"N\";\r\n\t$radialPosition[1] = \"W\";\r\n\t$radialPosition[2] = \"S\";\r\n\t$radialPosition[3] = \"E\";\r\n\t$radialPosition[4] = \"SW\";\r\n\t$radialPosition[5] = \"SE\";\r\n\t$radialPosition[6] = \"NW\";\r\n\t$radialPosition[7] = \"NE\";\r\n\r\n\tif ($isNurbObject) {\r\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\r\n"
		+ "\t\t\tswitch ($maskList[$i]) {\r\n\t\t\t\tcase \"surfaceParameterPoint\":\r\n\t\t\t\t\t$uiName = \"Surface Point\";\r\n\t\t\t\t\tbreak;\r\n\t\t\t\tcase \"curveParameterPoint\":\r\n\t\t\t\t\t$uiName = \"Curve Point\";\r\n\t\t\t\t\tbreak;\r\n\t\t\t\tcase \"surfaceEdge\":\r\n\t\t\t\t\t$uiName = \"Trim Edge\";\r\n\t\t\t\t\tbreak;\r\n\t\t\t\tcase \"surfaceFace\":\r\n\t\t\t\t\t$uiName = \"Surface Patch\";\r\n\t\t\t\t\tbreak;\r\n\t\t\t\tdefault:\r\n\t\t\t\t\t$uiName = `interToUI $maskList[$i]`;\r\n\t\t\t}\r\n\r\n\t\t\tif ($maskList[$i] != \"ikfkHandle\") {\r\n\t\t\t\tmenuItem -l $uiName\r\n\t\t\t\t\t-ecr false\r\n\t\t\t\t\t-c ( \"doMenuNURBComponentSelection(\\\"\" +\r\n\t\t\t\t\t\t $item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\r\n\t\t\t\t\t-rp $radialPosition[$i];\r\n\t\t\t}\r\n\t\t}\r\n\t} else if ($isPolyObject) {\r\n\r\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\r\n\r\n\t\t\tswitch ($maskList[$i]) {\r\n\t\t\t  case \"puv\":\r\n\t\t\t\t$uiName = \"UV\";\r\n\t\t\t\tbreak;\r\n\t\t\t  case \"facet\":\r\n\t\t\t\t$uiName = \"Face\";\r\n\t\t\t\tbreak;\r\n\t\t\t  case \"pvf\":\r\n\t\t\t\t$uiName = \"Vertex Faces\";\r\n\t\t\t\tbreak;\r\n\t\t\t  default:\r\n\t\t\t\t$uiName = `interToUI $maskList[$i]`;\r\n\t\t\t\tbreak;\r\n\t\t\t}\r\n\r\n\t\t\tif ($maskList[$i] != \"ikfkHandle\") {\r\n\t\t\t\tmenuItem -l $uiName\r\n"
		+ "\t\t\t\t\t-ecr false\r\n\t\t\t\t\t-c ( \"doMenuComponentSelection(\\\"\" +\r\n\t\t\t\t\t\t $item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\r\n\t\t\t\t\t-rp $radialPosition[$i];\r\n\t\t\t}\r\n\t\t}\r\n\t} else if ($isLatticeObject) {\r\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\r\n\t\t\tif ($maskList[$i] != \"ikfkHandle\") {\r\n\t\t\t\t$uiName = `interToUI $maskList[$i]`;\r\n\t\t\t\tmenuItem -l $uiName\r\n\t\t\t\t\t-ecr false\r\n\t\t\t\t\t-c ( \"doMenuLatticeComponentSelection(\\\"\" +\r\n\t\t\t\t\t\t $item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\r\n\t\t\t\t\t-rp $radialPosition[$i];\r\n\t\t\t}\r\n\t\t}\r\n\t} else if ($isJointObject) {\r\n\t\tmenuItem -l \"Set Preferred Angle\"\r\n\t\t\t-echoCommand true\r\n\t\t\t-c (`performSetPrefAngle 2` + \" \" + $item)\r\n\t\t\t-rp \"W\"\r\n\t\t\tsetPrefAngleItem;\r\n\r\n\t\tmenuItem -l \"Assume Preferred Angle\"\r\n\t\t\t-echoCommand true\r\n\t\t\t-c (`performAssumePrefAngle 2` + \" \" + $item)\r\n\t\t\t-rp \"E\"\r\n\t\t\tassumePrefAngleItem;\r\n\r\n\r\n\t\tstring  $currContext = `currentCtx`;\r\n\t\tstring  $currTool    = `contextInfo -c $currContext`;\r\n\t\tif ( $currTool == \"artAttrSkin\" ) {\r\n\t\t\tstring $whichTool = `artAttrCtx -q -whichTool $currContext`;\r\n"
		+ "\t\t\tif ( $whichTool == \"skinWeights\" )  {\r\n\t\t\t\tstring $connL[] = `listConnections ($item+\".worldMatrix\")`;\r\n\t\t\t\tstring $conn;\r\n\t\t\t\tfor($conn in $connL)\r\n\t\t\t\t\tif (`nodeType $conn` == \"skinCluster\")\r\n\t\t\t\t\t{\r\n\t\t\t\t\t\t// select the surface (not the joint) and set\r\n\t\t\t\t\t\t// the joint as the current influence\r\n\t\t\t\t\t\t//\r\n\t\t\t\t\t\tstring $currSel[] = `ls -sl`;\r\n\t\t\t\t\t\tstring $currSelString;\r\n\t\t\t\t\t\tif (size($currSel) > 0) {\r\n\t\t\t\t\t\t\tstring $currObj;\r\n\t\t\t\t\t\t\t$currSelString = \"select -r \";\r\n\t\t\t\t\t\t\tfor ($currObj in $currSel) {\r\n\t\t\t\t\t\t\t\t$currSelString += ($currObj+\" \");\r\n\t\t\t\t\t\t\t}\r\n\t\t\t\t\t\t}\r\n\t\t\t\t\t\tmenuItem -l \"Paint Weights\"\r\n\t\t\t\t\t\t\t-echoCommand true\r\n\t\t\t\t\t\t\t-c ($currSelString+\"; setSmoothSkinInfluence \" + $item)\r\n\t\t\t\t\t\t\t-rp \"N\"\r\n\t\t\t\t\t\t\tpaintWeightItem;\r\n\t\t\t\t\t\tbreak;\r\n\t\t\t\t\t}\r\n\t\t\t}\r\n\t\t}\r\n\r\n\t\telse if ( $currTool == \"artAttr\" ) {\r\n\t\t\tstring $whichTool = `artAttrCtx -q -whichTool $currContext`;\r\n\t\t\tif ( $whichTool == \"general\" )  {\r\n\t\t\t\tstring $connL[] = `listConnections ($item+\".worldMatrix\")`;\r\n\t\t\t\tstring $conn;\r\n\t\t\t\tfor($conn in $connL) {\r\n"
		+ "\t\t\t\t\tif (`nodeType $conn` == \"jointCluster\")\r\n\t\t\t\t\t{\r\n\t\t\t\t\t\tstring $artCommand = \"artAttrCtx\" ;\r\n\t\t\t\t\t\tstring $attribute = \"cluster.\" + $conn +  \".weights\" ;\r\n\t\t\t\t\t\tmenuItem -l \"Paint Weights\"\r\n\t\t\t\t\t\t\t-echoCommand true\r\n\t\t\t\t\t\t\t// the following command doesnot update the UI hence we use the next one\r\n\t\t\t\t\t\t\t//-c (\"artAttrCtx -e -pas \\\"cluster.\" + $conn +  \".weights\\\" `currentCtx`\")\r\n\t\t\t\t\t\t\t-c (\"artSetToolAndSelectAttr( \\\"\" + $artCommand + \"\\\", \\\"\" + $attribute + \"\\\" )\")\r\n\t\t\t\t\t\t\t-rp \"N\"\r\n\t\t\t\t\t\t\tpaintWeightItem;\r\n\t\t\t\t\t\tbreak;\r\n\t\t\t\t\t}\r\n\t\t\t\t}\r\n\t\t\t}\r\n\t\t}\r\n\t\telse if ( $currTool == \"artSetPaint\" ) {\r\n\t\t\tstring $connL[] = `listConnections ($item+\".worldMatrix\")`;\r\n\t\t\tstring $conn;\r\n\t\t\tfor($conn in $connL) {\r\n\t\t\t\tif (`nodeType $conn` == \"jointCluster\") {\r\n\t\t\t\t\tstring $connS[] = `listConnections ($conn+\".message\")`;\r\n\t\t\t\t\tfor($set in $connS) {\r\n\t\t\t\t\t\tif (`nodeType $set` == \"objectSet\") {\r\n\t\t\t\t\t\t\tmenuItem -l \"Paint Set Membership\"\r\n\t\t\t\t\t\t\t\t-echoCommand true\r\n\t\t\t\t\t\t\t\t// the following command doesnot update the UI hence we use the next one\r\n"
		+ "\t\t\t\t\t\t\t\t//-c (\"artSetPaintCtx -e -settomodify \" + $set + \" `currentCtx`\")\r\n\t\t\t\t\t\t\t\t-c (\"artSetPaintSelectSet( \\\"\" + $set + \"\\\" )\")\r\n\t\t\t\t\t\t\t\t-rp \"N\"\r\n\t\t\t\t\t\t\t\tpaintWeightItem;\r\n\t\t\t\t\t\t\tbreak;\r\n\t\t\t\t\t\t}\r\n\t\t\t\t\t}\r\n\t\t\t\t}\r\n\t\t\t}\r\n\t\t}\r\n\t} else if ($isIkHandleObject) {\r\n\t\tmenuItem -l \"Set Preferred Angle\"\r\n\t\t\t-annotation \"Set Preferred: Select ikHandles or joints\"\r\n\t\t\t-echoCommand true\r\n\t\t\t-c (`performSetPrefAngle 2` + \" \" + $item)\r\n\t\t\t-rp \"W\"\r\n\t\t\tsetPrefAngleItem;\r\n\r\n\t\tmenuItem -l \"Assume Preferred Angle\"\r\n\t\t\t-annotation \"Assume Preferred: Select ikHandles or joints\"\r\n\t\t\t-echoCommand true\r\n\t\t\t-c (`performAssumePrefAngle 2` + \" \" + $item)\r\n\t\t\t-rp \"E\"\r\n\t\t\tassumePrefAngleItem;\r\n\r\n\t\tmenuItem -l \"Enable ikHandle\"\r\n\t\t\t-annotation \"Enable IK Handles: Select ikHandles\"\r\n\t\t\t-echoCommand true\r\n\t\t\t-c (\"ikHandle -e -eh \" + $item)\r\n\t\t\t-rp \"N\"\r\n\t\t\tenableIKHandlesItem;\r\n\r\n\t\tmenuItem -l \"Disable ikHandle\"\r\n\t\t\t-annotation \"Disable IK Handles: Select ikHandles\"\r\n\t\t\t-echoCommand true\r\n\t\t\t-c (\"ikHandle -e -dh \" + $item)\r\n\t\t\t-rp \"S\"\r\n\t\t\tdisableIKHandlesItem;\r\n"
		+ "\r\n\t\tmenuItem -l \"Enable Snap\"\r\n\t\t\t-annotation \"Enable IK Handle Snapping: Select ikHandles\"\r\n\t\t\t-echoCommand true\r\n\t\t\t-c (\"ikHandle -e -see \" + $item + \";\" +\r\n\t\t\t\t\"ikHandle -e -shf on \" + $item)\r\n\t\t\t-rp \"SE\"\r\n\t\t\tenableIKHandlesSnapItem;\r\n\r\n\t\tmenuItem -l \"Disable Snap\"\r\n\t\t\t-annotation \"Disable IK Handle Snapping: Select ikHandles\"\r\n\t\t\t-echoCommand true\r\n\t\t\t-c (\"ikHandle -e -shf off \" + $item)\r\n\t\t\t-rp \"SW\"\r\n\t\t\tdisableIKHandlesSnapItem;\r\n\r\n\t\t$maxRadialPos = 6;\r\n\t} else if ($isParticleObject) {\r\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\r\n\t\t\tswitch ($maskList[$i]) {\r\n\t\t\t\tcase \"particle\":\r\n\t\t\t\t\t$uiName = \"Particle\";\r\n\t\t\t\t\tbreak;\r\n\t\t\t\tdefault:\r\n\t\t\t\t\t$uiName = `interToUI $maskList[$i]`;\r\n\t\t\t}\r\n\t\t\tmenuItem -l $uiName\r\n\t\t\t\t-ecr false\r\n\t\t\t\t-c ( \"doMenuParticleComponentSelection(\\\"\" +\r\n\t\t\t\t\t$item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\r\n\t\t\t\t-rp $radialPosition[$i];\r\n\t\t}\r\n\t} else if ($isSpringObject) {\r\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\r\n\t\t\tswitch ($maskList[$i]) {\r\n\t\t\t\tcase \"springComponent\":\r\n\t\t\t\t\t$uiName = \"Spring\";\r\n"
		+ "\t\t\t\t\tbreak;\r\n\t\t\t\tdefault:\r\n\t\t\t\t\t$uiName = `interToUI $maskList[$i]`;\r\n\t\t\t}\r\n\t\t\tmenuItem -l $uiName\r\n\t\t\t\t-ecr false\r\n\t\t\t\t-c ( \"doMenuSpringComponentSelection(\\\"\" +\r\n\t\t\t\t\t$item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\r\n\t\t\t\t-rp $radialPosition[$i];\r\n\t\t}\r\n\t} else if ($isSubdivObject) {\r\n\t\tsubdDagMenuProc( 0, $item, $maskList );\r\n\t} else {\r\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\r\n\t\t\tif ($maskList[$i] == \"ikfkHandle\") {\r\n\t\t\t\tcontinue;\r\n\t\t\t}\r\n\r\n\t\t\t$uiName = `interToUI $maskList[$i]`;\r\n\t\t\tmenuItem -l $uiName\r\n\t\t\t\t-ecr false\r\n\t\t\t\t-c ( \"doMenuComponentSelection(\\\"\" +\r\n\t\t\t\t\t$item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\r\n\t\t\t\t-rp $radialPosition[$i];\r\n\t\t}\r\n\t}\r\n\r\n\tif ($hasComponents) {\r\n\t\tmenuItem -l \"Object Mode\"\r\n\t\t\t\t-ecr false\r\n\t\t\t\t-c ( \"hilite -unHilite \" + $item + \"; string $selection[] = `ls -sl`;\"\r\n\t\t\t\t\t+ \"changeSelectMode -object; select -r $selection;\" )\r\n\t\t\t\t-rp \"NE\";\r\n\t}\r\n\r\n\tif ($isIkFkHandleObject) {\r\n\t\tstring $handle = getControlledHandle($item);\r\n\r\n\t\tif ($maxRadialPos < 8) {\r\n\t\t\tmenuItem -label \"Set IK/FK Key\"\r\n"
		+ "\t\t\t\t-echoCommand true\r\n\t\t\t\t-annotation \"Set keys on selected joint chains and handles.\"\r\n\t\t\t\t-rp $radialPosition[7]\r\n\t\t\t\t-command (\"select -r \"+$item+\"; SetIKFKKeyframe\");\r\n\t\t}\r\n\r\n\t\tif ($maxRadialPos < 7) {\r\n\t\t\tmenuItem -label \"Move IK to FK\"\r\n\t\t\t\t-echoCommand true\r\n\t\t\t\t-annotation \"Select an IK handle or IK/FK connected object.\"\r\n\t\t\t\t-rp $radialPosition[6]\r\n\t\t\t\t-command (\"select -r \"+$item+\"; MoveIKtoFK\");\r\n\t\t}\r\n\r\n\t\tif ($maxRadialPos < 5) {\r\n\t\t\tmenuItem -l \"Disable ikHandle\"\r\n\t\t\t\t-annotation \"Disable IK Handle\"\r\n\t\t\t\t-echoCommand true\r\n\t\t\t\t-c (\"ikHandle -e -dh \" + $handle)\r\n\t\t\t\t-rp $radialPosition[5];\r\n\r\n\t\t\tmenuItem -l \"Enable ikHandle\"\r\n\t\t\t\t-annotation \"Enable IK Handle\"\r\n\t\t\t\t-echoCommand true\r\n\t\t\t\t-c (\"ikHandle -e -eh \" + $handle)\r\n\t\t\t\t-rp $radialPosition[4];\r\n\t\t}\r\n\t}\r\n\r\n\tsetParent -menu $parent;\r\n}\r\n\r\nglobal proc doMenuNURBComponentSelection(string $item, string $mask)\r\n{\r\n\tstring $selectCmd;\r\n\r\n\tif (`selectMode -q -object`) {\r\n\t\thilite $item;\r\n\t\tselectType -ocm -alc false;\r\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" true;\";\r\n"
		+ "\t} else {\r\n\t\tselectType -ocm -alc false;\r\n\t\t$selectCmd = \"selectType -\" + $mask + \" true;\";\r\n\t\tif (`selectMode -q -preset`) {\r\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -allComponents 1;\";\r\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -isoparm 2;\";\r\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -\" + $mask + \" 3;\";\r\n\t\t\tswitch ($mask) {\r\n\t\t\t\tcase \"editPoint\":\r\n\t\t\t\t\t$selectCmd = $selectCmd +\r\n\t\t\t\t\t\t\"toggle -state true -\" + $mask + \" \" + $item +\";\";\r\n\t\t\t\t\t$selectCmd = $selectCmd +\r\n\t\t\t\t\t\t\"toggle -state false -hull \" + $item + \";\";\r\n\t\t\t\t\t$selectCmd = $selectCmd +\r\n\t\t\t\t\t\t\"toggle -state false -controlVertex \" + $item + \";\";\r\n\t\t\t\t\tbreak;\r\n\t\t\t\tcase \"controlVertex\":\r\n\t\t\t\t\t$selectCmd = $selectCmd +\r\n\t\t\t\t\t\t\"toggle -state true -\" + $mask + \" \" + $item +\";\";\r\n\t\t\t\t\t$selectCmd = $selectCmd +\r\n\t\t\t\t\t\t\"toggle -state false -hull \" + $item + \";\";\r\n\t\t\t\t\t$selectCmd = $selectCmd +\r\n\t\t\t\t\t\t\"toggle -state false -editPoint \" + $item + \";\";\r\n\t\t\t\t\tbreak;\r\n\t\t\t\tcase \"hull\":\r\n\t\t\t\t\t$selectCmd = $selectCmd +\r\n\t\t\t\t\t\t\"toggle -state true -\" + $mask + \" \" + $item + \";\";\r\n"
		+ "\t\t\t\t\t$selectCmd = $selectCmd +\r\n\t\t\t\t\t\t\"toggle -state false -controlVertex \" + $item + \";\";\r\n\t\t\t\t\t$selectCmd = $selectCmd +\r\n\t\t\t\t\t\t\"toggle -state false -editPoint \" + $item + \";\";\r\n\t\t\t\t\tbreak;\r\n\t\t\t\tdefault:\r\n\t\t\t\t\t$selectCmd = $selectCmd +\r\n\t\t\t\t\t\t\"toggle -state false -hull \" + $item + \";\";\r\n\t\t\t\t\t$selectCmd = $selectCmd +\r\n\t\t\t\t\t\t\"toggle -state false -controlVertex \" + $item + \";\";\r\n\t\t\t\t\t$selectCmd = $selectCmd +\r\n\t\t\t\t\t\t\"toggle -state false -editPoint \" + $item + \";\";\r\n\t\t\t\t\tbreak;\r\n\t\t\t}\r\n\t\t} else {\r\n\t\t\t$selectCmd = $selectCmd + \"hilite \" + $item + \";\";\r\n\t\t}\r\n\t}\r\n\r\n\teval $selectCmd;\r\n}\r\n\r\nglobal proc doMenuLatticeComponentSelection(string $item, string $mask)\r\n{\r\n\tstring $selectCmd;\r\n\r\n\tif (`selectMode -q -object`) {\r\n\t\thilite $item;\r\n\t\tselectType -ocm -alc false;\r\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" true;\";\r\n\t} else {\r\n\t\tselectType -ocm -alc false;\r\n\t\t$selectCmd = \"selectType -\" + $mask + \" true;\";\r\n\t\tif (!`selectMode -q -preset`) {\r\n\t\t\t$selectCmd = $selectCmd + \"hilite \" + $item + \";\";\r\n\t\t} else {\r\n\t\t\t$selectCmd = $selectCmd + \"toggle -\" + $mask + \";\";\r\n"
		+ "\t\t}\r\n\t}\r\n\teval $selectCmd;\r\n}\r\n\r\n\r\nglobal proc doMenuParticleComponentSelection(string $item, string $mask)\r\n{\r\n\tstring $selectCmd;\r\n\r\n\tif (`selectMode -q -object`) {\r\n\t\thilite $item;\r\n\t\tselectType -ocm -alc false;\r\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" true;\";\r\n\t} else {\r\n\t\tselectType -ocm -alc false;\r\n\t\t$selectCmd = \"selectType -\" + $mask + \" true;\";\r\n\t\tif (`selectMode -q -preset`) {\r\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -allComponents 1;\";\r\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -particle 2;\";\r\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -\" + $mask + \" 3;\";\r\n\t\t\tswitch ($mask) {\r\n\t\t\t\tcase \"particle\":\r\n\t\t\t\t\t$selectCmd = $selectCmd +\r\n\t\t\t\t\t\t\"toggle -state true -\" + $mask + \" \" + $item +\";\";\r\n\t\t\t\t\tbreak;\r\n\t\t\t\tdefault:\r\n\t\t\t\t\t$selectCmd = $selectCmd +\r\n\t\t\t\t\t\t\"toggle -state false -particle \" + $item + \";\";\r\n\t\t\t\t\tbreak;\r\n\t\t\t}\r\n\t\t} else {\r\n\t\t\t$selectCmd = $selectCmd + \"hilite \" + $item + \";\";\r\n\t\t}\r\n\t}\r\n\r\n\teval $selectCmd;\r\n}\r\n\r\n\r\nglobal proc doMenuSpringComponentSelection(string $item, string $mask)\r\n"
		+ "{\r\n\tstring $selectCmd;\r\n\r\n\tif (`selectMode -q -object`) {\r\n\t\thilite $item;\r\n\t\tselectType -ocm -alc false;\r\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" true;\";\r\n\t} else {\r\n\t\tselectType -ocm -alc false;\r\n\t\t$selectCmd = \"selectType -\" + $mask + \" true;\";\r\n\t\tif (`selectMode -q -preset`) {\r\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -allComponents 1;\";\r\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -springComponent 2;\";\r\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -\" + $mask + \" 3;\";\r\n\t\t\tswitch ($mask) {\r\n\t\t\t\tcase \"springComponent\":\r\n\t\t\t\t\t$selectCmd = $selectCmd +\r\n\t\t\t\t\t\t\"toggle -state true -\" + $mask + \" \" + $item +\";\";\r\n\t\t\t\t\tbreak;\r\n\t\t\t\tdefault:\r\n\t\t\t\t\t$selectCmd = $selectCmd +\r\n\t\t\t\t\t\t\"toggle -state false -springComponent \" + $item + \";\";\r\n\t\t\t\t\tbreak;\r\n\t\t\t}\r\n\t\t} else {\r\n\t\t\t$selectCmd = $selectCmd + \"hilite \" + $item + \";\";\r\n\t\t}\r\n\t}\r\n\r\n\teval $selectCmd;\r\n}\r\n\r\n\r\nglobal proc doMenuComponentSelection(string $item, string $mask)\r\n{\r\n\tstring $selectCmd;\r\n\r\n\tif (`selectMode -q -object`) {\r\n\t\thilite $item;\r\n\t\tselectType -ocm -alc false;\r\n"
		+ "\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" true;\";\r\n\t} else {\r\n\t\tselectType -ocm -alc false;\r\n\t\t$selectCmd = \"selectType -\" + $mask + \" true;\";\r\n\t\tif (!`selectMode -q -preset`) {\r\n\t\t\t$selectCmd = $selectCmd + \"hilite \" + $item + \";\";\r\n\t\t}\r\n\t}\r\n\teval $selectCmd;\r\n}\r\n\r\nglobal proc undoMenuComponentSelection(string $item, string $mask)\r\n{\r\n\tstring $selectCmd;\r\n\r\n\tif (`selectMode -q -object`) {\r\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" false;\";\r\n\t} else {\r\n\t\t$selectCmd = \"selectType -\" + $mask + \" false;\";\r\n\t}\r\n\r\n\teval $selectCmd;\r\n}\r\n\r\nglobal proc toggleBoundingBoxDisplay ( string $parent )\r\n\r\n{\r\n\tstring $shapes[] = `listRelatives -shapes $parent`;\r\n\tstring $shape;\r\n\r\n\tfor ( $shape in $shapes ) {\r\n\t\tint $overrideOn = `getAttr ( $shape + \".overrideEnabled\")`;\r\n\t\tint $lodMode =    `getAttr ( $shape + \".overrideLevelOfDetail\")`;\r\n\t\tint $enabled =     $overrideOn && $lodMode == 1;\r\n\r\n\t\tif ( $enabled ) {\r\n\t\t\tsetAttr ( $shape + \".overrideLevelOfDetail\" ) 0;\r\n\t\t} else {\r\n\t\t\tsetAttr ( $shape + \".overrideEnabled\") 1;\r\n"
		+ "\t\t\tsetAttr ( $shape + \".overrideLevelOfDetail\") 1;\r\n\t\t}\r\n\r\n\t}\r\n}\r\n\r\nglobal proc createActionsMenuItems(string $parent, string $item)\r\n{\r\n\tpopupMenu -e -dai $parent;\r\n\tsetParent -menu $parent;\r\n\r\n\tmenuItem -l \"Template\" -c (\"toggle -template -state on \" + $item);\r\n\tmenuItem -l \"Untemplate\" -c (\"toggle -template -state off \" + $item);\r\n\tmenuItem -l \"Unparent\" -c (\"parent -w \" + $item);\r\n\tmenuItem -l \"Bounding Box\" -c (\"toggleBoundingBoxDisplay \" + $item);\r\n}\r\n\r\n\r\nglobal proc showSG(string $item)\r\n{\r\n\tstring $shader = \"\";\r\n\tstring $selection[] = `filterExpand -sm 34 -sm 38 -sm 72`;\r\n\r\n\tif( size( $selection ) > 0)\r\n\t{\r\n\t\tstring $nameBuffer[];\r\n\r\n\t\tint $numComps = size( $selection );\r\n\t\tint $comp;\r\n\t\tfor( $comp = 0; $comp < $numComps; $comp++)\r\n\t\t{\r\n\t\t\ttokenize $selection[ $comp] \".\" $nameBuffer;\r\n\r\n\t\t\tif ($nameBuffer[0] == $item) {\r\n\t\t\t\t$shader = `getComponentShader $selection[$comp]`;\r\n\r\n\t\t\t\tstring $shaderSelected[] = `ls -selection $shader`;\r\n\t\t\t\tif ( size( $shaderSelected ) == 0){\r\n\t\t\t\t\tselect -tgl $shader;\r\n\r\n"
		+ "\t\t\t\t}\r\n\t\t\t\tbreak;\r\n\t\t\t}\r\n\t\t}\r\n\t}\r\n\r\n\tif( size( $shader ) == 0 ) {\r\n\t\tstring $allNodes[] = (`listHistory -f true $item` );\r\n\t\tstring $node = \"\";\r\n\t\tfor ($node in $allNodes) {\r\n\t\t\tif(`nodeType $node` == \"shadingEngine\") {\r\n\r\n\t\t\t\t$shader = $node;\r\n\t\t\t\tbreak;\r\n\t\t\t}\r\n\t\t}\r\n\t}\r\n\r\n\tif( size( $shader ) > 0)\r\n\t{\r\n\t\tshowEditor $shader;\r\n\t}\r\n}\r\n\r\nglobal proc showBakeSets(string $item, string $type)\r\n{\r\n\tstring $possibleBakeSets[] = (`listHistory -f true $item` );\r\n\tstring $node = \"\";\r\n    int $bakeSetExists = false;\r\n\tfor ($node in $possibleBakeSets) {\r\n\t\tif(`nodeType $node` == $type)\r\n        {\r\n\t\t\tshowEditor $node;\r\n            $bakeSetExists = true;\r\n\t\t\tbreak;\r\n\t\t}\r\n\t}\r\n\r\n    if (!$bakeSetExists)\r\n    {\r\n        string $initialBakeSet = \"\";\r\n\t\tif($type == \"vertexBakeSet\")\r\n        {\r\n            $initialBakeSet = \"initialVertexBakeSet\";\r\n        }\r\n        else if($type == \"textureBakeSet\")\r\n        {\r\n            $initialBakeSet = \"initialTextureBakeSet\";\r\n\t\t}\r\n        else\r\n        {\r\n            error   -showLineNumber true\r\n"
		+ "                (\"Bake set type \"+$type + \" does not exist.\");\r\n            return;\r\n        }\r\n\r\n        if  ( size(`ls $initialBakeSet`) < 1)\r\n        {\r\n            createBakeSet($initialBakeSet, $type);\r\n        }\r\n\r\n\r\n        assignBakeSet($initialBakeSet, $item);\r\n\r\n        showBakeSetAE($initialBakeSet);\r\n    }\r\n}\r\n\r\nglobal proc createShaderMenuItems(string $parent, string $item)\r\n{\r\n\tpopupMenu -e -deleteAllItems $parent;\r\n\tsetParent -menu $parent;\r\n\r\n\tmenuItem -l \"Material Attributes...\" -c (\"showSG \" + $item);\r\n\tmenuItem -d true;\r\n\r\n\tbuildShaderMenus($item);\r\n}\r\n\r\nglobal proc refreshBakingAttributeMenu (string $parent, string $item)\r\n{\r\n    setParent -menu $parent;\r\n\r\n    int $suitable = bakeSetTypeSuitableForItem(\"textureBakeSet\", $item);\r\n    menuItem -edit -enable $suitable textureBakingAttributeItem;\r\n    $suitable = bakeSetTypeSuitableForItem(\"vertexBakeSet\", $item);\r\n    menuItem -edit -enable $suitable vertexBakingAttributeItem;\r\n}\r\n\r\nproc createBakingAttributeMenu(string $parent, string $item)\r\n"
		+ "{\r\n    setParent -menu $parent;\r\n\r\n\tmenuItem -l \"Edit Attributes...\"\r\n        -subMenu true\r\n        -tearOff true\r\n        -postMenuCommand (\"refreshBakingAttributeMenu \\\"\"\r\n                            +$parent+\"|editAttributeItem\\\" \\\"\"\r\n                            +$item+\"\\\"\")\r\n        editAttributeItem;\r\n\r\n\r\n        menuItem -l \"texture\"\r\n            -c (\"showBakeSets \\\"\"+$item+\"\\\" \\\"textureBakeSet\\\"\")\r\n            textureBakingAttributeItem;\r\n        menuItem -l \"vertex\"\r\n            -c (\"showBakeSets \\\"\"+$item+\"\\\" \\\"vertexBakeSet\\\"\")\r\n            vertexBakingAttributeItem;\r\n\r\n    setParent -menu ..;\r\n}\r\n\r\nglobal proc createBakingMenuItems(string $parent, string $item)\r\n{\r\n\tpopupMenu -e -deleteAllItems $parent;\r\n\tsetParent -menu $parent;\r\n\r\n    createBakingAttributeMenu($parent, $item);\r\n\tmenuItem -d true;\r\n\r\n\tbuildBakingMenus($item);\r\n}\r\n\r\n\r\nglobal proc createHistoryMenuItems(string $parent, string $item)\r\n{\r\n\r\n\tpopupMenu -e -dai $parent;\r\n\tsetParent -menu $parent;\r\n\r\n\thistoryPopupFill( $item, false, 1 );\r\n"
		+ "}\r\n\r\nglobal proc createFutureMenuItems(string $parent, string $item)\r\n{\r\n\tpopupMenu -e -dai $parent;\r\n\tsetParent -menu $parent;\r\n\r\n\thistoryPopupFill( $item, true, 1 );\r\n}\r\n\r\nglobal proc string objectHandlesUvSets(string $item){\r\n\tstring $maskList[];\r\n\tstring $shape = $item;\r\n\tint $i;\r\n\tstring $object[] = `listRelatives -path -s $item`;\r\n\tint $gotVisible = 0;\r\n\r\n\tfor ($i = 0; $i < size($object); ++$i) {\r\n\t\tif( (0 == getAttr($object[$i] + \".io\")) &&\r\n\t\t\tgetAttr($object[$i] + \".v\") ) {\r\n\t\t\t$shape = $object[$i];\r\n\t\t\t$gotVisible = 1;\r\n\t\t\tbreak;\r\n\t\t}\r\n\t}\r\n\r\n\tif( !$gotVisible ) {\r\n\t\tfor ($i = 0; $i < size($object); ++$i)\r\n\t\t{\r\n\t\t\tif (getAttr($object[$i] + \".io\") == 0)\r\n\t\t\t{\r\n\t\t\t\t$shape = $object[$i];\r\n\t\t\t\tbreak;\r\n\t\t\t}\r\n\t\t}\r\n\t}\r\n\tstring $nt = `nodeType $shape`;\r\n\r\n\tif ($nt == \"mesh\")\r\n\t\treturn $shape;\r\n\treturn \"\";\r\n}\r\n\r\nglobal proc createUVsetMenuItems(string $parent, string $item,\r\n\t\t\t\t\t\t\t\t string $shape)\r\n{\r\n\tpopupMenu -e -dai $parent;\r\n\tsetParent -menu $parent;\r\n\r\n\tstring $cmd = \"polyUVSet -currentUVSet -uvSet \";\r\n"
		+ "\tstring $curSet[] = `polyUVSet -q -currentUVSet $shape`;\r\n\tstring $names[] = `polyUVSet -q -auv $shape`;\r\n\r\n\tstring $allProjects[] = `polyUVSet -pr -q $shape`;\r\n\tstring $setClearCmd = \"\";\r\n\tif (size($allProjects))\r\n\t{\r\n\t\t$setClearCmd = \"select -d \";\r\n\t\tfor ($p=0; $p<size($allProjects); $p++)\r\n\t\t\t$setClearCmd += (\" \" + $allProjects[$p]);\r\n\t\t$setClearCmd += \";\";\r\n\t}\r\n\r\n\tint $numNames = size($names);\r\n\r\n\t// Add in a menu to do uv-linking\r\n\tif ($numNames > 0)\r\n\t{\r\n\t\tstring $ann = `getRunTimeCommandAnnotation \"UVCentricUVLinkingEditor\"`;\r\n\t\tstring $cmd = \"UVCentricUVLinkingEditor; \" + \"select -r \" + $item;\r\n\t\tmenuItem -l \"UV Linking...\"\r\n\t\t\t-c $cmd\r\n\t\t\t-annotation $ann;\r\n\t\tmenuItem -divider true;\r\n\t}\r\n\r\n\tfor ($i=0; $i<$numNames; $i++)\r\n\t{\r\n\t\tstring $uvEditname = (\"\\\"\" + $names[$i] + \"\\\"\");\r\n\t\tstring $uvname = $names[$i];\r\n\t\tstring $setCurCmd = $cmd + $uvEditname + \" \" + $shape + \";\";\r\n\r\n\t\t// Find any projections associated with the uvset\r\n\t\tstring $projs[];\r\n\t\t$projs = `polyUVSet -pr -uvs $uvname -q $shape`;\r\n\t\tstring $projCmd;\r\n"
		+ "\r\n\t\t// Add a divider between items\r\n\t\tif ($i > 0)\r\n\t\t\tmenuItem -divider true;\r\n\r\n\t\tif ($uvname == $curSet[0])\r\n\t\t{\r\n\t\t\tmenuItem -l ($uvname) -c $setClearCmd -checkBox true;\r\n\t\t\tfor ($j=0; $j<size($projs); $j++)\r\n\t\t\t{\r\n\t\t\t\t$projCmd = ($setClearCmd + \"select -add \"+ $projs[$j] + \";setToolTo ShowManips;\");\r\n\t\t\t\tmenuItem -l $projs[$j] -c $projCmd;\r\n\t\t\t\tif ($j >= 5)\r\n\t\t\t\t\tbreak;\r\n\t\t\t}\r\n\t\t}\r\n\t\telse\r\n\t\t{\r\n\t\t\tmenuItem -l ($uvname) -c ($setClearCmd + $setCurCmd) -checkBox false;\r\n\t\t\tfor ($j=0; $j<size($projs); $j++)\r\n\t\t\t{\r\n\t\t\t\t$projCmd = ($setCurCmd + $setClearCmd + \"select -add \"+ $projs[$j] + \";setToolTo ShowManips;\");\r\n\t\t\t\tmenuItem -l $projs[$j] -c $projCmd;\r\n\t\t\t\tif ($j >= 5)\r\n\t\t\t\t\tbreak;\r\n\t\t\t}\r\n\t\t}\r\n\t}\r\n}\r\n\r\nglobal proc dagMenuProc(string $parent, string $object)\r\n{\r\n\tstring $mode = \"All\";\r\n\r\n\tif (`optionVar -exists currentMenuBarTab`) {\r\n\t\t$mode = `optionVar -q currentMenuBarTab`;\r\n\t} else {\r\n\t\toptionVar -sv currentMenuBarTab $mode;\r\n\t}\r\n\r\n\tif (`popupMenu -e -exists $parent`) {\r\n\t\tsetParent -m $parent;\r\n\t\tstring $shortName = `substitute \".*|\" $object \"\"`;\r\n"
		+ "\t\tmenuItem -l ($shortName + \"...\") -c (\"showEditor \"+$object);\r\n\t\tmenuItem -divider true;\r\n\t\tmenuItem -divider true;\r\n\t\tcreateSelectMenuItems($parent, $object);\r\n\r\n\t\tmenuItem -d true;\r\n\t\tmenuItem -l \"Select\" -c (\"select -r \" + $object);\r\n    \tmenuItem -d true;\r\n\t\tzooObjMenu $parent $object;\r\n\r\n\t\toptionalDagMenuProc( $parent, $object );\r\n\t\tstring $menu = `menuItem -subMenu true -aob true -l \"Inputs\"`;\r\n\t\tmenu -e\r\n\t\t\t-pmc ( \"createHistoryMenuItems \\\"\"+$menu+\"\\\" \"+$object ) $menu;\r\n\t\tsetParent -m $parent;\r\n\r\n\t\t$menu = `menuItem -subMenu true -aob true -l \"Outputs\"`;\r\n\t\tmenu -e -pmc ( \"createFutureMenuItems \\\"\"+$menu+\"\\\" \"+$object ) $menu;\r\n\t\tsetParent -m $parent;\r\n\r\n\t\tstring $paintAttr = `artBuildPaintMenu $object`;\r\n\t\tif ($paintAttr != \"\")\r\n\t\t{\r\n\t\t\tstring $parent \t  = `menuItem -subMenu true -aob true -l \"Paint\"`;\r\n\t\t\tartAttrCreateMenuItems( $parent, $paintAttr );\r\n\t\t}\r\n\t\tsetParent -m $parent;\r\n\r\n\t    $menu = `menuItem -subMenu true -l \"Actions\"`;\r\n\t\tmenu -e -pmc ( \"createActionsMenuItems \\\"\"+$menu+\"\\\" \"+$object ) $menu;\r\n"
		+ "\t\tsetParent -m $parent;\r\n\r\n\t\tstring $shape = objectHandlesUvSets( $object );\r\n\t\tif ($shape != \"\")\r\n\t\t{\r\n\t\t\t$menu = `menuItem -subMenu true -l \"UV Sets\"`;\r\n\t\t\tmenu -e\r\n\t\t\t\t-pmc ( \"createUVsetMenuItems \\\"\"+$menu+\"\\\" \" +$object + \" \"+\r\n\t\t\t\t\t  $shape )\r\n\t\t\t\t$menu;\r\n\t\t\tsetParent -m $parent;\r\n\t\t}\r\n\r\n    \tmenuItem -d true;\r\n\r\n \t\t$menu = `menuItem -subMenu true -l \"Materials\"`;\r\n \t\tmenu -e\r\n\t\t\t-pmc ( \"createShaderMenuItems \\\"\"+$menu+\"\\\" \"+$object )\r\n\t\t\t$menu;\r\n \t\tsetParent -m $parent;\r\n\r\n\t\tint $mentalIsLoaded = 0;\r\n\t\tstring $renderer;\r\n\t    for ($renderer in `renderer -query -namesOfAvailableRenderers`) {\r\n\t\t\tif( $renderer == \"mentalRay\" ) {\r\n\t\t\t\t$mentalIsLoaded = 1;\r\n\t\t\t\tbreak;\r\n\t\t\t}\r\n\t\t}\r\n\r\n\t\tif ($mentalIsLoaded) {\r\n \t\t\t$menu = `menuItem -subMenu true -l \"Baking\"`;\r\n \t\t\tmenu -e\r\n\t\t\t\t-pmc ( \"createBakingMenuItems \\\"\"+$menu+\"\\\" \"+$object )\r\n\t\t\t\t$menu;\r\n \t\t\tsetParent -m $parent;\r\n\t\t}\r\n\r\n\t\tif ($mode == \"Dynamics\") {\r\n\t\t\tmenuItem -d true;\r\n\t\t\tmenuItem -l \"Connect Field\" -c (\"connectDynamic -f \" + $object);\r\n\t\t\tmenuItem -l \"Connect Emitter\" -c (\"connectDynamic -em \" + $object);\r\n"
		+ "\t\t\tmenuItem -l \"Connect Collision\" -c (\"connectDynamic -c \" + $object);\r\n\t\t}\r\n\r\n\t\tsetParent -m $parent;\r\n\r\n\t} else {\r\n\t\twarning(\"Menu \" + $parent + \" doesn't exist.\");\r\n\t}\r\n}");
	setAttr ".st" 2;
createNode script -n "zooAlign";
	setAttr ".b" -type "string" (
		"//zooAlign by Hamish McKenzie\r\n//Copywright Hamish McKenzie 2005\r\n\r\n//this script is a collection of commonly used functions\r\n\r\nglobal proc string[] zooGetFlagArguments( string $flagStr, string $flagInfoToReturn ) {\r\n\tstring $manipStr = $flagStr;\r\n\r\n\t//replace any negative number signs with ? so we can tokenize the option string into individual flags\r\n\twhile( `match \"-[0-9]+\" $manipStr` != \"\" ) {\r\n\t\tstring $nextNegNum = `match \"-[0-9]+\" $manipStr`;\r\n\t\tstring $encodedNum = `substitute \"-\" $nextNegNum \"~\"`;\r\n\r\n\t\t$manipStr = `substitute $nextNegNum $manipStr $encodedNum`;\r\n\t\t}\r\n\r\n\t//now tokenize the encoded flag string\r\n\tstring $flagTokens[];\r\n\tint $toks = `tokenize $manipStr \"-\" $flagTokens`;\r\n\tfor( $n=0; $n<$toks; $n++ ) {\r\n\t\tstring $buffer[];\r\n\t\tint $num = `tokenize $flagTokens[$n] \" \" $buffer`;\r\n\t\tif( $buffer[0] != $flagInfoToReturn ) continue;\r\n\r\n\t\tstring $args[];\r\n\t\tfor( $i=1; $i<$num; $i++ ) $args[( `size $args` )] = `substituteAllString $buffer[$i] \"~\" \"-\"`;\r\n\t\treturn $args;\r\n\t\t}\r\n\r\n\treturn {};\r\n\t}\r\n\r\n\r\n/*\r\n"
		+ "returns a list of all flags contained in the given string\r\n--------\r\n\r\nexample:\r\nzooListFlags \"-flag optA optB optC -length -3.6 -height -8.2 -twistAxis x\" flag;\r\nwill return the array:\r\n{ \"flag\", \"length\", \"height\", \"twistAxis\" }\r\n*/\r\nglobal proc string[] zooListFlags( string $flagStr ) {\r\n\tstring $manipStr = $flagStr;\r\n\tstring $flagTokens[];\r\n\tstring $flagNames[];\r\n\tint $n=0;  //overflow control\r\n\r\n\t//replace any negative number signs with ? so we can tokenize the option string into individual flags\r\n\twhile( `match \"-[0-9]+\" $manipStr` != \"\" && $n<200 ) {\r\n\t\tstring $nextNegNum = `match \"-[0-9]+\" $manipStr`;\r\n\t\tstring $encodedNum = `substitute \"-\" $nextNegNum \"?\"`;\r\n\r\n\t\t$manipStr = `substitute $nextNegNum $manipStr $encodedNum`;\r\n\t\t$n++;\r\n\t\t}\r\n\r\n\t//now tokenize the encoded flag string\r\n\ttokenize $manipStr \"-\" $flagTokens;\r\n\tfor( $n=0; $n<`size $flagTokens`; $n++ ) {\r\n\t\tstring $buffer[];\r\n\t\ttokenize $flagTokens[$n] \" \" $buffer;\r\n\t\t$flagNames[( `size $flagNames` )] = $buffer[0];\r\n\t\t}\r\n\r\n\treturn $flagNames;\r\n\t}\r\n"
		+ "\r\n\r\n//this proc is used to validate flag strings - it simply returns an int as to whether the\r\n//flag string is valid or not\r\nglobal proc string[] zooValidateFlagStr( string $optionStr, string $validFlagInfos[] ) {\r\n\tstring $validFlags[];\r\n\tstring $validTypes[];\r\n\tstring $flags[] = `zooListFlags $optionStr`;\r\n\tstring $errorFlags[];\r\n\tint $valid = 1;\r\n\tint $valids[];\r\n\tint $num = `size $validFlagInfos`;\r\n\r\n\tfor( $n=0; $n<$num; $n++ ) {\r\n\t\tstring $buffer[];\r\n\t\ttokenize $validFlagInfos[$n] \",\" $buffer;\r\n\t\t$validFlags[$n] = $buffer[0];\r\n\t\t$validTypes[$n] = $buffer[1];\r\n\t\t}\r\n\r\n\tfor( $n=0; $n<`size $flags`; $n++ ) {\r\n\t\t$valids[$n] = 0;\r\n\t\tfor( $m=0; $m<`size $validFlags`; $m++ ) {\r\n\t\t\tstring $flagValues[] = `zooGetFlagArguments $optionStr $validFlags[$m]`;\r\n\t\t\tif( $flags[$n] == $validFlags[$m] && `zooValidateFlagInfo $validTypes[$m] $flagValues` ) $valids[$n] = 1;\r\n\t\t\t}\r\n\t\t}\r\n\r\n\tfor( $n=0; $n<`size $valids`; $n++ ) if( !$valids[$n] ) $errorFlags[( `size $errorFlags` )] = $flags[$n];\r\n\treturn $errorFlags;\r\n\t}\r\n\r\n\r\n//given a flag type, and the flag values array (as returned by the zooGetFlagArguments command)\r\n"
		+ "//returns whether all the values are valid.  flag types are:\r\n//\r\n// float - basically any type of number\r\n// int - basically any integer\r\n// bool - a boolean value.  ie: on, off, 0, 1, true, false in lower case\r\n// string - at this stage absolutely anything will be validated as a string type\r\n// obj - an actual scene node - the flag values must be valid nodes in the scene\r\n// axis - a single axis string.  ie: x, y or z or their upper case equivalents\r\nglobal proc int zooValidateFlagInfo( string $flagType, string $flagValue[] ) {\r\n\tint $valid = 1;\r\n\tint $num = `size $flagValue`;\r\n\tint $valids[];\r\n\r\n\tswitch( $flagType ) {\r\n\t\tcase \"float\":\r\n\t\tfor( $n=0; $n<$num; $n++ ) if( `match \"[-0-9.]+\" $flagValue[$n]` == $flagValue[$n] ) $valids[$n] = 1;\r\n\t\tbreak;\r\n\r\n\t\tcase \"int\":\r\n\t\tfor( $n=0; $n<$num; $n++ ) if( `match \"[-0-9]+\" $flagValue[$n]` == $flagValue[$n] ) $valids[$n] = 1;\r\n\t\tbreak;\r\n\r\n\t\tcase \"bool\":\r\n\t\tfor( $n=0; $n<$num; $n++ ) if( `match \"(true){0,}(false){0,}(on){0,}(off){0,}[01]{0,}\" $flagValue[$n]` == $flagValue[$n] ) $valids[$n] = 1;\r\n"
		+ "\t\tbreak;\r\n\r\n\t\tcase \"string\":\r\n\t\tfor( $n=0; $n<$num; $n++ ) $valids[$n] = 1;\r\n\t\tbreak;\r\n\r\n\t\tcase \"obj\":\r\n\t\tfor( $n=0; $n<$num; $n++ ) if( `objExists $flagValue[$n]` ) $valids[$n] = 1;\r\n\t\tbreak;\r\n\r\n\t\tcase \"axis\":\r\n\t\tfor( $n=0; $n<$num; $n++ ) if( `match \"[xyzXYZ]{1}\" $flagValue[$n]` == $flagValue[$n] ) $valids[$n] = 1;\r\n\t\tbreak;\r\n\t\t}\r\n\tfor( $n=0; $n<$num; $n++ ) if( !$valids[$n] ) $valid = 0;\r\n\r\n\treturn $valid;\r\n\t}\r\n\r\n\r\n//zoo.end\r\n/*\r\nsuper simple, returns the first entry in an array.\r\n\r\nthis is useful for commands that only return a single string, but return an array\r\nexample: string $constraint = zooUtilsReturnElement( 0,`parentConstraint -mo $obj2 $obj1` );\r\nexample: string $parent = zooUtilsReturnElement( 0,`listRelatives -p $obj2` );\r\n*/\r\nglobal proc string zooUtilsReturnElement( int $entry, string $array[] ) {\r\n\tif( $entry<0 ) $entry = `size $array` + $entry;\r\n\treturn $array[$entry];\r\n\t}\r\n\r\n\r\nglobal proc string zooArrayToString( string $array[] ) {\r\n\tstring $arrayStr = `zooArrayToStr $array \" \"`;\r\n\treturn $arrayStr;\r\n"
		+ "\t}\r\n\r\n\r\nglobal proc string zooArrayToStr( string $array[], string $separator ) {\r\n\tstring $arrayStr = \"\";\r\n\tint $num = `size $array`;\r\n\tif( $num<2 ) return $array[0];\r\n\tfor( $n=0; $n<$num-1; $n++ ) $arrayStr += $array[$n] + $separator;\r\n\t$arrayStr += $array[( $num-1 )];\r\n\treturn $arrayStr;\r\n\t}\r\n\r\n\r\n//removes each character listed in the charsToRemove variable\r\nglobal proc string zooRemoveChars( string $str, string $charsToRemove ) {\r\n\tstring $validate = $str;\r\n\tint $num = `size $charsToRemove`;\r\n\r\n\tif( $charsToRemove == \"\" ) $charsToRemove = \"`~!@#$%^&*()-+=[]\\\\{}|;':\\\"/?><.,\";\r\n\tfor( $n=1; $n<=$num; $n++ ) $validate = `substituteAllString $validate (substring($charsToRemove,$n,$n)) \"\"`;\r\n\treturn $validate;\r\n\t}\r\n\r\n\r\n//removes duplicate entries from a string array\r\nglobal proc string[] zooUtilsRemoveDupeArrayItems_string( string $array[] ) {\r\n\tstring $returnArray[];\r\n\tstring $prevVal = $array[0];\r\n\r\n\t$returnArray[0] = $array[0];\r\n\tfor( $n = 1; $n < `size $array`; $n++ ) {\r\n\t\tif( $prevVal != $array[$n] ) $returnArray[( `size $returnArray` )] = $array[$n];\r\n"
		+ "\t\t$prevVal = $array[$n];\r\n\t\t}\r\n\r\n\treturn $returnArray;\r\n\t}\r\n\r\n\r\n//removes duplicate entries from a float array\r\nglobal proc float[] zooUtilsRemoveDupeArrayItems_float( float $array[] ) {\r\n\tfloat $returnArray[];\r\n\tfloat $prevVal = $array[0];\r\n\r\n\t$returnArray[0] = $array[0];\r\n\tfor( $n = 1; $n < `size $array`; $n++ ) {\r\n\t\tif( $prevVal != $array[$n] ) $returnArray[( `size $returnArray` )] = $array[$n];\r\n\t\t$prevVal = $array[$n];\r\n\t\t}\r\n\r\n\treturn $returnArray;\r\n\t}\r\n\r\n\r\n//adds array2 to the end of array1\r\nglobal proc string[] zooUtilsAddArray( string $array1[], string $array2[] ) {\r\n\tfor( $entry in $array2 ) $array1[( `size $array1` )] = $entry;\r\n\treturn $array1;\r\n\t}\r\n\r\n\r\n//subtracts array 2 from array 1\r\nglobal proc string[] zooUtilsSubtractArray( string $array1[], string $array2[] ) {\r\n\tstring $returnArray[];\r\n\tfor( $entry1 in $array1 ){\r\n\t\tint $isInArray = 0;\r\n\t\tfor( $entry2 in $array2 ){\r\n\t\t\tif( $entry1 == $entry2 ) $isInArray = 1;\r\n\t\t\t}\r\n\t\tif( !$isInArray ) $returnArray[( `size $returnArray` )] = $entry1;\r\n\t\t}\r\n\treturn $returnArray;\r\n"
		+ "\t}\r\n\r\n\r\n//reverses the order of an array\r\nglobal proc string[] zooUtilsReverseArray( string $array[] ){\r\n\tstring $reversedArray[];\r\n\tint $arraySize = `size $array`;\r\n\r\n\tfor( $n = 0; $n < $arraySize; $n++ ) $reversedArray[( $arraySize - 1 - $n )] = $array[$n];\r\n\treturn $reversedArray;\r\n\t}\r\n\r\n\r\n//takes an array, and a max and min value and returns a cropped array - ie all values in the returned array lie inclusively between the max and min values\r\nglobal proc float[] zooUtilsCropArray( float $array[], float $min, float $max ) {\r\n\tfloat $cropped[];\r\n\tfor( $entry in $array ) if( $entry >= $min && $entry <= $max ) $cropped[( `size $cropped` )] = $entry;\r\n\treturn $cropped;\r\n\t}\r\n\r\n\r\nglobal proc int[] zooRemIndex_int( int $array[], int $index ) {\r\n\tint $newArray[];\r\n\tint $hasBeenRemoved = 0;\r\n\tfor( $n=0; $n<`size $array`; $n++ ) {\r\n\t\tif( $n == $index ) continue;\r\n\t\t$newArray[( `size $newArray` )] = $array[$n];\r\n\t\t}\r\n\treturn $newArray;\r\n\t}\r\n\r\n\r\n/*\r\ntakes an array of entries (as in array indicies), and shifts them in the direction specified.\r\n"
		+ "------------\r\n\r\nexample: zooUtilsReorderArray { \"a,\"b\",\"c\",\"d\",\"e\" } {3,4} up\r\nproduces the resulting array:  { a,c,d,b,e }\r\n\r\nexample: zooUtilsReorderArray { \"a,\"b\",\"c\",\"d\",\"e\" } {1,2,5} up\r\nproduces the resulting array:  { b,c,e,d,a }\r\n*/\r\nglobal proc string[] zooUtilsArrayReorder( string $array[], int $entries[], string $dir ) {\r\n\tstring $newArray[] = $array;\r\n\tint $gaps[];\r\n\tint $be;\r\n\r\n\t$entries = `sort $entries`;\r\n\t$gaps[0] = $entries[0];\r\n\tfor( $n = 0; $n < `size $entries`-1; $n++ ) if( $entries[$n]+1 != $entries[( $n+1 )] ) {\r\n\t\t$gaps[( `size $gaps` )] = $entries[$n];\r\n\t\t$gaps[( `size $gaps` )] = $entries[( $n+1 )];\r\n\t\t}\r\n\t$gaps[( `size $gaps` )] = $entries[( `size $entries`-1 )];\r\n\r\n\tfor( $n = 0; $n < `size $gaps`; $n+=2 ) if( $dir == \"up\" ) $newArray = `zooUtilsArrayShiftUp $newArray $gaps[$n] $gaps[( $n+1 )]`;\r\n\tfor( $n = 0; $n < `size $gaps`; $n+=2 ) if( $dir == \"down\" ) $newArray = `zooUtilsArrayShiftDown $newArray $gaps[$n] $gaps[( $n+1 )]`;\r\n\r\n\treturn $newArray;\r\n\t}\r\n\r\n\r\n//shifts entries inclusive from the start index, to the end index up (ie towards zero) in an array\r\n"
		+ "global proc string[] zooUtilsArrayShiftUp( string $array[], int $startIndex, int $endIndex ) {\r\n\tstring $newArray[];\r\n\tint $displaced = $startIndex-1;\r\n\tint $num = ( $endIndex-$startIndex )+1;\r\n\r\n\tif( $startIndex == 0 ) return $array;\r\n\r\n\t//copy the original array to the newArray variable\r\n\tfor( $n = 0; $n < `size $array`; $n++ ) $newArray[$n] = $array[$n];\r\n\r\n\tint $i = $startIndex-1;\r\n\tfor( $n = 0; $n < $num; $n++, $i++) $newArray[$i] = $array[( $i+1 )];\r\n\r\n\t$newArray[$endIndex] = $array[$displaced];\r\n\treturn $newArray;\r\n\t}\r\n\r\n\r\n//shifts entries inclusive from the start index, to the end index down (ie away from zero) in an array\r\nglobal proc string[] zooUtilsArrayShiftDown( string $array[], int $startIndex, int $endIndex ) {\r\n\tstring $newArray[];\r\n\tint $displaced = $endIndex+1;\r\n\tint $num = ( $endIndex-$startIndex )+1;\r\n\r\n\tif( $endIndex >= `size $array`-1 ) return $array;\r\n\r\n\t//copy the original array to the newArray variable\r\n\tfor( $n = 0; $n < `size $array`; $n++ ) $newArray[$n] = $array[$n];\r\n\r\n\tint $i = $startIndex+$num;\r\n"
		+ "\tfor( $n = 0; $n < $num; $i--, $n++ ) $newArray[$i] = $array[( $i-1 )];\r\n\r\n\t$newArray[$startIndex] = $array[$displaced];\r\n\treturn $newArray;\r\n\t}\r\n\r\n\r\n//takes a full path name for an object, and returns an array containing the path, and then the object name\r\nglobal proc string[] zooUtilsObjFromPath( string $objPath ) {\r\n\tstring $path = \"\";\r\n\tstring $obj = \"\";\r\n\tstring $buffer[];\r\n\tint $numToks = `tokenize $objPath \"|\" $buffer`;\r\n\r\n\tfor( $n = 0; $n < $numToks-1; $n++ ) $path = $path + $buffer[$n] + \"|\";\r\n\t$obj = $buffer[( $numToks-1 )];\r\n\r\n\treturn { $path, $obj };\r\n\t}\r\n\r\n\r\n//simply returns the object name of an attribute path.  ie, `zooBodgeKReturnObjName \"pSphere1.translateX\"`;  returns pSphere1\r\nglobal proc string zooUtilsReturnObjName( string $attributePath ) {\r\n\tstring $buffer[];\r\n\ttokenize $attributePath \".\" $buffer;\r\n\treturn $buffer[0];\r\n\t}\r\n\r\n\r\n//returns a list of immediate children directories under the given directory\r\nglobal proc string[] zooUtilsGetFiles( string $path, string $filespec ){\r\n\tstring $files[] = `getFileList -folder ( $path +\"/\" ) -filespec $filespec`;\r\n"
		+ "\tstring $dirs[];\r\n\r\n\tfor( $file in $files ) if( `filetest -f ( $path +\"/\"+ $file )` ) $dirs[( `size $dirs` )] = $file;\r\n\r\n\treturn $dirs;\r\n\t}\r\n\r\n\r\n//returns a list of immediate children directories under the given directory\r\nglobal proc string[] zooUtilsGetSubDirs( string $path ){\r\n\tstring $files[] = `getFileList -folder ( $path +\"/\" )`;\r\n\tstring $dirs[];\r\n\r\n\tfor( $file in $files ) if( `filetest -d ( $path +\"/\"+ $file )` ) $dirs[( `size $dirs` )] = $file;\r\n\r\n\treturn $dirs;\r\n\t}\r\n\r\n\r\n//returns ALL sub directories under a given directory\r\nglobal proc string[] zooUtilsGetRecursedSubDirs( string $path ) {\r\n\tstring $pathsFound[];\r\n\r\n\t$pathsFound[0] = $path;\r\n\tfor( $n=0; $n<`size $pathsFound`; $n++ ) {\r\n\t\tstring $temp[];\r\n\r\n\t\t$searchPath = $pathsFound[$n];\r\n\t\t$temp = `zooUtilsGetSubDirs $searchPath`;\r\n\r\n\t\tfor( $i=0; $i<`size $temp`; $i++ ) $temp[$i] = $searchPath + $temp[$i] + \"/\";\r\n\t\tif( `size $temp` ) $pathsFound = `zooUtilsAddArray $pathsFound $temp`;\r\n\r\n\t\t//just a safeguard\r\n\t\tif( $n >10000 ) {\r\n\t\t\twarning \"has searched 10000 directories, aborting...\";\r\n"
		+ "\t\t\tbreak;\r\n\t\t\t}\r\n\t\t}\r\n\r\n\treturn $pathsFound;\r\n\t}\r\n\r\n\r\n/*given a string, and a character to remove from that string, this proc returns the string with the characters removed\r\n------------\r\n\r\nexample: zooUtilsReplaceString \"10/02/04\" \"/\" \"\";\r\nreturns the string \"100204\"\r\nexample: zooUtilsReplaceString \"10Feb04\" \"[A-Za-z]+\" \"!\";\r\nreturns the string \"10!04\"\r\n*/\r\nglobal proc string zooUtilsReplaceString( string $string, string $searchStr, string $replaceStr ){\r\n\tstring $messageString = $string;\r\n\tstring $temp = $messageString;\r\n\tint $stillChanging = 1;\r\n\r\n\twhile( $stillChanging ) {\r\n\t\t$temp = `substitute $searchStr $messageString $replaceStr`;\r\n\t\tif( $messageString == $temp ) $stillChanging = 0;\r\n\t\t$messageString = $temp;\r\n\t\t}\r\n\r\n\treturn $messageString;\r\n\t}\r\n\r\n\r\n/*returns a path and a filename from a filepath\r\n------------\r\n\r\nexample: zooUtilsSplitFilename \"c:/temp/wowzers.txt\"\r\nreturns \"c:/temp/\" \"wowzers.txt\"\r\n*/\r\nglobal proc string[] zooUtilsSplitFilename( string $filepath ) {\r\n\tstring $path = \"\";\r\n\tstring $filename = \"\";\r\n"
		+ "\tstring $buffer[];\r\n\r\n\ttokenize $filepath \"/\" $buffer;\r\n\tfor( $n=0; $n<`size $buffer`-1; $n++ ) $path += $buffer[$n] + \"/\";\r\n\t$filename = $buffer[( `size $buffer`-1 )];\r\n\r\n\treturn { $path, $filename };\r\n\t}\r\n\r\n\r\n/*returns a string array containing the lines of the given filename\r\n------------\r\n\r\nif the file doesn't exist, the proc returns an empty array\r\nexample: zooULoadFile \"c:/temp/autoBak.ma\";\r\n*/\r\nglobal proc string[] zooULoadFile( string $filename ){\r\n\tif( !`filetest -r $filename` ) return {};\r\n\tstring $fileContents[];\r\n\tstring $word = \"\";\r\n\tint $fileId = `fopen $filename \"r\"`;\r\n\r\n\t$word = `fgetline $fileId`;\r\n\t$fileContents[0] = $word;\r\n\r\n\twhile( `size $word` > 0 ){\r\n\t\t$word = `fgetline $fileId`;\r\n\t\tif( size($word) ) $fileContents[( `size $fileContents` )] = $word;\r\n\t\t}\r\n\r\n\tfclose $fileId;\r\n\treturn $fileContents;\r\n\t}\r\n\r\n\r\n//------\r\n//similar to zooULoadFile, except takes an option string\r\n//\r\n//flags to use with this command:\r\n// -file [str]\t\t\tthe filename, with path, to read\r\n// -strip [bool]\t\tif true, will strip the newline character from each line\r\n"
		+ "//\r\n//NOTE; this proc requires the zooFlags script\r\n//------\r\nglobal proc string[] zooReadFile( string $file, string $optionStr ){\r\n\t//------\r\n\t//parse optionStr to determine which flags are enabled for this proc\r\n\t//------\r\n\tint $strip = 0;\r\n\t$optionTemp = `zooGetFlagArguments $optionStr strip`; if( `size $optionTemp` ) $strip = $optionTemp[0];\r\n\r\n\r\n\tif( !`filetest -r $file` ) return {};\r\n\tstring $fileContents[];\r\n\tstring $word = \"a\";\r\n\tint $fileId = `fopen $file \"r\"`;\r\n\r\n\twhile( `size $word` > 0 ){\r\n\t\t$word = `fgetline $fileId`;\r\n\t\tif( `size $word` ) {\r\n\t\t\tif( $strip ) $fileContents[( `size $fileContents` )] = `substitute \"\\n\" $word \"\"`;\r\n\t\t\telse $fileContents[( `size $fileContents` )] = $word;\r\n\t\t\t}\r\n\t\t}\r\n\r\n\tfclose $fileId;\r\n\treturn $fileContents;\r\n\t}\r\n\r\n\r\n\r\n//returns the path of a script\r\nglobal proc string zooGetScriptLocation( string $scriptName ) {\r\n\tstring $paths[];\r\n\tstring $scriptPath = \"\";\r\n\tstring $sep = \";\";\r\n\r\n\tif( `about -irix` || `about -linux` || `about -mac` ) $sep = \":\";\r\n\ttokenize `getenv MAYA_SCRIPT_PATH` $sep $paths;\r\n"
		+ "\t$scriptPath = `zooGetFileLocation $paths $scriptName \"mel\"`;\r\n\r\n\treturn ( $scriptPath + \"/\" );\r\n\t}\r\n\r\n\r\n//unlike the get script path, this proc takes a file name including extension\r\nglobal proc string zooGetIconLocation( string $iconFileName ) {\r\n\tstring $paths[];\r\n\tstring $buffer[];\r\n\tstring $iconName;\r\n\tstring $ext;\r\n\tstring $scriptPath = \"\";\r\n\r\n\ttokenize `getenv XBMLANGPATH` \";\" $paths;\r\n\ttokenize $iconFileName \".\" $buffer;\r\n\tfor( $n = 0; $n < ( `size $buffer`-1 ); $n++ ) $iconName = $iconName + $buffer[$n];\r\n\t$ext = $buffer[( `size $buffer`-1 )];\r\n\t$scriptPath = `zooGetFileLocation $paths $iconName $ext`;\r\n\r\n\treturn ( $scriptPath + \"/\" + $iconFileName );\r\n\t}\r\n\r\n\r\n//returns the location of a file given a list of paths\r\nglobal proc string zooGetFileLocation( string $paths[], string $fileName, string $ext ) {\r\n\tstring $scriptPath = \"\";\r\n\r\n\tfor( $path in $paths ) if( `filetest -f ( $path +\"/\"+ $fileName +\".\"+ $ext )` ){ $scriptPath = $path; break; }\r\n\t\t//string $files[] = `getFileList -folder ( $path + \"/\" ) -filespec ( \"*.\" + $ext )`;\r\n"
		+ "\t\t//for( $file in $files ) if( $fileName == `basename $file ( \".\" + $ext )` ) { $scriptPath = $path; break; }\r\n\t\t//if( `size $scriptPath` ) break;  //because this can be a time consuming search, break if the path is found\r\n\t\t//}\r\n\r\n\treturn $scriptPath;\r\n\t}\r\n\r\n\r\nglobal proc string zooUtilsInfo ( string $function ) {\r\n\tstring $creationDate = \"01 January 2004\";\r\n\tstring $lastRevision = \"15 November 2004\";\r\n\tstring $currentVersion = \"0.9.1\";\r\n\r\n\tif( $function == \"created\" ) $info = $creationDate;\r\n\tif( $function == \"modified\" ) $info = $lastRevision;\r\n\tif( $function == \"version\" ) $info = $currentVersion;\r\n\treturn $info;\r\n\t}\r\n\r\n\r\n//zoo.end\r\n\r\n//------\r\n//this general purpose proc aligns two objects - it uses parent constraint (on an intermediate object) so its rotation order independent\r\n//------\r\nglobal proc zooAlign( string $optionStr ) {\r\n\t//------\r\n\t//parse optionStr to determine which flags are enabled for this proc\r\n\t//------\r\n\tstring $selObjs[] = `ls -sl`;\r\n\tstring $optionTemp[];\r\n\tstring $src = $selObjs[0];\r\n"
		+ "\tstring $tgt = $selObjs[1];\r\n\tint $key = 0;\r\n\r\n\t$optionTemp = `zooGetFlagArguments $optionStr src`; if( `objExists $optionTemp[0]` ) $src = $optionTemp[0];\r\n\t$optionTemp = `zooGetFlagArguments $optionStr tgt`; if( `objExists $optionTemp[0]` ) $tgt = $optionTemp[0];\r\n\t$optionTemp = `zooGetFlagArguments $optionStr key`; if( `size $optionTemp` ) $key = $optionTemp[0];\r\n\tzooAlignFast $src $tgt $key;\r\n\t}\r\n\r\n\r\n//------\r\n//this is separated into a separate proc, because its less \"user friendly\" ie require less syntax to work\r\n//its better to call zooAlign in non speed intensive operations because the syntax for this command may change\r\n//if the scope of the script is expanded in future - ie I add more functionality\r\n//------\r\nglobal proc zooAlignFast( string $src, string $tgt, int $key ){\r\n\t//these two lines check to make sure the objects to be aligned are both transform (or joint) nodes, otherwise, it quits\r\n\tif( !`objExists $src` || !`objExists $tgt` ) return;\r\n\tif( !`objExists ( $src +\".t\" )` || !`objExists ( $tgt +\".t\" )` ) return;\r\n"
		+ "\r\n\t//get a list of the selected object, and duplicate the target object - we duplicate the target so we're\r\n\t//free to do whatever we want to it, without disturbing any animation or connections on the actual target\r\n\tstring $selObjs[] = `ls -sl`;\r\n\tstring $dupe = zooUtilsReturnElement(0,`duplicate -rc $tgt`);\r\n\r\n\t//create a list of all the axes to look at - we will check all these axes to make sure they're not locked\r\n\t//creating a constraint on a locked axis will give us an error\r\n\tstring $axes[] = { \"tx\",\"ty\",\"tz\",\"rx\",\"ry\",\"rz\" };\r\n\tint $lok[];\r\n\r\n\t//go through the list of axes above, and build an array that tells us which axes aren't settable\r\n\tfor( $a in $axes ) $lok[( `size $lok` )] = `getAttr -se ($tgt +\".\"+ $a)`;\r\n\r\n\t//parent constrain the target object to the source object, making sure to skip over the axes that are locked\r\n\tstring $constraint[] = `eval( \"parentConstraint -st \"+ ($lok[0]?\"none\":\"x\") +\" -st \"+ ($lok[1]?\"none\":\"y\") +\" -st \"+ ($lok[2]?\"none\":\"z\") +\" -sr \"+ ($lok[3]?\"none\":\"x\") +\" -sr \"+ ($lok[4]?\"none\":\"y\") +\" -sr \"+ ($lok[5]?\"none\":\"z\") +\" \"+ $src +\" \"+ $dupe )`;\r\n"
		+ "\r\n\t//now go over each axis, and if its not locked set the REAL target object to the transform values of the duplicate\r\n\t//target object.  this will make the real target aligned to teh source object, all without having to add an\r\n\t//actual constraint to the target object itself\r\n\tfor( $n=0; $n<`size $axes`; $n++ ) if( $lok[$n] ) {\r\n\t\tsetAttr ($tgt +\".\"+ $axes[$n]) `getAttr ($dupe +\".\"+ $axes[$n])`;\r\n\t\tif( $key ) setKeyframe -at $axes[$n] $tgt;\r\n\t\t}\r\n\r\n\t//now we delete the duplicate target object, and select the objects that were selected before the script was run\r\n\tdelete $dupe;\r\n\tselect $selObjs;\r\n\t}\r\n\r\n\r\n//------\r\n//this proc will align the bones controlled by an ik chain to the fk chain\r\n//flags used:\r\n//-ikHandle  this flag specifies the name of the ikHandle to work on\r\n//-onCmd     this flag tells the script what command to run to turn the ik handle on - it is often left blank because its assumed we're already in ik mode\r\n//-offCmd    this flag holds the command to turn the ik handle off, and switch to fk mode\r\n"
		+ "//NOTE: if the offCmd isn't specified, it defaults to:  if( `getAttr -se #.ikb` ) setAttr #.ikb 0;\r\n//\r\n//symbols to use in cmd strings:\r\n// ^  refers to the ikHandle\r\n//\r\n//example:\r\n//zooAlignFK \"-ikHandle ikHandle1 -onCmd setAttr ^.ikBlend 1 -offCmd setAttr ^.ikBlend 0\";\r\n//------\r\nglobal proc zooAlignFK( string $optionStr ) {\r\n\tstring $temp[];\r\n\tstring $control;\r\n\tstring $ikHandle;\r\n\tstring $onCmd;\r\n\tstring $offCmd = \"if( `getAttr -se ^.ikb` ) setAttr ^.ikb 0;\";\r\n\tint $alignEnd = 1;\r\n\r\n\t$temp = `zooGetFlagArguments $optionStr control`; if( `size $temp` ) $control = $temp[0];\r\n\t$temp = `zooGetFlagArguments $optionStr ikHandle`; if( `size $temp` ) $ikHandle = $temp[0];\r\n\t$temp = `zooGetFlagArguments $optionStr alignEnd`; if( `size $temp` ) $alignEnd = $temp[0];\r\n\t$temp = `zooGetFlagArguments $optionStr onCmd`; if( `size $temp` ) $onCmd = `zooArrayToString $temp`;\r\n\t$temp = `zooGetFlagArguments $optionStr offCmd`; if( `size $temp` ) $offCmd = `zooArrayToString $temp`;\r\n\r\n\twhile( `match \"#+\" $onCmd` != \"\" ) $onCmd = `substitute \"#+\" $onCmd $control`;\r\n"
		+ "\twhile( `match \"#+\" $offCmd` != \"\" ) $offCmd = `substitute \"#+\" $offCmd $control`;\r\n\r\n\t//the ^ symbol in either the onCmd or the offCmd is used to specify the ikHandle - so we must sub it into the command strings\r\n\twhile( `match \"\\\\^+\" $onCmd` != \"\" ) $onCmd = `substitute \"\\\\^+\" $onCmd $ikHandle`;\r\n\twhile( `match \"\\\\^+\" $offCmd` != \"\" ) $offCmd = `substitute \"\\\\^+\" $offCmd $ikHandle`;\r\n\r\n\tif( !`ikHandle -ex $ikHandle` ) return;\r\n\tif( `size $onCmd` ) eval $onCmd;\r\n\tstring $joints[] = `ikHandle -q -jl $ikHandle`;\r\n\tstring $effector = `ikHandle -q -ee $ikHandle`;\r\n\tstring $effectorCtrl[] = `listConnections -d 0 ( $effector +\".tx\" )`;\r\n\r\n\tfor( $n=0; $n<`size $joints`; $n++ ) {\r\n\t\tfloat $rotation[] = `getAttr ( $joints[$n] +\".r\" )`;\r\n\t\tif( `getAttr -se ( $joints[$n] +\".rx\" )` ) setKeyframe -at rx -v $rotation[0] $joints[$n];\r\n\t\tif( `getAttr -se ( $joints[$n] +\".ry\" )` ) setKeyframe -at ry -v $rotation[1] $joints[$n];\r\n\t\tif( `getAttr -se ( $joints[$n] +\".rz\" )` ) setKeyframe -at rz -v $rotation[2] $joints[$n];\r\n\t\t}\r\n"
		+ "\r\n\tif( $alignEnd ) zooAlign ( \"-key 1 -src \"+ $ikHandle +\" -tgt \"+ $effectorCtrl[0] );\r\n\tif( `size $offCmd` ) eval $offCmd;\r\n\t}\r\n\r\n\r\n//------\r\n//this proc will align the IK controller to its fk chain\r\n//flags used:\r\n//-control   this is the actual control being used to move the ikHandle - it is assumed to be the same object as the ikHandle, but if its different (ie if the ikHandle is constrained to a controller) use this flag\r\n//-pole      tells the script the name of the pole controller - if there is no pole vector control, leave this flag out\r\n//-ikHandle  this flag specifies the name of the ikHandle to work on\r\n//-onCmd     this flag tells the script what command to run to turn the ik handle on - it is often left blank because its assumed we're already in ik mode\r\n//-offCmd    this flag holds the command to turn the ik handle off, and switch to fk mode\r\n//NOTE: if the offCmd isn't specified, it defaults to:  if( `getAttr -se ^.ikb` ) setAttr ^.ikb 1;\r\n//\r\n//symbols to use in cmd strings:\r\n// ^  refers to the ikHandle\r\n"
		+ "// #  refers to the control object\r\n//\r\n//example:\r\n//zooAlignFK \"-control somObj -ikHandle ikHandle1 -offCmd setAttr #.fkMode 0\";\r\n//------\r\nglobal proc zooAlignIK( string $optionStr ) {\r\n\tstring $temp[];\r\n\tstring $control;\r\n\tstring $pole;\r\n\tstring $ikHandle;\r\n\tstring $onCmd;\r\n\tstring $offCmd = \"if( `getAttr -se ^.ikb` ) setAttr ^.ikb 1;\";\r\n\tint $alignEnd = 1;\r\n\r\n\t$temp = `zooGetFlagArguments $optionStr control`; if( `size $temp` ) $control = $temp[0];\r\n\t$temp = `zooGetFlagArguments $optionStr pole`; if( `size $temp` ) $pole = $temp[0];\r\n\t$temp = `zooGetFlagArguments $optionStr ikHandle`; if( `size $temp` ) $ikHandle = $temp[0];\r\n\t$temp = `zooGetFlagArguments $optionStr alignEnd`; if( `size $temp` ) $alignEnd = $temp[0];\r\n\t$temp = `zooGetFlagArguments $optionStr onCmd`; if( `size $temp` ) $onCmd = `zooArrayToString $temp`;\r\n\t$temp = `zooGetFlagArguments $optionStr offCmd`; if( `size $temp` ) $offCmd = `zooArrayToString $temp`;\r\n\tif( !`objExists control` ) $control = $ikHandle;\r\n\r\n\t//the # symbol in either the onCmd or the offCmd is used to specify the ikHandle - so we must sub it into the command strings\r\n"
		+ "\twhile( `match \"#+\" $onCmd` != \"\" ) $onCmd = `substitute \"#+\" $onCmd $control`;\r\n\twhile( `match \"#+\" $offCmd` != \"\" ) $offCmd = `substitute \"#+\" $offCmd $control`;\r\n\twhile( `match \"\\\\^+\" $onCmd` != \"\" ) $onCmd = `substitute \"\\\\^+\" $onCmd $ikHandle`;\r\n\twhile( `match \"\\\\^+\" $offCmd` != \"\" ) $offCmd = `substitute \"\\\\^+\" $offCmd $ikHandle`;\r\n\r\n\tif( !`ikHandle -ex $ikHandle` ) return;\r\n\tif( `size $onCmd` ) eval $onCmd;\r\n\tstring $joints[] = `ikHandle -q -jl $ikHandle`;\r\n\tstring $effector = `ikHandle -q -ee $ikHandle`;\r\n\tstring $effectorCtrl[] = `listConnections -d 0 ( $effector +\".tx\" )`;\r\n\r\n\tif( `objExists $pole` ) zooAlign ( \"-src \"+ $joints[1] +\" -tgt \"+ $pole );\r\n\tzooAlign ( \"-src \"+ $effectorCtrl[0] +\" -tgt \"+ $control );\r\n\tif( `size $offCmd` ) eval $offCmd;\r\n\t}\r\n\r\n\r\n//zoo.end");
	setAttr ".st" 2;
createNode script -n "zooTriggered";
	setAttr ".b" -type "string" (
		"//zooTriggered -internal- by Hanmish McKenzie\r\n//Copywright Hamish McKenzie 2005\r\n\r\nglobal proc string zooUtilsReturnElement( int $entry, string $array[] ) {\r\n\tif( $entry<0 ) $entry = `size $array` + $entry;\r\n\treturn $array[$entry];\r\n\t}\r\n\r\nglobal proc string zooArrayToString( string $array[] ) {\r\n\tstring $arrayStr = `zooArrayToStr $array \" \"`;\r\n\treturn $arrayStr;\r\n\t}\r\n\r\nglobal proc string zooArrayToStr( string $array[], string $separator ) {\r\n\tstring $arrayStr = \"\";\r\n\tint $num = `size $array`;\r\n\tif( $num<2 ) return $array[0];\r\n\tfor( $n=0; $n<$num-1; $n++ ) $arrayStr += $array[$n] + $separator;\r\n\t$arrayStr += $array[( $num-1 )];\r\n\treturn $arrayStr;\r\n\t}\r\n\r\nglobal proc string[] zooUtilsRemoveDupeArrayItems_string( string $array[] ) {\r\n\tstring $returnArray[];\r\n\tstring $prevVal = $array[0];\r\n\r\n\t$returnArray[0] = $array[0];\r\n\tfor( $n = 1; $n < `size $array`; $n++ ) {\r\n\t\tif( $prevVal != $array[$n] ) $returnArray[( `size $returnArray` )] = $array[$n];\r\n\t\t$prevVal = $array[$n];\r\n\t\t}\r\n\r\n\treturn $returnArray;\r\n\t}\r\n\r\nglobal proc string[] zooUtilsAddArray( string $array1[], string $array2[] ) {\r\n"
		+ "\tfor( $entry in $array2 ) $array1[( `size $array1` )] = $entry;\r\n\treturn $array1;\r\n\t}\r\n\r\nglobal proc string[] zooUtilsSubtractArray( string $array1[], string $array2[] ) {\r\n\tstring $returnArray[];\r\n\tfor( $entry1 in $array1 ){\r\n\t\tint $isInArray = 0;\r\n\t\tfor( $entry2 in $array2 ){\r\n\t\t\tif( $entry1 == $entry2 ) $isInArray = 1;\r\n\t\t\t}\r\n\t\tif( !$isInArray ) $returnArray[( `size $returnArray` )] = $entry1;\r\n\t\t}\r\n\treturn $returnArray;\r\n\t}\r\n\r\nglobal proc string[] zooUtilsReverseArray( string $array[] ){\r\n\tstring $reversedArray[];\r\n\tint $arraySize = `size $array`;\r\n\r\n\tfor( $n = 0; $n < $arraySize; $n++ ) $reversedArray[( $arraySize - 1 - $n )] = $array[$n];\r\n\treturn $reversedArray;\r\n\t}\r\n\r\nglobal proc float[] zooUtilsCropArray( float $array[], float $min, float $max ) {\r\n\tfloat $cropped[];\r\n\tfor( $entry in $array ) if( $entry >= $min && $entry <= $max ) $cropped[( `size $cropped` )] = $entry;\r\n\treturn $cropped;\r\n\t}\r\n\r\nglobal proc string zooUtilsReplaceString( string $string, string $searchStr, string $replaceStr ){\r\n\tstring $messageString = $string;\r\n"
		+ "\tstring $temp = $messageString;\r\n\tint $stillChanging = 1;\r\n\r\n\twhile( $stillChanging ) {\r\n\t\t$temp = `substitute $searchStr $messageString $replaceStr`;\r\n\t\tif( $messageString == $temp ) $stillChanging = 0;\r\n\t\t$messageString = $temp;\r\n\t\t}\r\n\r\n\treturn $messageString;\r\n\t}\r\n\r\nglobal proc zooTriggered() {\r\n\tstring $windowName = \"zooTriggeredWindow\";\r\n\tstring $windowTitle = \"zooTriggered! -internal version-   ::macaroniKazoo::\";\r\n\r\n\tif( `window -exists $windowName` ) deleteUI $windowName;\r\n\twindow -title $windowTitle -resizeToFitChildren 0 -maximizeButton 0 -sizeable 1 -widthHeight 420 270 $windowName;\r\n\t\tscriptJob -p $windowName -e \"SceneOpened\" \"zooTriggeredWindowFunctions -update;\";\r\n\t\tmenuBarLayout;\r\n\t\t\tmenu -label \"Shelf\";\r\n\t\t\t\tmenuItem -l \"Install Shelf Button\" -c ( \"zooTriggeredSetup\" );\r\n\t\t\t\tmenuItem -divider 1;\r\n\t\t\t\tmenuItem -l \"Remove Shelf Button\" -c ( \"deleteUI `zooShelveItGetShelfButton zooTriggered`\" );\r\n\t\t\tmenu -label \"View\";\r\n\t\t\t\tmenuItem -l \"View Triggered Command\" -cb 0 -c( \"zooTriggeredPrefs viewTriggers; zooTriggeredWindowFunctions -update\" ) zooTrigViewMode0;\r\n"
		+ "\t\t\t\tmenuItem -l \"View zooObjMenu Commands\" -cb 0 -c( \"zooTriggeredPrefs viewObjMenu; zooTriggeredWindowFunctions -update\" ) zooTrigViewMode1;\r\n\t\t\t\tmenuItem -divider 1;\r\n\t\t\t\tmenuItem -l \"Force UI Update\" -c ( \"zooTriggeredWindowFunctions -update;\" );\r\n\t\t\t\tmenuItem -l \"Convert old Triggers\" -c ( \"zooConvertOldTriggers\" );\r\n\r\n\t\tstring $form = `formLayout zooTrigMasterForm`;\r\n\t\t\tstring $row1 = `rowColumnLayout -numberOfColumns 4\r\n\t\t\t\t-columnWidth 1 80\r\n\t\t\t\t-columnWidth 2 80\r\n\t\t\t\t-columnWidth 3 100\r\n\t\t\t\t-columnWidth 4 80\r\n\t\t\t\t-columnAttach 1 \"both\" 1\r\n\t\t\t\t-columnAttach 2 \"both\" 1\r\n\t\t\t\t-columnAttach 3 \"both\" 1\r\n\t\t\t\t-columnAttach 4 \"both\" 1`;\r\n\t\t\t\tbutton -l \"load\" -height 18 -c ( \"zooTriggeredLoad\" );\r\n\t\t\t\tbutton -l \"unLoad\" -height 18 -c ( \"zooTriggeredUnload\" );\r\n\t\t\t\ttext -l \"load status ->\" -align center -height 18;\r\n\t\t\t\tpalettePort -ed 0 -height 18 -dim 1 1 -rgb 0 0 0 0 zooTriggeredPaletteStatus;\r\n\t\t\t\tsetParent ..;\r\n\r\n\t\t\tstring $selSelected = `button -l \">\" -c( \"zooTriggeredWindowFunctions -loadSelected\" )`;\r\n\t\t\tstring $triggerText = `text -l \"zooTriggered! Objects:\" zooTrigObjListLbl`;\r\n"
		+ "\t\t\ttextScrollList -allowMultiSelection 0 -sc( \"zooTriggeredWindowFunctions -update\" ) -dcc( \"zooTriggeredWindowFunctions -selectTrigger\" ) zooTriggeredScrollObjects;\r\n\r\n\t\t\tstring $targetText = `text -l \"connects:\"`;\r\n\t\t\ttextScrollList -allowMultiSelection 1 -dcc( \"zooTriggeredWindowFunctions -selectTarget\" ) zooTriggeredScrollTargets;\r\n\r\n\t\t\tstring $frame = `frameLayout -l \"\" -cl 0 -cll 1 -bs etchedOut -cc( \"zooTriggeredWindowFunctions -cmdExpand\" ) -ec( \"zooTriggeredWindowFunctions -cmdCollapse\" ) zooTrigCmdFrame`;\r\n\t\t\t\tstring $editForm = `formLayout zooTrigEditCmdForm`;\r\n\t\t\t\t\tstring $cmdScroll = `scrollField -ed 1 -nl 6 -cc( \"zooTriggeredWindowFunctions -saveCmd\" ) zooTriggeredTextCustom`;\r\n\t\t\t\t\tstring $cmdName = `textField -tx \"\" -cc( \"zooTriggeredWindowFunctions -saveCmd\" ) zooTriggeredTextCmdName`;\r\n\t\t\t\t\tstring $cmdSlots = `textScrollList -allowMultiSelection 0 -sc( \"zooTriggeredWindowFunctions -updateCmd\" ) zooTriggeredScrollCmdList`;\r\n\t\t\t\tsetParent ..;\r\n\t\t\tsetParent ..;\r\n\r\n\t\t\tstring $image = `image -width 340 -height 8 -backgroundColor ((float)96/255) ((float)100/255) ((float)146/255) -image ( internalVar(\"-userBitmapsDir\") +\"/zoo_sig.tga\" )`;\r\n"
		+ "\t\t\tsetParent ..;\r\n\r\n\tformLayout -e\r\n\t\t-af\t$row1 \"top\" 2\r\n\t\t-af\t$row1 \"left\" 2\r\n\t\t-af\t$row1 \"right\" 2\r\n\t\t-an $row1 \"bottom\"\r\n\r\n\t\t-ac\t$triggerText \"top\" 2 $row1\r\n\t\t-af\t$triggerText \"left\"\t23\r\n\t\t-an\t$triggerText \"right\"\r\n\t\t-an $triggerText \"bottom\"\r\n\r\n\t\t-ac\t$selSelected \"top\" 2 $triggerText\r\n\t\t-af\t$selSelected \"left\" 2\r\n\t\t-an\t$selSelected \"right\"\r\n\t\t-ac\t$selSelected \"bottom\" 2 $frame\r\n\r\n\t\t-ac\tzooTriggeredScrollObjects \"top\" 2 $triggerText\r\n\t\t-ac\tzooTriggeredScrollObjects \"left\" 2 $selSelected\r\n\t\t-ap\tzooTriggeredScrollObjects \"right\" 2 50\r\n\t\t-ac zooTriggeredScrollObjects \"bottom\" 2 $frame\r\n\r\n\t\t-ac\t$targetText \"top\" 2 $row1\r\n\t\t-ac\t$targetText \"left\"\t2 zooTriggeredScrollObjects\r\n\t\t-an\t$targetText \"right\"\r\n\t\t-an $targetText \"bottom\"\r\n\r\n\t\t-ac\tzooTriggeredScrollTargets \"top\" 2 $targetText\r\n\t\t-ac\tzooTriggeredScrollTargets \"left\" 2 zooTriggeredScrollObjects\r\n\t\t-af\tzooTriggeredScrollTargets \"right\" 2\r\n\t\t-ac zooTriggeredScrollTargets \"bottom\" 2 $frame\r\n\r\n\t\t-ap\t$frame \"top\" 0 60\r\n\t\t-af\t$frame \"left\" 2\r\n\t\t-af\t$frame \"right\" 2\r\n"
		+ "\t\t-ac\t$frame \"bottom\"\t5 $image\r\n\r\n\t\t-an\t$image \"top\"\r\n\t\t-af\t$image \"left\" 0\r\n\t\t-af\t$image \"right\" 0\r\n\t\t-af\t$image \"bottom\" 0\r\n\t\t$form;\r\n\r\n\tformLayout -e\r\n\t\t-af\t$cmdScroll \"top\" 0\r\n\t\t-af\t$cmdScroll \"left\" 0\r\n\t\t-ap\t$cmdScroll \"right\" 0 100\r\n\t\t-af $cmdScroll \"bottom\" 0\r\n\r\n\t\t-af\t$cmdName \"top\" 0\r\n\t\t-ac\t$cmdName \"left\" 2 $cmdScroll\r\n\t\t-af\t$cmdName \"right\" 0\r\n\t\t-an $cmdName \"bottom\"\r\n\r\n\t\t-ac\t$cmdSlots \"top\" 2 $cmdName\r\n\t\t-ac\t$cmdSlots \"left\" 2 $cmdScroll\r\n\t\t-af\t$cmdSlots \"right\" 2\r\n\t\t-af $cmdSlots \"bottom\" 2\r\n\t\t$editForm;\r\n\r\n\tpopupMenu -p zooTriggeredScrollObjects -pmc( \"zooBuildTrigTriggersPopup zooTrigTriggersPopup\" ) zooTrigTriggersPopup;\r\n\tpopupMenu -p zooTriggeredScrollTargets -pmc( \"zooBuildTrigConnectsPopup zooTrigConnectsPopup\" ) zooTrigConnectsPopup;\r\n\tpopupMenu -p zooTriggeredTextCustom -pmc( \"zooBuildTrigPresetPopup zooTrigPresetPopup\" ) zooTrigPresetPopup;\r\n\tpopupMenu -p $image -b 1 -pmc ( \"showHelp -a \\\"http://www.macaronikazoo.com/mel\\\"\" );\r\n\tshowWindow $windowName;\r\n\tzooTriggeredWindowFunctions -update;\r\n"
		+ "\tzooTrigInstallShelfPopup;\r\n\tzooTrigUpdateUIState;\r\n\t}\r\n\r\n\r\n//builds the connects window popupMenu\r\nglobal proc zooBuildTrigTriggersPopup( string $parent ) {\r\n\tsetParent -m $parent;\r\n\tmenu -e -dai $parent;\r\n\tmenuItem -l \"add select scene objects to list\" -c( \"zooTriggeredWindowFunctions -addCmd\" );\r\n\t}\r\n\r\n\r\n//builds the connects window popupMenu\r\nglobal proc zooBuildTrigConnectsPopup( string $parent ) {\r\n\tsetParent -m $parent;\r\n\tmenu -e -dai $parent;\r\n\tmenuItem -l \"add selected to connects\" -c( \"zooTriggeredWindowFunctions -addConnect\" );\r\n\tmenuItem -l \"disconnect selected\" -c( \"zooTriggeredWindowFunctions -removeConnect\" );\r\n\t}\r\n\r\n\r\n//builds the command window popupMenu\r\nglobal proc zooBuildTrigPresetPopup( string $parent ) {\r\n\tint $cmdViewMode = `optionVar -ex zooTrigViewMode`? `optionVar -q zooTrigViewMode`: 0;\r\n\tsetParent -m $parent;\r\n\tmenu -e -dai $parent;\r\n\r\n\tstring $obj = zooUtilsReturnElement(0,`textScrollList -q -selectItem zooTriggeredScrollObjects`);\r\n\tstring $slot = zooUtilsReturnElement(0,`textScrollList -q -si zooTriggeredScrollCmdList`);\r\n"
		+ "\tif( $cmdViewMode ){\r\n\t\tint $cmdSlots[] = `zooObjMenuListCmds $obj`;\r\n\t\tfor( $a in $cmdSlots ) menuItem -l ( \"edit command \"+ $a +\": \"+ `zooGetObjMenuCmdName $obj $a` ) -c( \"textScrollList -e -da zooTriggeredScrollCmdList; textScrollList -e -sii \"+ ($a+1) +\" zooTriggeredScrollCmdList; zooTriggeredWindowFunctions -updateCmd;\" );\r\n\t\tmenuItem -divider 1;\r\n\t\t}\r\n\r\n\tint $enableMenu = `objExists $obj`;\r\n\tif( $cmdViewMode ) if( $slot==\"\" ) $enableMenu = 0;\r\n\tmenuItem -l \"select targets preset\" -en $enableMenu -c( \"zooApplyTriggerPreset -selectConnected\" );\r\n\tmenuItem -l \"key targets preset\" -en $enableMenu -c( \"zooApplyTriggerPreset -keyConnected\" );\r\n\tmenuItem -l \"toggle targets preset\" -en $enableMenu -c( \"zooApplyTriggerPreset -toggleConnected\" );\r\n\r\n\tif( !$cmdViewMode ) {\r\n\t\tmenuItem -l \"use move tool preset\" -en $enableMenu -c( \"zooApplyTriggerPreset -toolToMove\" );\r\n\t\tmenuItem -l \"use rotate tool preset\" -en $enableMenu -c( \"zooApplyTriggerPreset -toolToRotate\" );\r\n\t\t}\r\n\r\n\tmenuItem -divider 1;\r\n\tif( $cmdViewMode ) menuItem -l \"edit zooTriggered commands\" -c( \"zooTriggeredPrefs viewTriggers; zooTriggeredWindowFunctions -u;\" );\r\n"
		+ "\telse menuItem -l \"edit zooObjMenu commands\" -c( \"zooTriggeredPrefs viewObjMenu; zooTriggeredWindowFunctions -u;\" );\r\n\t}\r\n\r\n\r\nglobal proc zooTriggeredWindowFunctions( string $function ) {\r\n\tglobal int $zooTriggered;\r\n\tstring $windowName = \"zooTriggeredWindow\";\r\n\tstring $cmdStrAttr = \"zooTrigCmd0\";\r\n\tstring $trigger = zooUtilsReturnElement(0,`textScrollList -q -si zooTriggeredScrollObjects`);\r\n\tstring $slot = zooUtilsReturnElement(0,`textScrollList -q -si zooTriggeredScrollCmdList`);\r\n\tint $cmdViewMode = `optionVar -ex zooTrigViewMode`? `optionVar -q zooTrigViewMode`: 0;\r\n\r\n\tswitch( $function ) {\r\n\t\tcase \"-u\":\r\n\t\tcase \"-update\":\r\n\t\t\t//update menu items\r\n\t\t\tmenuItem -e -cb( $cmdViewMode==0?1:0 ) zooTrigViewMode0;\r\n\t\t\tmenuItem -e -cb( $cmdViewMode==1?1:0 ) zooTrigViewMode1;\r\n\t\t\tif( $cmdViewMode ) formLayout -e -ap zooTriggeredTextCustom \"right\" 0 70 zooTrigEditCmdForm;\r\n\t\t\telse formLayout -e -ap zooTriggeredTextCustom \"right\" 0 100 zooTrigEditCmdForm;\r\n\r\n\t\t\t//update the command string frame label\r\n\t\t\tstring $lbl = \"zooTriggered command:\";\r\n"
		+ "\t\t\tif( $cmdViewMode ) $lbl = \"zooObjMenu command:\";\r\n\t\t\tframeLayout -e -l $lbl zooTrigCmdFrame;\r\n\r\n\t\t\t//update the object list label\r\n\t\t\t$lbl = \"zooTriggered! objects\";\r\n\t\t\tif( $cmdViewMode ) $lbl = \"zooObjMenu objects\";\r\n\t\t\ttext -e -l $lbl zooTrigObjListLbl;\r\n\r\n\t\t\t//update the list of zooTriggered! objects\r\n\t\t\tstring $objList[];\r\n\t\t\tif( $cmdViewMode ) $objList = `zooGetObjsWithMenus`;\r\n\t\t\telse $objList = `zooGetAllTriggers`;\r\n\r\n\t\t\ttextScrollList -e -removeAll zooTriggeredScrollObjects;\r\n\t\t\ttextScrollList -e -removeAll zooTriggeredScrollTargets;\r\n\t\t\tfor( $a in $objList ) textScrollList -e -append $a zooTriggeredScrollObjects;\r\n\t\t\tfor( $a in `textScrollList -q -ai zooTriggeredScrollObjects` ) if( $a==$trigger ) textScrollList -e -selectItem $trigger zooTriggeredScrollObjects;\r\n\t\t\tfor( $a in `textScrollList -q -ai zooTriggeredScrollObjects` ) if( $a==$slot ) textScrollList -e -selectItem $slot zooTriggeredScrollCmdList;\r\n\r\n\t\t\t//update target list\r\n\t\t\tstring $targets[] = `zooGetConnects $trigger`;\r\n\t\t\tfor( $a in $targets ) textScrollList -e -append $a zooTriggeredScrollTargets;\r\n"
		+ "\r\n\t\t\t//update zooObjMenu command list\r\n\t\t\tif( $cmdViewMode ) {\r\n\t\t\t\tint $cmdSlots[] = `zooObjMenuListCmds $trigger`;\r\n\t\t\t\ttextScrollList -e -removeAll zooTriggeredScrollCmdList;\r\n\t\t\t\tif( $slot == \"\" ) textField -e -tx \"\" zooTriggeredTextCmdName;\r\n\t\t\t\tfor( $slot in $cmdSlots ) textScrollList -e -append $slot zooTriggeredScrollCmdList;\r\n\t\t\t\t}\r\n\r\n\t\t\t//update the command string\r\n\t\t\tzooTriggeredWindowFunctions -updateCmd;\r\n\t\tbreak;\r\n\r\n\r\n\t\tcase \"-uc\":\r\n\t\tcase \"-updateCmd\":\r\n\t\t\tstring $cmdStr = \"\";\r\n\t\t\tif( $cmdViewMode ) {\r\n\t\t\t\tif( $slot != \"\" ) {\r\n\t\t\t\t\tstring $cmdName = `zooGetObjMenuCmdName $trigger ((int)$slot)`;\r\n\t\t\t\t\t$cmdStr = `zooGetObjMenuCmdStr $trigger ((int)$slot)`;\r\n\t\t\t\t\ttextField -e -tx $cmdName zooTriggeredTextCmdName;\r\n\t\t\t\t\t}\r\n\t\t\t\t}\r\n\t\t\telse $cmdStr = `zooTrigGetCmd $trigger`;\r\n\t\t\tscrollField -e -tx $cmdStr zooTriggeredTextCustom;\r\n\t\tbreak;\r\n\r\n\r\n\t\tcase \"-cmdExpand\":\r\n\t\t\tformLayout -e -ap zooTrigCmdFrame \"top\" -34 100 zooTrigMasterForm;\r\n\t\tbreak;\r\n\r\n\r\n\t\tcase \"-cmdCollapse\":\r\n\t\t\tformLayout -e -ap zooTrigCmdFrame \"top\" 0 60 zooTrigMasterForm;\r\n"
		+ "\t\tbreak;\r\n\r\n\r\n\t\tcase \"-loadSelected\":\r\n\t\t\tstring $selObjs[] = `ls -sl`;\r\n\t\t\ttextScrollList -e -selectItem $selObjs[0] zooTriggeredScrollObjects;\r\n\t\t\tzooTriggeredWindowFunctions -update;\r\n\t\tbreak;\r\n\r\n\r\n\t\tcase \"-selectTrigger\":\r\n\t\t\tselect `textScrollList -q -selectItem zooTriggeredScrollObjects`;\r\n\t\tbreak;\r\n\r\n\r\n\t\tcase \"-selectTarget\":\r\n\t\t\tselect `textScrollList -q -selectItem zooTriggeredScrollTargets`;\r\n\t\tbreak;\r\n\r\n\r\n\t\tcase \"-addCmd\":\r\n\t\t\tstring $sel[] = `ls -sl`;\r\n\t\t\tif( $cmdViewMode ) for( $a in $sel ) zooObjMenuAddCmd $a;\r\n\t\t\telse for( $a in $sel ) zooTrigSetCmd $a \"\";\r\n\t\t\tzooTriggeredWindowFunctions -update;\r\n\t\tbreak;\r\n\r\n\r\n\t\tcase \"-addConnect\":\r\n\t\t\tif( !`objExists $trigger` ) break;\r\n\t\t\tstring $sel[] = `ls -sl`;\r\n\r\n\t\t\tfor( $a in $sel ) zooAddConnect $trigger $a;\r\n\t\t\tzooTriggeredWindowFunctions -update;\r\n\t\tbreak;\r\n\r\n\r\n\t\tcase \"-removeConnect\":\r\n\t\t\tif( !`objExists $trigger` ) break;\r\n\t\t\tstring $connects[] = `textScrollList -q -si zooTriggeredScrollTargets`;\r\n\t\t\tfor( $a in $connects ) zooRemoveConnect $trigger $a;\r\n"
		+ "\t\t\tzooTriggeredWindowFunctions -update;\r\n\t\tbreak;\r\n\r\n\r\n\t\tcase \"-sc\":\r\n\t\tcase \"-saveCmd\":\r\n\t\t\tstring $newCmd = `textField -q -tx zooTriggeredTextCustom`;\r\n\t\t\tif( $cmdViewMode ) {\r\n\t\t\t\tstring $cmdName = `textField -q -tx zooTriggeredTextCmdName`;\r\n\t\t\t\tint $slot = zooUtilsReturnElement(0,`textScrollList -q -selectItem zooTriggeredScrollCmdList`);\r\n\t\t\t\tzooSetObjMenuCmdName $trigger $cmdName $slot;\r\n\t\t\t\tzooSetObjMenuCmdStr $trigger $newCmd $slot;\r\n\t\t\t\t}\r\n\t\t\telse zooTrigSetCmd $trigger $newCmd;\r\n\t\tbreak;\r\n\r\n\r\n\t\tcase \"-ra\":\r\n\t\tcase \"-remAll\":\r\n\t\t\tstring $selectedObj[] = `textScrollList -q -selectItem zooTriggeredScrollObjects`;\r\n\t\t\tzooRemoveTrigger $selectedObj[0];\r\n\t\t\tzooTriggeredWindowFunctions -update;\r\n\t\tbreak;\r\n\r\n\r\n\t\tcase \"-rc\":\r\n\t\tcase \"-remCmd\":\r\n\t\t\tstring $selectedObj[] = `textScrollList -q -selectItem zooTriggeredScrollObjects`;\r\n\t\t\tdeleteAttr -at \"zooTrigCmd0\" $selectedObj[0];\r\n\t\t\tzooTriggeredWindowFunctions -update;\r\n\t\tbreak;\r\n\t\t}\r\n\t}\r\n\r\nglobal proc zooTriggeredPrefs( string $pref ) {\r\n\tif( $pref == \"viewTriggers\" ) optionVar -iv zooTrigViewMode 0;\r\n"
		+ "\tif( $pref == \"viewObjMenu\" ) optionVar -iv zooTrigViewMode 1;\r\n\tzooTriggeredWindowFunctions -updateCmd;\r\n\t}\r\n\r\nglobal proc zooApplyTriggerPreset( string $preset ) {\r\n\tstring $sel[] = `textScrollList -q -selectItem zooTriggeredScrollObjects`;\r\n\tstring $trigger = $sel[0];\r\n\tstring $slot = zooUtilsReturnElement(0,`textScrollList -q -si zooTriggeredScrollCmdList`);\r\n\tint $cmdViewMode = `optionVar -ex zooTrigViewMode`? `optionVar -q zooTrigViewMode`: 0;\r\n\r\n\tif( $cmdViewMode ) zooSetObjMenuCmdStr $trigger `zooPresetTriggerCmds $preset` ((int)$slot);\r\n\telse zooTrigSetCmd $trigger `zooPresetTriggerCmds $preset`;\r\n\tzooTriggeredWindowFunctions -updateCmd;\r\n\t}\r\n\r\nglobal proc zooTrigUpdateUIState() {\r\n\tstring $buttons[] = `zooShelveItGetShelfButtonAll zooTriggered`;\r\n\tint $state = `zooTriggeredState`;\r\n\tif( `control -ex zooTriggeredPaletteStatus` ) if( $state ) palettePort -e -rgb 0 0 1 0 -redraw zooTriggeredPaletteStatus;\r\n\telse palettePort -e -rgb 0 .75 .75 .75 -redraw zooTriggeredPaletteStatus;\r\n\tfor( $button in $buttons ) shelfButton -e -image1 ( `internalVar -userBitmapsDir` +\"zooTriggered_\"+ $state +\".bmp\" ) $button;\r\n"
		+ "\tzooTrigInstallShelfPopup;\r\n\t}\r\n\r\nglobal proc zooTriggeredSetup() {\r\n\tstring $button = `zooShelveItInstallShelfButton zooTriggered`;\r\n\tstring $image = `internalVar -userBitmapsDir` +\"zooTriggered_\"+ `zooTriggeredState` +\".bmp\";\r\n\tstring $cmd = \"source zooTriggered; source zooTriggeredUtils; if (`zooTriggeredState`) zooTriggeredUnload; else zooTriggeredLoad;\";\r\n\r\n\tshelfButton -e -image1 $image -label \"zooTriggered! shelf button\" -ann \"load/unload zooTriggered! - right click for additional options\" -command $cmd $button;\r\n\tzooTrigInstallShelfPopup;\r\n\t}\r\n\r\nglobal proc string zooTriggeredInfo( string $function ) {\r\n\tstring $creationDate = \"17 May 2003\";\r\n\tstring $lastRevision = \"22 August 2004\";\r\n\tstring $info = \"\";\r\n\tstring $version = \"2.0\";\r\n\r\n\tif ( $function == \"created\" ) $info = $creationDate;\r\n\tif ( $function == \"modified\" ) $info = $lastRevision;\r\n\tif ( $function == \"version\" ) $info = $version;\r\n\treturn $info;\r\n\t}\r\n\r\nglobal proc zooTriggerSelection() {\r\n\tglobal string $prevSel[];\r\n\tstring $sel[] = `ls -sl`;\r\n"
		+ "\tfor( $a in $sel ) zooTriggerObject $a;\r\n\t$prevSel = `ls -sl`;\r\n\t}\r\n\r\nglobal proc zooTriggerObject( string $trigger ) {\r\n\tif( !`objExists $trigger` ) return;\r\n\tif( !`objExists ( $trigger +\".zooTrigCmd0\" )`) return;\r\n\r\n\tstring $slotPrefix = \"zooTrig\";\r\n\tstring $cmd = `getAttr ( $trigger +\".zooTrigCmd0\" )`;\r\n\tstring $cmdStr = `zooPopulateCmdStr $trigger $cmd`;\r\n\r\n\tcatch( `eval $cmdStr` );\r\n\t}\r\n\r\nglobal proc string zooPopulateCmdStr( string $trigger, string $cmdStr ) {\r\n\tglobal string $prevSel[];\r\n\tstring $objectList[] = `zooGetConnects $trigger`;\r\n\tstring $connectsArrayStr = \"{\\\"\"+ `zooArrayToStr $objectList \"\\\",\\\"\"` +\"\\\"}\";\r\n\tstring $previousSelStr = \"{\\\"\"+ `zooArrayToStr $prevSel \"\\\",\\\"\"` +\"\\\"}\";\r\n\r\n\t//the # symbol is used to refer to the trigger itself - so sub the name of the trigger into the command\r\n\twhile( `match \"#+\" $cmdStr` != \"\" ) $cmdStr = `substitute \"#+\" $cmdStr $trigger`;\r\n\r\n\t//the @p symbol refers to the previous selection\r\n\twhile( `match \"~+\" $cmdStr` != \"\" ) $cmdStr = `substitute \"~+\" $cmdStr $previousSelStr`;\r\n"
		+ "\r\n\t//the @ symbol refers to the array of all connects\r\n\twhile( `match \"@+\" $cmdStr` != \"\" ) $cmdStr = `substitute \"@+\" $cmdStr $connectsArrayStr`;\r\n\r\n\t//the % symbol allows the user to work on a single target object.  the object is handled as a string, as it is a single object only\r\n\twhile( `match \"(%[0-9]+)+\" $cmdStr` != \"\" ) {\r\n\t\tstring $custom = `match \"(%[0-9]+)+\" $cmdStr`;\r\n\t\tint $targetNum = `substring $custom 2 (size($custom))`;\r\n\t\t$cmdStr = `substitute \"(%[0-9]+)+\" $cmdStr $objectList[( $targetNum-1 )]`;\r\n\t\t}\r\n\r\n\treturn $cmdStr;\r\n\t}\r\n\r\n\r\nglobal proc string zooPresetTriggerCmds( string $preset ) {\r\n\tstring $cmd = \"\";\r\n\tswitch( $preset ) {\r\n\t\tcase \"-selectConnected\":\r\n\t\t$cmd = \"select -d #;\\nselect -add @;\";\r\n\t\tbreak;\r\n\r\n\t\tcase \"-keyConnected\":\r\n\t\tstring $cmd = \"select -d #;\\nsetKeyframe @;\";\r\n\t\tbreak;\r\n\r\n\t\tcase \"-toggleConnected\":\r\n\t\tstring $cmd = \"{\\nint $vis = !`getAttr %1.v`;\\nfor($obj in @) setAttr ($obj +\\\".v\\\") $vis;\\nselect ~; //select previous objects\\n}\";\r\n\t\tbreak;\r\n\r\n\t\tcase \"-toolToMove\":\r\n\t\t$cmd = \"setToolTo $gMove\";\r\n"
		+ "\t\tbreak;\r\n\r\n\t\tcase \"-toolToRotate\":\r\n\t\t$cmd = \"setToolTo $gRotate\";\r\n\t\tbreak;\r\n\t\t}\r\n\r\n\treturn $cmd;\r\n\t}\r\n\r\nglobal proc zooRemoveTrigger( string $trigger ) {\r\n\tdeleteAttr -at \"zooTrigCmd0\" $trigger;\r\n\tint $slots[] = `zooGetUsedTriggerSlots $trigger`;\r\n\tfor( $slot in $slots ) deleteAttr -at ( \"zooTrig\"+ $slot ) $trigger;\r\n\t}\r\n\r\nglobal proc zooMakeTrigger( string $trigger, string $cmd, string $connects[] ) {\r\n\tzooTrigSetCmd $trigger $cmd;\r\n\tfor( $obj in $connects ) zooAddConnect $trigger $obj;\r\n\t}\r\n\r\nglobal proc zooTrigSetCmd( string $trigger, string $cmd ) {\r\n\tif( !`objExists $trigger` ) return;\r\n\r\n\tstring $cmdAttr = \"zooTrigCmd0\";\r\n\tif( !`objExists ( $trigger +\".\"+ $cmdAttr )` ) addAttr -ln $cmdAttr -dt \"string\" $trigger;\r\n\tsetAttr -type \"string\" ( $trigger +\".\"+ $cmdAttr ) $cmd;\r\n\t}\r\n\r\nglobal proc string zooTrigGetCmd( string $trigger ) {\r\n\tstring $cmdAttr = \"zooTrigCmd0\";\r\n\tif( !`objExists $trigger` ) return \"\";\r\n\tif( !`objExists ( $trigger +\".\"+ $cmdAttr )` ) return \"\";\r\n\tstring $cmdAttr = \"zooTrigCmd0\";\r\n\tstring $cmd = `getAttr ( $trigger +\".\"+ $cmdAttr )`;\r\n"
		+ "\treturn $cmd;\r\n\t}\r\n\r\nglobal proc int zooAddConnect( string $trigger, string $connect ) {\r\n\tif( !`objExists $trigger`) return -1;\r\n\tif( !`objExists $connect`) return -1;\r\n\r\n\tint $slot = `zooGetNextTriggerSlot $trigger`;\r\n\tstring $slotPrefix = \"zooTrig\";\r\n\tstring $slotPath = ( $trigger +\".\"+ $slotPrefix + $slot );\r\n\r\n\tif( !`objExists $slotPath` ) addAttr -ln ( $slotPrefix + $slot ) -at bool $trigger;\r\n\tconnectAttr -f ( $connect +\".message\" ) $slotPath;\r\n\treturn $slot;\r\n\t}\r\n\r\nglobal proc zooRemoveConnect( string $trigger, string $connect ) {\r\n\tif( !`objExists $trigger`) return;\r\n\tif( !`objExists $connect`) return;\r\n\r\n\tstring $connections[] = `connectionInfo -dfs ( $connect +\".msg\" )`;\r\n\tint $slots[] = `zooGetConnectSlots $trigger $connect`;\r\n\r\n\tfor( $a in $slots ) deleteAttr -at ( \"zooTrig\"+ $a ) $trigger;\r\n\t}\r\n\r\nglobal proc int[] zooGetConnectSlots( string $trigger, string $connect ) {\r\n\tif( !`objExists $trigger`) return {};\r\n\tif( !`objExists $connect`) return {};\r\n\r\n\tstring $connections[] = `connectionInfo -dfs ( $connect +\".msg\" )`;\r\n"
		+ "\tint $slots[];\r\n\r\n\tfor( $n=0; $n<`size $connections`; $n++ ) if( `match ( \"^\"+ $trigger +\".zooTrig[0-9]+$\" ) $connections[$n]`!=\"\" ) $slots[( `size $slots` )] = `match \"[0-9]+$\" $connections[$n]`;\r\n\treturn $slots;\r\n\t}\r\n\r\nglobal proc string[] zooGetConnects( string $trigger ) {\r\n\tif( !`objExists $trigger`) return {};\r\n\tstring $attrs[] = `listAttr -ud $trigger`;\r\n\tstring $objects[];\r\n\tstring $validObjs[];\r\n\tstring $slotPrefix = \"zooTrig\";\r\n\tstring $matchStr = \"^\"+ $slotPrefix +\"[0-9]+$\";\r\n\r\n\tfor( $attr in $attrs ) if( `match $matchStr $attr` != \"\" ) $objects[( `size $objects` )] = `connectionInfo -sfd ( $trigger +\".\"+ $attr )`;\r\n\tfor( $n=0; $n<`size $objects`; $n++ ) if( `objExists $objects[$n]` ) $validObjs[( `size $validObjs` )] = `match \"^[^.]+\" $objects[$n]`;\r\n\r\n\treturn $validObjs;\r\n\t}\r\n\r\nglobal proc zooRemoveTriggerSlots( string $trigger, int $slot ) {\r\n\tif( !`objExists $trigger` ) return;\r\n\tif( !`objExists ( $trigger +\".zooTrig\"+ $slot )` ) return;\r\n\tdeleteAttr ( $trigger +\".zooTrig\"+ $slot );\r\n\t}\r\n\r\nglobal proc int zooGetNextTriggerSlot( string $trigger ) {\r\n"
		+ "\tint $slots[] = `zooGetAllTriggerSlots $trigger`;\r\n\tint $used[] = `zooGetUsedTriggerSlots $trigger`;\r\n\tint $unused[] = sort(`zooSubIntArray $slots $used`);\r\n\tint $next = 1;\r\n\r\n\tif( `size $unused` ) $next = $unused[0];\r\n\telse if( `size $slots` ) $next = $slots[( `size $slots`-1 )]+1;\r\n\r\n\treturn $next;\r\n\t}\r\n\r\n\r\nglobal proc zooTrigInstallShelfPopup() {\r\n\tstring $buttons[] = `zooShelveItGetShelfButtonAll zooTriggered`;\r\n\tfor( $button in $buttons ) if( `control -exists $button` ) if ( !`shelfButton -q -numberOfPopupMenus $button` ) {\r\n\t\tpopupMenu -p $button;\r\n\t\tmenuItem -l \"load control window\" -c ( \"zooTriggered\" );\r\n\t\tmenuItem -divider 1;\r\n\t\tmenuItem -l \"Help...\" -c ( \"zooTriggeredHelp help\" );\r\n\t\tmenuItem -l \"About\" -c ( \"zooTriggeredHelp about\" );\r\n\t\t}\r\n\t}\r\n\r\nglobal proc int[] zooGetUsedTriggerSlots( string $obj ) {\r\n\tstring $slotPrefix = \"zooTrig\";\r\n\tint $slots[] = `zooGetAllTriggerSlots $obj`;\r\n\tint $usedSlots[];\r\n\r\n\tfor( $slot in $slots ) if( `connectionInfo -sfd ( $obj+\".\"+$slotPrefix+$slot )` != \"\" ) $usedSlots[( `size $usedSlots` )] = $slot;\r\n"
		+ "\r\n\treturn $usedSlots;\r\n\t}\r\n\r\nglobal proc int[] zooGetAllTriggerSlots( string $trigger ) {\r\n\tif( !`objExists $trigger` ) return {};\r\n\r\n\tstring $attrs[] = `listAttr -ud $trigger`;\r\n\tstring $slotPrefix = \"zooTrig\";\r\n\tstring $matchStr = \"^\"+ $slotPrefix +\"[0-9]+$\";\r\n\tint $numbers[];\r\n\tint $prefixLength = `size $slotPrefix`;\r\n\tint $lastAttr = 0;\r\n\r\n\tfor( $attr in $attrs ) if( `match $matchStr $attr` != \"\" ) $numbers[( `size $numbers` )] = (int)`match \"[0-9]+$\" $attr`;\r\n\t$numbers = `sort $numbers`;\r\n\r\n\treturn $numbers;\r\n\t}\r\n\r\nglobal proc string[] zooGetAllTriggers() {\r\n\tstring $allObjects[] = `ls -type transform`;\r\n\tstring $trigs[];\r\n\r\n\tfor ( $obj in $allObjects ) if ( `objExists ( $obj +\".zooTrigCmd0\" )` ) $trigs[( `size $trigs` )] = $obj;\r\n\r\n\treturn $trigs;\r\n\t}\r\n\r\nglobal proc zooTriggeredLoad() {\r\n\tglobal int $zooTriggered;\r\n\tif( !$zooTriggered ) {\r\n\t\t$zooTriggered = `scriptJob -cu 1 -e SelectionChanged ( \"zooTriggerSelection\" )`;\r\n\t\tzooTrigUpdateUIState;\r\n\t\t}\r\n\r\n\telse warning \"already loaded\";\r\n\t}\r\n\r\nglobal proc zooTriggeredUnload() {\r\n"
		+ "\tglobal int $zooTriggered;\r\n\tif( `scriptJob -ex $zooTriggered` ) {\r\n\t\tscriptJob -k $zooTriggered;\r\n\t\t$zooTriggered = 0;\r\n\t\tzooTrigUpdateUIState;\r\n\t\t}\r\n\r\n\telse warning \"zooTriggered isn't loaded\";\r\n\t}\r\n\r\nglobal proc int zooTriggeredState() {\r\n\tglobal int $zooTriggered;\r\n\tif ( `scriptJob -exists $zooTriggered` && $zooTriggered != 0 ) return 1;\r\n\treturn 0;\r\n\t}\r\n\r\nglobal proc string zooShelveItInstallShelfButton( string $buttonTag ) {\r\n\tglobal string $gShelfTopLevel;\r\n\tstring $shelfButtonName = `zooShelveItGetShelfButton $buttonTag`;\r\n\tstring $currentShelf = `shelfTabLayout -q -selectTab $gShelfTopLevel`;\r\n\tstring $buttonName = `shelfButton -p $currentShelf -docTag $buttonTag`;\r\n\r\n\treturn $buttonName;\r\n\t}\r\n\r\nglobal proc string zooShelveItGetShelfButton( string $buttonTag ) {\r\n\tglobal string $gShelfTopLevel;\r\n\tstring $buttonName = \"\";\r\n\tstring $shelfButtons[] = eval( \"shelfLayout -q -ca `shelfTabLayout -q -selectTab $gShelfTopLevel`\" );\r\n\r\n\tfor ( $button in $shelfButtons ) if( `control -exists $button` ) if( `control -q -docTag $button` == $buttonTag ) $buttonName = $button;\r\n"
		+ "\treturn $buttonName;\r\n\t}\r\n\r\nglobal proc string zooShelveItGetShelfButtonFor( string $shelf, string $buttonTag ) {\r\n\tglobal string $gShelfTopLevel;\r\n\tstring $buttonName = \"\";\r\n\tstring $shelfButtons[] = `shelfLayout -q -ca $shelf`;\r\n\r\n\tfor ( $button in $shelfButtons ) if( `control -exists $button` ) if( `control -q -docTag $button` == $buttonTag ) $buttonName = $button;\r\n\treturn $buttonName;\r\n\t}\r\n\r\nglobal proc string[] zooShelveItGetShelfButtonAll( string $buttonTag ) {\r\n\tglobal string $gShelfTopLevel;\r\n\tstring $buttonNames[];\r\n\tstring $shelves[] = `shelfTabLayout -q -ca $gShelfTopLevel`;\r\n\r\n\tfor( $shelf in $shelves ) {\r\n\t\tstring $shelfButtons[] = `shelfLayout -q -ca $shelf`;\r\n\t\tfor ( $button in $shelfButtons ) if( `control -exists $button` ) if( `control -q -docTag $button` == $buttonTag ) $buttonNames[( `size $buttonNames` )] = $button;\r\n\t\t}\r\n\r\n\treturn $buttonNames;\r\n\t}\r\n\r\nglobal proc int[] zooSubIntArray( int $a1[], int $a2[] ) {\r\n\tint $res[];\r\n\tfor( $x in $a1 ){\r\n\t\tint $isInArray = 0;\r\n\t\tfor( $y in $a2 ) if( $x == $y ) { $isInArray = 1; break; }\r\n"
		+ "\t\tif( !$isInArray ) $res[( `size $res` )] = $x;\r\n\t\t}\r\n\treturn $res;\r\n\t}\r\n\r\nzooTriggeredLoad;\r\n\r\n//zoo.end");
	setAttr ".st" 2;
createNode script -n "ijConstrain";
	setAttr ".b" -type "string" (
		"//HandContraint v1.1 for Maya 6.0.1\r\n//Created by Ian Jones\r\n//Copyright 2005\r\n\r\n//Last Changed March 23, 2005\r\n\r\n//Creates a muscle system to control a knee/elbow like cituation, other examples coming later.\r\n\r\n//\r\n// constrainHand\r\n//\r\n// Created by Ian Jones - MelScripts@shrtcww.com\r\n// Created : 19\tFeburary 2005\r\n//\r\n// Usage:\r\n//  simply run the command:\r\n//\tijConstrainHand($hand, $ikConstSpace);\r\n//\r\n// Ian Jones 3772005...\r\n\r\nproc ijConstrainHand(string $handctrl)\r\n{\r\n\t\r\n\tstring $window = `window -title \"ijContrainHand v1.1 by Ian Jones\"\r\n\r\n \t\t-iconName \"ijContrainHand\"\r\n\r\n \t\t-widthHeight 225 120`;\r\n\r\n \tcolumnLayout -adjustableColumn true;\r\n\r\n \t    text -w 60 -align \"center\" -label \"Select 1 object to be constrainor/constranieee\";\r\n\t\r\n\t\tbutton -label \"Constain Hand to selected object\" -command ( \"ijConstrain2Hand(\\\"\" + $handctrl + \"\\\");deleteUI -window \" + $window + \";\" );\r\n\r\n\t\tbutton -label \"Constain selected Object to Hand\" -command ( \"ijConstrain2Object(\\\"\" + $handctrl + \"\\\");deleteUI -window \" + $window + \";\" );\r\n"
		+ "\r\n \t    button -label \"Close\" -command (\"deleteUI -window \" + $window);\r\n\r\n \tsetParent ..;\r\n\r\n \tshowWindow $window;\r\n\r\n}\r\n\r\nproc ijConstrainObject(string $handctrl)\r\n{\r\n\t\r\n\tstring $window = `window -title \"ijContrainHand v1.1 by Ian Jones\"\r\n\r\n \t\t-iconName \"ijContrainHand\"\r\n\r\n \t\t-widthHeight 150 65`;\r\n\r\n \tcolumnLayout -adjustableColumn true;\r\n\r\n \t    text -w 60 -align \"center\" -label \"Select 1 object to be constrainor/constranieee\";\r\n\r\n\t\tbutton -label \"Constain selected Object to Hand\" -command ( \"ijConstrain2Object(\\\"\" + $handctrl + \"\\\")\" );\r\n\r\n \t    button -label \"Close\" -command (\"deleteUI -window \" + $window);\r\n\r\n \tsetParent ..;\r\n\r\n \tshowWindow $window;\r\n\r\n}\r\n\r\nproc ijConstrain2Object(string $handctrl)\r\n{\r\n\t\tstring $selection[] = `ls -sl`;\r\n\t\tstring $object = $selection[0];\r\n\t\t\r\n\t\tstring $handContraint[] =`parentConstraint -mo $handctrl $object `;\r\n\t\t\r\n\t\tstring $tokenizedObject[];\r\n\t\ttokenize $handctrl \":\" $tokenizedObject;\r\n\t\tif ((`size ($tokenizedObject)`) > 1)\r\n\t\t{\r\n\t\t\tselect $object;\r\n\t\t\taddAttr -shortName follW -longName ( \"Follow_\" + $tokenizedObject[1] ) -k true -defaultValue 0.0 -minValue 0.0 -maxValue 1.0;\r\n"
		+ "\t\t\tconnectAttr -f ( $object + \".Follow_\" + $tokenizedObject[1] ) ( $handContraint[0] + \".\" + $handctrl + \"W0\" );\r\n\t\t}\r\n\t\telse\r\n\t\t{\r\n\t\t\tselect $object;\r\n\t\t\taddAttr -shortName follW -longName ( \"Follow_\" + $handctrl ) -k true -defaultValue 0.0 -minValue 0.0 -maxValue 1.0;\r\n\t\t\tconnectAttr -f ( $object + \".Follow_\" + $handctrl ) ( $handContraint[0] + \".\" + $handctrl + \"W0\" );\r\n\t\t}\r\n}\r\n\r\nproc ijConstrain2Hand(string $handctrl)\r\n{\r\n\t\tstring $selection[] = `ls -sl`;\r\n\t\tstring $object = $selection[0];\r\n\t\t\r\n\t\tselect $handctrl;\r\n\t\tpickWalk -d up;\r\n\t\tpickWalk -d up;\r\n\t\t\r\n\t\tstring $selection[] = `ls -sl`;\r\n\t\tstring $ikSpace = $selection[0];\r\n\t\t\r\n\t\t\r\n\t\tstring $handContraint[] =`parentConstraint -mo $object $ikSpace`;\r\n\t\t\r\n\t\tstring $numOfConstraints[] = `parentConstraint -q -tl $handContraint[0]`;\r\n\t\tint $size = (`size($numOfConstraints)`) - 1;\r\n\t\t\r\n\t\t\r\n\t\tselect $handctrl;\r\n\t\taddAttr -shortName ( \"F\" + $object) -longName ( \"Follow_\" + $object ) -k true -defaultValue 0.0 -minValue 0.0 -maxValue 1.0;\r\n\t\tconnectAttr -f ( $handctrl + \".Follow_\" + $object ) ( $handContraint[0] + \".\" + $object + \"W\" + $size );\r\n"
		+ "\t}");
	setAttr ".st" 2;
createNode script -n "zooChangeSpace";
	setAttr ".b" -type "string" (
		"//zooChangeSpace\r\n//Copywright Hamish McKenzie 2005\r\n\r\n//script documentation is at the end of this file\r\nglobal proc zooChangeSpace( string $optionStr, string $obj ) {\r\n\tstring $optionTemp[];\r\n\tfloat $pos[] = `xform -q -ws -rp $obj`;\r\n\tfloat $rot[] = `xform -q -ws -ro $obj`;\r\n\r\n\r\n\t//------\r\n\t//is there a list of objects to store pre command transforms for\r\n\t//------\r\n\t$optionTemp = `zooGetFlagArguments $optionStr objs`;\r\n\tstring $objs[] = $optionTemp;\r\n\tfloat $objsPos[];\r\n\tfloat $objsRot[];\r\n\tfor( $a in $objs ) if( `objExists $a` ) {\r\n\t\tfloat $aPos[] = `xform -q -ws -rp $a`;\r\n\t\tfloat $aRot[] = `xform -q -ws -ro $a`;\r\n\t\tfor( $b in $aPos ) $objsPos[( `size $objsPos` )] = $b;\r\n\t\tfor( $b in $aRot ) $objsRot[( `size $objsRot` )] = $b;\r\n\t\t}\r\n\r\n\r\n\t//------\r\n\t//if any attributes are specified, set them to their specified value\r\n\t//------\r\n\t$optionTemp = `zooGetFlagArguments $optionStr attr`;\r\n\tstring $attr = $optionTemp[0];\r\n\tfloat $val = $optionTemp[1];\r\n\r\n\tif( `objExists ( $obj+\".\"+$attr )`) setAttr ( $obj+\".\"+$attr ) $val;\r\n"
		+ "\tfor( $a in $objs ) if( `objExists ( $a+\".\"+$attr )`) setAttr ( $a+\".\"+$attr ) $val;\r\n\r\n\r\n\t//------\r\n\t//if there is a cmd flag, execute that command\r\n\t//------\r\n\t$optionTemp = `zooGetFlagArguments $optionStr cmd`;\r\n\tstring $cmd = \"\";\r\n\tfor( $a in $optionTemp ) $cmd += $a + \" \";\r\n\r\n\tif( $cmd != \"\" ) eval( $cmd );\r\n\r\n\r\n\t//------\r\n\t//now, set the position and rotation values back to what they were\r\n\t//------\r\n\tmove -a -ws -rpr $pos[0] $pos[1] $pos[2] $obj;\r\n\trotate -a -ws $rot[0] $rot[1] $rot[2] $obj;\r\n\r\n\r\n\t//------\r\n\t//and for the optional object list as well\r\n\t//------\r\n\tfor( $n=0; $n<`size $objs`; $n++ ) {\r\n\t\tmove -a -ws -rpr $objsPos[( $n*3 )] $objsPos[( $n*3+1 )] $objsPos[( $n*3+2 )] $objs[$n];\r\n\t\trotate -a -ws $objsRot[( $n*3 )] $objsRot[( $n*3+1 )] $objsRot[( $n*3+2 )] $objs[$n];\r\n\t\t}\r\n\t}\r\n\r\n\r\n//zoo.end");
	setAttr ".st" 2;
createNode displayLayer -n "Ball_untouchables";
	setAttr ".dt" 2;
	setAttr ".do" 1;
createNode condition -n "switch_Ball_spine_A_ctrl1_to_space_0";
	addAttr -ci true -sn "zooPrimOut" -ln "zooPrimOut" -min 0 -max 1 -at "bool";
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode condition -n "switch_Ball_spine_B_ctrl1_to_space_0";
	addAttr -ci true -sn "zooPrimOut" -ln "zooPrimOut" -min 0 -max 1 -at "bool";
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode condition -n "switch_Ball_spine_B_ctrl1_to_space_1";
	addAttr -ci true -sn "zooPrimOut" -ln "zooPrimOut" -min 0 -max 1 -at "bool";
	setAttr ".st" 1;
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode condition -n "switch_Ball_spine_C_ctrl1_to_space_0";
	addAttr -ci true -sn "zooPrimOut" -ln "zooPrimOut" -min 0 -max 1 -at "bool";
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode condition -n "switch_Ball_spine_C_ctrl1_to_space_1";
	addAttr -ci true -sn "zooPrimOut" -ln "zooPrimOut" -min 0 -max 1 -at "bool";
	setAttr ".st" 1;
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode condition -n "switch_Ball_spine_D_ctrl1_to_space_0";
	addAttr -ci true -sn "zooPrimOut" -ln "zooPrimOut" -min 0 -max 1 -at "bool";
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode condition -n "switch_Ball_spine_D_ctrl1_to_space_1";
	addAttr -ci true -sn "zooPrimOut" -ln "zooPrimOut" -min 0 -max 1 -at "bool";
	setAttr ".st" 1;
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode time -n "Ball_basicSpine_prim";
	addAttr -ci true -sn "zooBrand" -ln "zooBrand" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "zooBrand_primitive" -ln "zooBrand_primitive" -dt "string";
	addAttr -ci true -sn "zooBrand_id" -ln "zooBrand_id" -dt "string";
	addAttr -ci true -sn "zooBrand_char" -ln "zooBrand_char" -dt "string";
	addAttr -ci true -sn "zooCSTinput0" -ln "zooCSTinput0" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "zooCSTinput1" -ln "zooCSTinput1" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "zooBrand_options" -ln "zooBrand_options" -dt "string";
	addAttr -ci true -sn "zooBrand_version" -ln "zooBrand_version" -dt "string";
	setAttr ".o" 0;
	setAttr ".zooBrand_primitive" -type "string" "basicSpine";
	setAttr ".zooBrand_id" -type "string" "0";
	setAttr ".zooBrand_char" -type "string" "Ball";
	setAttr ".zooBrand_options" -type "string" " -type sphere -scale 0.25 -curve 1";
	setAttr ".zooBrand_version" -type "string" "2";
createNode makeNurbSphere -n "makeNurbSphere1";
	setAttr ".ax" -type "double3" 0 1 0 ;
createNode pointOnSurfaceInfo -n "tail_parent_surface_connect";
	setAttr ".u" 2;
	setAttr ".v" 2;
createNode animCurveTL -n "ball_SQ_tip_ctrl_translateX";
	setAttr ".tan" 2;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "ball_SQ_tip_ctrl_translateY";
	setAttr ".tan" 2;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "ball_SQ_tip_ctrl_translateZ";
	setAttr ".tan" 2;
	setAttr ".ktv[0]"  0 0;
select -ne :time1;
	setAttr ".o" 0;
select -ne :renderPartition;
	setAttr -s 5 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 12 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 3 ".tx";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	addAttr -ci true -sn "ani" -ln "animation" -bt "ANIM" -min 0 -max 1 -at "bool";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr ".enpt" no;
	setAttr ".hgcd" no;
	setAttr ".hgci" no;
	setAttr -k on ".ani";
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
connectAttr "Ball_untouchables.di" "ball_baseJ.do";
connectAttr "ball_baseJ.s" "ball_tipJ.is";
connectAttr "ball_squashStr_scale_mulDiv.oz" "ball_tipJ.tx";
connectAttr "Ball_untouchables.di" "ball_tipJ.do";
connectAttr "ball_tipJ.tx" "effector1.tx";
connectAttr "ball_tipJ.ty" "effector1.ty";
connectAttr "ball_tipJ.tz" "effector1.tz";
connectAttr "Ball_untouchables.di" "effector1.do";
connectAttr "Ball_untouchables.di" "Translate.do";
connectAttr "ball_squashStr_scale_mulDiv.oy" "Scale.sx";
connectAttr "ball_squashStr_scale_mulDiv.ox" "Scale.sy";
connectAttr "ball_squashStr_scale_mulDiv.oy" "Scale.sz";
connectAttr "Ball_untouchables.di" "Scale.do";
connectAttr "Ball_untouchables.di" "ball_surface.do";
connectAttr "ball_surface_orientConstraint1.crx" "ball_surface.rx";
connectAttr "ball_surface_orientConstraint1.cry" "ball_surface.ry";
connectAttr "ball_surface_orientConstraint1.crz" "ball_surface.rz";
connectAttr "groupId2.id" "ball_surfaceShape.iog.og[7].gid";
connectAttr "tweakSet1.mwc" "ball_surfaceShape.iog.og[7].gco";
connectAttr "ffd1GroupId.id" "ball_surfaceShape.iog.og[8].gid";
connectAttr "ffd1Set.mwc" "ball_surfaceShape.iog.og[8].gco";
connectAttr "ffd1.og[0]" "ball_surfaceShape.cr";
connectAttr "tweak1.pl[0].cp[0]" "ball_surfaceShape.twl";
connectAttr "Ball_untouchables.di" "ball_surfaceShape.do";
connectAttr "ball_surface.ro" "ball_surface_orientConstraint1.cro";
connectAttr "ball_surface.pim" "ball_surface_orientConstraint1.cpim";
connectAttr "ball_rotate_ctrl.r" "ball_surface_orientConstraint1.tg[0].tr";
connectAttr "ball_rotate_ctrl.ro" "ball_surface_orientConstraint1.tg[0].tro";
connectAttr "ball_rotate_ctrl.pm" "ball_surface_orientConstraint1.tg[0].tpm";
connectAttr "ball_surface_orientConstraint1.w0" "ball_surface_orientConstraint1.tg[0].tw"
		;
connectAttr "Ball_untouchables.di" "ball_surface_orientConstraint1.do";
connectAttr "Ball_untouchables.di" "ball_surfaceShapeOrig.do";
connectAttr "Ball_untouchables.di" "ffd1Lattice.do";
connectAttr "cluster1.og[0]" "ffd1LatticeShape.li";
connectAttr "tweak2.pl[0].cp[0]" "ffd1LatticeShape.twl";
connectAttr "cluster1GroupId.id" "ffd1LatticeShape.iog.og[0].gid";
connectAttr "cluster1Set.mwc" "ffd1LatticeShape.iog.og[0].gco";
connectAttr "groupId4.id" "ffd1LatticeShape.iog.og[1].gid";
connectAttr "tweakSet2.mwc" "ffd1LatticeShape.iog.og[1].gco";
connectAttr "Ball_untouchables.di" "ffd1LatticeShape.do";
connectAttr "Ball_untouchables.di" "ffd1LatticeShapeOrig.do";
connectAttr "Ball_untouchables.di" "ffd1Base.do";
connectAttr "Ball_untouchables.di" "ffd1BaseShape.do";
connectAttr "ball_main_ctrl.ShowBallRotate" "ball_rotate_ctrl.v";
connectAttr "ball_rotate_ctrl_pointConstraint1.ctx" "ball_rotate_ctrl.tx";
connectAttr "ball_rotate_ctrl_pointConstraint1.cty" "ball_rotate_ctrl.ty";
connectAttr "ball_rotate_ctrl_pointConstraint1.ctz" "ball_rotate_ctrl.tz";
connectAttr "Scale.sx" "ball_rotate_ctrl.sx" -l on;
connectAttr "Scale.sx" "ball_rotate_ctrl.sy" -l on;
connectAttr "Scale.sx" "ball_rotate_ctrl.sz" -l on;
connectAttr "ball_rotate_ctrl.pim" "ball_rotate_ctrl_pointConstraint1.cpim";
connectAttr "ball_rotate_ctrl.rp" "ball_rotate_ctrl_pointConstraint1.crp";
connectAttr "ball_rotate_ctrl.rpt" "ball_rotate_ctrl_pointConstraint1.crt";
connectAttr "ball_SQ_base_ctrl.t" "ball_rotate_ctrl_pointConstraint1.tg[0].tt";
connectAttr "ball_SQ_base_ctrl.rp" "ball_rotate_ctrl_pointConstraint1.tg[0].trp"
		;
connectAttr "ball_SQ_base_ctrl.rpt" "ball_rotate_ctrl_pointConstraint1.tg[0].trt"
		;
connectAttr "ball_SQ_base_ctrl.pm" "ball_rotate_ctrl_pointConstraint1.tg[0].tpm"
		;
connectAttr "ball_rotate_ctrl_pointConstraint1.w0" "ball_rotate_ctrl_pointConstraint1.tg[0].tw"
		;
connectAttr "ball_SQ_tip_ctrl.t" "ball_rotate_ctrl_pointConstraint1.tg[1].tt";
connectAttr "ball_SQ_tip_ctrl.rp" "ball_rotate_ctrl_pointConstraint1.tg[1].trp";
connectAttr "ball_SQ_tip_ctrl.rpt" "ball_rotate_ctrl_pointConstraint1.tg[1].trt"
		;
connectAttr "ball_SQ_tip_ctrl.pm" "ball_rotate_ctrl_pointConstraint1.tg[1].tpm";
connectAttr "ball_rotate_ctrl_pointConstraint1.w1" "ball_rotate_ctrl_pointConstraint1.tg[1].tw"
		;
connectAttr "ball_SQ_tip_ctrl_translateX.o" "ball_SQ_tip_ctrl.tx";
connectAttr "ball_SQ_tip_ctrl_translateY.o" "ball_SQ_tip_ctrl.ty";
connectAttr "ball_SQ_tip_ctrl_translateZ.o" "ball_SQ_tip_ctrl.tz";
connectAttr "ball_baseJ.msg" "ball_ikHandle.hsj";
connectAttr "effector1.hp" "ball_ikHandle.hee";
connectAttr "ikSCsolver.msg" "ball_ikHandle.hsv";
connectAttr "addDoubleLinear1.o" "cluster1Handle.tx";
connectAttr "addDoubleLinear2.o" "cluster1Handle.ty";
connectAttr "ball_SQ_mid_ctrl.tz" "cluster1Handle.tz";
connectAttr "Ball_untouchables.di" "cluster1Handle.do";
connectAttr "Ball_untouchables.di" "cluster1HandleShape.do";
connectAttr "ball_SQ_mid_ctrl_space_pointConstraint1.ctx" "ball_SQ_mid_ctrl_space.tx"
		;
connectAttr "ball_SQ_mid_ctrl_space_pointConstraint1.cty" "ball_SQ_mid_ctrl_space.ty"
		;
connectAttr "ball_SQ_mid_ctrl_space_pointConstraint1.ctz" "ball_SQ_mid_ctrl_space.tz"
		;
connectAttr "ball_SQ_mid_ctrl_space_aimConstraint1.crx" "ball_SQ_mid_ctrl_space.rx"
		;
connectAttr "ball_SQ_mid_ctrl_space_aimConstraint1.cry" "ball_SQ_mid_ctrl_space.ry"
		;
connectAttr "ball_SQ_mid_ctrl_space_aimConstraint1.crz" "ball_SQ_mid_ctrl_space.rz"
		;
connectAttr "Scale.sx" "ball_SQ_mid_ctrl.sx";
connectAttr "Scale.sx" "ball_SQ_mid_ctrl.sy";
connectAttr "Scale.sx" "ball_SQ_mid_ctrl.sz";
connectAttr "ball_SQ_mid_ctrl_space.pim" "ball_SQ_mid_ctrl_space_pointConstraint1.cpim"
		;
connectAttr "ball_SQ_mid_ctrl_space.rp" "ball_SQ_mid_ctrl_space_pointConstraint1.crp"
		;
connectAttr "ball_SQ_mid_ctrl_space.rpt" "ball_SQ_mid_ctrl_space_pointConstraint1.crt"
		;
connectAttr "ball_SQ_tip_ctrl.t" "ball_SQ_mid_ctrl_space_pointConstraint1.tg[0].tt"
		;
connectAttr "ball_SQ_tip_ctrl.rp" "ball_SQ_mid_ctrl_space_pointConstraint1.tg[0].trp"
		;
connectAttr "ball_SQ_tip_ctrl.rpt" "ball_SQ_mid_ctrl_space_pointConstraint1.tg[0].trt"
		;
connectAttr "ball_SQ_tip_ctrl.pm" "ball_SQ_mid_ctrl_space_pointConstraint1.tg[0].tpm"
		;
connectAttr "ball_SQ_mid_ctrl_space_pointConstraint1.w0" "ball_SQ_mid_ctrl_space_pointConstraint1.tg[0].tw"
		;
connectAttr "ball_SQ_base_ctrl.t" "ball_SQ_mid_ctrl_space_pointConstraint1.tg[1].tt"
		;
connectAttr "ball_SQ_base_ctrl.rp" "ball_SQ_mid_ctrl_space_pointConstraint1.tg[1].trp"
		;
connectAttr "ball_SQ_base_ctrl.rpt" "ball_SQ_mid_ctrl_space_pointConstraint1.tg[1].trt"
		;
connectAttr "ball_SQ_base_ctrl.pm" "ball_SQ_mid_ctrl_space_pointConstraint1.tg[1].tpm"
		;
connectAttr "ball_SQ_mid_ctrl_space_pointConstraint1.w1" "ball_SQ_mid_ctrl_space_pointConstraint1.tg[1].tw"
		;
connectAttr "ball_SQ_mid_ctrl_space.pim" "ball_SQ_mid_ctrl_space_aimConstraint1.cpim"
		;
connectAttr "ball_SQ_mid_ctrl_space.t" "ball_SQ_mid_ctrl_space_aimConstraint1.ct"
		;
connectAttr "ball_SQ_mid_ctrl_space.rp" "ball_SQ_mid_ctrl_space_aimConstraint1.crp"
		;
connectAttr "ball_SQ_mid_ctrl_space.rpt" "ball_SQ_mid_ctrl_space_aimConstraint1.crt"
		;
connectAttr "ball_SQ_mid_ctrl_space.ro" "ball_SQ_mid_ctrl_space_aimConstraint1.cro"
		;
connectAttr "ball_SQ_tip_ctrl.t" "ball_SQ_mid_ctrl_space_aimConstraint1.tg[0].tt"
		;
connectAttr "ball_SQ_tip_ctrl.rp" "ball_SQ_mid_ctrl_space_aimConstraint1.tg[0].trp"
		;
connectAttr "ball_SQ_tip_ctrl.rpt" "ball_SQ_mid_ctrl_space_aimConstraint1.tg[0].trt"
		;
connectAttr "ball_SQ_tip_ctrl.pm" "ball_SQ_mid_ctrl_space_aimConstraint1.tg[0].tpm"
		;
connectAttr "ball_SQ_mid_ctrl_space_aimConstraint1.w0" "ball_SQ_mid_ctrl_space_aimConstraint1.tg[0].tw"
		;
connectAttr "ball_distance_botLocatorShape.wp" "ball_distanceDimShape.sp";
connectAttr "ball_distance_topLocatorShape.wp" "ball_distanceDimShape.ep";
connectAttr "tail_parent_surface_connect.p" "Tail_parent_space.t";
connectAttr "nurbsSphere1_normalConstraint1.crx" "Tail_parent_space.rx";
connectAttr "nurbsSphere1_normalConstraint1.cry" "Tail_parent_space.ry";
connectAttr "nurbsSphere1_normalConstraint1.crz" "Tail_parent_space.rz";
connectAttr "ball_main_ctrl.ShowTail" "Tail_parent_space.v";
connectAttr "makeNurbSphere1.os" "Tail_parent_spaceShape.cr";
connectAttr "Tail_parent_space.pim" "nurbsSphere1_normalConstraint1.cpim";
connectAttr "Tail_parent_space.t" "nurbsSphere1_normalConstraint1.ct";
connectAttr "Tail_parent_space.rp" "nurbsSphere1_normalConstraint1.crp";
connectAttr "Tail_parent_space.rpt" "nurbsSphere1_normalConstraint1.crt";
connectAttr "Tail_parent_space.ro" "nurbsSphere1_normalConstraint1.cro";
connectAttr "ball_surfaceShape.ws" "nurbsSphere1_normalConstraint1.tg[0].tgm";
connectAttr "nurbsSphere1_normalConstraint1.w0" "nurbsSphere1_normalConstraint1.tg[0].tw"
		;
connectAttr "Ball_basicSpine_prim.msg" "Ball_spine_A_space1.zooPrimOut";
connectAttr "Ball_basicSpine_prim.msg" "Ball_tail_A_ctrl.zooPrimOut";
connectAttr "Ball_spine_B_space1_parentConstraint1.crx" "Ball_spine_B_space1.rx"
		;
connectAttr "Ball_spine_B_space1_parentConstraint1.cry" "Ball_spine_B_space1.ry"
		;
connectAttr "Ball_spine_B_space1_parentConstraint1.crz" "Ball_spine_B_space1.rz"
		;
connectAttr "Ball_basicSpine_prim.msg" "Ball_spine_B_space1.zooPrimOut";
connectAttr "Ball_basicSpine_prim.msg" "Ball_tail_B_ctrl.zooPrimOut";
connectAttr "Ball_spine_C_space1_parentConstraint1.crx" "Ball_spine_C_space1.rx"
		;
connectAttr "Ball_spine_C_space1_parentConstraint1.cry" "Ball_spine_C_space1.ry"
		;
connectAttr "Ball_spine_C_space1_parentConstraint1.crz" "Ball_spine_C_space1.rz"
		;
connectAttr "Ball_basicSpine_prim.msg" "Ball_spine_C_space1.zooPrimOut";
connectAttr "Ball_basicSpine_prim.msg" "Ball_tail_C_ctrl.zooPrimOut";
connectAttr "Ball_spine_D_space1_parentConstraint1.crx" "Ball_spine_D_space1.rx"
		;
connectAttr "Ball_spine_D_space1_parentConstraint1.cry" "Ball_spine_D_space1.ry"
		;
connectAttr "Ball_spine_D_space1_parentConstraint1.crz" "Ball_spine_D_space1.rz"
		;
connectAttr "Ball_basicSpine_prim.msg" "Ball_spine_D_space1.zooPrimOut";
connectAttr "Ball_basicSpine_prim.msg" "Ball_tail_D_ctrl.zooPrimOut";
connectAttr "switch_Ball_spine_D_ctrl1_to_space_0.ocr" "Ball_spine_D_space1_parentConstraint1.w0"
		;
connectAttr "Ball_spine_D_space1.ro" "Ball_spine_D_space1_parentConstraint1.cro"
		;
connectAttr "Ball_spine_D_space1.pim" "Ball_spine_D_space1_parentConstraint1.cpim"
		;
connectAttr "Ball_spine_D_space1.rp" "Ball_spine_D_space1_parentConstraint1.crp"
		;
connectAttr "Ball_spine_D_space1.rpt" "Ball_spine_D_space1_parentConstraint1.crt"
		;
connectAttr "Ball_tail_C_ctrl.t" "Ball_spine_D_space1_parentConstraint1.tg[0].tt"
		;
connectAttr "Ball_tail_C_ctrl.rp" "Ball_spine_D_space1_parentConstraint1.tg[0].trp"
		;
connectAttr "Ball_tail_C_ctrl.rpt" "Ball_spine_D_space1_parentConstraint1.tg[0].trt"
		;
connectAttr "Ball_tail_C_ctrl.r" "Ball_spine_D_space1_parentConstraint1.tg[0].tr"
		;
connectAttr "Ball_tail_C_ctrl.ro" "Ball_spine_D_space1_parentConstraint1.tg[0].tro"
		;
connectAttr "Ball_tail_C_ctrl.s" "Ball_spine_D_space1_parentConstraint1.tg[0].ts"
		;
connectAttr "Ball_tail_C_ctrl.pm" "Ball_spine_D_space1_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ball_spine_D_space1_parentConstraint1.w0" "Ball_spine_D_space1_parentConstraint1.tg[0].tw"
		;
connectAttr "switch_Ball_spine_C_ctrl1_to_space_0.ocr" "Ball_spine_C_space1_parentConstraint1.w0"
		;
connectAttr "Ball_spine_C_space1.ro" "Ball_spine_C_space1_parentConstraint1.cro"
		;
connectAttr "Ball_spine_C_space1.pim" "Ball_spine_C_space1_parentConstraint1.cpim"
		;
connectAttr "Ball_spine_C_space1.rp" "Ball_spine_C_space1_parentConstraint1.crp"
		;
connectAttr "Ball_spine_C_space1.rpt" "Ball_spine_C_space1_parentConstraint1.crt"
		;
connectAttr "Ball_tail_B_ctrl.t" "Ball_spine_C_space1_parentConstraint1.tg[0].tt"
		;
connectAttr "Ball_tail_B_ctrl.rp" "Ball_spine_C_space1_parentConstraint1.tg[0].trp"
		;
connectAttr "Ball_tail_B_ctrl.rpt" "Ball_spine_C_space1_parentConstraint1.tg[0].trt"
		;
connectAttr "Ball_tail_B_ctrl.r" "Ball_spine_C_space1_parentConstraint1.tg[0].tr"
		;
connectAttr "Ball_tail_B_ctrl.ro" "Ball_spine_C_space1_parentConstraint1.tg[0].tro"
		;
connectAttr "Ball_tail_B_ctrl.s" "Ball_spine_C_space1_parentConstraint1.tg[0].ts"
		;
connectAttr "Ball_tail_B_ctrl.pm" "Ball_spine_C_space1_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ball_spine_C_space1_parentConstraint1.w0" "Ball_spine_C_space1_parentConstraint1.tg[0].tw"
		;
connectAttr "switch_Ball_spine_B_ctrl1_to_space_0.ocr" "Ball_spine_B_space1_parentConstraint1.w0"
		;
connectAttr "Ball_spine_B_space1.ro" "Ball_spine_B_space1_parentConstraint1.cro"
		;
connectAttr "Ball_spine_B_space1.pim" "Ball_spine_B_space1_parentConstraint1.cpim"
		;
connectAttr "Ball_spine_B_space1.rp" "Ball_spine_B_space1_parentConstraint1.crp"
		;
connectAttr "Ball_spine_B_space1.rpt" "Ball_spine_B_space1_parentConstraint1.crt"
		;
connectAttr "Ball_tail_A_ctrl.t" "Ball_spine_B_space1_parentConstraint1.tg[0].tt"
		;
connectAttr "Ball_tail_A_ctrl.rp" "Ball_spine_B_space1_parentConstraint1.tg[0].trp"
		;
connectAttr "Ball_tail_A_ctrl.rpt" "Ball_spine_B_space1_parentConstraint1.tg[0].trt"
		;
connectAttr "Ball_tail_A_ctrl.r" "Ball_spine_B_space1_parentConstraint1.tg[0].tr"
		;
connectAttr "Ball_tail_A_ctrl.ro" "Ball_spine_B_space1_parentConstraint1.tg[0].tro"
		;
connectAttr "Ball_tail_A_ctrl.s" "Ball_spine_B_space1_parentConstraint1.tg[0].ts"
		;
connectAttr "Ball_tail_A_ctrl.pm" "Ball_spine_B_space1_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ball_spine_B_space1_parentConstraint1.w0" "Ball_spine_B_space1_parentConstraint1.tg[0].tw"
		;
connectAttr "Tail1_orientConstraint1.crx" "Tail1.rx";
connectAttr "Tail1_orientConstraint1.cry" "Tail1.ry";
connectAttr "Tail1_orientConstraint1.crz" "Tail1.rz";
connectAttr "Ball_untouchables.di" "Tail1.do";
connectAttr "Tail1.s" "Tail2.is";
connectAttr "Tail2_orientConstraint1.crx" "Tail2.rx";
connectAttr "Tail2_orientConstraint1.cry" "Tail2.ry";
connectAttr "Tail2_orientConstraint1.crz" "Tail2.rz";
connectAttr "Ball_untouchables.di" "Tail2.do";
connectAttr "Tail2.s" "Tail3.is";
connectAttr "Tail3_orientConstraint1.crx" "Tail3.rx";
connectAttr "Tail3_orientConstraint1.cry" "Tail3.ry";
connectAttr "Tail3_orientConstraint1.crz" "Tail3.rz";
connectAttr "Ball_untouchables.di" "Tail3.do";
connectAttr "Tail3.s" "Tail4.is";
connectAttr "Tail4_orientConstraint1.crx" "Tail4.rx";
connectAttr "Tail4_orientConstraint1.cry" "Tail4.ry";
connectAttr "Tail4_orientConstraint1.crz" "Tail4.rz";
connectAttr "Ball_untouchables.di" "Tail4.do";
connectAttr "Tail4.s" "Tail5.is";
connectAttr "Ball_untouchables.di" "Tail5.do";
connectAttr "Tail4.ro" "Tail4_orientConstraint1.cro";
connectAttr "Tail4.pim" "Tail4_orientConstraint1.cpim";
connectAttr "Tail4.jo" "Tail4_orientConstraint1.cjo";
connectAttr "Ball_tail_D_ctrl.r" "Tail4_orientConstraint1.tg[0].tr";
connectAttr "Ball_tail_D_ctrl.ro" "Tail4_orientConstraint1.tg[0].tro";
connectAttr "Ball_tail_D_ctrl.pm" "Tail4_orientConstraint1.tg[0].tpm";
connectAttr "Tail4_orientConstraint1.w0" "Tail4_orientConstraint1.tg[0].tw";
connectAttr "Ball_untouchables.di" "Tail4_orientConstraint1.do";
connectAttr "Tail3.ro" "Tail3_orientConstraint1.cro";
connectAttr "Tail3.pim" "Tail3_orientConstraint1.cpim";
connectAttr "Tail3.jo" "Tail3_orientConstraint1.cjo";
connectAttr "Ball_tail_C_ctrl.r" "Tail3_orientConstraint1.tg[0].tr";
connectAttr "Ball_tail_C_ctrl.ro" "Tail3_orientConstraint1.tg[0].tro";
connectAttr "Ball_tail_C_ctrl.pm" "Tail3_orientConstraint1.tg[0].tpm";
connectAttr "Tail3_orientConstraint1.w0" "Tail3_orientConstraint1.tg[0].tw";
connectAttr "Ball_untouchables.di" "Tail3_orientConstraint1.do";
connectAttr "Tail2.ro" "Tail2_orientConstraint1.cro";
connectAttr "Tail2.pim" "Tail2_orientConstraint1.cpim";
connectAttr "Tail2.jo" "Tail2_orientConstraint1.cjo";
connectAttr "Ball_tail_B_ctrl.r" "Tail2_orientConstraint1.tg[0].tr";
connectAttr "Ball_tail_B_ctrl.ro" "Tail2_orientConstraint1.tg[0].tro";
connectAttr "Ball_tail_B_ctrl.pm" "Tail2_orientConstraint1.tg[0].tpm";
connectAttr "Tail2_orientConstraint1.w0" "Tail2_orientConstraint1.tg[0].tw";
connectAttr "Ball_untouchables.di" "Tail2_orientConstraint1.do";
connectAttr "Tail1.ro" "Tail1_orientConstraint1.cro";
connectAttr "Tail1.pim" "Tail1_orientConstraint1.cpim";
connectAttr "Tail1.jo" "Tail1_orientConstraint1.cjo";
connectAttr "Ball_tail_A_ctrl.r" "Tail1_orientConstraint1.tg[0].tr";
connectAttr "Ball_tail_A_ctrl.ro" "Tail1_orientConstraint1.tg[0].tro";
connectAttr "Ball_tail_A_ctrl.pm" "Tail1_orientConstraint1.tg[0].tpm";
connectAttr "Tail1_orientConstraint1.w0" "Tail1_orientConstraint1.tg[0].tw";
connectAttr "Ball_untouchables.di" "Tail1_orientConstraint1.do";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr "rampShader1SG.msg" "lightLinker1.lnk[2].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr "lambert2SG.msg" "lightLinker1.lnk[3].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[4].llnk";
connectAttr "lambert3SG.msg" "lightLinker1.lnk[4].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[1].sllk";
connectAttr "rampShader1SG.msg" "lightLinker1.slnk[1].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[2].sllk";
connectAttr "lambert2SG.msg" "lightLinker1.slnk[2].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[3].sllk";
connectAttr "lambert3SG.msg" "lightLinker1.slnk[3].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[4].sllk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.slnk[4].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[5].sllk";
connectAttr ":initialParticleSE.msg" "lightLinker1.slnk[5].solk";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "ball_distanceDimShape.dist" "ball_squashStr_scale_mulDiv.i1x";
connectAttr "ball_scale_squ_correctional_mulDiv.oy" "ball_squashStr_scale_mulDiv.i1y"
		;
connectAttr "ball_distanceDimShape.dist" "ball_squashStr_scale_mulDiv.i1z";
connectAttr "ball_distanceDimShape.dist" "ball_squashStr_scale_mulDiv.i2y";
connectAttr "ball_scale_squ_correctional_mulDiv.ox" "ball_squashStr_scale_mulDiv.i2x"
		;
connectAttr "ball_main_ctrl.sx" "ball_squashStr_scale_mulDiv.i2z";
connectAttr "ball_main_ctrl.s" "ball_scale_squ_correctional_mulDiv.i1";
connectAttr "rampShader1SG.msg" "materialInfo1.sg";
connectAttr "checker1.oc" "lambert2.c";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "ball_surfaceShape.iog" "lambert2SG.dsm" -na;
connectAttr "subdivCylinder1Shape.iog" "lambert2SG.dsm" -na;
connectAttr "subdivCylinder2Shape.iog" "lambert2SG.dsm" -na;
connectAttr "subdivCylinder3Shape.iog" "lambert2SG.dsm" -na;
connectAttr "subdivCylinder4Shape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo2.sg";
connectAttr "lambert2.msg" "materialInfo2.m";
connectAttr "checker1.msg" "materialInfo2.t" -na;
connectAttr "place2dTexture1.o" "checker1.uv";
connectAttr "place2dTexture1.ofs" "checker1.fs";
connectAttr "ball_main_ctrl.iog" "ball_all_ctrls_qss.dsm" -na;
connectAttr "ball_SQ_base_ctrl.iog" "ball_all_ctrls_qss.dsm" -na;
connectAttr "ball_SQ_tip_ctrl.iog" "ball_all_ctrls_qss.dsm" -na;
connectAttr "ball_SQ_mid_ctrl.iog" "ball_all_ctrls_qss.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo3.sg";
connectAttr "checker2.oc" "projection1.im";
connectAttr "place2dTexture2.o" "checker2.uv";
connectAttr "place2dTexture2.ofs" "checker2.fs";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "ball_surfaceShape.iog.og[7]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "ball_surfaceShapeOrig.ws" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "ffd1GroupParts.og" "ffd1.ip[0].ig";
connectAttr "ffd1GroupId.id" "ffd1.ip[0].gi";
connectAttr "ffd1LatticeShape.wm" "ffd1.dlm";
connectAttr "ffd1LatticeShape.lo" "ffd1.dlp";
connectAttr "ffd1BaseShape.wm" "ffd1.blm";
connectAttr "ffd1GroupId.msg" "ffd1Set.gn" -na;
connectAttr "ball_surfaceShape.iog.og[8]" "ffd1Set.dsm" -na;
connectAttr "ffd1.msg" "ffd1Set.ub[0]";
connectAttr "tweak1.og[0]" "ffd1GroupParts.ig";
connectAttr "ffd1GroupId.id" "ffd1GroupParts.gi";
connectAttr "cluster1GroupParts.og" "cluster1.ip[0].ig";
connectAttr "cluster1GroupId.id" "cluster1.ip[0].gi";
connectAttr "cluster1Handle.wm" "cluster1.ma";
connectAttr "cluster1HandleShape.x" "cluster1.x";
connectAttr "groupParts4.og" "tweak2.ip[0].ig";
connectAttr "groupId4.id" "tweak2.ip[0].gi";
connectAttr "cluster1GroupId.msg" "cluster1Set.gn" -na;
connectAttr "ffd1LatticeShape.iog.og[0]" "cluster1Set.dsm" -na;
connectAttr "cluster1.msg" "cluster1Set.ub[0]";
connectAttr "tweak2.og[0]" "cluster1GroupParts.ig";
connectAttr "cluster1GroupId.id" "cluster1GroupParts.gi";
connectAttr "groupId4.msg" "tweakSet2.gn" -na;
connectAttr "ffd1LatticeShape.iog.og[1]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "ffd1LatticeShapeOrig.wl" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "ball_SQ_mid_ctrl.tx" "Cluster_offset_fix_rev.ix";
connectAttr "ball_SQ_mid_ctrl.ty" "Cluster_offset_fix_rev.iy";
connectAttr "ball_SQ_mid_ctrl.tz" "Cluster_offset_fix_rev.iz";
connectAttr "Cluster_offset_fix_rev.ox" "addDoubleLinear1.i1";
connectAttr "Cluster_offset_fix_rev.oy" "addDoubleLinear2.i1";
connectAttr "Ball_tail_A_ctrl.iog" "tail_all_ctrls_qss.dsm" -na;
connectAttr "Ball_tail_B_ctrl.iog" "tail_all_ctrls_qss.dsm" -na;
connectAttr "Ball_tail_C_ctrl.iog" "tail_all_ctrls_qss.dsm" -na;
connectAttr "Ball_tail_D_ctrl.iog" "tail_all_ctrls_qss.dsm" -na;
connectAttr "layerManager.dli[5]" "Ball_untouchables.id";
connectAttr "Ball_basicSpine_prim.msg" "switch_Ball_spine_A_ctrl1_to_space_0.zooPrimOut"
		;
connectAttr "Ball_tail_B_ctrl.parent" "switch_Ball_spine_B_ctrl1_to_space_0.ft";
connectAttr "Ball_basicSpine_prim.msg" "switch_Ball_spine_B_ctrl1_to_space_0.zooPrimOut"
		;
connectAttr "Ball_tail_B_ctrl.parent" "switch_Ball_spine_B_ctrl1_to_space_1.ft";
connectAttr "Ball_basicSpine_prim.msg" "switch_Ball_spine_B_ctrl1_to_space_1.zooPrimOut"
		;
connectAttr "Ball_tail_C_ctrl.parent" "switch_Ball_spine_C_ctrl1_to_space_0.ft";
connectAttr "Ball_basicSpine_prim.msg" "switch_Ball_spine_C_ctrl1_to_space_0.zooPrimOut"
		;
connectAttr "Ball_tail_C_ctrl.parent" "switch_Ball_spine_C_ctrl1_to_space_1.ft";
connectAttr "Ball_basicSpine_prim.msg" "switch_Ball_spine_C_ctrl1_to_space_1.zooPrimOut"
		;
connectAttr "Ball_tail_D_ctrl.parent" "switch_Ball_spine_D_ctrl1_to_space_0.ft";
connectAttr "Ball_basicSpine_prim.msg" "switch_Ball_spine_D_ctrl1_to_space_0.zooPrimOut"
		;
connectAttr "Ball_tail_D_ctrl.parent" "switch_Ball_spine_D_ctrl1_to_space_1.ft";
connectAttr "Ball_basicSpine_prim.msg" "switch_Ball_spine_D_ctrl1_to_space_1.zooPrimOut"
		;
connectAttr "Tail1.msg" "Ball_basicSpine_prim.zooCSTinput0";
connectAttr "Tail4.msg" "Ball_basicSpine_prim.zooCSTinput1";
connectAttr "ball_surfaceShape.ws" "tail_parent_surface_connect.is";
connectAttr "rampShader1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "ball_squashStr_scale_mulDiv.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ball_scale_squ_correctional_mulDiv.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Cluster_offset_fix_rev.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "switch_Ball_spine_A_ctrl1_to_space_0.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_Ball_spine_B_ctrl1_to_space_0.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_Ball_spine_B_ctrl1_to_space_1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_Ball_spine_C_ctrl1_to_space_0.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_Ball_spine_C_ctrl1_to_space_1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_Ball_spine_D_ctrl1_to_space_0.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_Ball_spine_D_ctrl1_to_space_1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
connectAttr "checker1.msg" ":defaultTextureList1.tx" -na;
connectAttr "projection1.msg" ":defaultTextureList1.tx" -na;
connectAttr "checker2.msg" ":defaultTextureList1.tx" -na;
connectAttr "ball_surfaceShapeOrig.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Tail_parent_spaceShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "ikSCsolver.msg" ":ikSystem.sol" -na;
// End of ball_uvu.ma
