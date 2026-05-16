%% plot_simulation_results.m
% Plotting script for simulation chapter — Test 1, 3, 4
% Reads CSV logs exported by the ROS2 simulation node
%
% CSV columns:
%  time, q1,q2,q3, v1,v2,v3, qdd1,qdd2,qdd3,
%  u1,u2,u3, damp1,damp2,damp3, limit1,limit2,limit3,
%  total1,total2,total3, ee_x,ee_y,ee_z, sp_x,sp_y,sp_z,
%  spv_x,spv_y,spv_z

%% Reset to white defaults
set(0, 'DefaultFigureColor', [1 1 1]);
set(0, 'DefaultAxesColor', [1 1 1]);
set(0, 'DefaultAxesXColor', [0 0 0]);
set(0, 'DefaultAxesYColor', [0 0 0]);
set(0, 'DefaultAxesZColor', [0 0 0]);
set(0, 'DefaultTextColor', [0 0 0]);
set(0, 'DefaultAxesGridColor', [0.15 0.15 0.15]);
set(0, 'DefaultAxesTitleFontWeight', 'bold');

clear; clc; close all;

%% ======================================================================
%  CSV paths — update filenames after running each test
%  ======================================================================
log_dir = '/home/oskar/Thesis/csv';
export_dir = '/home/oskar/Thesis/ThesisV2/Graphics';  % LaTeX graphicspath

% Test 1: Baseline trajectory tracking
file_test1 = fullfile(log_dir, 'test1_baseline_kpkd.csv');

% Test 3: Damping comparison (same trajectory, two runs)
file_damping_on  = fullfile(log_dir, 'test3_damping_on.csv');
file_damping_off = fullfile(log_dir, 'test3_damping_off.csv');

% Test 4: Gravity compensation comparison (two runs)
file_grav_on  = fullfile(log_dir, 'test4_gravcomp_on.csv');
file_grav_off = fullfile(log_dir, 'test4_gravcomp_off.csv');

%% ======================================================================
%  TEST 1: Trajectory tracking — baseline
%  ======================================================================
if isfile(file_test1)
    data = readtable(file_test1);
    t = data.time;
    fprintf('Test 1: Loaded %d samples, duration %.2f s\n', height(data), t(end));

    % Downsample for plotting if too many points
    skip = max(1, floor(height(data) / 1000));
    idx = 1:skip:height(data);
    fprintf('Plotting every %d-th sample (%d points)\n', skip, length(idx));

    % --- Figure 1: XYZ tracking + torques ---
    fig1 = figure('Name','Test 1: Trajectory Tracking','Position',[100 100 900 700]);

    ax_labels = {'X','Y','Z'};
    ee_cols = {'ee_x','ee_y','ee_z'};
    sp_cols = {'sp_x','sp_y','sp_z'};

    for i = 1:3
        subplot(3,2,2*i-1);
        plot(t(idx), data.(ee_cols{i})(idx), 'b-', 'LineWidth', 1.5); hold on;
        plot(t(idx), data.(sp_cols{i})(idx), 'r--', 'LineWidth', 1.0);
        ylabel([ax_labels{i} ' [m]']);
        if i == 1; title('End-Effector Position vs Setpoint'); end
        if i == 3; xlabel('Time [s]'); end
        legend('Actual','Setpoint','Location','best');
        grid on;
    end

    joint_labels = {'Base (1)','Shoulder (2)','Elbow (3)'};
    u_cols = {'u1','u2','u3'};
    damp_cols = {'damp1','damp2','damp3'};
    total_cols = {'total1','total2','total3'};

    for i = 1:3
        subplot(3,2,2*i);
        plot(t(idx), data.(u_cols{i})(idx), 'b-', 'LineWidth', 1.0); hold on;
        plot(t(idx), data.(damp_cols{i})(idx), '-', 'Color', [0.8 0.4 0], 'LineWidth', 0.8);
        plot(t(idx), data.(total_cols{i})(idx), 'k-', 'LineWidth', 1.2);
        ylabel([joint_labels{i} ' [Nm]']);
        if i == 1; title('Joint Torques'); end
        if i == 3; xlabel('Time [s]'); end
        legend('Control','Damping','Total','Location','best');
        grid on;
    end

    sgtitle('Test 1: Baseline Trajectory Tracking','FontSize',14,'FontWeight','bold');

    % --- Figure 2: 3D trajectory ---
    fig2 = figure('Name','Test 1: 3D Trajectory','Position',[100 100 600 500]);
    plot3(data.ee_x(idx), data.ee_y(idx), data.ee_z(idx), 'b-', 'LineWidth', 1.5); hold on;
    plot3(data.sp_x(idx), data.sp_y(idx), data.sp_z(idx), 'r--o', 'LineWidth', 1.0, 'MarkerSize', 8);
    xlabel('X [m]'); ylabel('Y [m]'); zlabel('Z [m]');
    title('End-Effector Trajectory (3D)');
    legend('Actual path','Setpoints','Location','best');
    grid on; axis equal;
    view([-35 30]);

else
    warning('Test 1 CSV not found: %s', file_test1);
end

