% Simscape(TM) Multibody(TM) version: 25.2

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(7).translation = [0.0 0.0 0.0];
smiData.RigidTransform(7).angle = 0.0;
smiData.RigidTransform(7).axis = [0.0 0.0 0.0];
smiData.RigidTransform(7).ID = "";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [200 -15.000000000000014 30.000000000000028];  % mm
smiData.RigidTransform(1).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(1).axis = [1 0 0];
smiData.RigidTransform(1).ID = "B[Link1-1:-:Link2-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [0 0 60];  % mm
smiData.RigidTransform(2).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(2).axis = [-1 0 0];
smiData.RigidTransform(2).ID = "F[Link1-1:-:Link2-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [25.000000000000021 15.000000000000014 50.000000000000043];  % mm
smiData.RigidTransform(3).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(3).axis = [1 0 0];
smiData.RigidTransform(3).ID = "B[Base_Link-2:-:Link1-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [-5.6843418860808015e-14 -14.999999999999886 30];  % mm
smiData.RigidTransform(4).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(4).axis = [-1 0 0];
smiData.RigidTransform(4).ID = "F[Base_Link-2:-:Link1-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [199.99999999999994 0 30.000000000000028];  % mm
smiData.RigidTransform(5).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(5).axis = [1 0 0];
smiData.RigidTransform(5).ID = "B[Link2-1:-:EndEffector-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [1.1368683772161603e-13 14.999999999999886 30];  % mm
smiData.RigidTransform(6).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(6).axis = [-1 0 0];
smiData.RigidTransform(6).ID = "F[Link2-1:-:EndEffector-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [315.47147017650803 -889.18615560662704 1264.5572166689187];  % mm
smiData.RigidTransform(7).angle = 0;  % rad
smiData.RigidTransform(7).axis = [0 0 0];
smiData.RigidTransform(7).ID = "RootGround[Base_Link-2]";


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(4).mass = 0.0;
smiData.Solid(4).CoM = [0.0 0.0 0.0];
smiData.Solid(4).MoI = [0.0 0.0 0.0];
smiData.Solid(4).PoI = [0.0 0.0 0.0];
smiData.Solid(4).color = [0.0 0.0 0.0];
smiData.Solid(4).opacity = 0.0;
smiData.Solid(4).ID = "";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.48599999999999993;  % kg
smiData.Solid(1).CoM = [111.78097245096173 0 15];  % mm
smiData.Solid(1).MoI = [72.899999999999991 1661.8974224213046 1661.8974224213046];  % kg*mm^2
smiData.Solid(1).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(1).color = [0.8666666666666667 0.90980392156862744 1];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = "Link2*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.051205750411731102;  % kg
smiData.Solid(2).CoM = [24.999999999999996 15 20.353207521236186];  % mm
smiData.Solid(2).MoI = [13.798160382466847 17.79816038246685 10.885646921319749];  % kg*mm^2
smiData.Solid(2).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(2).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = "Base_Link*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.5432555261116736;  % kg
smiData.Solid(3).CoM = [121.07867232257256 -14.999999999999993 11.838199151614106];  % mm
smiData.Solid(3).MoI = [126.51384417162342 2114.1450105754648 2066.9724130914051];  % kg*mm^2
smiData.Solid(3).PoI = [0 135.56046412808706 0];  % kg*mm^2
smiData.Solid(3).color = [0.8666666666666667 0.90980392156862744 1];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = "Link1*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.016397124794134448;  % kg
smiData.Solid(4).CoM = [20.582876829767734 14.999999999999998 14.999999999999998];  % mm
smiData.Solid(4).MoI = [2.6583726292301462 1.7866516991835351 1.9854556092935143];  % kg*mm^2
smiData.Solid(4).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(4).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = "EndEffector*:*Default";

