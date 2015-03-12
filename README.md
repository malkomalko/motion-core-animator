# motion-core-animator
Example of rubymotion block blowing up with core-animator

This project serves as an example of something that I see all too often.  You
are dealing with some Objective-C library that takes a block, and rubymotion
can't seem to handle the closures of those blocks.

You'll see a crash with no output and open up the crashlog to see a EXC_BAD_ACCESS.
