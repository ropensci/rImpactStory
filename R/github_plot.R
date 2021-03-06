
#' Generates a plot visualizing GitHub repos.
#'
#' Takes output of github_reports and makes a nice visualization
#' @param df Input \code{data.frame}. Must be generated by \link{github_report}
#' @export
#' @return \code{ggplot}
#' @examples \dontrun{
#' df <- github_report("d4npn7")
#' # To visualize this, then use
#' github_plot(df)
#'}
github_plot <- function(df) {
    theme_update(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(), panel.border = element_blank(),
        axis.line = element_line(colour = "black"), strip.background = element_rect(fill = NA, color = NA))


ggplot(df, aes(title, count, fill = metric)) +
geom_bar(stat = "identity",
    aes(fill = outline_color), show_guide = FALSE, color = "#5d5d5d") +
    facet_wrap(~metric, nrow = 1) + coord_flip() +
    scale_fill_manual(values = c("#ee701e",
    "#528dc6")) + xlab("") + ylab("Raw Counts")

}
