%HAmza ALi Morsi
% Parameters
fs = 100e6;                 % Sampling frequency (100 MHz)
fc = 10e6;                  % Cutoff frequency (10 MHz)
order = 50;                 % Filter order
n = 150;                    % Number of samples for a larger time scale

% Time vector
t = (0:n-1)/fs;

% Generate the original sinusoidal signal
f_signal = 5e6;             % Frequency of the sinusoidal signal (5 MHz)
signal = 0.5 * sin(2*pi*f_signal*t);

% Generate sinusoidal noise
f_noise = 15e6;             % Frequency of the noise signal (15 MHz)
noise = 0.5 * sin(2*pi*f_noise*t); % Sinusoidal noise with 0.5 amplitude
noisy_signal = signal + noise;

% Design the FIR filter using a Hamming window
Wn = fc / (fs/2);           % Normalized cutoff frequency
b = fir1(order, Wn, hamming(order+1));
a = 1;                      % FIR filter has only b coefficients

% Apply the FIR filter to the noisy signal
filtered_signal = filter(b, a, noisy_signal);

% Plot the original signal, noisy signal, and filtered signal in separate subplots
figure;
subplot(3,1,1);
plot(t, signal, 'b');
title('Original Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,1,2);
plot(t, noisy_signal, 'r');
title('Noisy Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,1,3);
plot(t, filtered_signal, 'g');
title('Filtered Signal');
xlabel('Time (s)');
ylabel('Amplitude');

% Save filter coefficients to a hexadecimal text file
fid = fopen('filter_coefficients_hex.txt', 'wt');
for i = 1:length(b)
    hex_value = dec2hex(typecast(single(b(i)), 'uint32'), 8);
    fprintf(fid, '%s\n', hex_value);
end
fclose(fid);
disp('Filter coefficients saved to filter_coefficients_hex.txt');

% Save the signals to a text file
fid = fopen('signals.txt', 'wt');
fprintf(fid, 'Original Signal\n');
fprintf(fid, '%f\n', signal);
fprintf(fid, 'Noisy Signal\n');
fprintf(fid, '%f\n', noisy_signal);
fprintf(fid, 'Filtered Signal\n');
fprintf(fid, '%f\n', filtered_signal);
fclose(fid);
disp('Signals saved to signals.txt');

% Plot the frequency response of the filter
figure;
freqz(b, 1, 1024, fs);
title('Frequency Response of the FIR Filter');
