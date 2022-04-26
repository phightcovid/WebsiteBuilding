intro_panel <- tabPanel(
  "Background",
  
  h2("Introduction"),
  p("There has been wide-ranging public discourse about the efficacy of masking and mask mandates as tools to prevent the spread of COVID-19. This project aims to shed some light on this question using data visualization."),
  p("This project focuses specifically on the efficacy of state-wide mask mandates in the United States in the time period directly after they had been implemented. We focus on mask mandates during the Delta (June 26 - December 17 2021) and Omicron (December 18 - March 30 2021) waves of COVID-19 for two reasons. First, these mask mandates tended to be the only major actions these state governments took to fight the spread of COVID during this time; earlier in the pandemic, states implemented multiple restrictions at once or within short periods. A lack of other state-level actions reduces one (of many) areas of potential confounding. It should be noted, however, that the specifics of each mask mandate somewhat varied by state, not to mention the important confounder of mask mandate compliance, are unexplored here. Second, varying statewide levels of vaccination allows us to study how the rate of vaccination in a state interacts with the effectiveness of mask mandates. In other words, we can investigate whether mask mandates are more or less effective in lower vaccinated states."),
  h2("Methods"),
  h3("Wave Definitions"),
  p("We mark the beginning of the Delta Wave as June 26, 2021 because this is the earliest date that the Delta variant was declared to be the predominant strain by the U.S. Department of Health and Human Services. The starting date of the Omicron wave was set as December 18, 2021 because that was when it overtook Delta as the predominant variant, making up 73% of all the cases at the time."), 
  h3("Normalized Rolling Average"),
  p("To create the time series data, we first normalized the cases on each day by calculating the number of new cases in each state for every 500,000 people in the state. Adjusting cases by population like this makes it easier to compare pandemic trajectory between smaller and larger states. Then we take a seven day rolling average, meaning the cases indicated on July 6th is actually an average of the cases from July 3rd to July 9th."),
  h3("Comparison State Selection"),
  p("Three factors were considered when selecting comparison states to appear along with the states that implemented new mask mandates in the case graphs. First, we narrowed candidates down by picking the ten closest states to the mask mandate state. Distance was assessed by euclidean distance from the geographic centers of two states. Second, only states without an active mask mandate were eligible for selection, of these ten states. States with only a mask recommendation were eligible for selection. Last, of these at most ten remaining candidate states, we picked the four with the closest vaccination rate to the mask mandate state."),
  p("It should be noted that this method sometimes picks sub-optimal comparison states, like for Washington in the Delta Wave (Montana, Arizona, Nebraska, Utah). For Washington, this is because all of the states with similar geography and vaccination rate (Oregon, California, Colorado) had active mask mandates at the time. As a result, we leave Washington, Oregon, and California out of the Delta Wave analysis due to potential comparisons states being too far away and too low of vaccination rates to be useful comparators."),
)

second_panel <- tabPanel(
  "Delta Wave",
  h2("Mask Mandates during the Delta Wave"),
  p("17 states implemented 1 of 4 types of mask policies for some duration of time during the Delta wave. States on the West Coast uniformly administered the most stringent policy (“mask mandate for everyone”) starting sometime in the summer of 2021, and they lasted through the rest of Delta wave. States on the East Coast were more varied in their approach, implementing a combination of recommendations and mandates. A large majority of the Central states took no action."),
  htmlOutput("map1"),
  h3("Were New Mask Mandates Effective during Delta?"),
  p("The graphs below show the normalized rolling average of cases for one week before and seven weeks after a mask mandate in five of the eight states who newly implemented a mask mandate during the Delta Wave, compared to four other states. Comparison states were selected with the intention of being close geographically and in vaccination rate. The details of the selection process can be found in the Methods section. We exclude Washington, Oregon, and California from this analysis due to poor comparison state options due to all of the other nearby, similar states have mask mandates."),
  p("The plots are ordered from least vaccinated mandate state (Louisiana) to least (Connecticut) at the time of each mandate, indicated by the vertical black line. In each graph, the green dashed line is the state that implemented the mask mandate. All other lines represent states with no active mask mandate, although some states may have a statewide mask recommendation. Some details about masking policies are indicated when you hover over each line."),
  p("Also note that the y-axis varies between each subgraph. Especially note that case counts in the Louisiana subgraph are much higher than all of the others. Keep in mind the normalized case counts between graph components when making comparisons."),
  p("There is varying levels of visual evidence for mask mandate effectiveness, but vaccination level may help explain this variation. Louisiana sees an extreme reduction in case counts about 3 weeks after the implementation of the mask mandate, above and beyond the reduction similar states see. It should be noted that cases in Louisiana already peaked at the time of the intervention, but the speed and magnitude of the decrease in cases seems to outpace similar states who also saw reductions in cases. This steep reduction in Louisiana is likely at least partly attributed to a delay or a change in reporting cases in the state."),
  p("In comparison, we see less success in Connecticut, where the case trajectory are in lockstep with their comparison states. However, case counts in Nevada, New Mexico, and Illinois finish lower than all of the other comparison states after six weeks. In particular, Nevada began as the state with the highest normalized cases of its subgraph, but finished with the lowest."),
  
  
  htmlOutput("fig1")
)

third_panel <- tabPanel(
  "Omicron Wave",
  titlePanel("Mask Mandates during the Omicron Wave"),
  p("18 states implemented 1 of 5 types of mask policies during the Omicron wave, with the addition of the “Recommended for everyone” policy. All 17 states which had mask policies during the Delta wave continued to implement mask policies during the Omicron wave. Most states that administered “mask mandates for everyone” during the Delta wave kept their level of stringency during the Omicron wave."),
  p("We specifically note that the state of New York went from having no policy to the “Mandated for everyone” policy. Moreover, Rhode Island also implemented a stricter policy, converting from “mandate for the unvaccinated” during the Delta wave to a “mandate for everyone”. On the other hand, Louisiana relaxed their policy, turning their “mandate for everyone” policy to a “recommendation for everyone”."),
  htmlOutput("map2"),
  h3("Were New Mask Mandates Effective during Omicron?"),
  p("The graphs below show the normalized rolling average of cases for one week before and seven weeks after a mask mandate in all four of the states who newly implemented a mask mandate at the beginning of the Omicron Wave, compared to four other states. Comparison states were selected with the intention of being close geographically and in vaccination rate. The details of the selection process can be found in the Methods section. Unlike the mask mandate states for the Delta Wave, all four of these states have very similar vaccination rates."),
  p("We see little differentiating from the trajectory of cases for mask mandate states compared to similar states without mandates. This is consistent with our hypothesis that increased vaccination reduces the effectivess of mask mandates. It also raises the question of if the differences between the Delta and Omicron variants leads to differences in mask mandate effectiveness."),
  htmlOutput("fig2")
)

ui <- navbarPage(
  "PHIGHT COVID: Mask Mandates",
  intro_panel,
  second_panel,
  third_panel
)