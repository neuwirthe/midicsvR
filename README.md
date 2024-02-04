# midicsvR

Conversion beween midi and csv files.

The package contains 2 function, midi2csv and csv2midi.
They take an input file of one type and produce an output file of the otehr type.

The csv files can be read into R dataframes and manipulated, 
and the output then can be written to a midi file and played.

The package makes heavy use of of the C sources for converting between midi and csv 
file formats by John Walker, available at 
[Fourmilab](https://www.fourmilab.ch/webtools/midicsv/).
This website also has the documentation of the csv file format used.

