# ts2mp4

**ts2mp4** is a folder of scripts for converting, upscaling, and cropping `.ts` files to `.mp4` using `ffmpeg`.

## SORT FOLDER BY SIZE FOR CORRECT ORDER

## What These Scripts Do

These scripts convert any `.ts` file into an `.mp4` and, if indicated in the script's name, also upscale and crop it. Once converted, the original `.ts` file will remain in the same folder. If you run the script again, it will be converted again.

## Hardware Requirements

### NVENC Scripts

Require an Nvidia GPU for processing.

### Other Scripts

Can be used on any system as they use CPU processing.

## Video Quality

### 4K Upscale

- **NVENC**: Provides the best video quality for YouTube, with only a 32% quality loss.
- **CPU**: Results in a 37% quality loss.

### 2K Upscale

- Not tested yet.

## How to Use

### Option 1

1. Place your `.ts` file in the same folder as the scripts and `ffmpeg.exe`.
2. Run the desired CMD script.

### Option 2

1. Place the desired script and `ffmpeg.exe` in the same folder as your `.ts` file(s).
2. Run the desired CMD script.

## Speed Estimate

At the end of the progress line when running the scripts, there is a speed factor. For example, with 0.5x speed, the file will take twice its length to process.
