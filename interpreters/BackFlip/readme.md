# BackFlip

A data pack implementing the esoteric programming language [BackFlip](https://esolangs.org/wiki/BackFlip), which is vaguely similar to the Langton's Ant cellular automaton

Designed for Minecraft 1.19.4

Programs are built horizontally out of blocks, and a special armor stand is used as a pointer to move over the program and evaluate it. Since the basic operations of BackFlip are reversable, programs can also be run in reverse, which in Minecraft can be useful for resetting the program's state

Also available as a [zipped data pack file](https://github.com/Arctenik/mc-data-packs/blob/zips/interpreters/BackFlip.zip)

## Syntax

- Arrow - Magenta glazed terracotta - Changes the pointer's direction of movement (as indicated by the arrow shape on the default texture), and then turns to face opposite the direction the pointer was going previously
- Mirror - Pink glazed terracotta - Reflects the pointer's direction of movement against a diagonal (as suggested by the diagonal shape on the default texture), and then switches to the other mirror orientation
- Output - Wool - Reverses the pointer's direction of movement
    - Digits 0-9 are output by red, orange, yellow, lime, cyan, light blue, blue, purple, magenta, and pink wool respectively
    - A line ending is output by black or white wool
    - Other colors of wool also have the rebound behavior, but don't produce output
- Empty space - Concrete
- Anything else - Considered to be outside of the program and causes the program to terminate

## Notes on output

- Output is given in the chat; in order to display it neatly in lines, nothing is output until a line ending is reached or the program terminates
- Because of how output works, there's not a good way to reverse output operations, so running a program partially backward and then forward again may cause some duplicated output data (however, output *is* reset once the program is fully rewound to the beginning)

## Useful commands

(Cheats need to be enabled in order to use the data pack)

All of these will target the nearest pointer within 90 blocks

- `/function arcbkf:init`
  
  Initializes a pointer at the current location, facing in the current direction

- `/function arcbkf:run`
  
  Runs the program

- `/function arcbkf:stop`
  
  Pauses running the program

- `/function arcbkf:run_back`
  
  Runs the program backward

- `/function arcbkf:step`
  
  Executes a single step of the program

- `/function arcbkf:step_back`
  
  Executes a single backward step of the program

- `/scoreboard players set @s arcbkf_delay <number>`
  
  Sets the delay between frames used when running the program to \<number\> ticks

- `/scoreboard players set @s arcbkf_tick_steps <number>`
  
  Sets the number of steps to be evaluated in a tick when running the program to \<number\>

- Shortcuts for setting evaluation speed:
  
  - `/function arcbkf:speed_slower`
    
    Delay 20 (1s), single-step
  
  - `/function arcbkf:speed_slow`
    
    Delay 10 (500ms), single-step
  
  - `/function arcbkf:speed_medium`
    
    Delay 5 (250ms), single-step
  
  - `/function arcbkf:speed_fast`
    
    Delay 1 (50ms), single-step
  
  - `/function arcbkf:speed_super`
    
    Delay 1, 30 steps per tick
  
  - `/function arcbkf:speed_extreme`
    
    Delay 1, 300 steps per tick

## Example program

An example program, which takes a 3-bit binary number as input using mirrors and outputs the corresponding decimal digit, can be loaded from `arcbkf:3_bit_decoder` using a structure block (the structure has signs giving further instructions on using the program)

## Links

- [Planet Minecraft](https://www.planetminecraft.com/data-pack/backflip-esolang/)
- [YouTube video](https://www.youtube.com/watch?v=r6x52NFpkK0)
- [GitHub](https://github.com/Arctenik/mc-data-packs/tree/main/interpreters/BackFlip)
