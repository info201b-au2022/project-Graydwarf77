# Analyzing Suicide Rates Among Adolescents:
##### Authors
* Grayson Ellard, graysone@uw.edu
* Keaton Staggs, keatun@uw.edu
* Yingxuan Wang, yingxw3@uw.edu
* Netra Krishnan, netrak@uw.edu
         

*INFO-201: Technical Foundations of Informatics*  
*The Information School*   
*University of Washington*      
*Winter 2022*  

#### Rolling Rocks

### Abstract
Our main question is suicide rates among adolescents in US. This question is important because concern about mental health issues among adolescents has increased worldwide and adolescents account for a growing share of suicide rates. To address the question, we will collect and count data on this topic, then analyze and hypothesize how we can reduce the stress of adolescents.

### Keywords
- Suicide
- Causes for Suicide
- Death Rate
- Age Range
- Mental Health

## Introduction
The biggest concern for adolescents around the world today is suicide due to stress and mental health issues. According to a study of 14 U.S. states published in the JAMA Pediatrics: Adolescents between the ages of 10 and 19 accounted for 6.5 percent of all suicides in 2020, a dramatic increase from previous years. Also, according to the National Foundation for Suicide Prevention, suicide is the third leading cause of death for adolescents and the second leading cause of death for college students. Adolescents commit suicide for many reasons, both internal and external. We collected data, explored, and classified them, summed up the main reasons for suicide by adolescents and wanted to urge everyone to effectively avoid them.

## Problem Domain
If one were to take a survey of adolescents around the world asking what their biggest concern was, there is a good chance that a many would say that they are over stressed and feel trapped in a dying world. This outlook, one of hopelessness and desperation, is likely to have contributed to the massive mental health and subsequently suicidal ideation crisis that plagues much of the world today. To paint an idea of the scope of the issue, Jane Brody of the New York Times reports “the rate of suicide among those aged 10 to 24 increased dramatically — by 56 percent — between 2007 and 2017”, a deeply troubling increase (Brody, 2019). Furthermore, the World Health Organization has found that “Depression is one of the leading causes of illness and disability among adolescents, and suicide is the second leading cause of death in people aged 15–19 years” (Adolescents and Young, 2022). There is a severe mental health crisis that is crippling the youth of the world, and it is our responsibility to act, and do what we can to shed light on this issue.
### Human Values
 The future health of an entire generation is at stake, and countless communities are at risk of falling apart if this ever-growing crisis is not addressed. Despite this, many still value privacy and status over mental health, aiming to sweep the issue under the rug as previous generations have. This has actively harmed many youths struggling with mental health or a mental illness, as nearly 60% of youth with major depression did not receive any mental health treatment (The State, 2022). Despite the pushback on mental health education and treatment, the time has come to treat the values of mental health and community with the respect they deserve.
### Direct and Indirect Stakeholders
 The most obvious direct stakeholders of this issue include adolescents and their families. Their experiences and values towards this topic vary to an extreme extent, leading to a plethora of different approaches to the suicidal ideation crisis. When one considers indirect stakeholders, it would be easier to name who is not one, as anybody who interacts with these direct stakeholders will be affected in some way because of how mental illness affects every facet of a direct stakeholder’s life.
### Potential Benefits and Harms
  Data scientists must be extremely careful with technology surrounding the issue of suicidal ideation. Technology can be exceedingly useful in both treatment and research efforts when it comes to the mental health crisis, but they must be cautious not to turn the unique stories of the millions of adolescents that are suffering from suicidal ideation into simple numbers. Ultimately, every person is at a different state when it comes to their mental health, and professionals seeking to utilize technology to fight suicidal ideation must keep this thought in mind if they want to be successful.

## Research Questions
1. How do suicide rates compare between male and female adolescents around the world? This question is important because analyzing this problem can give us a broader understanding of groups that are most strongly affected by suicidal ideation, which can help people develop mental health treatments that are more strongly targeted towards these groups.

2. How do suicide rates for adolescents in the United States compare to other parts of the world? This is important because it educates us (as Americans) to the problem of suicidal ideation in adolescents around the globe. It allows Americans to understand the current mental health crisis on a more global scale, which could help us come up with global solutions, not just tunneling on the United States.

3. How does the rate of human resources for mental health compare to suicide rate for countries around the world? This question is important because it allows us to see how suicide rates may be affected by a stronger or weaker infrastructure when it comes to mental health. This allows us to partially understand what solutions could be implemented to lower rates of adolescent suicide.

## The Dataset
| Dataset      | Mental Health and Suicide Rates | Suicide Rates Overview 1985 to 2016     
| Observations      | 656       | 27820   
| Variables   | 16        | 12     

Illustrated through the Problem Domain, our main area of focus is on adolescents and the drastic rate of suicide as a result of poor mental health. In the first datafile from the _Mental Health and Suicide Rates_ dataset, _Crude Suicide Rates_, data has been collected for the suicide rates (per 100,000 people) for various countries across the world. This datafile includes variables for country, sex, and ranges of ages. Specifically, the column "10to19" will enable analysis on the suicide rates of adolescents within various countries, and in comparison to other age groups. Connecting to our first research question, the variable "sex" will be used to analyze the comparison between suicide rates regarding gender. Our second research question focuses on examining how suicide rates for adolescents within the United States compare to other countries around the world. Using the last variable within the datafile, we will be able to analyze the rates of suicide for ages ten to nineteen in the United States in comparison to other countries.

The datafile _Human Resources_ found within the _Mental Health and Suicide Rates_ dataset will be used to address our final research question. The _Human Resources_ datafile contains data for various countries during the year 2016, with variables for the amount of human resources working in the mental health sector. This data will allow comparison between the rate of human resources and the rate of suicides throughout many countries.

The dataset _"Suicide Rates Overview 1985 to 2016"_ will also be used to further analyze the suicide rates for various countries throughout the world. However, this dataset includes suicide rate data for the years 1985 to 2016, which will allow for more patterns in data to be identified regarding how suicide rate has changed as years progress. By having data for multiple years, we are able to draw more conclusions as to how suicide rate has changed over the years, as well as how suicide rate for different countries compare over various years.

##### Mental Health and Suicide Rates Data

**Citation:**
Khanna, T. (2020). Mental Health and Suicide Rates. Kaggle.com. [URL.](https://www.kaggle.com/datasets/twinkle0705/mental-health-and-suicide-rates?select=Crude+suicide+rates.csv)

The _Crude Suicide Rates_ and _Human Resources_ data was collected from Twinkle Khanna. The data was published two years ago and was gathered for the year 2016. While the funder of the dataset is not stated, the publisher displays strong feelings for suicide prevention. Therefore, the dataset may be intended to spread awareness about the rates of suicide in hopes for greater suicide prevention. Since the source of the data is the World Health Organization (WHO), the data is likely to be valid and credible. The WHO holds a high standard for the technical accuracy of data, making the _Crude Suicide Rates_ dataset trustworthy. This dataset was obtained through [Kaggle](https://www.kaggle.com/), a platform for data scientists to publish various datasets. Since much of the data displayed in Kaggle has been provided by Data Scientists and Analysts, the majority of the data is credible.

## Findings
In this section we will discuss the findings that we got during our research, and answer our research questions along the way. 

#### Question One: How do suicide rates compare between male and female adolescents around the world?
When considering the data as a whole, it was found that male adolescent suicide rates are nearly double that of female adolescent rates around the world. In some larger countries, such as the United States and China, male suicide rates continued the trend of being higher than female rates. This was not the case in all large countries though, as female suicide rates in India were noticeably higher than male. In our data set, it was rare for suicide rates to be similar between male and female, as Guyana and Bolivia were the only countries with very similar suicide rates for both genders. Overall, we see from this data that male adolescents are at a higher risk of suicide than female adolescents when looking at data around the world, but it is important to remember that this is a summary, and that things are different from country to country.

#### Question Two: How do suicide rates for adolescents in the United States compare to other parts of the world?
The United States has an adolescent suicide rates of 6.9 people per 100,000. When this is compared to other countries around the world, it can be seen that it is a relatively middle of the pack number. There are many countries that have higher a higher adolescent suicide rate than the United States, such as India with 11.2, Nicaragua with 11.6, or Iceland with 10.8. Furthermore, lots of countries have adolescent suicide rates lower than the United States, such as Belgium with 3.6 or the Philippines with 2.5. The United States is around the middle when comparing adolescent suicide rates to other countries, and we will explore more about what this means in the discussion section.

#### Question Three: How does the rate of human resources for mental health compare to suicide rate for countries around the world?
Interestingly, it seems that mental health resources do not necessarily lower suicide rates around the world. Countries that have a lower rates of psychiatrists and psychologists such as Mexico, Kenya, or Cambodia actually have roughly comparable adolescent suicide rates than some countries which have high rates of psychiatrists and psychologists such as Sweden or Poland. Although, there are some countries that have a high number of mental health professionals, such as Israel, which also have very low adolescent suicide rates. 

## Discussion
In this section we will discuss the importance and implications of our findings. 

Looking at the findings for question one can tell us many different things. Firstly, it is immediately clear that in much of the world, adolescent males are at a higher risk of suicide than adolescent females. This is important because it then brings us to our next question: why is this? While that question is out of the scope of this report, it offers a logical next step for where to study in order to help fight against the adolescent suicide crisis. The findings from this question reveal another important thing to remember, which is to not over generalize data and trends. While male adolescents have a higher suicide rate worldwide, there are many countries that have a higher rate of suicide for female adolescents. If one were to develop an outreach program for adolescent suicide, it would be important for them to observe the trends in that specific region, not just the country or world for that matter. 


The conclusion we drew from research question two is that the United States has a middle of the road or slightly above average rates of adolescent suicide compared to other countries around the world. Considering that the United States is the richest country in the world, and that it is supposedly also a worldwide hub for medical treatment and health research, it is evident from this conclusion that more needs to be done for mental health research and treatment in the United States. Furthermore, the world as a whole needs to implement health policies aimed at bringing adolescent suicide rates down.


The findings from our third question implies that mental health resources alone will not necessarily bring down suicide rates. Specifically, we can look at the United States, which has some of the highest levels of mental health resources, yet still has a relatively high level of adolescent suicide rates. This implies to us that the current way mental health resources are being implemented may not be the best solution for bringing adolescent suicide rates down. Furthermore, it also tells us that suicide rates are affected by a lot more than just what resources are available. If we are to curb adolescent suicide rates world-wide, it will likely include overhauling the current system of mental health resources, while also expanding how treatment is carried out.

## Conclusion


## References

Adolescent and young adult health [Fact sheet]. (2022, August 10). World Health Organization. https://www.who.int/news-room/fact-sheets/detail/adolescents-health-risks-and-solutions

Brody, J. E. (2019, December 2). The Crisis in Youth Suicide. The New York Times. https://www.nytimes.com/2019/12/02/well/mind/the-crisis-in-youth-suicide.html

Charpignon, M.-L., Ontiveros, J., Sundaresan, S., Puri, A., Chandra, J., Mandl, K. D., & Majumder, M. S. (2022). Evaluation of suicides among US adolescents during the covid-19 pandemic. JAMA Pediatrics, 176(7), 724. https://doi.org/10.1001/jamapediatrics.2022.0515

Khanna, T. (2020). Mental Health and Suicide Rates [Table]. kaggle. https://www.kaggle.com/datasets/twinkle0705/mental-health-and-suicide-rates?select=Crude+suicide+rates.csv

The State of Mental Health in America. (2022). Mental Health America. https://mhanational.org/issues/state-mental-health-america

## Appendix A: Questions

Our group currently has no questions. Thank you.



