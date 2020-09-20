diary lab4.txt
format compact

% MAT 343 MATLAB Assignment # 4

% Exercise 1

clf 
S=[0,1,1,0,0;0,0,1,1,0]; 
plot(S(1,:),S(2,:),'linewidth',2) 
hold on 
T=[1,0;1,1];    % shear transformation matrix 
TS=T*S; 
plot(TS(1,:),TS(2,:),'-r','linewidth',2); 
title('Lab4: Exercise 1') 
legend('original square','sheared square','location','southeast') 
axis equal,axis([-1,3,-1,3]); grid on   %adjust the axis and the window 
hold off

% Exercise 2

clf 
S=[0,1,1,0,0;0,0,1,1,0]; 
plot(S(1,:),S(2,:),'linewidth',2) 
hold on 
T1=[1,3;0,1];    % shear transformation matrix 
theta=pi/4;  % define the angle
T2=[cos(theta),-sin(theta);sin(theta),cos(theta)];  %rotate transformation matrix
SHEAR=T1*S;
ROTATE=T2*S;
ROTATE_SHEAR=T1*ROTATE;
SHEAR_ROTATE=T2*SHEAR;
plot(ROTATE(1,:),ROTATE(2,:),ROTATE_SHEAR(1,:),ROTATE_SHEAR(2,:),SHEAR_ROTATE(1,:),SHEAR_ROTATE(2,:),'-r','linewidth',2); 
title('Example of horizontal shear and rotation') 
legend('original square','rotated','rotated and sheared','sheared and rotated','location','southeast') 
axis equal,axis([-1,5,-1,5]); grid on   %adjust the axis and the window 
hold off

% The order in which the transformations occur does matter in this example.
% The results from example 5 are completely different than when the shear
% is applied first. I have plotted example 5 here as well for convenience.

% Exercise 3

clf                               % clear all settings for the plot
S=[0,1,1,0,0;0,0,1,1,0];
theta=pi/9;  % define the angle
T1=[cos(theta),-sin(theta);sin(theta),cos(theta)];  %rotate transformation matrix
p = plot(S(1,:),S(2,:));          % plot the square
axis([-2,2,-2,2])                 % set size of the graph
axis square, grid on              % make the display square
hold on                           % hold the current graph
for i = 1:18
    S = T1*S;                               % rotate the square
    set(p,'xdata',S(1,:),'ydata',S(2,:));   % erase original figure and plot
                                            % the transformed figure
    pause(0.1)         % adjust this pause rate to suit your computer.
end
theta=-pi/9;  % define the angle
T2=[cos(theta),-sin(theta);sin(theta),cos(theta)];  %rotate transformation matrix
for i = 1:18
    S = T2*S;                               % contract the square
    set(p,'xdata',S(1,:),'ydata',S(2,:));   % erase original figure and plot
                                            % the transformed figure
    pause(0.1)         % adjust this pause rate to suit your computer.
end
hold off 

% Exercise 4

clf                               % clear all settings for the plot
S=[0,1,1,0,0;0,0,1,1,0];
theta=pi/9;  % define the angle
T1=[cos(theta),-sin(theta);sin(theta),cos(theta)];  %rotate transformation matrix
D1 = 10/9*eye(2);                  % dilation matrix
p = plot(S(1,:),S(2,:));          % plot the square
axis([-8,8,-8,8])                 % set size of the graph
axis square, grid on              % make the display square
hold on                           % hold the current graph
for i = 1:18
    S = D1*T1*S;                               % dilate the square
    set(p,'xdata',S(1,:),'ydata',S(2,:));   % erase original figure and plot
                                            % the transformed figure
    pause(0.1)         % adjust this pause rate to suit your computer.
end
theta=-pi/9;  % define the angle
T2=[cos(theta),-sin(theta);sin(theta),cos(theta)];  %rotate transformation matrix
D2 = 9/10*eye(2);       % contraction matrix
for i = 1:18
    S = D2*T2*S;                               % contract the square
    set(p,'xdata',S(1,:),'ydata',S(2,:));   % erase original figure and plot
                                            % the transformed figure
    pause(0.1)         % adjust this pause rate to suit your computer.
end
hold off 

% Exercise 5

clf 
S=[0,1,1,0,0;0,0,1,1,0;1,1,1,1,1];    % square in homogeneous coordinates 
M=[1,0,3;0,1,1;0,0,1];     % translation matrix 
T=[0,1,0;1,0,0;0,0,1];     % reflection matrix
MS=M*S;      % apply the translation to the square 
TMS=T*MS;
plot(MS(1,:),MS(2,:),'black','linewidth',2);  % plot the translated square in black
hold on 
plot(TMS(1,:),TMS(2,:),'r','linewidth',2);  % plot the translated and reflected square in red 
plot([-1,5],[-1,5]);
legend('translated square','reflected square','line y = x','location','southwest');   
axis equal, axis([-1,5,-1,4]), grid on    % adjust the axis 
hold off

% Exercise 6

clf 
S=[0,1,1,0,0;0,0,1,1,0;1,1,1,1,1]; %  square in homogeneous coordinates 
M1 = [1,0,0.2;0,1,0;0,0,1]; %  first translation matrix 
M2 = [1,0,0;0,1,0.2;0,0,1]; %  the second translation matrix 
M3 = [1,0,-0.2;0,1,0;0,0,1]; %  the third translation matrix 
M4 = [1,0,0;0,1,-0.2;0,0,1]; %  the fourth translation matrix 
p = plot(S(1,:),S(2,:)); % plot the original square  
axis square, axis([-1,6,-1,6]), grid on 
for i = 1:20
   S = M1*S; % compute the translated square 
   set(p,'xdata',S(1,:),'ydata',S(2,:)); % plot the translated square 
   pause(0.1) 
end 
for i = 1:20
   S=M2*S; % compute the translated square 
   set(p,'xdata',S(1,:),'ydata',S(2,:)); % plot the translated square 
   pause(0.1) 
end
for i = 1:20
   S = M4*M3*S; % compute the translated square 
   set(p,'xdata',S(1,:),'ydata',S(2,:)); % plot the translated square 
   pause(0.1) 
end 

% Exercise 7

clf 
S=[0,1,1,0,0;0,0,1,1,0;1,1,1,1,1]; % square in homogeneous coordinates 
M1 = [1,0,0.2;0,1,0;0,0,1]; % first translation matrix 
M2 = [1,0,-0.2;0,1,0;0,0,1]; % second translation matrix 
theta = pi/8;  % define the angle theta 
Q=[cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1]; % clockwise rotation matrix about (0,0)
Q2=[cos(-theta),-sin(-theta),0;sin(-theta),cos(-theta),0;0,0,1]; % counter clockwise rotation matrix about (0,0)
QP=[1,0,5;0,1,0;0,0,1]*Q'*[1,0,-5;0,1,0;0,0,1];   % rotation matrix about (5,0)
QP2=[1,0,1;0,1,0;0,0,1]*Q2'*[1,0,-1;0,1,0;0,0,1];   % rotation matrix about (1,0)
p = plot(S(1,:),S(2,:)); % plot the original square
axis equal, axis([-0.5,7,-2,5]), grid on
for i = 1:20
    S = M1*S; % compute the translated square 
    set(p,'xdata',S(1,:),'ydata',S(2,:)); % plot the translated square 
    pause(0.1) 
end 
for i = 1:4
    S=QP*S; % compute the rotated square 
    set(p,'xdata',S(1,:),'ydata',S(2,:)); % plot the rotated square 
    pause(0.1) 
end
for i = 1:20
    S = M2*S; % compute the translated square 
    set(p,'xdata',S(1,:),'ydata',S(2,:)); % plot the translated square 
    pause(0.1) 
end 
for i = 1:4
    S=QP2*S; % compute the rotated square 
    set(p,'xdata',S(1,:),'ydata',S(2,:)); % plot the rotated square 
    pause(0.1) 
end
