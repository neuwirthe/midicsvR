csv2midi <- function(csv_file,midi_file){
#' convert csv file to midi file
#'
#' @description
#' `csv2midi` takes a midi file and outputs a textual representation
#' in a csv file
#'
#' @param csv_file path of a midi file used as input (character)
#' @param midi_file path of a csv file used as output (character)
#'
#' @examples
#' \dontrun{
#' csvfile <- system.file("mididata/Nokia_Tune.csv",package="midicsvR")
#' midifile <- "midi_from_csv.mid"
#' csv2midi(csvfile,midifile)
#' }
#' @export


  .C(c_csvmidi, csv_file, midi_file) |> invisible()
}
