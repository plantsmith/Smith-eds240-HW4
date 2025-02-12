pm_map <- base_map + scale_fill_gradientn(colors = sunset_pal,
                                          labels = label_percent(scale = 1), # add percentage sign to each of our values
                                          breaks = breaks_width(width = 10),
                                          # values = scales::rescale(x = c(43,99))
) +
  guides(fill = guide_colorbar(barwidth = 25,
                               barheight = 0.75)) + #stretch out legend
  theme(
    legend.position = "top" ,

    # make the background grey
    # plot.background = element_rect(fill = bg,
    #                                color = bg)

  )

pm_map

#ggsave in output folder
ggsave(filename = "output/pm_map.png",
