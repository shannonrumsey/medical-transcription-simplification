library(ggplot2)
library(tidyverse)
library(RColorBrewer)

df = read.csv('/Users/shannon/Documents/LING111/Project/final_df.csv')

# visualizations for average change in score
# bar plot for grade level

df %>% ggplot() + geom_bar(aes(x =  factor(s_level, levels = c("5th grade", "6th grade", "7th grade", "8th and 9th grade", "10th to 12th grade", "College",
                                                                        "College Graduate", "Professional")), fill = s_level)) + ylim(0, 40) + scale_fill_brewer(palette="PRGn") +  xlab('Grade Level') + ylab('Count') + ggtitle(
                                                                          'After Simplification using Bert') + theme_classic() + theme(legend.position = 'none',
                                                                            axis.text.x = element_text(size = 6), plot.title = element_text(hjust = 0.5)) + coord_flip()


df %>% ggplot() + geom_bar(aes(x =  factor(t_level, levels = c("5th grade", "6th grade", "7th grade", "8th and 9th grade", "10th to 12th grade", "College",
                                                               "College Graduate", "Professional")), fill = t_level)) + ylim(0, 40) + scale_fill_brewer(palette="PRGn") +  xlab('Grade Level') + ylab('Count') + ggtitle(
                                                                 'Before Simplification using Bert') + theme_classic() + theme(legend.position = 'none',
                                                                                                                              axis.text.x = element_text(size = 6), plot.title = element_text(hjust = 0.5)) + coord_flip() 





df$t_scores
df$s_scores

df %>% ggplot(aes(x = t_scores, y = s_scores)) + geom_point(color = '#027b1b')  + geom_smooth(method = 'lm', se = FALSE, color = '#700a87') + xlab('Original Text FRES') + ylab('Simplified Text FRES') + ggtitle('Relationship Between Original and Simplified Text') + theme_classic() + theme(plot.title = element_text(hjust = 0.5))
