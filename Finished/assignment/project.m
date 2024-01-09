% Get a list of all .wav files in the current directory
files = dir('*.wav');

% Initialize a cell array to store the signals
signals = cell(1, length(files));

% Loop through each file
for i = 1:length(files)
    % Load the signal from the file
    [y, Fs] = audioread(files(i).name);
    
    % Store the signal and its sample rate in the cell array
    signals{i} = struct('y', y, 'Fs', Fs);
end

% Visualize and Play each Sound
for i = 1:length(signals)
    % Plot the sound
    time = (0:length(signals{i}.y) - 1) / signals{i}.Fs; % Time vector
    figure;
    plot(time, signals{i}.y);
    title(['Sound ', num2str(i)]);
    xlabel('Time (seconds)');
    ylabel('Amplitude');
    pause(3);
    close;
end
