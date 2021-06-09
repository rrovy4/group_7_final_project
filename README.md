# group_7_final_project

## Objective of the project

The purpose of our project is to analyze Killed and Seriously Injured data taken from the Toronto Police Service Open Data Portal and determine which areas are considered high risk for fatal and non-fatal collisions. This analysis will help inform daily commuters of these high risk areas and aid city officials develope proper safety measures to reduce the number of collisions.


## Questions

- Which areas (neighbourhood/districts) in Toronto are prone to fatal and non-fatal collisions?

  - Strategy: Perform explaratory analysis on collision rates by neighborhood/district groups.

## Additional Questions to Consider

- Which factors contribute the most to collisions (Lighting, time of day, weather, seasons, holidays, alcohol)?
- Which road classes are more likely to see collisions (highways, intersections, etc)?
- Which vehicle types are more likely to be involved in a collision (car, motoorcylcle, bicycle)?
- Can we predict where collision are likely to occur?

## Technologies Used

- Python (Pandas, Sci-kit)
- Tableau
- SQL Alchemy
- Postgres
- Logistic Regression Machine Learning or SVM

## Datasource

Toronto Police Service Public Safety Data Portal

(https://data.torontopolice.on.ca/datasets/ksi?geometry=-80.689%2C43.549%2C-78.075%2C43.896)

## Communication Channels

- Zoom Meetings: Mondays & Wednesdays during class time
- Slack Channel: Check twice a day (morning and evening)
- Google Meets: As required, for off-class times

## Group Member Roles

- Repository Management: Rohan (exception: Wed, May 19), Maaz & Jason
- ETL: Rohan & Sima
- Databasse Storage: Sima & Tina
- Visualization: Tina & Maaz
- Machine Learning: Jason
- Presentation Materials: Maaz

# Presentation Slides
https://docs.google.com/presentation/d/1OjUM8VMmiSOpwvvHYpZ-E8ZHgRsSwvOW7qwwx1JBzNs/edit?usp=sharing

# Visualization

The purpose of our project is to analyze Killed and Seriously Injured data taken from the Toronto Police Service Open Data Portal and determine which areas are considered high risk for fatal and non-fatal collisions. This analysis will help inform daily commuters of these high risk areas and aid city officials develope proper safety measures to reduce the number of collisions.

Would like to show some basic visuals on the following topics.

1. A districtwide visualization of all the collisions in Toronto.

2. Severity of collisions based on its impac. The same can also be found on [Tableau public](https://public.tableau.com/views/2_Severityofcollisionsbasedonitsimpact/2_Agraphicalrepresentationofthe?:language=en-US&:display_count=n&:origin=viz_share_link)

<img width="951" alt="2" src="https://user-images.githubusercontent.com/76264061/120106749-edd17f00-c17b-11eb-9599-38ff1faf5515.png">

3. Collisions in Toronto for the past 8 years. The same can also be found on [Tableau public](https://public.tableau.com/views/3_CollisionsinTorontofortrhpast8years_/3_CollisionsinTorontofortrhpast8years_?:language=en-US&:display_count=n&:origin=viz_share_link) 

<img width="956" alt="3" src="https://user-images.githubusercontent.com/76264061/120106790-16f20f80-c17c-11eb-9fa3-a800e733d688.png"> 


4. Injuries caused by alchohol
![image](https://user-images.githubusercontent.com/76402559/120896143-3b237580-c5ee-11eb-82ba-0a9744b45aa7.png)

The same can also be found on [Tableau public](https://public.tableau.com/app/profile/maaz.ahmed3945/viz/Injuriescausedbyalchohol/Injuriescausedbyalchohol)


5. Injuries by Manoeuver in Toronto
![image](https://user-images.githubusercontent.com/76402559/120498988-af131300-c38d-11eb-8f0a-a522413e195f.png)


The same can also be found on [Tableau public](https://public.tableau.com/app/profile/maaz.ahmed3945/viz/InjuriesbyManoeuverinToronto/InjuriesbyManoeuverinToronto2)

6. Fatalities by Involvement Type
![image](https://user-images.githubusercontent.com/76402559/120896227-a4a38400-c5ee-11eb-927c-2d87176c0b7e.png)


The same can also be found on [Tableau public](https://public.tableau.com/app/profile/maaz.ahmed3945/viz/FatalitiesbyInvolvementType/fatalitiesbyinvolvementtype)

7. Types of Injuries by Year
![image](https://user-images.githubusercontent.com/76402559/120896293-e92f1f80-c5ee-11eb-9f90-22b424eee5ac.png)


The same can also be found on [Tableau public](https://public.tableau.com/app/profile/maaz.ahmed3945/viz/Typesofinjuriesbyyear/Typesofinjuriesbyyear)

8. Fatality by Time Range
![image](https://user-images.githubusercontent.com/76402559/120896344-167bcd80-c5ef-11eb-9357-79619d95e654.png)


The same can also be found on [Tableau public](https://public.tableau.com/app/profile/maaz.ahmed3945/viz/FatalitybyTimeRange/FatalitybyTimeRange)

9. Fatality by Hour
![image](https://user-images.githubusercontent.com/76402559/120896377-3a3f1380-c5ef-11eb-903f-36409bd1dfab.png)


The same can also be found on [https://public.tableau.com/app/profile/maaz.ahmed3945/viz/FatalitybyHour/FatalitybyTime)

#@ Tableau Dashboard

The following dashboard visualizes the which areas are impacted the most by collisions, who they affect the most and when they typically occur. The date range slider can be used to observe trends anytime between 2006 and 2015.

https://public.tableau.com/views/KSI_16226919616790/Story1?:language=en-US&:display_count=n&:origin=viz_share_link

# Machine Learning

In order to use our dataset to predict future fatal and non-fatal collisions, we will need to select a machine learning model for our analysis. To achieve this, we will be testing the following models:

- Oversampling (Random Oversampler and SMOTE)
- Undersampling (Cluster Centroids)
- Combination (Over and Under) Sampling
- Balanced Random Forest Classifier
- Easy Ensemble Classifier


## Results

Our analysis produced the following results:

### Oversampling

#### Random Oversampler

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


## Summary

After testing six machine learning models, we found that the Balanced Random Forest Classifier produced the highest accuracy rating. While this model did produce high precision, recall and f1 scores for non-fatal collisions, fatal collisions earned low precision and f1 scores, and a high recall score. This means that this model will have a large number of false positives and a low number of false negatives.

Since the majority of all fatal collisions are being classified correctly, additional testing will be required to address the large amount of false positives in this class. This is not a major issue though, as it is better to have false positives for fatal collisions than for non-fatal. Whether or not resources are available to perform additional testing, we recoomend moving forward with the Balanced Random Forest Classifier model. 
