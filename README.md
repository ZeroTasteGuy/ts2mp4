# ts2mp4
ts2mp4 is a folder of scripts for converting, upscaling and cropping .ts files to mp4 using ffmpeg.

SORT BY SIZE FOR CORRECT ORDER


What these scripts do:
These scripts convert any .ts file into an mp4 and if in the scripts name, also upscale and crop it. Once converted, the original .ts file will remain in the same folder, if you run the script again, it will be converted again.



Hardware requirements:


NVENC scripts: Require an Nvidia GPU for processing.

Other scripts: Can be used on any system as they use CPU processing.




Video quality:

4k Upscale:
NVENC: Provides the best video quality for YouTube, with only a 32% quality loss.
CPU: Results in a 37% quality loss.

2k Upscale: Not tested yet.



How to use:


Option 1:

Place your .ts file in the same folder as the scripts and ffmpeg.exe.
Run the desired CMD script.


Option 2:

Place the desired script and ffmpeg.exe in the same folder as your .ts file(s).
Run the desired CMD script.



Speed estimate:

At the end of the progress line when running the scripts there is a speed factor, with 0.5x speed the file will take twice its length to process.
