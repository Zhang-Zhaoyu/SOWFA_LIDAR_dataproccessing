
U1 = importfile('U1');  % SOWFA anemometer
U2 = importfile('U2');  % SOWFA points nearby lidar
U3 = importfile('U3');  % SOWFA measurement points
U4 = importfile('U4');  % SOWFA points away lidar

time = U1(:,1);

% from uvw to los
% LOS points nearby lidar
for i=1:10275       % time series 
    for j=1:10      % 10 points in one beam
        
        Beam1_n(i,j) = U2(i,3*(j-1)+2) * Lidar.Trajectory.x_n(1) + U2(i,3*(j-1)+3) * Lidar.Trajectory.y_n(1) + U2(i,3*(j-1)+4) * Lidar.Trajectory.z_n(1);
        Beam2_n(i,j) = U2(i,3*(j-1)+2+30) * Lidar.Trajectory.x_n(2) + U2(i,3*(j-1)+3+30) * Lidar.Trajectory.y_n(2) + U2(i,3*(j-1)+4+30) * Lidar.Trajectory.z_n(2);
        Beam3_n(i,j) = U2(i,3*(j-1)+2+60) * Lidar.Trajectory.x_n(3) + U2(i,3*(j-1)+3+60) * Lidar.Trajectory.y_n(3) + U2(i,3*(j-1)+4+60) * Lidar.Trajectory.z_n(3);
        Beam4_n(i,j) = U2(i,3*(j-1)+2+90) * Lidar.Trajectory.x_n(4) + U2(i,3*(j-1)+3+90) * Lidar.Trajectory.y_n(4) + U2(i,3*(j-1)+4+90) * Lidar.Trajectory.z_n(4);
        
    end
end

% LOS measurement points 
for i=1:10275       % time series 
    for j=1:10      % 10 points in one beam
        
        Beam1_m(i,j) = U3(i,3*(j-1)+2) * Lidar.Trajectory.x_n(1) + U3(i,3*(j-1)+3) * Lidar.Trajectory.y_n(1) + U3(i,3*(j-1)+4) * Lidar.Trajectory.z_n(1);
        Beam2_m(i,j) = U3(i,3*(j-1)+2+30) * Lidar.Trajectory.x_n(2) + U3(i,3*(j-1)+3+30) * Lidar.Trajectory.y_n(2) + U3(i,3*(j-1)+4+30) * Lidar.Trajectory.z_n(2);
        Beam3_m(i,j) = U3(i,3*(j-1)+2+60) * Lidar.Trajectory.x_n(3) + U3(i,3*(j-1)+3+60) * Lidar.Trajectory.y_n(3) + U3(i,3*(j-1)+4+60) * Lidar.Trajectory.z_n(3);
        Beam4_m(i,j) = U3(i,3*(j-1)+2+90) * Lidar.Trajectory.x_n(4) + U3(i,3*(j-1)+3+90) * Lidar.Trajectory.y_n(4) + U3(i,3*(j-1)+4+90) * Lidar.Trajectory.z_n(4);
        
    end
end

% LOS points away lidar
for i=1:10275       % time series 
    for j=1:10      % 10 points in one beam
        
        Beam1_a(i,j) = U4(i,3*(j-1)+2) * Lidar.Trajectory.x_n(1) + U4(i,3*(j-1)+3) * Lidar.Trajectory.y_n(1) + U4(i,3*(j-1)+4) * Lidar.Trajectory.z_n(1);
        Beam2_a(i,j) = U4(i,3*(j-1)+2+30) * Lidar.Trajectory.x_n(2) + U4(i,3*(j-1)+3+30) * Lidar.Trajectory.y_n(2) + U4(i,3*(j-1)+4+30) * Lidar.Trajectory.z_n(2);
        Beam3_a(i,j) = U4(i,3*(j-1)+2+60) * Lidar.Trajectory.x_n(3) + U4(i,3*(j-1)+3+60) * Lidar.Trajectory.y_n(3) + U4(i,3*(j-1)+4+60) * Lidar.Trajectory.z_n(3);
        Beam4_a(i,j) = U4(i,3*(j-1)+2+90) * Lidar.Trajectory.x_n(4) + U4(i,3*(j-1)+3+90) * Lidar.Trajectory.y_n(4) + U4(i,3*(j-1)+4+90) * Lidar.Trajectory.z_n(4);
        
    end
end

% LOS beam with weight function
Beam1 = Beam1_n*Lidar.Parameter.f_rw(1) + Beam1_m*Lidar.Parameter.f_rw(2) + Beam1_a*Lidar.Parameter.f_rw(3);
Beam2 = Beam2_n*Lidar.Parameter.f_rw(1) + Beam2_m*Lidar.Parameter.f_rw(2) + Beam2_a*Lidar.Parameter.f_rw(3);
Beam3 = Beam3_n*Lidar.Parameter.f_rw(1) + Beam3_m*Lidar.Parameter.f_rw(2) + Beam3_a*Lidar.Parameter.f_rw(3);
Beam4 = Beam4_n*Lidar.Parameter.f_rw(1) + Beam4_m*Lidar.Parameter.f_rw(2) + Beam4_a*Lidar.Parameter.f_rw(3);

% LOS plot slides
% ss1 = 1;     % number of slides
% plot(time,Beam1(:,ss1))
% hold on
% plot(time,Beam2(:,ss1))
% hold on
% plot(time,Beam3(:,ss1))
% hold on
% plot(time,Beam4(:,ss1))

% from los back to uvw for 4 beams
uu1 = Beam1/Lidar.Trajectory.x_n(1);
uu2 = Beam2/Lidar.Trajectory.x_n(2);
uu3 = Beam3/Lidar.Trajectory.x_n(3);
uu4 = Beam4/Lidar.Trajectory.x_n(4);


% plot rebuilt u
ss2 = 1;     % number of slides
plot(time,uu1(:,ss2))
hold on
plot(time,uu2(:,ss2))
hold on
plot(time,uu3(:,ss2))
hold on
plot(time,uu4(:,ss2))

% hold on
% plot(time,U1(:,ss2+1))






