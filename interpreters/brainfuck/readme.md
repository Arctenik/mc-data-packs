# brainfuck

A [brainfuck](https://esolangs.org/wiki/Brainfuck) interpreter; also available as a [zipped data pack](https://github.com/Arctenik/mc-data-packs/blob/zips/interpreters/brainfuck.zip)

## Implementation notes

- 8-bit wrapping cells
- Right-unbounded tape
- Input on EOF does nothing
- Output is done one line at a time (in the chat), with line feed as the only line ending
- The character set is based on Unicode values 0-255 (inputting a character outside of that range is equivalent to inputting a question mark)
- `#` prints debug info

## Basic usage

- Install the data pack and have cheats enabled
- Write the program in a book and quill, and write input, if desired, in a separate book
  - These books should *not* be signed, since signing a book introduces JSON formatting (though technically a program in a signed book will probably work since the JSON for basic text doesn't include any brainfuck characters)
- Hold the books; if running a program with input, the input should be held in the main hand and the program in the off-hand, but if running without input the program can be held in either hand
- Use the command `/function arcbf:run` (after this the books don't need to be held, but the area should be kept loaded, since the interpreter is spawned at the current location)
- The interpreter will be linked to the player who created it, and will only send chat messages to that player and will only respond to the commands mentioned below if they're run by that player
- If the program takes too long to run, `/function arcbf:kill` can be used to kill the nearest interpreter
- While the interpreter is running, `/function arcbf:debug` can be used to print debug info for the nearest interpreter

## Configuration

- The program and input are each extracted in a single tick, which theoretically means they could run into the command limit; in the unlikely event that this happens (probably indicated by the interpreter never saying "Running..."), you can try killing the interpreter as described above and then increasing the `maxCommandChainLength` gamerule before running again
- Program evaluation can happen across multiple ticks, with each tick having a maximum number of steps that can run during it. This number can be configured by setting the player's `arcbf_tick_steps` score before running the program, e.g. with `/scoreboard players set @s arcbf_tick_steps 1000`
  - If the score is unset or 0, a default value of 600 will be used
  - If the score is -1, the number will be automatically calculated based on `maxCommandChainLength` (this calculated number will also be used as a maximum in other cases)

## Misc notes

- In my small amount of testing, it seems like using a very large number of steps per tick doesn't noticeably increase evaluation speed, but does quite noticeably impact the game's tick speed
- Input/output could probably be calculated in a more efficient way (as it is they're done by just iterating over the character set until the character is found)