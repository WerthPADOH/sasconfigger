#' Find where file paths occur in text
#' Finds the start and end positions of all file paths occurring in a text.
#' @param x Character vector
#' @return List of matrices
#' @import stringi
#' @export
find_filepath <- function(x) {
  drive_pattern <- '(?:[A-Z]:|[/\\\\]{2}[a-zA-Z][a-zA-Z0-9\\.]+)'
  valid_character <- '[^/:\\*\\?<>\\|\n\\\\\'"]'
  no_quote_pattern <- sprintf('%s(?:[/\\\\]%s+)*',
                              drive_pattern, valid_character)
  # Same quotation marks on either side, but don't include them in match
  quote_pattern <- sprintf('(?<=([\'"]))%s(?:[/\\\\]%s+)*?(?=\\1)',
                           drive_pattern, valid_character)
  path_pattern <- paste0(no_quote_pattern, '|', quote_pattern)
  stri_locate_all_regex(x, path_pattern)
}
