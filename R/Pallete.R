#' set color pallete
#' importFrom R6 R6Class
#' @name Pallete
#' @examples
#' \dontrun{
#' pallete <- Pallete$new("material_design")
#' print(pallete)
#' mdc <- pallete$colors
#'
#' mdc$blue
#' }

#' @export
Pallete <- R6::R6Class("Pallete",
               public =
                   list(
                       colors = NULL,
                       palletes = list(
                           material_design = c(
                               red = "#e53935",
                               pink = "#D81B60",
                               purple = "#8E24AA",
                               deep_purple = "#5E35B1",
                               indigo = "#3949AB",
                               blue = "#1E88E5",
                               light_blue = "#039BE5",
                               cyan = "#00ACC1",
                               teal = "#00897B",
                               green = "#43A047",
                               light_green = "#7CB342",
                               lime = "#C0CA33",
                               yellow = "#FDD835",
                               amber = "#FFB300",
                               orange = "#FB8C00",
                               deep_orange = "#F4511E",
                               brown = "#6D4C41",
                               grey = "#757575",
                               blue_grey = "#546E7A"
                           )
                       ),
                       initialize = function(pallete) {
                           if (is.null(self$palletes[[pallete]])) {
                               stop("pallete not recognized")
                           }
                          self$colors <<- self$palletes[[pallete]]
                       }
                   ),
               private =
                   list())