# ascii-art
Create field explanation diagram using text.  For example, given this:

 First	Second	Third
 Column the first.
 Column the second.
 Column the third.

do this:

	$ ascii-art sample

to produce this:

        $ ascii-art sample
         First  Second  Third
           ^       ^      ^
           |       |      |
           |       |      +----  Column the third.
           |       +-----------  Column the second.
           +-------------------  Column the first.

Yeah.  Retro.  I can dig it.
