#' Conversion between midi and csv files
#' @description
#' Conversion between midi and csv files
#'
#' * `csv2midi()` converts from csv to midi
#' * `midi2csv()` converts from midi to csv
#'
#' @param csv_file path of a csv file. Needs to be given for input in `csv2midi`.
#' If not given for output, a temporary file will be used
#' @param midi_file path of a midi file. Needs to be given for input in `midi2csv`.
#' If not given for output, a temporary file will be used for output
#'
#' @name file_conversion

#' @examples
#' \dontrun{
#' midifile <- system.file("mididata/Monty_Python_s.mid",package="midicsvR")
#' csvfile <- "csv_from_midi.csv"
#' midi2csv(midifile,csvfile)
#' }
#' \dontrun{
#' csvfile <- system.file("mididata/Nokia_Tune.csv",package="midicsvR")
#' midifile <- "midi_from_csv.mid"
#' csv2midi(csvfile,midifile)
#' }
#'




#' @export
#' @rdname file_conversion
midi2csv <- function(midi_file,csv_file = NULL){
  if(is.null(csv_file)) csv_file <- tempfile(fileext = ".csv")
  .C(c_midicsv,midi_file, csv_file) -> forget
  csv_file |> invisible()
}


#' @export
#' @rdname file_conversion
csv2midi <- function(csv_file,midi_file=NULL){
  if(is.null(midi_file)) midi_file <- tempfile(fileext = ".mid")
  .C(c_csvmidi, csv_file, midi_file) -> forget
  midi_file |>
    invisible()
}

