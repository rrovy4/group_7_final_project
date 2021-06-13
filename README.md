# Toronto Collisions Analysis

![Random GIF](https://media.giphy.com/media/l2JdTgoRHDCDsrEuk/giphy.gif) ![Random GIF](https://media.giphy.com/media/fR4iRRv7TfdM6w1TKB/giphy.gif)

# Table of Contents

- Objective of the project
- Major Questions
- Supporting questions
- Datasource
- Description of Data Analysis
- Step 1: Data Exploration
- Step 2 : Visualisation using Tableau 
- Step 3 : Machine Learning
- Tools for Data Analysis
- Summary
- Group Member and Roles

## Objective of the project

The purpose of our project is to analyze Killed and Seriously Injured data taken from the Toronto Police Service Open Data Portal and determine which areas are considered high risk for fatal and non-fatal collisions. This analysis will help inform daily commuters of these high-risk areas and aid city officials develop proper safety measures to reduce the number of collisions.


## Major Questions

What areas (neighborhoods/districts) in Toronto are prone to fatal and non-fatal collisions?
- What are the top 5 neighborhood that has the hight number of collisions? 
- Who and what was the type of involvement of collisions by age? 
- At what time in the day were the maximum collisions reported?
- What are the major causes of the collisions and who was the most affected by them?
- How fatal were the collisions over the years?

### Supporting questions

- Which factors contribute the most to collisions (Lighting, time of day, weather, seasons, holidays, alcohol)?
- Which road classes are more likely to see collisions (highways, intersections, etc)?
- Which vehicle types are more likely to be involved in a collision (car, motorcycle, bicycle)?
- Can we predict where collisions are likely to occur?


## Datasource

Toronto Police Service Public Safety Data Portal
<img width="800" alt="2" src="https://user-images.githubusercontent.com/76264061/121800922-23816800-cc52-11eb-8973-5d6ca1c6f77c.png">
(https://data.torontopolice.on.ca/datasets/ksi?geometry=-80.689%2C43.549%2C-78.075%2C43.896)

# Description of Data Analysis

Data Analysis was done in a 3 step process. 
- Step 1: Applied the Extract, transform, load process to the data source.
- Step 2: Created Visuals through Tableau.
- Step 3: Used Machine learning to determine Random Forest Classifier


## Step 1: Data Exploration
<img width="700" alt="Step 1" src="https://user-images.githubusercontent.com/76264061/121797862-984ba680-cc40-11eb-8df1-033c4b3c9a8c.png">
CSV files, Jupyter notebook, Postgres
- Understanding that the source data isn’t always clean, honest efforts were made to make the source data as clean as possible. Data were analyzed visually and we also applied certain filtration, sorting, and standardization across the data (transform phase)
- For example, identifying and excluding unnecessary fields, running counts against fields of interest, standardizing any anomalies, etc.
- Once the source data was in an acceptable format, to answer the objective of the project, records from the data set were bucketed by relevance and extracted in a structured format (extract phase)
- Once the structured data was extracted, it was loaded into a database in Postgres for persistence (load phase)
- This data was then further used for visualization downstream
- A bunch of tools was utilized, from data acquisition through the data load phase. Primarily, MS Excel, Python and its libraries (Pandas, CSV, SQLAlchemy), Jupyter Notebook, and Postgres Database


# Step 2: Visualisation using Tableau 

The purpose of the visualization is to analyze the data taken from the Toronto Police Service Open Data Portal and determine which areas are considered high risk for fatal and non-fatal collisions. This analysis will help inform daily commuters of these high-risk areas and aid city officials develop proper safety measures to reduce the number of collisions. The visualization is done using Tableau through a consolidated display of many worksheets and related information in a single place using dashboards. 

## Dashboard 1 

<img width="945" alt="3" src="https://user-images.githubusercontent.com/76264061/121799140-e6b07380-cc47-11eb-8e72-79455356606c.png">


### Interpretation
- The first motion chart describes the total number of collisions over the years. What is observed is that there is a drop in collisions in the year 2019 and 2020. The highest was observed in August 2006 with over 66 collisions. 
- The second heat map of Toronto below on the left side, is a division of the collisions by districts by shades of red. What is observed is that the Downtown and Waterfront areas has recorded the highest number of collisions over the years.  
- The next Gantt Chart is a visual of the neighborhoods that have recorded the highest number of collisions and are categorized by Fatal and Non-Fatal collisions. 
- The last Doughnut chart is a visual of the total number of collisions and is divided by Fatal and Non-Fatal collisions. There were a total of 6002 collisions in the past 14 years and 806 (13%) were recorded as Fatal and 5196 (87%) were recorded as Non-Fatal. [Tableau public link](https://public.tableau.com/views/KSI_16226919616790/Story1?:language=en-US&:display_count=n&:origin=viz_share_link) 

## Dashboard 2

<img width="941" alt="4" src="https://user-images.githubusercontent.com/76264061/121799567-7c4d0280-cc4a-11eb-9a7d-f6f7e03059df.png">

### Interpretation 

- The first heat map shows a description of collisions by age and by the type of involvement like a cyclist, driver, motorcyclist, pedestrian, and passenger. It was observed that most of the collisions were caused due to diver's involvement and in the age group of 20-29 and 40-44.
-  The treemap observes the time of day the collisions have occurred. It was recorded that the highest collisions have recorded in the afternoon followed by rush hour mornings. 
-  The last bar chart represents the major causes of the collisions and who was involved in them. It was found that the causes identified were Aggregive and distracted driving, alcohol-related, medical of physical disability-related, red light-related, and speeding-related. What caused most of the collisions, around 4300 collisions, was Aggregive and distracted driving followed by collisions caused by speeding. [Tableau public link]( https://public.tableau.com/app/profile/jason.hall7542/viz/KSI_16226919616790/Story1) 


### Other Visuals 

The severity of collisions based on their impact.  [Tableau public link](https://public.tableau.com/views/2_Severityofcollisionsbasedonitsimpact/2_Agraphicalrepresentationofthe?:language=en-US&:display_count=n&:origin=viz_share_link)

<img width="951" alt="2" src="https://user-images.githubusercontent.com/76264061/120106749-edd17f00-c17b-11eb-9599-38ff1faf5515.png">

Collisions in Toronto for the past 8 years. The same can also be found on [Tableau public link](https://public.tableau.com/views/3_CollisionsinTorontofortrhpast8years_/3_CollisionsinTorontofortrhpast8years_?:language=en-US&:display_count=n&:origin=viz_share_link) 

<img width="956" alt="3" src="https://user-images.githubusercontent.com/76264061/120106790-16f20f80-c17c-11eb-9fa3-a800e733d688.png"> 


Injuries caused by alcohol.  [Tableau public link](https://public.tableau.com/app/profile/maaz.ahmed3945/viz/Injuriescausedbyalchohol/Injuriescausedbyalchohol)

![image](https://user-images.githubusercontent.com/76402559/120896143-3b237580-c5ee-11eb-82ba-0a9744b45aa7.png)


Injuries by Manoeuver in Toronto  [Tableau public link](https://public.tableau.com/app/profile/maaz.ahmed3945/viz/InjuriesbyManoeuverinToronto/InjuriesbyManoeuverinToronto2)
![image](https://user-images.githubusercontent.com/76402559/120498988-af131300-c38d-11eb-8f0a-a522413e195f.png)

 Fatalities by Involvement Type [Tableau public link](https://public.tableau.com/app/profile/maaz.ahmed3945/viz/FatalitiesbyInvolvementType/fatalitiesbyinvolvementtype)

Types of Injuries by Year  [Tableau public link](https://public.tableau.com/app/profile/maaz.ahmed3945/viz/Typesofinjuriesbyyear/Typesofinjuriesbyyear)

![image](https://user-images.githubusercontent.com/76402559/120896227-a4a38400-c5ee-11eb-927c-2d87176c0b7e.png)

 
![image](https://user-images.githubusercontent.com/76402559/120896293-e92f1f80-c5ee-11eb-9f90-22b424eee5ac.png)

Fatality by Time Range  [Tableau public link](https://public.tableau.com/app/profile/maaz.ahmed3945/viz/FatalitybyTimeRange/FatalitybyTimeRange)
![image](https://user-images.githubusercontent.com/76402559/120896344-167bcd80-c5ef-11eb-9357-79619d95e654.png)

Fatality by Hour [Tableau public link](https://public.tableau.com/app/profile/maaz.ahmed3945/viz/FatalitybyHour/FatalitybyTime)
![image](https://user-images.githubusercontent.com/76402559/120896377-3a3f1380-c5ef-11eb-903f-36409bd1dfab.png)


# Step 3: Machine Learning

In order to use our dataset to predict future fatal and non-fatal collisions, we will need to select a machine learning model for our analysis. To achieve this, we will be testing the following models:

- Oversampling (Random Oversampler and SMOTE)
- Undersampling (Cluster Centroids)
- Combination (Over and Under) Sampling
- Balanced Random Forest Classifier
- Easy Ensemble Classifier


## Results

Our analysis produced the following results:

### Oversampling

#### Random Oversample

Accuracy Score: 0.7263070982300752

Confusion Matrix

![random_over_cm](/resources/screenshots/random_over_cm.PNG)

Imbalanced Classification Report

![random_over](/resources/screenshots/random_over_icr.PNG)

#### SMOTE

Accuracy Score: 0.6753046117908217

Confusion Matrix

![smote_cm](/resources/screenshots/smote_cm.PNG)

Imbalanced Classification Report

![smote_over](/resources/screenshots/smote_icr.PNG)

### Undersampling

#### Cluster Centroids

Accuracy Score: 0.5247470620197009

Confusion Matrix

![under_cm](/resources/screenshots/cc_cm.PNG)

Imbalanced Classification Report

![under](/resources/screenshots/cc_icr.PNG)

### Combination (Over and Under) Sampling

Accuracy Score: 0.6784468923380029

Confusion Matrix

![combo_cm](/resources/screenshots/combo_cm.PNG)

Imbalanced Classification Report

![combo](/resources/screenshots/combo_icr.PNG)

### Balanced Random Forest Classifier

Accuracy Score: 0.8675290096675505

Confusion Matrix

![brf_cm](/resources/screenshots/brfc_cm.PNG)

Imbalanced Classification Report

![brf](/resources/screenshots/brfc_icr.PNG)

### Easy Ensemble Classifier

Confusion Matrix

Accuracy Score: 0.7802319612194826

![ee_cm](/resources/screenshots/eec_cm.PNG)

Imbalanced Classification Report

![ee](/resources/screenshots/eec_icr.PNG)

# Tools for Data Analysis

- Python (Pandas, Sci-kit)
- Tableau
- SQL Alchemy
- Postgres
- Logistic Regression Machine Learning or SVM

## Summary

After testing six machine learning models, we found that the Balanced Random Forest Classifier produced the highest accuracy rating. While this model did produce high precision, recall, and f1 scores for non-fatal collisions, fatal collisions earned low precision and f1 scores, and a high recall score. This means that this model will have a large number of false positives and a low number of false negatives.

Since the majority of all fatal collisions are being classified correctly, additional testing will be required to address a large number of false positives in this class. This is not a major issue though, as it is better to have false positives for fatal collisions than for non-fatal. Whether or not resources are available to perform additional testing, we recommend moving forward with the Balanced Random Forest Classifier model. 

### Class Presentation

Class presentation was done through google slides and the came can be found [here](https://docs.google.com/presentation/d/1OjUM8VMmiSOpwvvHYpZ-E8ZHgRsSwvOW7qwwx1JBzNs/edit#slide=id.p) 

## Group Member and Roles
<img width="437" alt="5" src="https://user-images.githubusercontent.com/76264061/121800867-d1d8dd80-cc51-11eb-81b2-abbbeb8e134a.png">

- Repository Management: Rohan, Maaz & Jason
- ETL: Rohan & Sima
- Database Storage: Sima & Tina
- Visualization: Tina & Maaz
- Machine Learning: Jason
- Presentation Materials: Maaz
