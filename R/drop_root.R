
#' Get information about current Dropbox account's root id
#'
#' Fields returned will vary by account;
#'
#' @template token
#'
#' @import httr
#' @export
#'
  
drop_root_namespace_id <- function(dtoken = get_dropbox_token()) {
  account_info = drop_acc(dtoken)
  account_info$root_info$root_namespace_id
}
