
data_plots <- read_csv("data plots.csv")


reci_single <- ggplot(data=data_plots, aes(x=Age, y=prob)) +
                           # group = Prison, 
                          #  colour = Prison)) +
  geom_smooth(aes(x=Age, y=prob), method="lm", 
              se= FALSE, color = "black") + 
  geom_point(aes(color = Prison)) +
  labs(x="Age", y="Recidivism") +
  ggtitle("Recidivism")  +
  scale_colour_discrete('Prison') +
  theme_bw() +
  theme(legend.position = c(0.9,  0.8),
        legend.background = element_rect(
          linetype = "solid",
          colour = "black",
          size = 0.2),
        legend.key.size = unit(0.2, "cm"),
        legend.title = element_text(size = 8),
        legend.text = element_text(size = 8))
reci_single

ggsave(reci_single, file= "reci_single.png")


reci_varying <- ggplot(data=data_plots, aes(x=Age, y=prob,
                                            group = Prison, 
                                            colour = Prison)) +
  geom_smooth(aes(x=Age, y=prob), method="lm", 
              se= FALSE) + 
  geom_point(aes(color = Prison)) +
  labs(x="Age", y="Recidivism") +
  ggtitle("Recidivism")  +
  scale_colour_discrete('Prison') +
  theme_bw() +
  theme(legend.position = c(0.9,  0.8),
        legend.background = element_rect(
          linetype = "solid",
          colour = "black",
          size = 0.2),
        legend.key.size = unit(0.2, "cm"),
        legend.title = element_text(size = 8),
        legend.text = element_text(size = 8))

reci_varying

ggsave(reci_varying, file="reci_varying.png")
