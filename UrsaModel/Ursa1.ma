//Maya ASCII 2017ff05 scene
//Name: Ursa1.ma
//Last modified: Thu, Aug 24, 2017 11:30:51 AM
//Codeset: 1252
requires maya "2017ff05";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201706020738-1017329";
fileInfo "osv" "Microsoft Windows 8 Enterprise Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "3462A8D4-4B45-00E7-46B2-02BB387C282E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.0474877806963683 -1.4986001062111889 49.558114805147817 ;
	setAttr ".r" -type "double3" 5.6616471513060098 3242.5999999961919 2.4873689175912778e-017 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "A6A07558-4B4B-C2C7-2AE4-6389C7D1D70B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 43.298442397632208;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.50183725357055664 1.58037680467518 6.3256022673937409 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "FB92C047-423B-D081-A301-39B1F0831484";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.51602798327010335 1000.1 1.1388735388346944 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "50285C9D-436E-D8C8-3748-89A9D53D30D5";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 45.875614512688294;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "91368442-4454-DA14-F13C-0C9E482FD8A7";
	setAttr ".t" -type "double3" -0.10273554994542156 4.5533151376869663 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "DDB389FF-4B6F-8DD3-1FEE-DF8C9A4A277C";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 16.18832058442548;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "05FA3CBD-41FF-6AF7-777A-5E8EE57C311A";
	setAttr ".t" -type "double3" 1000.1144021369454 3.6506246805706515 7.1316796283582971 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "8B0B9FBB-407F-2304-564B-A0860B0F00F7";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 999.90005276277009;
	setAttr ".ow" 24.932901299265819;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0.21434937417507172 -0.17438050890110968 -5.3638399490613189 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "imagePlane1";
	rename -uid "60123A28-4792-0713-97E8-96811CF930CD";
	setAttr ".t" -type "double3" -0.19059720457433516 0 0 ;
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	rename -uid "8F654B0A-4DE5-80B8-3C2F-93BE4341E266";
	setAttr -k off ".v";
	setAttr ".fc" 101;
	setAttr ".imn" -type "string" "C:/Users/10668747/Documents/2670UVU/UrsaModel//RefPhotos/UrsaTurnaroundFront.png";
	setAttr ".cov" -type "short2" 2100 1500 ;
	setAttr ".ag" 0.4;
	setAttr ".dlc" no;
	setAttr ".w" 21;
	setAttr ".h" 15;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "imagePlane2";
	rename -uid "470C930A-4993-0778-C10C-CF936F6160C3";
	setAttr ".t" -type "double3" 0 0 0.56229573330464611 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode imagePlane -n "imagePlaneShape2" -p "imagePlane2";
	rename -uid "51D0DDE4-4B53-8F8F-5023-718F4FB8BBCC";
	setAttr -k off ".v";
	setAttr ".fc" 101;
	setAttr ".imn" -type "string" "C:/Users/10668747/Documents/2670UVU/UrsaModel//RefPhotos/UrsaTurnaroundSide.png";
	setAttr ".cov" -type "short2" 2100 1500 ;
	setAttr ".ag" 0.3;
	setAttr ".dlc" no;
	setAttr ".w" 21;
	setAttr ".h" 15;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "pCylinder1";
	rename -uid "2B76C1DF-4970-5509-EA07-4B83BC2209AA";
	setAttr ".t" -type "double3" 0 1.1196227989182577 -1.2395823845166414 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "2633F8E2-47D4-90A9-6707-26A0A8A77D4F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 7 ".pt";
	setAttr ".pt[116]" -type "float3" 0 -0.13225994 0 ;
	setAttr ".pt[118]" -type "float3" 0 -0.22811122 0 ;
	setAttr ".pt[138]" -type "float3" -0.57765472 0.11134866 0 ;
	setAttr ".pt[141]" -type "float3" -0.57765472 0 0 ;
	setAttr ".pt[143]" -type "float3" 0 1.7014207 0.41878569 ;
	setAttr ".pt[144]" -type "float3" 0 1.7014207 0.41878569 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube1";
	rename -uid "0B4777EB-4118-F5EC-BB8C-658A6401995C";
	setAttr ".t" -type "double3" 0 1.6201298468366447 7.1641049724909394 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "10E7DE69-4212-83E4-5A4D-F28B7B789436";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pt[50]" -type "float3"  0.36931533 -0.40361369 -0.13453797;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder2";
	rename -uid "B0DAF887-4816-ADF3-BA49-7C89C523929F";
	setAttr ".t" -type "double3" 0 1.1196227989182577 -1.2395823845166414 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" -1 1 1 ;
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	rename -uid "586E2539-4077-8422-A3EB-EC880171559B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 207 ".uvst[0].uvsp[0:206]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-008 0.5 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125
		 0.40625 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125 0.375 0.68843985
		 0.40625 0.68843985 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625
		 0.68843985 0.61048543 0.73326457 0.5 0.6875 0.5 1 0.61048543 0.95423543 0.65625 0.84375
		 0.40625 0.50546801 0.625 0.50546801 0.375 0.50546801 0.59375 0.50546801 0.5625 0.50546801
		 0.53125 0.50546801 0.61048543 0.26673543 0.5 0.3125 0.65625 0.15625 0.61048543 0.04576458
		 0.5 1.4901161e-008 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0 1 0.5
		 0.6875 0.59449929 0.73951662 0.6569618 0.77885282 0.80524272 0.47711772 0.25 0.5
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1
		 1 0 1 1 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 0 1
		 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0.5 1 1 1 0 1 0.5 1 0.5 1 1 1 0 1 0.5
		 1 0.5 0.6875 0.61048543 0.73326457 0.65625 0.84375 0.61048543 0.95423543 0.5 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 1 0 0.5 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0.65625
		 0.84375 0.61048543 0.95423543 0.61048543 0.95423543 0.65625 0.84375 0.61048543 0.73326457
		 0.65625 0.84375 0.65625 0.84375 0.61048543 0.73326457 0.65625 0.84375 0.65625 0.84375
		 0.61048543 0.73326457 0.65625 0.84375 0.65625 0.84375 0.61048543 0.73326457 0.65625
		 0.84375 0.65625 0.84375 0.61048543 0.73326457 0.65625 0.84375 0.65625 0.84375 0.61048543
		 0.73326457 0.65625 0.84375 0.65625 0.84375 1 0 1 1 0 0.5 -0.00052572862 0.00019825323
		 0.5 0.5 0.5 0.5 1 0 1.0031155348 0.98824894 0.26903692 0.89934522 0.61048543 0.73326457
		 0.65625 0.84375 0.65625 0.84375 0.61048543 0.73326457 0.65625 0.84375 0.65625 0.84375
		 0.61048543 0.73326457 0.65625 0.84375 0.65625 0.84375 0.65625 0.84375 0.65625 0.84375
		 0.61048543 0.73326457 0.65625 0.84375 0.61048543 0.73326457 0.61048543 0.73326457
		 0.65625 0.84375 0.65625 0.84375 0.65625 0.84375 0.99989551 0.00020300885 1.46287215
		 0.34752184 0 1 -0.00010453277 6.7617817e-005 1.0030568838 0.042213794 0.99758035
		 0.96688187 -2.5367248e-005 0.99986613 -1.3131583e-005 4.0388739e-005 1 1 -0.024102675
		 0.84402776 0 0 1.086601734 -5.7667197e-008 1.12057376 0.83591098 0 1 0 0 0.99966919
		 9.3369608e-006 0.99958611 0.99999255 0 1 0 0 1 0 -0.042683244 0.10002047 -1.61092341
		 0.04279983;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 7 ".pt";
	setAttr ".pt[116]" -type "float3" 0 -0.13225994 0 ;
	setAttr ".pt[118]" -type "float3" 0 -0.22811122 0 ;
	setAttr ".pt[138]" -type "float3" -0.57765472 0.11134866 0 ;
	setAttr ".pt[141]" -type "float3" -0.57765472 0 0 ;
	setAttr ".pt[143]" -type "float3" 0 1.7014207 0.41878569 ;
	setAttr ".pt[144]" -type "float3" 0 1.7014207 0.41878569 ;
	setAttr -s 145 ".vt[0:144]"  1.79495466 -2.43336678 -0.27445924 0.0041200817 -2.67195988 -1.18640029
		 0.031730857 -0.68152416 2.30095243 2.44636989 -0.72133362 2.046433449 3.35541868 -0.78104794 1.69190252
		 2.83454704 0.96535921 -1.6605984 0.45542052 0.58200043 -3.69428396 0.053890817 1.45780921 2.87819004
		 2.42892933 1.49761856 2.58386135 4.37461472 1.65685642 1.7169466 0.034219317 -1.36952293 -3.019236088
		 2.43653655 -0.50427902 -1.55656707 3.81114244 0.47031623 1.85537457 2.82284617 0.41764343 2.32229257
		 0.047937587 0.41658497 2.59724545 0.015692294 -1.75134981 2.66261101 2.080000877 -1.24778283 2.40809202
		 2.72679687 -1.92872393 1.39122868 1.40596855 -2.76487684 0.073760152 0.00015890598 -3.12267208 -0.59977663
		 0.045098968 -2.098308563 2.86241865 0.048551321 -3.47765064 2.6622684 0.34828603 -4.039117336 2.17744851
		 0.68603778 -3.70278788 0.97978675 1.7881393e-007 -3.71521235 0.63412941 0.069492504 4.10525084 2.72065258
		 1.85781014 4.34757948 2.35027838 2.93541288 5.061015129 0.60252827 3.79155278 5.31780434 -2.91747522
		 2.5594492 3.77831793 -4.2758646 1.12854683 -1.894086 3.56932545 2.43526936 -1.36694443 3.18923187
		 1.1579535 -2.24104452 3.76913309 3.52346992 -2.11900568 1.88446176 2.90850163 -3.41505909 2.38877153
		 2.61013699 -3.015439987 0.76460707 2.036099911 -3.58880663 1.67063355 1.79256332 -1.97450221 3.81951094
		 2.67305446 -2.1221962 3.76764822 1.84112084 -2.15968847 4.002011776 2.67657661 -2.81184196 3.70098019
		 3.28988051 -2.36045837 3.046557188 3.13633561 -3.48077106 3.042620182 0.70167297 -4.28218746 4.29835129
		 1.12500453 -4.25003338 3.66374254 1.1006304 -4.28218746 4.75702238 1.69893861 -4.28220749 3.0928545
		 2.86532927 -4.28220129 3.17701244 2.59676433 -4.28219318 4.76148415 1.78477943 -4.28218603 4.76789427
		 3.033052683 -4.28220129 4.46589851 1.12742269 -5.21099234 4.35917854 1.11870527 -5.0088672638 3.76702309
		 2.11512065 -5.33168888 3.97139692 1.10203946 -5.33878136 4.80753231 1.68351865 -4.88606644 3.21852684
		 2.85761571 -4.90858364 3.691535 2.59675908 -5.34213686 4.81905174 1.78477609 -5.34388638 4.82522058
		 2.78125 -5.26116323 4.53477192 1.78144574 -4.28321838 5.26089764 2.74942589 -4.28219032 5.25453854
		 1.7814424 -5.47994614 5.29907799 2.38447499 -5.47721481 5.29324198 0.8890025 -4.28425503 5.24997473
		 1.29092836 -5.26748943 5.28105736 1.78428304 -3.81552649 4.94828701 2.59633327 -3.81553173 4.94114733
		 1.69411528 -3.22897911 5.26235676 2.60022616 -3.58364201 5.2552681 1.10006869 -3.81552982 4.93814421
		 1.089508414 -3.42831516 5.25216341 0.048551321 -4.37282562 1.86511517 0.34828603 -4.23910618 1.82568836
		 1.7881393e-007 -4.052229404 0.97751665 0.42869857 -4.039804935 1.323174 -2.9802322e-008 -4.60135889 1.40754783
		 0.21321929 -4.53366756 1.39441991 0 -4.61029482 0.93658483 0.13118088 -4.53342676 1.097790241
		 0.062088192 2.84881735 2.79541731 2.28092289 2.99503374 2.461133 4.50000191 2.25328445 1.56826019
		 3.36590314 2.60684156 -3.18024111 1.42142344 2.26139688 -3.999856 5.9604645e-008 -0.37834775 -4.52158117
		 2.9802322e-008 0.72380805 -5.33688021 0.37878788 2.68659687 -6.097602844 0.52138937 3.87299681 -5.81064272
		 2.9802322e-008 1.64358425 -5.96633482 0 3.083772898 -6.55982542 0 4.23958254 -5.98020935
		 5.41615772 2.85924172 1.48799253 4.30506611 3.70767879 -1.61605299 4.23394489 5.43597221 -2.20126343
		 5.075156212 5.17918348 0.71585476 2.58295369 3.058188438 2.42256093 4.89647102 2.30424762 3.063407421
		 3.58847523 5.79040289 1.51210761 2.19550443 4.41073418 2.21959186 5.75795174 2.89801335 2.66901851
		 4.9358058 5.88358974 1.42824936 3.53711367 3.38161087 2.86305046 4.89916897 2.76628637 3.27079296
		 3.61652422 6.85200739 2.75641823 3.060643673 5.23371792 2.8136549 5.78288364 3.44443321 2.97402716
		 5.0028443336 7.32435942 3.023645163 3.62528253 3.5558672 3.28940153 4.85826826 5.36207104 4.90529203
		 3.57562351 7.9833045 4.070986271 2.86737299 5.16869831 3.5575428 5.12697172 6.083896637 4.62471485
		 4.8232379 8.30623722 4.28048658 0.54131657 5.20920467 -4.47177505 0 6.14585829 -4.29497194
		 2.010060549 6.39820719 -2.25190306 1.34582686 6.75917101 -3.17437124 0.54131657 7.28700829 -3.64258575
		 0 7.75724316 -3.5694313 2.76365733 5.92676401 6.52326536 4.13364172 6.45590591 6.52326965
		 2.70848083 9.077139854 6.52326107 1.44052792 6.26253319 6.5232563 4.43220091 7.17773151 6.52326679
		 4.094718933 9.4000721 6.52326298 2.92391181 5.97030592 5.94770813 4.26841593 6.25246239 6.22234058
		 4.56142187 6.97428799 6.17015314 4.23021698 9.19662857 5.89882946 2.86976171 8.87369633 5.25852394
		 2.088965654 6.059089661 5.48281527 2.46429539 9.56878185 6.10483027 1.7337693 6.75417471 5.97166061
		 1.43695402 6.95761824 6.5232563 1.9841516 10.18027496 6.52326107 3.82475066 9.53798485 6.10612679
		 3.57403708 9.84973526 6.52326298 1.34582686 7.13573647 -3.18392229 0.33784807 5.94795322 1.27243209
		 1.52115965 6.47888851 -0.85884774 1.89717793 6.64119244 -2.2552557 -1.1920929e-007 6.13978434 1.27081048
		 -1.1920929e-007 6.13978434 -1.016297698 0.33784807 5.94795322 -1.014675975;
	setAttr -s 274 ".ed";
	setAttr ".ed[0:165]"  0 1 1 2 3 0 3 4 0 4 0 1 5 6 1 7 8 1 8 9 1 9 5 1 0 11 0
		 1 10 0 2 14 0 3 13 0 4 12 0 10 6 1 11 5 0 12 9 0 13 8 0 14 7 0 10 11 1 11 12 1 12 13 1
		 13 14 1 2 15 0 3 16 1 15 16 0 4 17 0 16 17 0 0 18 0 17 18 0 1 19 0 18 19 1 15 20 0
		 20 21 0 21 22 0 18 23 0 22 23 0 19 24 0 23 24 0 7 80 0 8 81 0 25 26 1 9 82 0 26 27 0
		 5 83 0 27 28 0 6 84 1 28 29 0 15 30 0 16 31 1 30 31 1 20 32 0 30 32 1 17 33 0 31 33 1
		 22 34 0 33 34 0 18 35 0 33 35 0 23 36 0 34 36 0 35 36 0 30 37 0 31 38 1 37 38 0 32 39 1
		 37 39 0 39 40 1 38 40 0 33 41 0 38 41 0 34 42 1 40 42 1 41 42 0 20 43 0 21 44 1 43 44 0
		 32 45 1 43 45 1 22 46 0 44 46 0 34 47 0 46 47 1 40 48 1 39 49 0 49 48 0 45 49 0 42 50 0
		 47 50 1 48 50 1 43 51 0 44 52 1 51 52 0 52 53 1 45 54 0 54 53 0 51 54 0 46 55 0 52 55 0
		 47 56 0 55 56 0 53 56 0 48 57 0 53 57 1 58 57 1 54 58 1 50 59 1 56 59 0 57 59 0 48 61 1
		 60 61 1 58 62 1 60 62 1 57 63 0 62 63 0 61 63 0 45 64 1 64 60 1 54 65 0 64 65 0 65 62 0
		 49 66 1 48 67 0 66 67 0 60 68 1 66 68 1 61 69 0 68 69 0 67 69 0 45 70 0 70 66 0 64 71 0
		 70 71 0 71 68 0 21 72 0 22 73 0 72 73 0 24 74 0 23 75 0 75 74 0 73 75 0 72 76 0 73 77 0
		 76 77 0 74 78 0 76 78 0 75 79 0 79 78 0 77 79 0 80 25 0 81 26 0 83 28 0 84 29 1 80 81 1
		 81 82 0 82 83 0 83 84 1 10 85 0 6 86 1 85 86 0 84 87 1 86 87 0 29 88 0 87 88 0 86 89 0
		 87 90 0 89 90 0;
	setAttr ".ed[166:273]" 88 91 1 90 91 0 82 92 0 83 93 0 92 93 0 28 94 0 93 94 0
		 27 95 1 95 94 0 92 95 1 81 96 0 82 97 0 96 97 1 27 98 0 26 99 0 99 98 1 96 99 0 92 100 0
		 97 100 1 95 101 0 100 101 1 98 101 1 96 102 0 97 103 0 102 103 0 98 104 0 99 105 0
		 105 104 1 102 105 0 100 106 0 103 106 0 101 107 0 106 107 1 104 107 0 102 108 0 103 109 0
		 108 109 0 104 110 0 105 111 0 111 110 0 108 111 0 106 112 0 109 112 0 107 113 0 112 113 0
		 110 113 0 88 114 0 91 115 0 114 115 0 28 114 0 27 116 1 28 117 0 116 117 0 114 118 0
		 115 119 0 118 119 0 117 118 0 108 126 0 109 127 0 120 121 0 110 130 0 121 122 0 111 131 0
		 123 122 0 120 123 0 112 128 0 121 124 0 113 129 0 124 125 0 122 125 0 126 120 0 127 121 0
		 128 124 0 129 125 0 131 123 0 126 127 1 127 128 1 128 129 1 129 130 0 130 131 0 131 126 1
		 130 132 0 131 133 0 132 133 0 123 134 0 133 134 0 122 135 0 134 135 0 132 135 0 129 136 0
		 136 132 0 125 137 0 135 137 0 136 137 0 117 138 0 138 119 0 26 139 0 27 140 0 139 140 0
		 116 141 0 140 141 0 138 141 0 25 142 0 142 139 0 142 143 0 139 144 0 143 144 0 141 144 0;
	setAttr -s 130 -ch 520 ".fc[0:129]" -type "polyFaces" 
		f 4 0 9 18 -9
		mu 0 4 5 6 22 24
		f 4 1 11 21 -11
		mu 0 4 7 8 26 27
		f 4 2 12 20 -12
		mu 0 4 8 9 25 26
		f 4 3 8 19 -13
		mu 0 4 9 10 23 25
		f 4 -19 13 -5 -15
		mu 0 4 24 22 12 11
		f 4 -20 14 -8 -16
		mu 0 4 25 23 16 15
		f 4 -21 15 -7 -17
		mu 0 4 26 25 15 14
		f 4 -22 16 -6 -18
		mu 0 4 27 26 14 13
		f 4 -2 22 24 -24
		mu 0 4 3 2 29 28
		f 4 -3 23 26 -26
		mu 0 4 4 3 28 30
		f 4 -4 25 28 -28
		mu 0 4 0 4 30 31
		f 4 -1 27 30 -30
		mu 0 4 1 0 31 32
		f 4 -64 65 66 -68
		mu 0 4 64 65 66 67
		f 4 -70 67 71 -73
		mu 0 4 68 69 70 71
		f 4 -58 55 59 -61
		mu 0 4 60 61 62 63
		f 4 -31 34 37 -37
		mu 0 4 44 45 43 46
		f 4 152 149 -41 -149
		mu 0 4 112 113 48 47
		f 4 225 227 -230 -231
		mu 0 4 167 168 169 170
		f 4 170 172 -175 -176
		mu 0 4 136 137 138 139
		f 4 155 151 -47 -151
		mu 0 4 115 116 51 50
		f 4 -25 47 49 -49
		mu 0 4 33 34 53 52
		f 4 31 50 -52 -48
		mu 0 4 34 35 54 53
		f 4 91 92 -95 -96
		mu 0 4 82 83 55 84
		f 4 -27 48 53 -53
		mu 0 4 37 38 57 56
		f 4 97 99 -101 -93
		mu 0 4 85 86 87 58
		f 4 -29 52 57 -57
		mu 0 4 41 42 61 60
		f 4 35 58 -60 -55
		mu 0 4 40 43 63 62
		f 4 -35 56 60 -59
		mu 0 4 43 41 60 63
		f 4 -50 61 63 -63
		mu 0 4 52 53 65 64
		f 4 51 64 -66 -62
		mu 0 4 53 54 66 65
		f 4 94 102 -104 -105
		mu 0 4 84 55 88 89
		f 4 -54 62 69 -69
		mu 0 4 56 57 69 68
		f 4 100 106 -108 -103
		mu 0 4 58 87 90 91
		f 4 -56 68 72 -71
		mu 0 4 59 56 68 71
		f 4 32 74 -76 -74
		mu 0 4 35 36 73 72
		f 4 -51 73 77 -77
		mu 0 4 54 35 72 74
		f 4 33 78 -80 -75
		mu 0 4 39 40 76 75
		f 4 54 80 -82 -79
		mu 0 4 40 59 77 76
		f 4 -67 83 84 -83
		mu 0 4 67 66 79 78
		f 4 -65 76 85 -84
		mu 0 4 66 54 74 79
		f 4 70 86 -88 -81
		mu 0 4 59 71 80 77
		f 4 -72 82 88 -87
		mu 0 4 71 70 81 80
		f 4 75 90 -92 -90
		mu 0 4 72 73 83 82
		f 4 -78 89 95 -94
		mu 0 4 74 72 82 84
		f 4 79 96 -98 -91
		mu 0 4 75 76 86 85
		f 4 81 98 -100 -97
		mu 0 4 76 77 87 86
		f 4 -110 111 113 -115
		mu 0 4 92 93 94 95
		f 4 -117 118 119 -112
		mu 0 4 93 96 97 94
		f 4 87 105 -107 -99
		mu 0 4 77 80 90 87
		f 4 -89 101 107 -106
		mu 0 4 80 81 91 90
		f 4 -123 124 126 -128
		mu 0 4 98 99 100 101
		f 4 103 112 -114 -111
		mu 0 4 89 88 95 94
		f 4 -102 108 114 -113
		mu 0 4 88 78 92 95
		f 4 -130 131 132 -125
		mu 0 4 99 102 103 100
		f 4 93 117 -119 -116
		mu 0 4 74 84 97 96
		f 4 104 110 -120 -118
		mu 0 4 84 89 94 97
		f 4 -85 120 122 -122
		mu 0 4 78 79 99 98
		f 4 109 125 -127 -124
		mu 0 4 93 92 101 100
		f 4 -109 121 127 -126
		mu 0 4 92 78 98 101
		f 4 -86 128 129 -121
		mu 0 4 79 74 102 99
		f 4 115 130 -132 -129
		mu 0 4 74 96 103 102
		f 4 116 123 -133 -131
		mu 0 4 96 93 100 103
		f 4 -143 144 -147 -148
		mu 0 4 108 109 110 111
		f 4 -34 133 135 -135
		mu 0 4 40 39 105 104
		f 4 -38 137 138 -137
		mu 0 4 46 43 107 106
		f 4 -36 134 139 -138
		mu 0 4 43 40 104 107
		f 4 -136 140 142 -142
		mu 0 4 104 105 109 108
		f 4 -139 145 146 -144
		mu 0 4 106 107 111 110
		f 4 -140 141 147 -146
		mu 0 4 107 104 108 111
		f 4 5 39 -153 -39
		mu 0 4 18 17 113 112
		f 4 6 41 -154 -40
		mu 0 4 17 21 114 113
		f 4 7 43 -155 -42
		mu 0 4 21 20 115 114
		f 4 4 45 -156 -44
		mu 0 4 20 19 116 115
		f 4 -14 156 158 -158
		mu 0 4 117 118 119 120
		f 4 -46 157 160 -160
		mu 0 4 121 122 123 124
		f 4 -152 159 162 -162
		mu 0 4 51 125 126 127
		f 4 -161 163 165 -165
		mu 0 4 128 129 130 131
		f 4 -163 164 167 -167
		mu 0 4 132 133 134 135
		f 4 154 169 -171 -169
		mu 0 4 114 115 137 136
		f 4 150 171 -173 -170
		mu 0 4 115 50 138 137
		f 4 -45 173 174 -172
		mu 0 4 50 49 139 138
		f 4 -228 232 234 -236
		mu 0 4 169 168 171 172
		f 4 153 177 -179 -177
		mu 0 4 113 114 141 140
		f 4 -43 180 181 -180
		mu 0 4 49 48 143 142
		f 4 -150 176 182 -181
		mu 0 4 48 113 140 143
		f 4 168 183 -185 -178
		mu 0 4 114 136 144 141
		f 4 175 185 -187 -184
		mu 0 4 136 139 145 144
		f 4 -174 179 187 -186
		mu 0 4 139 49 142 145
		f 4 178 189 -191 -189
		mu 0 4 140 141 147 146
		f 4 -182 192 193 -192
		mu 0 4 142 143 149 148
		f 4 -183 188 194 -193
		mu 0 4 143 140 146 149
		f 4 184 195 -197 -190
		mu 0 4 141 144 150 147
		f 4 186 197 -199 -196
		mu 0 4 144 145 151 150
		f 4 -188 191 199 -198
		mu 0 4 145 142 148 151
		f 4 190 201 -203 -201
		mu 0 4 146 147 153 152
		f 4 -194 204 205 -204
		mu 0 4 148 149 155 154
		f 4 -195 200 206 -205
		mu 0 4 149 146 152 155
		f 4 196 207 -209 -202
		mu 0 4 147 150 156 153
		f 4 198 209 -211 -208
		mu 0 4 150 151 157 156
		f 4 -200 203 211 -210
		mu 0 4 151 148 154 157
		f 4 166 213 -215 -213
		mu 0 4 127 158 159 160
		f 4 46 161 212 -216
		mu 0 4 50 51 127 160
		f 4 44 217 -219 -217
		mu 0 4 161 50 162 163
		f 4 214 220 -222 -220
		mu 0 4 160 164 165 166
		f 4 -218 215 219 -223
		mu 0 4 162 50 160 166
		f 4 241 237 -226 -237
		mu 0 4 173 174 168 167
		f 4 249 251 253 -255
		mu 0 4 179 180 181 182
		f 4 246 236 230 -241
		mu 0 4 178 173 167 170
		f 4 242 238 -233 -238
		mu 0 4 174 175 171 168
		f 4 243 239 -235 -239
		mu 0 4 175 176 172 171
		f 4 256 254 258 -260
		mu 0 4 183 179 182 184
		f 4 202 224 -242 -224
		mu 0 4 152 153 174 173
		f 4 208 231 -243 -225
		mu 0 4 153 156 175 174
		f 4 210 233 -244 -232
		mu 0 4 156 157 176 175
		f 4 -212 226 -245 -234
		mu 0 4 157 154 177 176
		f 4 -206 228 -246 -227
		mu 0 4 154 155 178 177
		f 4 -207 223 -247 -229
		mu 0 4 155 152 173 178
		f 4 245 248 -250 -248
		mu 0 4 177 178 180 179
		f 4 240 250 -252 -249
		mu 0 4 178 170 181 180
		f 4 229 252 -254 -251
		mu 0 4 170 169 182 181
		f 4 244 247 -257 -256
		mu 0 4 176 177 179 183
		f 4 235 257 -259 -253
		mu 0 4 169 172 184 182
		f 4 -240 255 259 -258
		mu 0 4 172 176 183 184
		f 4 222 221 -262 -261
		mu 0 4 162 185 186 187
		f 4 42 263 -265 -263
		mu 0 4 188 189 190 191
		f 4 216 265 -267 -264
		mu 0 4 192 163 193 194
		f 4 260 267 -266 218
		mu 0 4 162 187 193 163
		f 4 40 262 -270 -269
		mu 0 4 195 196 197 198
		f 4 269 271 -273 -271
		mu 0 4 199 200 201 202
		f 4 266 273 -272 264
		mu 0 4 203 204 205 206;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube2";
	rename -uid "057F435B-4E13-F366-E9D3-D69242A54F83";
	setAttr ".t" -type "double3" 0 1.6201298468366447 7.1641049724909394 ;
	setAttr ".s" -type "double3" -1 1 1 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "89325931-4338-EF0E-3F71-538320667CCC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 106 ".uvst[0].uvsp[0:105]" -type "float2" 0.5 0 0.625 0 0.5
		 0.125 0.625 0.125 0.5 0.25 0.625 0.25 0.5 0.5 0.625 0.5 0.625 0.625 0.5 0.75 0.59710592
		 0.81433755 0.5 1 0.625 1 0.87517369 -4.5246194e-005 0.875 0.125 0.875 0.25 0.5 0.5
		 0.625 0.5 0.6291185 0.63259858 0.61484534 0.70543671 0.5 0.125 0.5 0.25 0.625 0.125
		 0.625 0.25 0.625 0.75 0.625 0.75 0.0001029944 0.00016168864 1 0 1.000043153763 0.99963343
		 -0.32029104 0.70023876 0 0 1 0 1 1 0 1 0 0 1.00016486645 0.012906649 1 1 0 1 0 0
		 0.9876399 0.00017843183 4.88477135 1.070812941 0 1 0 0 1 0 0.96235675 1.10224414
		 0 1 0 0 1.000002980232 0.00034443519 0.99838519 1.00033116341 0 1 -0.04830971 0.10751174
		 1.031932473 -0.071314991 1.12884629 0.89120078 0.76229292 0.84274817 -0.0073335189
		 0.013773391 1.0010111332 -0.0099188238 0.99837679 1.012550354 0.011111501 0.98074538
		 0.00046793153 -9.4807794e-005 1 0 1 1 0.0012446282 0.99941128 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 8.2821411e-005 7.6218377e-005 1 0 1 1 0.02798803 0.99418002
		 -0.023648756 -0.00012801577 1 0 1 1 -0.017441353 0.97341901 0 0 0.99932766 0.00036285256
		 0.5 0.5 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0.5 0.5 0 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 0.99988991 0.0008832076 1.13331556 0.82352924 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pt[50]" -type "float3"  0.36931533 -0.40361369 -0.13453797;
	setAttr -s 51 ".vt[0:50]"  0 -0.34609294 0.37900066 0.36666667 -0.34609294 0.37900066
		 0 0.29860497 0.79497051 0.45080248 0.29860497 0.79497051 0 0.63721871 0.77617073
		 0.37222224 0.63721871 0.77617073 0 0.84700418 0.52099133 0.31214643 0.84700418 0.52099133
		 0.45080248 0.65958571 0.38859606 0 0.06474781 -0.12830353 0.50183725 0.0067796707 -0.12830353
		 3.8865217e-017 1.34157729 0.3703804 0.22203268 1.34157729 0.3703804 1.0365417 1.17097902 0.021707058
		 0.89233029 0.82306361 -0.15395355 0 0.38726354 1.093305111 0 0.57424045 1.082924366
		 0.59423494 0.38726354 1.093305111 0.46923399 0.57424045 1.082924366 0.66704583 0.17490101 -0.43431425
		 1.31502187 0.58183098 -0.56623936 1.60193706 1.015853405 -0.73397398 3.8865217e-017 1.40357423 0.38097906
		 0.22203268 1.40357423 0.38097906 1.0365417 1.2329762 0.032305717 1.64696681 1.1410439 -0.74691296
		 1.14513707 1.35260844 -0.15298033 1.39357746 1.76522875 -0.59426737 1.048240781 1.89400983 0.0035200119
		 1.39357746 1.86369681 -0.142694 1.39357746 2.3546474 -0.78441763 1.39357746 2.23673534 -0.3375268
		 1.50258589 2.051639795 -1.24967289 1.39357746 2.29922605 -1.033722401 0.50183725 0.015949368 -0.95261431
		 0.66704583 0.12836826 -1.14451361 1.31502187 0.53529835 -1.27643824 1.53551877 0.94044709 -1.35755205
		 1.64696681 1.46024489 -1.42823839 5.2154064e-008 0.11130178 -0.85697079 0.98768055 2.26060629 -0.087451458
		 0.23673415 1.66302013 0.56988382 0.17617393 2.029616594 0.4707737 0 1.66302013 0.56988382
		 0 2.029616594 0.52047968 0.22938341 1.5332973 0.57723236 1.9432608e-017 1.5332973 0.57723236
		 0.98768055 3.014059782 -0.43363619 0.17617393 3.16992831 -0.33286905 0 3.16992831 -0.19686794
		 0.98768055 3.088242292 -0.66854727;
	setAttr -s 87 ".ed[0:86]"  0 1 0 2 3 0 4 5 1 6 7 1 9 10 0 0 2 0 1 3 0
		 3 5 0 4 6 0 5 7 0 7 8 1 8 10 1 9 0 0 10 1 0 8 3 1 6 11 0 7 12 0 11 12 0 8 13 1 12 13 0
		 10 14 1 13 14 0 2 15 0 4 16 0 15 16 0 3 17 0 15 17 0 5 18 0 17 18 0 16 18 0 10 19 0
		 14 20 0 19 20 0 20 21 0 13 21 0 11 22 0 12 23 0 22 23 0 13 24 1 23 24 0 24 25 0 21 25 0
		 24 26 0 25 27 0 26 27 0 26 28 0 27 29 0 28 29 0 27 30 0 29 31 0 30 31 0 27 32 0 30 33 0
		 32 33 0 10 34 0 19 35 0 34 35 0 20 36 0 35 36 0 21 37 0 36 37 0 25 38 0 37 38 0 38 32 0
		 9 39 0 39 34 0 28 40 0 40 31 0 28 41 0 40 42 0 41 42 0 41 43 0 42 44 0 43 44 0 23 45 0
		 22 46 0 45 41 0 46 43 0 45 46 1 40 47 0 42 48 0 47 48 0 44 49 0 48 49 0 30 47 0 47 50 0
		 33 50 0;
	setAttr -s 36 -ch 144 ".fc[0:35]" -type "polyFaces" 
		f 4 0 6 -2 -6
		mu 0 4 0 1 3 2
		f 4 26 28 -30 -25
		mu 0 4 20 22 23 21
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 4 13 -1 -13
		mu 0 4 9 10 12 11
		f 4 -14 -12 14 -7
		mu 0 4 1 13 14 3
		f 4 -15 -11 -10 -8
		mu 0 4 3 14 15 5
		f 4 3 16 -18 -16
		mu 0 4 6 7 17 16
		f 4 10 18 -20 -17
		mu 0 4 7 8 18 17
		f 4 11 20 -22 -19
		mu 0 4 8 10 19 18
		f 4 1 25 -27 -23
		mu 0 4 2 3 22 20
		f 4 7 27 -29 -26
		mu 0 4 3 5 23 22
		f 4 -3 23 29 -28
		mu 0 4 5 4 21 23
		f 4 -21 30 32 -32
		mu 0 4 19 10 24 25
		f 4 31 33 -35 21
		mu 0 4 26 27 28 29
		f 4 17 36 -38 -36
		mu 0 4 30 31 32 33
		f 4 19 38 -40 -37
		mu 0 4 34 35 36 37
		f 4 -39 34 41 -41
		mu 0 4 38 39 40 41
		f 4 40 43 -45 -43
		mu 0 4 42 43 44 45
		f 4 44 46 -48 -46
		mu 0 4 46 47 48 49
		f 4 -47 48 50 -50
		mu 0 4 50 51 52 53
		f 4 -49 51 53 -53
		mu 0 4 54 55 56 57
		f 4 30 55 -57 -55
		mu 0 4 58 59 60 61
		f 4 -33 55 58 -58
		mu 0 4 62 63 64 65
		f 4 -34 57 60 -60
		mu 0 4 66 67 68 69
		f 4 -42 59 62 -62
		mu 0 4 70 71 72 73
		f 4 -44 61 63 -52
		mu 0 4 74 75 76 77
		f 4 -5 64 65 -55
		mu 0 4 78 79 80 81
		f 4 47 49 -68 -67
		mu 0 4 82 83 53 84
		f 4 66 69 -71 -69
		mu 0 4 85 86 87 88
		f 4 70 72 -74 -72
		mu 0 4 89 90 91 92
		f 4 37 74 78 -76
		mu 0 4 33 32 93 94
		f 4 -79 76 71 -78
		mu 0 4 94 93 89 92
		f 4 -70 79 81 -81
		mu 0 4 95 84 96 97
		f 4 -73 80 83 -83
		mu 0 4 98 99 100 101
		f 4 -51 84 -80 67
		mu 0 4 53 52 96 84
		f 4 -85 52 86 -86
		mu 0 4 102 103 104 105;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "9E1F735F-4FCA-763F-2C94-B2A9B3759696";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "594B728E-4BD8-C52A-899B-8D8923C15FE4";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "3DE57793-4F2E-6863-ACA3-0791B4D03130";
createNode displayLayerManager -n "layerManager";
	rename -uid "0F7AC306-4514-83A2-2D8A-73ADD3754CDF";
createNode displayLayer -n "defaultLayer";
	rename -uid "AB23BB46-4E24-8FD6-3C58-95AA30A160A4";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "CD62E522-4D9C-E242-F24B-80AF2A92D880";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F826A239-404B-1923-B50C-C28C0A602D89";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "205BE88C-4BC2-D2D4-1A42-A296139C51EE";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n"
		+ "            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 786\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 785\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 786\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 0\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 785\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n"
		+ "            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n"
		+ "            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n"
		+ "                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n"
		+ "                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n"
		+ "                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n"
		+ "                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n"
		+ "\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"quad\\\" -ps 1 50 50 -ps 2 50 50 -ps 3 50 50 -ps 4 50 50 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 786\\n    -height 333\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 786\\n    -height 333\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 0\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 785\\n    -height 333\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 0\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 785\\n    -height 333\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 785\\n    -height 333\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 785\\n    -height 333\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Front View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 786\\n    -height 333\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 786\\n    -height 333\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "0B696649-4B01-4FB2-AFED-AD836922B3D0";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "6957A650-4F2F-21DE-70DC-2E82CBF33F94";
	setAttr ".r" 2.5;
	setAttr ".sa" 8;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyTweak -n "polyTweak1";
	rename -uid "112818C3-4E1E-0AEF-A3A4-838E7D57ED3B";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[1]" -type "float3" 0 -0.27866641 -0.43790433 ;
	setAttr ".tk[9]" -type "float3" 0 -0.41799957 -1.1942843 ;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "E9EE8CBC-47B0-12DA-8637-57A53BC13F16";
	setAttr ".dc" -type "componentList" 8 "e[24]" "e[26]" "e[28]" "e[30]" "e[32]" "e[34]" "e[36]" "e[38]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "DB21CAC4-4769-8DB1-F30C-7A8542D56D4E";
	setAttr ".dc" -type "componentList" 3 "f[1:4]" "f[8:9]" "f[12:13]";
createNode polyTweak -n "polyTweak2";
	rename -uid "B3050E11-4E54-5DEE-F8A1-868DFCA3EA3D";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -1.5525694 1.7317121 ;
	setAttr ".tk[1]" -type "float3" 0 -1.3734268 1.6919025 ;
	setAttr ".tk[2]" -type "float3" 0 0.31847587 -0.19904742 ;
	setAttr ".tk[3]" -type "float3" 0 0.27866644 0.27866641 ;
	setAttr ".tk[4]" -type "float3" 0 0.21895215 1.6919025 ;
	setAttr ".tk[5]" -type "float3" 0 0.43790436 -0.83599901 ;
	setAttr ".tk[7]" -type "float3" 0 0.45780915 0.37819007 ;
	setAttr ".tk[8]" -type "float3" 0 0.49761853 0.81609428 ;
	setAttr ".tk[9]" -type "float3" 0 0.65685642 2.0103784 ;
	setAttr ".tk[10]" -type "float3" 0 0.21895215 1.6919025 ;
	setAttr ".tk[11]" -type "float3" 0 0.65685642 2.0103784 ;
createNode polySplit -n "polySplit1";
	rename -uid "9D66B77B-4F71-C0B0-7F17-C7A3DFEA4098";
	setAttr -s 5 ".e[0:4]"  0.51329499 0.51329499 0.51329499 0.51329499
		 0.51329499;
	setAttr -s 5 ".d[0:4]"  -2147483639 -2147483640 -2147483636 -2147483637 -2147483638;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "46DE315D-46A5-F0F4-1391-5DA09C445439";
	setAttr ".ics" -type "componentList" 1 "f[4:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.25 0.56234682 -2.9163246 ;
	setAttr ".rs" 62585;
	setAttr ".lt" -type "double3" -2.3353714795337766e-016 0.16523140110584308 0.72916484588624786 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0 -1.1813296356215373 -3.9115424999493813 ;
	setAttr ".cbx" -type "double3" 2.5 2.3060232124314406 -1.9211065420407496 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "A8000AC0-4529-6C5B-6351-20923026C31B";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[1]" -type "float3" 0 -0.019867044 0.059601139 ;
	setAttr ".tk[12]" -type "float3" 0 -0.3774738 -0.51654309 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "30D17E8A-48A9-3470-C1A1-7FA103300C39";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.11920227 -0.23840459 ;
	setAttr ".tk[21]" -type "float3" 0 0.23840456 -0.47680888 ;
createNode deleteComponent -n "deleteComponent3";
	rename -uid "389A97C9-4C51-D7B4-34B9-C3A43CB0BC8A";
	setAttr ".dc" -type "componentList" 2 "f[13]" "f[16]";
createNode polyTweak -n "polyTweak5";
	rename -uid "8014640B-4AA5-54B3-0B9C-FEAD8606BA59";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[16:19]" -type "float3"  0 -0.3774738 0.079468176 0
		 -0.3774738 0.079468176 0 -0.37747395 -0.47844049 0 -0.57614416 -0.73508066;
createNode deleteComponent -n "deleteComponent4";
	rename -uid "0D9122A9-4C0A-6CDE-83E1-389AF56A888B";
	setAttr ".dc" -type "componentList" 1 "f[4:5]";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "BDE225BE-493A-C337-9A0D-50BEEFE0B44F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[27]" "e[29]" "e[31]" "e[33]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.1689262 0.088205606 -3.6765933 ;
	setAttr ".rs" 56049;
	setAttr ".lt" -type "double3" 2.0816681711721685e-016 1.2574292519172228 -3.3306690738754696e-016 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.10823087394237518 -1.5429882087721725 -4.3622544655102935 ;
	setAttr ".cbx" -type "double3" 2.4460833072662354 1.7193994245514967 -2.9909321913022242 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "79D20532-4026-9497-E709-72833EC7858C";
	setAttr ".ics" -type "componentList" 1 "f[4:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.110688 1.5276698 -0.12015396 ;
	setAttr ".rs" 60590;
	setAttr ".lt" -type "double3" 3.903127820947816e-016 -2.2204460492503131e-016 3.2691162507171643 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.053890816867351532 -1.7585672416701208 -0.65758195011799103 ;
	setAttr ".cbx" -type "double3" 4.167485237121582 4.8139067611680133 0.41727403313930389 ;
createNode polyTweak -n "polyTweak6";
	rename -uid "C7C4D0BF-40DE-B790-8E4B-3D958BAB53FC";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[0]" -type "float3" 0.027187979 0 -1.8189894e-010 ;
	setAttr ".tk[1]" -type "float3" 0.0041200817 0 -4.6566129e-010 ;
	setAttr ".tk[2]" -type "float3" 0.031730857 0 1.1175871e-008 ;
	setAttr ".tk[3]" -type "float3" 0.67860287 0 -2.2351742e-008 ;
	setAttr ".tk[4]" -type "float3" 0.85541856 0 0 ;
	setAttr ".tk[5]" -type "float3" 1.1948745 0 -8.9406967e-008 ;
	setAttr ".tk[6]" -type "float3" 0.053890817 0 -5.2154064e-008 ;
	setAttr ".tk[7]" -type "float3" 0.053890817 0 1.5646219e-007 ;
	setAttr ".tk[8]" -type "float3" 1.1948744 0 7.4505806e-009 ;
	setAttr ".tk[9]" -type "float3" 1.6674855 0 -1.4901161e-008 ;
	setAttr ".tk[10]" -type "float3" 0.053890817 0 -1.4901161e-008 ;
	setAttr ".tk[11]" -type "float3" 0.034219317 0 3.3527613e-008 ;
	setAttr ".tk[12]" -type "float3" 0.6687699 0 -7.4505806e-009 ;
	setAttr ".tk[13]" -type "float3" 1.4427253 0 -3.7252903e-008 ;
	setAttr ".tk[14]" -type "float3" 1.0550792 0 -3.7252903e-008 ;
	setAttr ".tk[15]" -type "float3" 0.047937587 0 -5.2154064e-008 ;
	setAttr ".tk[16]" -type "float3" 0.015294755 0 -6.3329935e-008 ;
	setAttr ".tk[17]" -type "float3" 0.3118366 0 2.7939677e-008 ;
	setAttr ".tk[18]" -type "float3" 0.2807135 0 -8.3819032e-009 ;
	setAttr ".tk[20]" -type "float3" 0.10838978 0 -1.8189894e-012 ;
	setAttr ".tk[21]" -type "float3" 0.014178092 0.84527087 -0.19867049 ;
	setAttr ".tk[22]" -type "float3" 0.078671262 0.34859502 -0.27813852 ;
	setAttr ".tk[23]" -type "float3" -0.3346839 -0.1291164 0.1390693 ;
	setAttr ".tk[25]" -type "float3" 0.31224728 0.19867046 0.27813864 ;
createNode polyTweak -n "polyTweak7";
	rename -uid "24E2291B-4B93-7B4A-E384-F2B849C681EF";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[8]" -type "float3" -0.53371203 0 0 ;
	setAttr ".tk[26]" -type "float3" 0 -0.31948692 -0.95845878 ;
	setAttr ".tk[27]" -type "float3" 0 -0.47922939 0 ;
	setAttr ".tk[28]" -type "float3" -0.83100742 -0.31948692 -1.0345044 ;
	setAttr ".tk[29]" -type "float3" 0 0.11980736 -1.6773027 ;
	setAttr ".tk[30]" -type "float3" 0.22813687 0.15303174 0.70695406 ;
	setAttr ".tk[31]" -type "float3" 0 0.50258023 -0.21580854 ;
createNode deleteComponent -n "deleteComponent5";
	rename -uid "7C787D12-40E3-4FC9-8ED7-CF9D5F3849B2";
	setAttr ".dc" -type "componentList" 1 "f[4:5]";
createNode deleteComponent -n "deleteComponent6";
	rename -uid "07065180-49D6-113D-A88D-16A404407ACA";
	setAttr ".dc" -type "componentList" 2 "f[16]" "f[21]";
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "40174C21-44DC-8744-F85E-FE8E0C09E555";
	setAttr ".ics" -type "componentList" 1 "f[12:14]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.3712445 -0.3484666 -3.9666512 ;
	setAttr ".rs" 42076;
	setAttr ".lt" -type "double3" -2.5413698923060224e-016 4.9266146717741321e-016 0.16555034874750743 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.015692293643951416 -1.7427958526625533 -4.9423702606457915 ;
	setAttr ".cbx" -type "double3" 2.7267968654632568 1.0458626470551589 -2.9909321913022242 ;
createNode polyTweak -n "polyTweak8";
	rename -uid "D0FD1CAC-4D47-83A8-1795-F3B83997AEBD";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[9]" -type "float3" 0 2.9802322e-008 2.1755695e-006 ;
	setAttr ".tk[11]" -type "float3" 0 1.7881393e-007 1.1920929e-007 ;
	setAttr ".tk[23]" -type "float3" -0.34220532 0 0.11406842 ;
	setAttr ".tk[28]" -type "float3" 0 -0.21853754 -1.0728205 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "58523424-4328-174F-B811-1481B6455FC9";
	setAttr ".ics" -type "componentList" 1 "f[12:13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.1285703 -1.7971611 -3.9132309 ;
	setAttr ".rs" 61120;
	setAttr ".lt" -type "double3" 4.3693347551165829e-017 -1.0408340855860843e-016 0.77230000657509212 ;
	setAttr ".off" 0.10000000149011612;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.1285468339920044 -2.649510530473222 -4.6927932152051177 ;
	setAttr ".cbx" -type "double3" 3.1285936832427979 -0.94481172943257286 -3.1336685070294577 ;
createNode polyTweak -n "polyTweak9";
	rename -uid "185079D0-41D9-F854-8D9E-948B82D81667";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[21]" -type "float3" -1.7635425 -0.81434047 0.28191012 ;
	setAttr ".tk[22]" -type "float3" -1.7635425 -0.81434047 0.28191012 ;
	setAttr ".tk[30]" -type "float3" 1.0792868 -0.15893635 0.74541473 ;
	setAttr ".tk[31]" -type "float3" 0.27330074 -0.1667342 0.65200853 ;
	setAttr ".tk[32]" -type "float3" 1.0792868 -0.15893635 0.74541473 ;
	setAttr ".tk[33]" -type "float3" 0.27330074 -0.1667342 0.65200853 ;
	setAttr ".tk[34]" -type "float3" 0.27330074 -0.1667342 0.65200853 ;
	setAttr ".tk[35]" -type "float3" 0.27330074 -0.1667342 0.65200853 ;
	setAttr ".tk[36]" -type "float3" 1.0792868 -0.15893635 0.74541473 ;
	setAttr ".tk[37]" -type "float3" 1.0792868 -0.15893635 0.74541473 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "1FB957DC-41EB-7916-507C-73A1D4E6F9E6";
	setAttr ".ics" -type "componentList" 4 "f[22]" "f[24]" "f[30]" "f[32]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.5907173 -1.9701073 -4.3082952 ;
	setAttr ".rs" 38917;
	setAttr ".lt" -type "double3" 2.931682674400804e-016 -5.9674487573602164e-016 0.20435012018462775 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.045098967850208282 -2.8823889770522024 -5.2786997207898336 ;
	setAttr ".cbx" -type "double3" 3.1363356113433838 -1.0578257122054004 -3.337890947749063 ;
createNode polyTweak -n "polyTweak10";
	rename -uid "503C52AF-40AE-03BB-65A8-0A9ECEA79850";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[34]" -type "float3" 0.39487636 0.038151391 -0.17997275 ;
	setAttr ".tk[35]" -type "float3" 0.39487636 0.038151391 -0.17997275 ;
	setAttr ".tk[38]" -type "float3" 0.27200425 -0.013822422 -0.42559582 ;
	setAttr ".tk[40]" -type "float3" 0.27200425 -0.013822422 -0.42559582 ;
	setAttr ".tk[42]" -type "float3" -0.3802281 0 0.45627373 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "13E00C49-4942-049E-2EE9-7688F48B989E";
	setAttr ".ics" -type "componentList" 4 "f[22]" "f[24]" "f[30]" "f[32]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.8673629 -3.2228162 -6.2840471 ;
	setAttr ".rs" 44112;
	setAttr ".lt" -type "double3" 2.8622937353617317e-017 -3.1225022567582528e-017 0.9009617253627511 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.70167297124862671 -4.4724005737318899 -6.3001340278882223 ;
	setAttr ".cbx" -type "double3" 3.0330526828765869 -1.9732317008986382 -6.2679599174756246 ;
createNode polyTweak -n "polyTweak11";
	rename -uid "7E6CD930-47D8-6869-BD02-32B103AC9BAC";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk[43:51]" -type "float3"  0.71487886 -2.8632524 1.26692271
		 1.097136617 -1.42934966 0.84486157 0 -2.067255974 1.27937174 0 -2.68850732 1.67269659
		 1.33371449 -0.87765002 0.7711907 0 -1.49037981 0.68700731 0 -2.083986998 1.80068994
		 0 -2.73785353 1.48037827 0 -1.41334569 1.36502647;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "4B088720-436E-3911-CAF4-EC8BA8FB0145";
	setAttr ".ics" -type "componentList" 1 "f[46:47]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.8486973 -3.6390722 -5.9722528 ;
	setAttr ".rs" 57591;
	setAttr ".lt" -type "double3" -2.4018723689352114e-016 7.3937590669122602e-016 0.49306982307942521 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.1006304025650024 -3.6482771911635306 -6.4227374443310934 ;
	setAttr ".cbx" -type "double3" 2.5967643260955811 -3.6298669853224661 -5.521768415858193 ;
createNode polyTweak -n "polyTweak12";
	rename -uid "C1BBCF6D-4A00-504E-15A9-37BCEE15399B";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk[43:59]" -type "float3"  0 0.77834421 0 0 0.77834421
		 0 0 0.77834421 -0.82412916 0 0.77834421 0 0 0.77834421 0 0 0.77834421 -0.82412916
		 0 0.77834421 -0.82412916 0 0.77834421 0 0 0.77834421 0 0 0.77834421 0 0 0.77834421
		 0 0 0.77834421 -0.82412916 0 0.77834421 0 0 0.77834421 0 0 0.77834421 -0.82412916
		 0 0.77834421 -0.82412916 0 0.77834421 0;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "F6AB8940-4798-E7BB-F61E-2186F7BA7A6C";
	setAttr ".ics" -type "componentList" 2 "f[50]" "f[53]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.8453637 -3.8893373 -5.5228028 ;
	setAttr ".rs" 36326;
	setAttr ".lt" -type "double3" 2.4719809532669501e-017 1.0321604682062002e-016 0.69854862702403231 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.0900701284408569 -4.1412748374953177 -5.5238374122876364 ;
	setAttr ".cbx" -type "double3" 2.6006572246551514 -3.6373995819106009 -5.521768415858193 ;
createNode polyBridgeEdge -n "polyBridgeEdge1";
	rename -uid "C0F3D2CB-4F1E-4EC4-330E-018CCD0953D7";
	setAttr ".ics" -type "componentList" 2 "e[33]" "e[37]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 22;
	setAttr ".sv2" 24;
	setAttr ".d" 1;
	setAttr ".sd" 1;
	setAttr ".td" 1;
createNode polyTweak -n "polyTweak13";
	rename -uid "D24F013D-4223-AD5A-9F8D-D984C8EFF525";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[16]" -type "float3" 0 0.54337662 0 ;
	setAttr ".tk[31]" -type "float3" 0 0.59873515 0 ;
	setAttr ".tk[35]" -type "float3" -0.25531042 0 0 ;
	setAttr ".tk[36]" -type "float3" -0.43556672 0.36454445 -4.4408921e-016 ;
	setAttr ".tk[38]" -type "float3" -0.21076013 0 0 ;
	setAttr ".tk[51]" -type "float3" 0.4229283 -0.027973745 0.075897872 ;
	setAttr ".tk[52]" -type "float3" 0 0.14199105 0.1086171 ;
	setAttr ".tk[53]" -type "float3" 0 -0.148541 -0.58974808 ;
	setAttr ".tk[54]" -type "float3" 0 -0.15569733 0.05804234 ;
	setAttr ".tk[55]" -type "float3" 0 0.29695964 0.12127444 ;
	setAttr ".tk[56]" -type "float3" 0 0.27450779 0.51232237 ;
	setAttr ".tk[57]" -type "float3" 0 -0.15898171 0.057563819 ;
	setAttr ".tk[58]" -type "float3" 0 -0.16073869 0.057320438 ;
	setAttr ".tk[59]" -type "float3" -0.25179544 -0.078000188 0.068871051 ;
	setAttr ".tk[62]" -type "float3" 0 -0.29576606 0.038174778 ;
	setAttr ".tk[63]" -type "float3" -0.21617703 -0.29406267 0.038699821 ;
	setAttr ".tk[65]" -type "float3" 0.12310064 -0.29067111 0.038615018 ;
	setAttr ".tk[66]" -type "float3" 0 -0.23188704 0.17893362 ;
	setAttr ".tk[67]" -type "float3" 0 -0.23188704 0.17893362 ;
	setAttr ".tk[70]" -type "float3" 0 -0.23188704 0.17893362 ;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "F50CB6C0-4655-8940-15B8-B889264FC36C";
	setAttr ".ics" -type "componentList" 1 "f[62]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.34301898 -0.52857608 -4.9979663 ;
	setAttr ".rs" 64339;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.7881393432617188e-007 -1.542645601274004 -5.2786997207898336 ;
	setAttr ".cbx" -type "double3" 0.68603777885437012 0.48549339389658941 -4.7172330269116607 ;
createNode polyTweak -n "polyTweak14";
	rename -uid "F326137E-48DC-9C11-65D4-79B12EA9C759";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[18]" -type "float3" -0.25356731 0 0 ;
	setAttr ".tk[23]" -type "float3" -0.5797174 0 -1.110223e-016 ;
createNode polyTweak -n "polyTweak15";
	rename -uid "8A3BA366-4076-AE55-4582-A6BAC4041332";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[72:75]" -type "float3"  0 -0.95511365 -4.4408921e-016
		 0 -0.95511365 -4.4408921e-016 0 -0.95511365 -2.220446e-016 0 -0.95511365 -2.220446e-016;
createNode deleteComponent -n "deleteComponent7";
	rename -uid "173921CB-44EB-94F3-BDAF-E68708370970";
	setAttr ".dc" -type "componentList" 1 "f[64]";
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "26F110B0-46B6-EF01-D185-BB865C9CE853";
	setAttr ".ics" -type "componentList" 1 "f[62]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.21434937 -0.17438051 -5.3638401 ;
	setAttr ".rs" 35698;
	setAttr ".lt" -type "double3" 4.163336342344337e-016 -1.6653345369377348e-016 0.43179733709342671 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.7881393432617188e-007 -0.49086716556691168 -5.4482925781506744 ;
	setAttr ".cbx" -type "double3" 0.42869856953620911 0.14210614776469233 -5.2793873199719634 ;
createNode polyTweak -n "polyTweak16";
	rename -uid "DE7D99ED-4F94-41D0-5BD4-539D815DD376";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[72:75]" -type "float3"  0 0.22405377 -1.051778436
		 0 0.8470217 -0.572312 0 0.61809689 0.34338725 -0.25733921 0.61809689 0.34338725;
createNode polyTweak -n "polyTweak17";
	rename -uid "82D5C591-419D-8784-1B4C-13981B1D4701";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[72]" -type "float3" 0 -0.19930811 -2.220446e-016 ;
	setAttr ".tk[73]" -type "float3" 0 -0.091896579 0.22055182 ;
	setAttr ".tk[76]" -type "float3" -0.14286172 0.013083368 -0.27299845 ;
	setAttr ".tk[77]" -type "float3" -0.22937709 0.019274227 -0.096979752 ;
	setAttr ".tk[78]" -type "float3" -0.094310544 -0.15233316 0.072805062 ;
	setAttr ".tk[79]" -type "float3" -0.39182806 -0.087889865 -0.11164685 ;
createNode deleteComponent -n "deleteComponent8";
	rename -uid "C9905898-4C33-0B17-B688-CBA3D79B2838";
	setAttr ".dc" -type "componentList" 1 "f[67]";
createNode polyTweak -n "polyTweak18";
	rename -uid "A858F2B8-441A-24FA-741B-45A1C1F820BC";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[5]" -type "float3" 0 0 1.7881393e-007 ;
	setAttr ".tk[9]" -type "float3" 0 0 -0.12453351 ;
	setAttr ".tk[11]" -type "float3" 0 0 -0.20251927 ;
	setAttr ".tk[25]" -type "float3" 0 -0.20251937 0 ;
	setAttr ".tk[27]" -type "float3" 0 -0.067506775 0.0014731642 ;
	setAttr ".tk[28]" -type "float3" 0 0 5.9604645e-007 ;
	setAttr ".tk[29]" -type "float3" 0 -0.53732407 0 ;
	setAttr ".tk[61]" -type "float3" 0.14876868 -8.8817842e-016 0 ;
	setAttr ".tk[64]" -type "float3" -0.20106764 -8.8817842e-016 0 ;
	setAttr ".tk[65]" -type "float3" 0.076348543 0.20833302 0 ;
	setAttr ".tk[68]" -type "float3" -0.086834058 0.3556928 0 ;
	setAttr ".tk[71]" -type "float3" 0 0.15739505 0 ;
	setAttr ".tk[72]" -type "float3" 0 0.035192315 0.25462517 ;
	setAttr ".tk[76]" -type "float3" 0 0 0.18379317 ;
createNode polySplit -n "polySplit2";
	rename -uid "070E1FE7-4093-64EE-0C7D-4481C40C9BCE";
	setAttr -s 5 ".e[0:4]"  0.52541602 0.52541602 0.52541602 0.52541602
		 0.52541602;
	setAttr -s 5 ".d[0:4]"  -2147483610 -2147483609 -2147483607 -2147483605 -2147483603;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	rename -uid "797CC2C7-45FA-DCF6-1FC0-C0919A6F8F35";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[13]" "e[45]" "e[152]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.1762869 4.7671733 -0.035184886 ;
	setAttr ".rs" 60266;
	setAttr ".lt" -type "double3" -8.3266726846886741e-016 1.0558437704934507 2.7755575615628914e-016 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.034219317138195038 4.1388588867173297 -2.6091053137082314 ;
	setAttr ".cbx" -type "double3" 2.318354606628418 5.3954874000535122 2.5387355437975669 ;
createNode polyTweak -n "polyTweak19";
	rename -uid "BA407BD7-4D72-F606-DC90-DDAD9C851B92";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[5]" -type "float3" -0.12809432 -0.47254515 0.94316733 ;
	setAttr ".tk[6]" -type "float3" 0.4015297 2.220446e-016 0 ;
	setAttr ".tk[9]" -type "float3" 0.20712967 0 -0.16890033 ;
	setAttr ".tk[12]" -type "float3" -0.13158278 0 0 ;
	setAttr ".tk[26]" -type "float3" -0.28942522 0 0 ;
	setAttr ".tk[27]" -type "float3" -1.0713687 0.15160386 0.050404843 ;
	setAttr ".tk[28]" -type "float3" 0.85011339 -8.8817842e-016 1.8901807 ;
	setAttr ".tk[29]" -type "float3" 2.6014733 5.9604645e-008 0 ;
	setAttr ".tk[82]" -type "float3" -0.3068524 0 0.38317296 ;
	setAttr ".tk[83]" -type "float3" 0 -0.49429655 0.77632427 ;
	setAttr ".tk[84]" -type "float3" 1.5446029 0 0 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	rename -uid "D1393653-4948-AEF8-0EAD-CF91FCEC7DE0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[161]" "e[163]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.26069471 6.8368645 1.05882 ;
	setAttr ".rs" 64545;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.9802322387695313e-008 6.456503005980025 -0.51577433436100295 ;
	setAttr ".cbx" -type "double3" 0.52138936519622803 7.2172256431565396 2.6334144225817457 ;
createNode polyTweak -n "polyTweak20";
	rename -uid "7447B41F-4D74-61CE-DD04-3890C64B23DD";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[85:88]" -type "float3"  0.78314543 1.045200348 -0.83616024
		 0.26762474 0.062712036 -0.89887226 -0.50213832 0.27175209 -1.21243262 -1.34469652
		 0 -0.58541238;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "C4453DBB-42B1-EEA3-3F36-A78AF200219C";
	setAttr ".ics" -type "componentList" 1 "f[18]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.363483 1.9256133 2.7227407 ;
	setAttr ".rs" 42561;
	setAttr ".lt" -type "double3" 4.9960036108132044e-016 1.457167719820518e-016 1.1677347782608225 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.9354128837585449 -0.44863739395283542 1.3672591796618245 ;
	setAttr ".cbx" -type "double3" 3.7915527820587158 4.2998639068589322 4.0782219520312095 ;
createNode polyTweak -n "polyTweak21";
	rename -uid "6637F6FA-4042-BFD9-A079-D6B88DDF2432";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[28]" -type "float3" 0.087670788 0.71434414 -1.4722519 ;
	setAttr ".tk[29]" -type "float3" 0.24109468 0 0 ;
	setAttr ".tk[83]" -type "float3" 0.46046516 4.4408921e-016 -0.96838522 ;
	setAttr ".tk[89]" -type "float3" 0 0.91977626 -0.62945467 ;
	setAttr ".tk[90]" -type "float3" -0.37878788 0.39717612 -0.46222261 ;
	setAttr ".tk[91]" -type "float3" -0.52138937 0.36658564 -0.16956654 ;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "7214304B-44F1-8750-24DA-0B9B35768AC4";
	setAttr ".ics" -type "componentList" 2 "f[17]" "f[81]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.6369839 -0.41220784 2.4766517 ;
	setAttr ".rs" 64919;
	setAttr ".lt" -type "double3" 5.1694759584108851e-016 3.2612801348363973e-016 0.14090897350631901 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.8578101396560669 -1.3415102043166052 1.0137020698290622 ;
	setAttr ".cbx" -type "double3" 5.4161577224731445 0.51709452485896312 3.9396010986071381 ;
createNode polyTweak -n "polyTweak22";
	rename -uid "33C64C64-43D8-1B21-259A-8AA936366B80";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[82]" -type "float3" 0.72380549 -1.1125169 -2.220446e-016 ;
	setAttr ".tk[92]" -type "float3" 0.47954181 -0.62472796 -0.13566206 ;
	setAttr ".tk[93]" -type "float3" -0.22125615 0.98266888 1.5087938 ;
	setAttr ".tk[94]" -type "float3" -0.71802694 8.8817842e-016 0.66081709 ;
	setAttr ".tk[95]" -type "float3" 0.29887623 0 0.057932053 ;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "A5DD0A82-4176-C454-27C0-CDBCB5955C9F";
	setAttr ".ics" -type "componentList" 2 "f[17]" "f[81]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.9767282 -1.1262056 2.6859071 ;
	setAttr ".rs" 41352;
	setAttr ".lt" -type "double3" -0.00013759350723107527 -0.12356400291098366 0.81429656288382235 ;
	setAttr ".lr" -type "double3" 12.887034065288091 0.016212072518603148 -0.14354947764184567 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.1955044269561768 -1.9437846221938024 1.0646652332049171 ;
	setAttr ".cbx" -type "double3" 5.7579517364501953 -0.30862656021260038 4.3071490874987397 ;
createNode polyTweak -n "polyTweak23";
	rename -uid "D30F41E1-479C-CD34-C8A7-2FA827119051";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk[95:101]" -type "float3"  0.680448 0 0 0.22295257 0
		 -0.13662025 0.36377713 0 1.3787353 0.62037069 0.34156644 0.79316735 0.25861594 0
		 -0.22873473 0.35548875 0 1.046250105 0.55479223 0.32877618 0.57761866;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	rename -uid "CE79F801-4DA2-6324-D5D0-298B1067AA81";
	setAttr ".ics" -type "componentList" 2 "f[17]" "f[81]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.4217639 -1.9459549 3.8057406 ;
	setAttr ".rs" 52642;
	setAttr ".lt" -type "double3" -2.9750507613002242e-016 4.163336342344337e-017 0.47260583519277694 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.0606436729431152 -2.197877792359817 1.5267039886217872 ;
	setAttr ".cbx" -type "double3" 5.7828836441040039 -1.694032100678909 6.0847770324450297 ;
createNode polyTweak -n "polyTweak24";
	rename -uid "A489C522-4B0C-FFEA-B98B-BB93C06209CC";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[98]" -type "float3" 0 0.33685809 2.220446e-016 ;
	setAttr ".tk[101]" -type "float3" 0 0.33685809 2.220446e-016 ;
	setAttr ".tk[102]" -type "float3" 1.244884 0.38868243 -0.20729731 ;
	setAttr ".tk[103]" -type "float3" 0 0.38868243 -0.20729731 ;
	setAttr ".tk[104]" -type "float3" 0 1.3992568 0.65322483 ;
	setAttr ".tk[105]" -type "float3" 0.87442374 0.6377691 -0.36051357 ;
	setAttr ".tk[106]" -type "float3" 0 0.38868243 -0.20729731 ;
	setAttr ".tk[107]" -type "float3" 0 1.3992568 0.46641895 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge4";
	rename -uid "81D518DA-47E4-FF38-982E-51B1A1F29F6C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[166]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.26069468 7.015049 2.8167074 ;
	setAttr ".rs" 37993;
	setAttr ".lt" -type "double3" 1.1102230246251565e-015 2.3688611060026901 -1.2212453270876722e-015 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0 6.9302655181870572 2.6334144225817457 ;
	setAttr ".cbx" -type "double3" 0.52138936519622803 7.0998321495041958 3.0000001540880943 ;
createNode polyTweak -n "polyTweak25";
	rename -uid "F177A0FD-4BE5-E14F-E960-B79570D4C677";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk[109:113]" -type "float3"  0 2.61712575 1.1919595 0 0.80327708
		 0.31094593 0 0 0.31753713 -0.76738131 2.61712575 1.1919595 -0.29107571 0.80327708
		 0.31094593;
createNode polyBridgeEdge -n "polyBridgeEdge2";
	rename -uid "1CF21295-44E2-6B3A-B5A3-4DBF86935AAF";
	setAttr ".ics" -type "componentList" 2 "e[46]" "e[213]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 28;
	setAttr ".sv2" 88;
	setAttr ".d" 1;
	setAttr ".sd" 1;
createNode polyTweak -n "polyTweak26";
	rename -uid "8970E5F7-4A9D-95AF-9A76-3BA331DD4901";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[114:115]" -type "float3"  0 -0.44050676 0 0 0.1295608
		 0.36277026;
createNode polyExtrudeEdge -n "polyExtrudeEdge5";
	rename -uid "2A4F66E7-4F94-7FC2-5CA7-43BB766A9A4E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[44]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.363483 2.2770963 3.9498274 ;
	setAttr ".rs" 58106;
	setAttr ".lt" -type "double3" 2.6367796834847468e-016 1.3877787807814457e-016 1.1891668802649114 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.9354128837585449 0.51709452485896312 3.8214327445727143 ;
	setAttr ".cbx" -type "double3" 3.7915527820587158 4.037098022459519 4.0782219520312095 ;
createNode polyTweak -n "polyTweak27";
	rename -uid "6D6DC422-4146-9EDE-7BA3-88B6847694DC";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[114:115]" -type "float3"  -0.79384273 0 0 -0.81376988
		 -2.4868996e-014 -0.016400164;
createNode polyExtrudeEdge -n "polyExtrudeEdge6";
	rename -uid "63853C53-4166-60B6-4D36-F493F6E570D4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[215]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.27065828 5.5029964 4.4379492 ;
	setAttr ".rs" 64655;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0 5.4145947418198705 3.9696222892504478 ;
	setAttr ".cbx" -type "double3" 0.54131656885147095 5.591397853849899 4.9062759032946373 ;
createNode polyTweak -n "polyTweak28";
	rename -uid "056B8CA1-46F7-D2DB-FF22-5E94B0E95B76";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[116:117]" -type "float3"  0 0.26043695 -1.56335139 0
		 0.26043695 -0.31179464;
createNode polyBridgeEdge -n "polyBridgeEdge3";
	rename -uid "E6B9411F-42F2-3021-5155-1FA33B480F7F";
	setAttr ".ics" -type "componentList" 2 "e[218]" "e[220]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 117;
	setAttr ".sv2" 114;
	setAttr ".d" 1;
	setAttr ".sd" 1;
createNode polyTweak -n "polyTweak29";
	rename -uid "53F17B09-49B1-D364-4A63-D4B50C89F7E8";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[118:119]" -type "float3"  0 2.077803373 0.82918918 0
		 1.61138475 0.72554052;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	rename -uid "4129DB38-4DDC-8C00-3000-32988195198F";
	setAttr ".ics" -type "componentList" 2 "f[17]" "f[81]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.9971724 -2.9777241 4.6914697 ;
	setAttr ".rs" 53434;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.867372989654541 -3.7856692352309116 2.3162848106127543 ;
	setAttr ".cbx" -type "double3" 5.1269717216491699 -2.1697787323012241 7.0666548362475208 ;
createNode polyTweak -n "polyTweak30";
	rename -uid "75759E59-40C0-3989-933A-4EA0DCF24125";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[104]" -type "float3" 0 -0.34936073 -0.56108236 ;
	setAttr ".tk[113]" -type "float3" 0 0.15626214 0.48716703 ;
	setAttr ".tk[116]" -type "float3" -0.79686111 0 0.42499262 ;
	setAttr ".tk[117]" -type "float3" -2.3172348 8.8817842e-016 0 ;
createNode polyTweak -n "polyTweak31";
	rename -uid "65C982B7-4368-F341-63CD-5893F76399E1";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[120:125]" -type "float3"  -0.86162519 2.55228186 3.23386383
		 -0.72462672 1.093835115 1.6179775 -0.8671428 1.093835115 2.45227504 -0.94583738 1.093835115
		 2.9657135 -0.69477075 1.093835115 1.89855218 -0.72851896 1.093835115 2.24277663;
createNode polySplit -n "polySplit3";
	rename -uid "E6F2E8A1-45C6-C752-0C16-D4A7DE4AA4F1";
	setAttr -s 7 ".e[0:6]"  0.81400901 0.81400901 0.81400901 0.81400901
		 0.81400901 0.81400901 0.81400901;
	setAttr -s 7 ".d[0:6]"  -2147483425 -2147483424 -2147483417 -2147483415 -2147483422 -2147483420 
		-2147483425;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	rename -uid "C3AEB07C-422C-E6C0-F2BB-1CADCA6580B7";
	setAttr ".ics" -type "componentList" 2 "f[106]" "f[110]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.9918356 -5.1278391 6.4899983 ;
	setAttr ".rs" 34535;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.753454327583313 -5.4036401786818384 4.819507276127891 ;
	setAttr ".cbx" -type "double3" 4.2302169799804687 -4.8520378150954127 8.1604897132616809 ;
createNode polyTweak -n "polyTweak32";
	rename -uid "B1695248-49C5-05DA-2DC2-AAAB34724D13";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[120]" -type "float3" 0 -0.18138511 0 ;
	setAttr ".tk[126]" -type "float3" 0 0.33685821 0.025912192 ;
	setAttr ".tk[131]" -type "float3" -0.34399852 0 -8.8817842e-016 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge7";
	rename -uid "B1A60F66-4D15-2717-393C-86A2DB881EB2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[222]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.94357169 4.5281014 5.7835073 ;
	setAttr ".rs" 57170;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.54131656885147095 4.2939940414414526 5.5195886245470787 ;
	setAttr ".cbx" -type "double3" 1.3458268642425537 4.7622085533127905 6.0474259010058189 ;
createNode polyTweak -n "polyTweak33";
	rename -uid "5A78864C-4AD6-6921-7F65-63B04AD9E06E";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[116]" -type "float3" 0 -0.10417477 -1.7709712 ;
	setAttr ".tk[123]" -type "float3" -0.4810077 0 0 ;
	setAttr ".tk[129]" -type "float3" 0 0 -0.20729728 ;
	setAttr ".tk[130]" -type "float3" 0 0 -0.80863613 ;
	setAttr ".tk[131]" -type "float3" 0.33551124 0 -0.48884553 ;
	setAttr ".tk[132]" -type "float3" -0.40546623 0.69508511 0.037670009 ;
	setAttr ".tk[133]" -type "float3" -0.019684985 0.69508511 -8.8817842e-016 ;
	setAttr ".tk[134]" -type "float3" -0.48458165 0.69508511 0 ;
	setAttr ".tk[135]" -type "float3" -0.72432929 1.1031346 1.7763568e-015 ;
	setAttr ".tk[136]" -type "float3" -0.40546623 0.34135625 0 ;
	setAttr ".tk[137]" -type "float3" -0.52068198 0.44966346 0 ;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "8983DBDC-4FBB-3136-94CA-CEAE7FE80A65";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[165]" -type "float2" 0.0031155159 -0.011751072 ;
	setAttr ".uvtk[166]" -type "float2" 0.26903692 -0.10065477 ;
	setAttr ".uvtk[186]" -type "float2" -0.00010451261 0.00020300885 ;
	setAttr ".uvtk[187]" -type "float2" 0.46287215 -0.65247816 ;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "070A2D13-46DE-DCAF-FB77-9784FE9C661A";
	setAttr ".ics" -type "componentList" 2 "vtx[118:119]" "vtx[139]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak34";
	rename -uid "F0DA7A12-4E92-DFDE-5D4D-95B955DB9AE9";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[138:139]" -type "float3"  0 0.65031683 0 -0.54131657
		 0.47023499 0.073154449;
createNode polyExtrudeEdge -n "polyExtrudeEdge8";
	rename -uid "90190BC6-4C3F-23B7-58EB-B5BA0DF0015B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[42]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.3966115 -0.35678053 3.464715 ;
	setAttr ".rs" 62298;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.8578101396560669 -1.2306555786147004 3.107997094700889 ;
	setAttr ".cbx" -type "double3" 2.9354128837585449 0.51709452485896312 3.8214327445727143 ;
createNode polyTweak -n "polyTweak35";
	rename -uid "64974BC0-48B8-BCB7-817E-A0A540019DF0";
	setAttr ".uopa" yes;
	setAttr ".tk[138]" -type "float3"  0 0.12166715 0.38586736;
createNode polyExtrudeEdge -n "polyExtrudeEdge9";
	rename -uid "A4FEC05E-437E-D1E1-DF3E-F78426F2CA3B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[216]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.4727366 1.9443102 4.4900289 ;
	setAttr ".rs" 52248;
	setAttr ".lt" -type "double3" 1.4439882286472188 0.83314065862399844 1.3322676295501878e-015 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.0100605487823486 0.51709452485896312 3.8214327445727143 ;
	setAttr ".cbx" -type "double3" 2.9354128837585449 3.3715258560166479 5.1586248031359458 ;
createNode polyTweak -n "polyTweak36";
	rename -uid "5ABF517E-4106-9A8A-7C0A-0FA7F3D89648";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[139:140]" -type "float3"  -1.71378517 0 -1.077846527
		 -1.41425323 0 -0.85304028;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "81186896-4F8D-A47A-D0D3-348CF3C3F861";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk";
	setAttr ".uvtk[49]" -type "float2" 0.0007117794 -0.06489718 ;
	setAttr ".uvtk[161]" -type "float2" -0.00052572862 0.00019825323 ;
	setAttr ".uvtk[190]" -type "float2" 0.003056834 0.042213794 ;
	setAttr ".uvtk[191]" -type "float2" -0.0024196464 -0.033118159 ;
	setAttr ".uvtk[193]" -type "float2" -1.3131583e-005 4.0388739e-005 ;
	setAttr ".uvtk[196]" -type "float2" -0.024102675 -0.15597226 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "EB5BCF0B-4A61-E504-7351-00B5235CBFC1";
	setAttr ".ics" -type "componentList" 2 "vtx[27]" "vtx[140:141]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak37";
	rename -uid "1C683A6C-443B-9846-684A-F28C906091FA";
	setAttr ".uopa" yes;
	setAttr ".tk[141]" -type "float3"  -0.36363423 -0.9547224 0.020990968;
createNode polyBridgeEdge -n "polyBridgeEdge4";
	rename -uid "85AA8C48-4E07-D1F5-3519-5687EC438B07";
	setAttr ".ics" -type "componentList" 2 "e[260]" "e[265]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 117;
	setAttr ".sv2" 141;
	setAttr ".d" 1;
	setAttr ".td" 1;
createNode polyTweak -n "polyTweak38";
	rename -uid "878E91B5-4272-B2B9-A92F-8B86C5FA1451";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[139:141]" -type "float3"  0 1.60037398 0 0 1.60037398
		 -1.110223e-016 0.93773645 -0.10340159 1.29651368;
createNode polyExtrudeEdge -n "polyExtrudeEdge10";
	rename -uid "B3DCD9DC-4CCD-DDA4-F21C-5589C6DA29B9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.9636513 -1.4158427 2.9868329 ;
	setAttr ".rs" 60244;
	setAttr ".lt" -type "double3" -5.5511151231257827e-016 2.0148971063527052 -5.5511151231257827e-017 ;
	setAttr ".ls" -type "double3" 0.61041273871024571 1 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.069492504000663757 -1.6010297813429719 2.8656684509020609 ;
	setAttr ".cbx" -type "double3" 1.8578101396560669 -1.2306555786147004 3.107997094700889 ;
createNode polyTweak -n "polyTweak39";
	rename -uid "F3E20871-4ED7-4A79-B26D-26AF7085E545";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[138]" -type "float3" 0 -0.3954182 -0.3954182 ;
	setAttr ".tk[139]" -type "float3" 0.19382313 0 4.4408921e-016 ;
	setAttr ".tk[141]" -type "float3" 0 -0.60833567 -0.42583498 ;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "2D2CFBA0-4A41-129B-084A-4BB535FE2ECC";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk";
	setAttr ".uvtk[48]" -type "float2" -0.015986152 0.0062520439 ;
	setAttr ".uvtk[188]" -type "float2" -0.00010453277 6.7617817e-005 ;
	setAttr ".uvtk[191]" -type "float2" 0.00013270849 -7.4221782e-005 ;
	setAttr ".uvtk[196]" -type "float2" 0.086601771 -5.7667197e-008 ;
	setAttr ".uvtk[197]" -type "float2" 0.13472864 -0.16517216 ;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "935D7C26-4F10-33CF-F570-1FA7725912B7";
	setAttr ".ics" -type "componentList" 3 "vtx[26]" "vtx[139]" "vtx[143]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak40";
	rename -uid "970EDDCE-4566-3A4C-2405-E58FCF39951E";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[142:143]" -type "float3"  -1.52617872 0 -1.039574027
		 -0.87242758 -0.33975172 -1.0056943893;
createNode polyExtrudeEdge -n "polyExtrudeEdge11";
	rename -uid "57A98452-427D-FC9E-9EE5-97B58E64B839";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[269]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.16892397 -0.15199849 4.8042865 ;
	setAttr ".rs" 36495;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.1920928955078125e-007 -0.15280928993366971 4.7083708396654878 ;
	setAttr ".cbx" -type "double3" 0.33784806728363037 -0.15118768596791043 4.9002019515734467 ;
createNode polyTweak -n "polyTweak41";
	rename -uid "B256E2DC-4890-C998-3017-2295C3A044A7";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[102]" -type "float3" -0.28143948 -0.23927589 -8.8817842e-016 ;
	setAttr ".tk[139]" -type "float3" 0 2.9802322e-008 2.3841858e-007 ;
	setAttr ".tk[140]" -type "float3" 0 -0.18250069 -0.60833567 ;
	setAttr ".tk[142]" -type "float3" 1.4075146 0 -0.19382286 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge12";
	rename -uid "73C138C9-44A2-776A-0377-DCAF21B2FE06";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[266]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.7091688 2.6766746 5.3204579 ;
	setAttr ".rs" 48454;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.5211596488952637 1.9784705362305761 5.2393061271410737 ;
	setAttr ".cbx" -type "double3" 1.8971779346466064 3.3748784980759741 5.4016100517016197 ;
createNode polyTweak -n "polyTweak42";
	rename -uid "2AB88C57-43EE-B11D-30D3-728DF9E482B7";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[143]" -type "float3" 0 0 -2.2871082 ;
	setAttr ".tk[144]" -type "float3" 0 0 -2.2871082 ;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "DF10B146-4DF7-39AC-2445-C2B696609F05";
	setAttr ".uopa" yes;
	setAttr -s 7 ".uvtk";
	setAttr ".uvtk[191]" -type "float2" -0.00015807574 -5.9643226e-005 ;
	setAttr ".uvtk[197]" -type "float2" -0.014154957 0.0010831601 ;
	setAttr ".uvtk[200]" -type "float2" -0.00033080223 9.3369608e-006 ;
	setAttr ".uvtk[201]" -type "float2" -0.00041391992 -7.4736008e-006 ;
	setAttr ".uvtk[205]" -type "float2" -1.0426832 -0.89997953 ;
	setAttr ".uvtk[206]" -type "float2" -1.6109234 -0.95720017 ;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "16C7B875-4787-6595-BFE6-FC8B300B21E3";
	setAttr ".ics" -type "componentList" 2 "vtx[139]" "vtx[144:146]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 1.1196227989182577 -1.2395823845166414 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak43";
	rename -uid "31250B25-4075-E4CD-B277-D0B861151207";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[145]" -type "float3" -1.1833116 -0.53093541 2.1312799 ;
	setAttr ".tk[146]" -type "float3" -1.5593299 -0.69323933 1.2405797 ;
createNode polyCube -n "polyCube1";
	rename -uid "84E3AD58-4BD7-B0A9-7F0B-ABA7DCD9F8D3";
	setAttr ".sw" 2;
	setAttr ".sh" 2;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	rename -uid "CD6500C0-4E31-6696-CC44-38AEEEC9C681";
	setAttr ".ics" -type "componentList" 1 "f[6:9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.6201298468366447 7.1641049724909394 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.0687964 7.4037042 ;
	setAttr ".rs" 58181;
	setAttr ".lt" -type "double3" 2.7755575615628914e-017 1.3739009929736312e-015 0.13144010481594712 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.45080247521400452 1.6704590552106682 7.1223123413416474 ;
	setAttr ".cbx" -type "double3" 0.45080247521400452 2.4671339624181572 7.6850962978693573 ;
createNode polyTweak -n "polyTweak44";
	rename -uid "D42F33F3-4902-6E80-3EFF-57AB685E2DD0";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk[0:17]" -type "float3"  0.13333333 0.18934855 -0.13541785
		 0 0.18934855 -0.13541785 -0.13333333 0.18934855 -0.13541785 0.049197525 0.29860491
		 0.29497054 0 0.29860491 0.29497054 -0.049197525 0.29860491 0.29497054 0.12777777
		 0.13721886 0.27617061 0 0.13721886 0.27617061 -0.12777777 0.13721886 0.27617061 0.12777777
		 0.34700412 1.020991325 0 0.34700412 1.020991325 -0.12777777 0.34700412 1.020991325
		 0.049197525 0.6595856 0.88859582 0 0.6595856 0.88859582 -0.049197525 0.6595856 0.88859582
		 0.13333333 0.55032921 0.45820737 0 0.55032921 0.45820737 -0.13333333 0.55032921 0.45820737;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	rename -uid "7E04A0A7-419A-D109-0EA6-1FA11B397C0F";
	setAttr ".ics" -type "componentList" 1 "f[2:3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.6201298468366447 7.1641049724909394 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.0880418 7.9496756 ;
	setAttr ".rs" 65478;
	setAttr ".lt" -type "double3" 2.7755575615628914e-017 1.0755285551056204e-016 0.30279042755594288 ;
	setAttr ".ls" -type "double3" 1.5907431003330494 0.5521834393506847 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.45080247521400452 1.9187348120466057 7.9402757030817597 ;
	setAttr ".cbx" -type "double3" 0.45080247521400452 2.2573485605970207 7.9590754848810761 ;
createNode polyTweak -n "polyTweak45";
	rename -uid "06A61A0C-4E0C-0548-DBCA-97B76A2148E1";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.129767 0.014418559 ;
	setAttr ".tk[1]" -type "float3" 0 0.129767 0.014418559 ;
	setAttr ".tk[2]" -type "float3" 0 0.129767 0.014418559 ;
	setAttr ".tk[14]" -type "float3" 0 0.014418559 -0.086511344 ;
	setAttr ".tk[15]" -type "float3" 0 0.014418559 -0.086511344 ;
	setAttr ".tk[16]" -type "float3" 0 0.014418559 -0.086511344 ;
	setAttr ".tk[17]" -type "float3" 0 0.28356507 -0.043255683 ;
	setAttr ".tk[18]" -type "float3" 0 0.28356507 -0.043255683 ;
	setAttr ".tk[19]" -type "float3" 0 0.24030931 -0.25953406 ;
	setAttr ".tk[20]" -type "float3" 0 0.24030931 -0.25953406 ;
	setAttr ".tk[21]" -type "float3" 0 0.28356507 -0.043255683 ;
	setAttr ".tk[22]" -type "float3" 0 0.24030931 -0.25953406 ;
	setAttr ".tk[23]" -type "float3" 0 0.69689667 -0.0048061865 ;
	setAttr ".tk[24]" -type "float3" 0 0.69689667 -0.0048061865 ;
	setAttr ".tk[25]" -type "float3" 0 0.69689667 -0.0048061865 ;
createNode polyTweak -n "polyTweak46";
	rename -uid "F914E72E-4A3F-23CD-86A4-5F8329C4AA56";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[22]" -type "float3" 0.58573931 0.19524644 0 ;
	setAttr ".tk[25]" -type "float3" 0.52566361 0 0 ;
createNode deleteComponent -n "deleteComponent9";
	rename -uid "A0B3AB2B-41AF-FE2E-CD97-EDB6E661EF0B";
	setAttr ".dc" -type "componentList" 9 "f[0]" "f[2]" "f[4]" "f[6]" "f[8]" "f[10]" "f[14:17]" "f[20:21]" "f[24:26]";
createNode polyExtrudeFace -n "polyExtrudeFace19";
	rename -uid "1D51EEA5-468F-E601-4B8F-53B032C2C887";
	setAttr ".ics" -type "componentList" 1 "f[11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.6201298468366447 7.1641049724909394 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.44616514 2.0640357 7.0229764 ;
	setAttr ".rs" 33013;
	setAttr ".lt" -type "double3" 0.16520852766774263 0.10817379513753451 0.41618057254448809 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0 1.6848776572004143 7.0101514202448456 ;
	setAttr ".cbx" -type "double3" 0.89233028888702393 2.4431934588208977 7.0358014446589081 ;
createNode polyTweak -n "polyTweak47";
	rename -uid "22FCE91C-4AC4-5765-0DAC-EFA7D00E9155";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -0.16520852 0 ;
	setAttr ".tk[1]" -type "float3" 0 -0.16520852 0 ;
	setAttr ".tk[7]" -type "float3" -0.060075827 0 0 ;
	setAttr ".tk[10]" -type "float3" 0.13517061 0 0 ;
	setAttr ".tk[11]" -type "float3" 0 0.13517061 0 ;
	setAttr ".tk[13]" -type "float3" -0.15018956 0.13517061 0 ;
createNode deleteComponent -n "deleteComponent10";
	rename -uid "BA444C47-49BD-20CE-0A20-C8B6D6A48A71";
	setAttr ".dc" -type "componentList" 1 "f[16]";
createNode polyExtrudeEdge -n "polyExtrudeEdge13";
	rename -uid "4DC8DA1E-4B3C-00BF-02AF-7FA514AB2255";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[39]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.6201298468366447 7.1641049724909394 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.1036761 2.322577 6.8040085 ;
	setAttr ".rs" 59091;
	setAttr ".lt" -type "double3" 7.9103390504542404e-016 0.12209425636739338 -2.7755575615628914e-017 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.89233028888702393 2.2019607656255547 6.5978656154963105 ;
	setAttr ".cbx" -type "double3" 1.3150218725204468 2.4431934588208977 7.0101514202448456 ;
createNode polyTweak -n "polyTweak48";
	rename -uid "6FE69A6A-49A3-7B53-74C9-088EF1EB8DC8";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[10]" -type "float3" 0 -0.057968121 0 ;
	setAttr ".tk[21]" -type "float3" 0 0.29042765 0.10627491 ;
	setAttr ".tk[22]" -type "float3" 0 0.23233436 0.10627488 ;
	setAttr ".tk[24]" -type "float3" 0.25748298 -0.11905126 0 ;
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "35710126-4F07-C3FD-D5CC-2D8879ED1A29";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[19]" -type "float2" 0.0078948727 -0.00049618306 ;
	setAttr ".uvtk[21]" -type "float2" -0.010154664 -0.044563279 ;
	setAttr ".uvtk[30]" -type "float2" 0.0001029944 0.00016168864 ;
	setAttr ".uvtk[33]" -type "float2" -0.32029402 -0.29975837 ;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "66ACA526-4826-AD2A-D50E-84932DC306B0";
	setAttr ".ics" -type "componentList" 3 "vtx[14]" "vtx[16]" "vtx[25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.6201298468366447 7.1641049724909394 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak49";
	rename -uid "A620CF94-4BCE-C481-F9F2-9BB92083CC13";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[25]" -type "float3" 0.17412519 0.26170161 0.25677395 ;
	setAttr ".tk[26]" -type "float3" 0.31682885 0.34780863 0 ;
createNode deleteComponent -n "deleteComponent11";
	rename -uid "C4EA2062-4496-9369-7DDF-65AF98D030A4";
	setAttr ".dc" -type "componentList" 2 "f[4]" "f[16]";
createNode deleteComponent -n "deleteComponent12";
	rename -uid "F838CA21-4F93-C58D-32DD-DE8747EDCEDA";
	setAttr ".dc" -type "componentList" 1 "f[10]";
createNode deleteComponent -n "deleteComponent13";
	rename -uid "296CCF02-49CA-ED36-961D-49918DA874B2";
	setAttr ".dc" -type "componentList" 1 "f[3]";
createNode polyExtrudeEdge -n "polyExtrudeEdge14";
	rename -uid "C8441B41-49D5-DF72-299D-8D8880996227";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[17]" "e[19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.6201298468366447 7.1641049724909394 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.51827085 2.8764081 7.3601489 ;
	setAttr ".rs" 53656;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.8865216738424464e-017 2.7911088698163811 7.1858120304438202 ;
	setAttr ".cbx" -type "double3" 1.0365417003631592 2.9617071383252922 7.5344853741022675 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge15";
	rename -uid "22846AEB-4502-A034-6B92-B898C7B75B1D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.6201298468366447 7.1641049724909394 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.0365417 2.8221073 7.1911116 ;
	setAttr ".rs" 62849;
	setAttr ".lt" -type "double3" 8.2225892761300656e-016 0.1382449492598036 3.3306690738754696e-016 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.0365417003631592 2.7911088698163811 7.1858120304438202 ;
	setAttr ".cbx" -type "double3" 1.0365417003631592 2.8531059258237663 7.1964106713327496 ;
createNode polyTweak -n "polyTweak50";
	rename -uid "3AF48F10-4A78-91B3-0981-F5B1D0BADCD2";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[23]" -type "float3" 0 0.061997093 0.010598641 ;
	setAttr ".tk[24]" -type "float3" 0 0.061997093 0.010598641 ;
	setAttr ".tk[25]" -type "float3" 0 0.061997093 0.010598641 ;
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "0F85FC85-414A-198C-EDB2-11BC3AECCFA1";
	setAttr ".uopa" yes;
	setAttr -s 7 ".uvtk";
	setAttr ".uvtk[18]" -type "float2" -0.0037763473 0.0080947885 ;
	setAttr ".uvtk[29]" -type "float2" 4.3123662e-005 -0.00036655314 ;
	setAttr ".uvtk[30]" -type "float2" 2.9703644e-006 -2.8427339e-006 ;
	setAttr ".uvtk[36]" -type "float2" 0.00016484188 0.012906649 ;
	setAttr ".uvtk[40]" -type "float2" -0.012360068 0.00017843183 ;
	setAttr ".uvtk[41]" -type "float2" 3.8847713 0.070812993 ;
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "CFD1065C-41E3-4CD8-469F-7EABD6964FE3";
	setAttr ".ics" -type "componentList" 3 "vtx[13]" "vtx[22]" "vtx[26]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.6201298468366447 7.1641049724909394 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak51";
	rename -uid "5FFD5DA1-4602-C896-F266-EFABF98BDF77";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[26]" -type "float3" 0.43645358 -0.16352695 -0.61991596 ;
	setAttr ".tk[27]" -type "float3" 0.44465733 -0.011951037 0 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge16";
	rename -uid "921E63A5-4A77-66D7-2361-B29AAE0A2149";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[42]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.6201298468366447 7.1641049724909394 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.3417543 2.8071399 6.8741732 ;
	setAttr ".rs" 60656;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.0365417003631592 2.7611738674894157 6.5519360047670929 ;
	setAttr ".cbx" -type "double3" 1.646966814994812 2.8531060450330559 7.1964106899592011 ;
createNode polyTweak -n "polyTweak52";
	rename -uid "E8C8C152-4141-F72C-7C8F-4DAB1C7FE600";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[26]" -type "float3"  0.036826052 -0.088382527 -0.59533089;
createNode polyExtrudeEdge -n "polyExtrudeEdge17";
	rename -uid "E63B1BA7-48E4-5683-7793-EFA0BADBFD88";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[46]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.6201298468366447 7.1641049724909394 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.2693572 3.1790483 6.7904811 ;
	setAttr ".rs" 41870;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.1451370716094971 2.9727381699338737 6.5698374849649994 ;
	setAttr ".cbx" -type "double3" 1.3935774564743042 3.3853585951581779 7.0111244809719651 ;
createNode polyTweak -n "polyTweak53";
	rename -uid "6F36DE1E-4399-D1A8-DE10-CB9D6F2B2639";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[27:28]" -type "float3"  0.10859543 0.11963218 -0.18528621
		 -0.25338933 0.62418491 0.017901301;
createNode polyExtrudeEdge -n "polyExtrudeEdge18";
	rename -uid "3B51AFD9-4DA9-0B0F-20E7-FAACD531035C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[48]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.6201298468366447 7.1641049724909394 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.3935775 3.4345925 6.7956243 ;
	setAttr ".rs" 41618;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.3935774564743042 3.3853585951581779 6.569837604174289 ;
	setAttr ".cbx" -type "double3" 1.3935774564743042 3.4838265412107292 7.0214107972475617 ;
createNode polyTweak -n "polyTweak54";
	rename -uid "064159BC-4267-6A60-54D3-B1A87391A006";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[22]" -type "float3" 0 0 -0.086621143 ;
	setAttr ".tk[26]" -type "float3" 0 0 -0.134744 ;
	setAttr ".tk[29]" -type "float3" 0 0.35945788 0.0080730254 ;
	setAttr ".tk[30]" -type "float3" 0 0.098467991 0.45157319 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge19";
	rename -uid "63AB3DE3-4877-5465-FB4D-26BEABBCDCF2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[50]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.6201298468366447 7.1641049724909394 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.3935775 3.680068 6.4747624 ;
	setAttr ".rs" 37265;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.3935774564743042 3.3853585951581779 6.3796875220629303 ;
	setAttr ".cbx" -type "double3" 1.3935774564743042 3.9747772448316399 6.569837604174289 ;
createNode polyTweak -n "polyTweak55";
	rename -uid "94FAD270-4B4A-521F-8DAA-7D9C72C2EFCF";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[31:32]" -type "float3"  0 0.58941871 -0.19015007 0
		 0.37303844 -0.19483288;
createNode polyExtrudeEdge -n "polyExtrudeEdge20";
	rename -uid "1C19182E-47E0-183E-6C35-5998CFB79534";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[31]" "e[34:35]" "e[43]" "e[45]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.6201298468366447 7.1641049724909394 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.074402 2.506134 6.7264967 ;
	setAttr ".rs" 52811;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.50183725357055664 1.6269095175519768 6.4171920162531464 ;
	setAttr ".cbx" -type "double3" 1.646966814994812 3.3853585951581779 7.0358014446589081 ;
createNode polyTweak -n "polyTweak56";
	rename -uid "06E3410C-4751-C76D-B335-6099F6AB3E5D";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[33]" -type "float3" 0.10900838 -0.02157528 -0.71315265 ;
	setAttr ".tk[34]" -type "float3" 0 -0.055421308 -0.24930447 ;
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "10DA6A71-4263-1E47-27E1-66B9BE529616";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk";
	setAttr ".uvtk[45]" -type "float2" -0.037643228 0.1022442 ;
	setAttr ".uvtk[48]" -type "float2" 3.0293324e-006 0.00034443519 ;
	setAttr ".uvtk[52]" -type "float2" 0.031932436 -0.071314991 ;
	setAttr ".uvtk[56]" -type "float2" 0.0010111855 -0.0099188238 ;
	setAttr ".uvtk[57]" -type "float2" -0.0016232025 0.012550403 ;
	setAttr ".uvtk[75]" -type "float2" 8.2821411e-005 7.6218377e-005 ;
	setAttr ".uvtk[78]" -type "float2" 0.02798803 -0.0058200043 ;
createNode polyMergeVert -n "polyMergeVert7";
	rename -uid "3CA6A832-4D08-B799-089A-868129EED780";
	setAttr ".ics" -type "componentList" 3 "vtx[28]" "vtx[33]" "vtx[40]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.6201298468366447 7.1641049724909394 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak57";
	rename -uid "39BB86E1-44C9-B043-F1C2-738F6F5E2C4E";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[35]" -type "float3" 0 -0.046532713 -0.71019918 ;
	setAttr ".tk[36]" -type "float3" 0 -0.046532713 -0.71019918 ;
	setAttr ".tk[37]" -type "float3" 0 -0.046532713 -0.71019918 ;
	setAttr ".tk[38]" -type "float3" 0 -0.046532713 -0.71019918 ;
	setAttr ".tk[39]" -type "float3" 0 -0.046532713 -0.71019918 ;
	setAttr ".tk[40]" -type "float3" 0.10900843 -0.021575175 -0.71315295 ;
createNode polyTweak -n "polyTweak58";
	rename -uid "497E6688-4F2E-5288-CE0A-F38061D4822D";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[33]" -type "float3" 0 0.30798629 0.057747427 ;
	setAttr ".tk[38]" -type "float3" -0.06641832 -0.028873742 0.086621143 ;
	setAttr ".tk[39]" -type "float3" 0 0.36573371 0.028873716 ;
createNode deleteComponent -n "deleteComponent14";
	rename -uid "5ED02813-47FD-A2B4-89DB-298594F99058";
	setAttr ".dc" -type "componentList" 1 "f[12]";
createNode polyExtrudeEdge -n "polyExtrudeEdge21";
	rename -uid "2571FB36-4F1D-D06C-7E54-27ACC985C91D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.6201298468366447 7.1641049724909394 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.25091863 1.6558936 7.0358014 ;
	setAttr ".rs" 51549;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0 1.6269095175519768 7.0358014446589081 ;
	setAttr ".cbx" -type "double3" 0.50183725357055664 1.6848776572004143 7.0358014446589081 ;
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "22330B29-4413-00BB-D942-AB8DD9E581E5";
	setAttr ".uopa" yes;
	setAttr -s 7 ".uvtk";
	setAttr ".uvtk[10]" -type "float2" -0.027894082 0.064337537 ;
	setAttr ".uvtk[13]" -type "float2" 0.00017367628 -4.5246194e-005 ;
	setAttr ".uvtk[58]" -type "float2" 0.00046793153 -9.4807794e-005 ;
	setAttr ".uvtk[61]" -type "float2" 0.0012446282 -0.00058871298 ;
	setAttr ".uvtk[78]" -type "float2" -0.023648756 -0.00012801577 ;
	setAttr ".uvtk[81]" -type "float2" -0.017441353 -0.026580967 ;
createNode polyMergeVert -n "polyMergeVert8";
	rename -uid "DCC5E983-470C-C074-EECD-7492C5944B83";
	setAttr ".ics" -type "componentList" 3 "vtx[10]" "vtx[34]" "vtx[40]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.6201298468366447 7.1641049724909394 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak59";
	rename -uid "6E26521D-471E-2E74-1FEE-0E897A198B2E";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[39]" -type "float3" 5.2154064e-008 -0.055445172 -0.72866708 ;
	setAttr ".tk[40]" -type "float3" 0 -0.04653275 -0.71019936 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge22";
	rename -uid "B789B792-4BCF-CA02-3F17-8B8E6C7F1470";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[47]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.6201298468366447 7.1641049724909394 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.2693572 3.4080114 7.0203042 ;
	setAttr ".rs" 48450;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.1451370716094971 3.3321962588086906 7.0191974979731171 ;
	setAttr ".cbx" -type "double3" 1.3935774564743042 3.4838266604200188 7.021410976061496 ;
createNode polyTweak -n "polyTweak60";
	rename -uid "19F99F16-435A-CCA6-2213-169BD4CE66A2";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[34]" -type "float3" 0 0.055702403 -0.11411134 ;
	setAttr ".tk[39]" -type "float3" 0 0.10199916 0 ;
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "147304B9-4318-7A57-508E-F39DE10DF948";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk";
	setAttr ".uvtk[48]" -type "float2" -0.0016148133 0.00033110613 ;
	setAttr ".uvtk[50]" -type "float2" -0.04830971 0.10751174 ;
	setAttr ".uvtk[53]" -type "float2" 0.040739454 -0.089461789 ;
	setAttr ".uvtk[83]" -type "float2" -0.00067236356 0.00036285256 ;
	setAttr ".uvtk[84]" -type "float2" 0.4838464 -0.22504182 ;
createNode polyMergeVert -n "polyMergeVert9";
	rename -uid "25C7DFF0-4A22-3BD8-360F-4488D4080D45";
	setAttr ".ics" -type "componentList" 3 "vtx[29]" "vtx[31]" "vtx[41]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.6201298468366447 7.1641049724909394 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak61";
	rename -uid "4E282C41-45C5-81CA-EDE4-93BF6E324EE4";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[40]" -type "float3" -0.15745653 0.38574845 -1.8626451e-009 ;
	setAttr ".tk[41]" -type "float3" -1.4901161e-008 0.37303859 -0.1948328 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge23";
	rename -uid "2387FE59-408A-D7FB-66C3-4A9E62F1A4C5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[66]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.6201298468366447 7.1641049724909394 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.0179607 3.6974378 7.122139 ;
	setAttr ".rs" 41311;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.98768055438995361 3.5141395561948601 7.0766532760950653 ;
	setAttr ".cbx" -type "double3" 1.0482407808303833 3.8807361357465568 7.1676249247881501 ;
createNode polyTweak -n "polyTweak62";
	rename -uid "2C8F62D3-4533-3D2B-5A6C-B1BF39B88BB6";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[28]" -type "float3" -0.096896328 0.1819433 0.14842743 ;
	setAttr ".tk[40]" -type "float3" 0 0.16279137 0.057455778 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge24";
	rename -uid "26F8C78F-4AB9-C777-7EA2-188CE6B6B3AA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[70]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.6201298468366447 7.1641049724909394 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.20645404 3.4664483 7.6803646 ;
	setAttr ".rs" 57892;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.17617392539978027 3.2831499808088127 7.6348788482042877 ;
	setAttr ".cbx" -type "double3" 0.23673415184020996 3.6497464411512199 7.7258503180834381 ;
createNode polyTweak -n "polyTweak63";
	rename -uid "3F4BC8B6-4510-1952-84F2-3497065583DD";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[41:42]" -type "float3"  -0.81150663 -0.23098972 0.55822533
		 -0.81150663 -0.23098972 0.55822533;
createNode polyBridgeEdge -n "polyBridgeEdge5";
	rename -uid "7DFCF1AB-4E2A-6FA2-0708-C58352F78FC5";
	setAttr ".ics" -type "componentList" 2 "e[37]" "e[71]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.6201298468366447 7.1641049724909394 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".sv1" 22;
	setAttr ".sv2" 41;
	setAttr ".d" 1;
createNode polyTweak -n "polyTweak64";
	rename -uid "02AF2B5F-44E1-943F-B96A-D8A22E65A3C6";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[43]" -type "float3" -0.23673415 0 0 ;
	setAttr ".tk[44]" -type "float3" -0.17617393 0 0 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge25";
	rename -uid "D819C747-4EF0-C9FC-77C8-6FB1B5BD04CD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[69]" "e[72]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.6201298468366447 7.1641049724909394 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.49384028 3.7652414 7.3557663 ;
	setAttr ".rs" 41022;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0 3.6497464411512199 7.0766535145136444 ;
	setAttr ".cbx" -type "double3" 0.98768055438995361 3.8807361357465568 7.6348786693903534 ;
createNode polyTweak -n "polyTweak65";
	rename -uid "191BB854-49D7-706E-AA33-0BA2F756AFEE";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[41]" -type "float3" 0 0 0.0081387311 ;
	setAttr ".tk[43]" -type "float3" 0 0 0.0081387311 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.10587028 ;
	setAttr ".tk[46]" -type "float3" 0 0 0.10587028 ;
createNode polyBridgeEdge -n "polyBridgeEdge6";
	rename -uid "40373A4D-45E1-82CF-C72F-47ACB2DAFCDA";
	setAttr ".ics" -type "componentList" 2 "e[50]" "e[79]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.6201298468366447 7.1641049724909394 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 31;
	setAttr ".sv2" 47;
	setAttr ".d" 1;
createNode polyTweak -n "polyTweak66";
	rename -uid "3ED92169-4E85-9402-52AA-708BE29ECD68";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[44]" -type "float3" 0 0 0.049705997 ;
	setAttr ".tk[47]" -type "float3" 0 0.75345373 -0.34618467 ;
	setAttr ".tk[48]" -type "float3" 0 1.1403117 -0.80364293 ;
	setAttr ".tk[49]" -type "float3" 0 1.1403117 -0.6676417 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge26";
	rename -uid "046058F6-44A0-6C2E-DC29-D78B93693B5D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[84]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.6201298468366447 7.1641049724909394 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.190629 4.3044834 6.555078 ;
	setAttr ".rs" 34978;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.98768055438995361 3.9747772448316399 6.379687343248996 ;
	setAttr ".cbx" -type "double3" 1.3935774564743042 4.634189628864843 6.7304687839838593 ;
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "AD7B7A0A-4898-4F73-A42B-26BBAC4455F5";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk";
	setAttr ".uvtk[52]" -type "float2" 0.12884632 -0.10879923 ;
	setAttr ".uvtk[54]" -type "float2" -0.0073335189 0.013773391 ;
	setAttr ".uvtk[57]" -type "float2" 0.011111501 -0.019254617 ;
	setAttr ".uvtk[103]" -type "float2" -0.00011010378 0.0008832076 ;
	setAttr ".uvtk[104]" -type "float2" 0.13331552 -0.17647073 ;
createNode polyMergeVert -n "polyMergeVert10";
	rename -uid "9B0834B7-4A15-EA7D-61A5-D78F6C4DAB42";
	setAttr ".ics" -type "componentList" 3 "vtx[30]" "vtx[33]" "vtx[50]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.6201298468366447 7.1641049724909394 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak67";
	rename -uid "21F1ADB3-46E5-ACA8-7445-9098B468B340";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[50]" -type "float3" 0 -0.055421419 -0.24930474 ;
	setAttr ".tk[51]" -type "float3" 0 0.074182443 -0.23491105 ;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape1.ws";
connectAttr ":frontShape.msg" "imagePlaneShape1.ltc";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape2.ws";
connectAttr ":sideShape.msg" "imagePlaneShape2.ltc";
connectAttr "polyMergeVert4.out" "pCylinderShape1.i";
connectAttr "polyTweakUV4.uvtk[0]" "pCylinderShape1.uvst[0].uvtw";
connectAttr "polyMergeVert10.out" "pCubeShape1.i";
connectAttr "polyTweakUV10.uvtk[0]" "pCubeShape1.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCylinder1.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polyTweak2.ip";
connectAttr "polyTweak2.out" "polySplit1.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polySplit1.out" "polyTweak3.ip";
connectAttr "polyExtrudeFace1.out" "polyTweak4.ip";
connectAttr "polyTweak4.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyTweak5.ip";
connectAttr "polyTweak5.out" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "polyExtrudeEdge1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge1.mp";
connectAttr "polyTweak6.out" "polyExtrudeFace2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeEdge1.out" "polyTweak6.ip";
connectAttr "polyExtrudeFace2.out" "polyTweak7.ip";
connectAttr "polyTweak7.out" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "polyTweak8.out" "polyExtrudeFace3.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace3.mp";
connectAttr "deleteComponent6.og" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace4.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyExtrudeFace5.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polyExtrudeFace6.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyExtrudeFace7.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak12.ip";
connectAttr "polyExtrudeFace7.out" "polyExtrudeFace8.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polyTweak13.out" "polyBridgeEdge1.ip";
connectAttr "pCylinderShape1.wm" "polyBridgeEdge1.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polyExtrudeFace9.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace9.mp";
connectAttr "polyBridgeEdge1.out" "polyTweak14.ip";
connectAttr "polyExtrudeFace9.out" "polyTweak15.ip";
connectAttr "polyTweak15.out" "deleteComponent7.ig";
connectAttr "polyTweak16.out" "polyExtrudeFace10.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace10.mp";
connectAttr "deleteComponent7.og" "polyTweak16.ip";
connectAttr "polyExtrudeFace10.out" "polyTweak17.ip";
connectAttr "polyTweak17.out" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "polyTweak18.ip";
connectAttr "polyTweak18.out" "polySplit2.ip";
connectAttr "polyTweak19.out" "polyExtrudeEdge2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge2.mp";
connectAttr "polySplit2.out" "polyTweak19.ip";
connectAttr "polyTweak20.out" "polyExtrudeEdge3.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge3.mp";
connectAttr "polyExtrudeEdge2.out" "polyTweak20.ip";
connectAttr "polyTweak21.out" "polyExtrudeFace11.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeEdge3.out" "polyTweak21.ip";
connectAttr "polyTweak22.out" "polyExtrudeFace12.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak22.ip";
connectAttr "polyTweak23.out" "polyExtrudeFace13.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak23.ip";
connectAttr "polyTweak24.out" "polyExtrudeFace14.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace13.out" "polyTweak24.ip";
connectAttr "polyTweak25.out" "polyExtrudeEdge4.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge4.mp";
connectAttr "polyExtrudeFace14.out" "polyTweak25.ip";
connectAttr "polyTweak26.out" "polyBridgeEdge2.ip";
connectAttr "pCylinderShape1.wm" "polyBridgeEdge2.mp";
connectAttr "polyExtrudeEdge4.out" "polyTweak26.ip";
connectAttr "polyTweak27.out" "polyExtrudeEdge5.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge5.mp";
connectAttr "polyBridgeEdge2.out" "polyTweak27.ip";
connectAttr "polyTweak28.out" "polyExtrudeEdge6.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge6.mp";
connectAttr "polyExtrudeEdge5.out" "polyTweak28.ip";
connectAttr "polyTweak29.out" "polyBridgeEdge3.ip";
connectAttr "pCylinderShape1.wm" "polyBridgeEdge3.mp";
connectAttr "polyExtrudeEdge6.out" "polyTweak29.ip";
connectAttr "polyTweak30.out" "polyExtrudeFace15.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace15.mp";
connectAttr "polyBridgeEdge3.out" "polyTweak30.ip";
connectAttr "polyExtrudeFace15.out" "polyTweak31.ip";
connectAttr "polyTweak31.out" "polySplit3.ip";
connectAttr "polyTweak32.out" "polyExtrudeFace16.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace16.mp";
connectAttr "polySplit3.out" "polyTweak32.ip";
connectAttr "polyTweak33.out" "polyExtrudeEdge7.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge7.mp";
connectAttr "polyExtrudeFace16.out" "polyTweak33.ip";
connectAttr "polyExtrudeEdge7.out" "polyTweakUV1.ip";
connectAttr "polyTweak34.out" "polyMergeVert1.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert1.mp";
connectAttr "polyTweakUV1.out" "polyTweak34.ip";
connectAttr "polyTweak35.out" "polyExtrudeEdge8.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge8.mp";
connectAttr "polyMergeVert1.out" "polyTweak35.ip";
connectAttr "polyTweak36.out" "polyExtrudeEdge9.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge9.mp";
connectAttr "polyExtrudeEdge8.out" "polyTweak36.ip";
connectAttr "polyExtrudeEdge9.out" "polyTweakUV2.ip";
connectAttr "polyTweak37.out" "polyMergeVert2.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert2.mp";
connectAttr "polyTweakUV2.out" "polyTweak37.ip";
connectAttr "polyTweak38.out" "polyBridgeEdge4.ip";
connectAttr "pCylinderShape1.wm" "polyBridgeEdge4.mp";
connectAttr "polyMergeVert2.out" "polyTweak38.ip";
connectAttr "polyTweak39.out" "polyExtrudeEdge10.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge10.mp";
connectAttr "polyBridgeEdge4.out" "polyTweak39.ip";
connectAttr "polyExtrudeEdge10.out" "polyTweakUV3.ip";
connectAttr "polyTweak40.out" "polyMergeVert3.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert3.mp";
connectAttr "polyTweakUV3.out" "polyTweak40.ip";
connectAttr "polyTweak41.out" "polyExtrudeEdge11.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge11.mp";
connectAttr "polyMergeVert3.out" "polyTweak41.ip";
connectAttr "polyTweak42.out" "polyExtrudeEdge12.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge12.mp";
connectAttr "polyExtrudeEdge11.out" "polyTweak42.ip";
connectAttr "polyExtrudeEdge12.out" "polyTweakUV4.ip";
connectAttr "polyTweak43.out" "polyMergeVert4.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert4.mp";
connectAttr "polyTweakUV4.out" "polyTweak43.ip";
connectAttr "polyTweak44.out" "polyExtrudeFace17.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace17.mp";
connectAttr "polyCube1.out" "polyTweak44.ip";
connectAttr "polyTweak45.out" "polyExtrudeFace18.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace18.mp";
connectAttr "polyExtrudeFace17.out" "polyTweak45.ip";
connectAttr "polyExtrudeFace18.out" "polyTweak46.ip";
connectAttr "polyTweak46.out" "deleteComponent9.ig";
connectAttr "polyTweak47.out" "polyExtrudeFace19.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace19.mp";
connectAttr "deleteComponent9.og" "polyTweak47.ip";
connectAttr "polyExtrudeFace19.out" "deleteComponent10.ig";
connectAttr "polyTweak48.out" "polyExtrudeEdge13.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeEdge13.mp";
connectAttr "deleteComponent10.og" "polyTweak48.ip";
connectAttr "polyExtrudeEdge13.out" "polyTweakUV5.ip";
connectAttr "polyTweak49.out" "polyMergeVert5.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert5.mp";
connectAttr "polyTweakUV5.out" "polyTweak49.ip";
connectAttr "polyMergeVert5.out" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "deleteComponent12.ig";
connectAttr "deleteComponent12.og" "deleteComponent13.ig";
connectAttr "deleteComponent13.og" "polyExtrudeEdge14.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeEdge14.mp";
connectAttr "polyTweak50.out" "polyExtrudeEdge15.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeEdge15.mp";
connectAttr "polyExtrudeEdge14.out" "polyTweak50.ip";
connectAttr "polyExtrudeEdge15.out" "polyTweakUV6.ip";
connectAttr "polyTweak51.out" "polyMergeVert6.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert6.mp";
connectAttr "polyTweakUV6.out" "polyTweak51.ip";
connectAttr "polyTweak52.out" "polyExtrudeEdge16.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeEdge16.mp";
connectAttr "polyMergeVert6.out" "polyTweak52.ip";
connectAttr "polyTweak53.out" "polyExtrudeEdge17.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeEdge17.mp";
connectAttr "polyExtrudeEdge16.out" "polyTweak53.ip";
connectAttr "polyTweak54.out" "polyExtrudeEdge18.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeEdge18.mp";
connectAttr "polyExtrudeEdge17.out" "polyTweak54.ip";
connectAttr "polyTweak55.out" "polyExtrudeEdge19.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeEdge19.mp";
connectAttr "polyExtrudeEdge18.out" "polyTweak55.ip";
connectAttr "polyTweak56.out" "polyExtrudeEdge20.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeEdge20.mp";
connectAttr "polyExtrudeEdge19.out" "polyTweak56.ip";
connectAttr "polyExtrudeEdge20.out" "polyTweakUV7.ip";
connectAttr "polyTweak57.out" "polyMergeVert7.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert7.mp";
connectAttr "polyTweakUV7.out" "polyTweak57.ip";
connectAttr "polyMergeVert7.out" "polyTweak58.ip";
connectAttr "polyTweak58.out" "deleteComponent14.ig";
connectAttr "deleteComponent14.og" "polyExtrudeEdge21.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeEdge21.mp";
connectAttr "polyExtrudeEdge21.out" "polyTweakUV8.ip";
connectAttr "polyTweak59.out" "polyMergeVert8.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert8.mp";
connectAttr "polyTweakUV8.out" "polyTweak59.ip";
connectAttr "polyTweak60.out" "polyExtrudeEdge22.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeEdge22.mp";
connectAttr "polyMergeVert8.out" "polyTweak60.ip";
connectAttr "polyExtrudeEdge22.out" "polyTweakUV9.ip";
connectAttr "polyTweak61.out" "polyMergeVert9.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert9.mp";
connectAttr "polyTweakUV9.out" "polyTweak61.ip";
connectAttr "polyTweak62.out" "polyExtrudeEdge23.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeEdge23.mp";
connectAttr "polyMergeVert9.out" "polyTweak62.ip";
connectAttr "polyTweak63.out" "polyExtrudeEdge24.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeEdge24.mp";
connectAttr "polyExtrudeEdge23.out" "polyTweak63.ip";
connectAttr "polyTweak64.out" "polyBridgeEdge5.ip";
connectAttr "pCubeShape1.wm" "polyBridgeEdge5.mp";
connectAttr "polyExtrudeEdge24.out" "polyTweak64.ip";
connectAttr "polyTweak65.out" "polyExtrudeEdge25.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeEdge25.mp";
connectAttr "polyBridgeEdge5.out" "polyTweak65.ip";
connectAttr "polyTweak66.out" "polyBridgeEdge6.ip";
connectAttr "pCubeShape1.wm" "polyBridgeEdge6.mp";
connectAttr "polyExtrudeEdge25.out" "polyTweak66.ip";
connectAttr "polyBridgeEdge6.out" "polyExtrudeEdge26.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeEdge26.mp";
connectAttr "polyExtrudeEdge26.out" "polyTweakUV10.ip";
connectAttr "polyTweak67.out" "polyMergeVert10.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert10.mp";
connectAttr "polyTweakUV10.out" "polyTweak67.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
// End of Ursa1.ma
