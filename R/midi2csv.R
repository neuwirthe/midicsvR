midi2csv <- function(midi_file,csv_file){
#' convert midi file to csv file
#'
#' @description
#' `midi2csv` takes a midi file and outputs a textual representation
#' in a csv file
#'
#' @param midi_file path of a midi file used as input
#' @param csv_file path of a csv file used as output
#'
#' @examples
#' \dontrun{
#' midifile <- system.file("mididata/Monty_Python_s.mid",package="midicsvR")
#' csvfile <- "csv_from_midi.csv"
#' midi2csv(midifile,csvfile)
#' }
#'
#' @export
#'
  .C(c_midicsv,midi_file, csv_file) |> invisible()
}
