From this arstechnica article comparing a new Gemini-powered Google Bard and ChatGPT:
https://arstechnica.com/ai/2023/12/chatgpt-vs-google-bard-round-2-how-does-the-new-gemini-model-fare/

Compares several prompts, like "Who invented video games?", testing creativity, factualness, and accuracy.


## Results

Most codellama answers fail in the math word problem "how many floppy disks would Windows 11 installation media need?"

One 34b answer was actually fairly accurate:

> If Microsoft Windows 11 shipped on 3.5" floppy disks, it would take approximately 680 floppy disks to hold the entire operating system. This is because a standard 3.5" floppy disk has a capacity of 1.44 MB, and the current version of Windows 11 is around 20 GB in size. To calculate the number of floppy disks needed, we can divide the size of the operating system by the capacity of a single floppy disk:
> 20,593,766,400 bytes (Windows 11) / 1,440,000,000 bytes (1.44 MB per floppy disk) = 14,346.48 floppy disks
> Since you can't have a fraction of a floppy disk, we round up to the nearest whole number to get 14,347 floppy disks needed for Windows 11.


The made-up Lincoln story is generally good.

The factual answers to "who invented video games" are always different and it jumbles different inventor names and years. One time, codellama answered with "cathode-ray tube entertainment device", which was invented in 1947 but isn't considered a video game.

The dad jokes are usually the same, even when using larger model sizes.

The Python code is mostly correct, even with the smallest model size. This is ideal as that's what codellama is tuned for.

