# group_7_final_project

## Overview

The purpose of our project is to analyze Killed and Seriously Injured data taken from the Toronto Police Service Open Data Portal and determine which areas are considered high risk for fatal and non-fatal collisions. This analysis will help inform daily commuters of these high risk areas and aid city officials develope proper safety measures to reduce the number of collisions.

## Questions

- Which areas (neghborhoods/districts) in Toronto are prone to fatal and non-fatal collisions?

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

# Deliverable 2

The purpose of our project is to analyze Killed and Seriously Injured data taken from the Toronto Police Service Open Data Portal and determine which areas are considered high risk for fatal and non-fatal collisions. This analysis will help inform daily commuters of these high risk areas and aid city officials develope proper safety measures to reduce the number of collisions.

Would like to show some basic visuals on the following topics.

1. A districtwide visualization of all the collisions in Toronto. The same can also be found on [Tableau Public](https://public.tableau.com/views/AdistrictwidevisualizationofallthecollisionsinToronto[…]to_?:language=en-US&:display_count=n&:origin=viz_share_link)
<img width="956" alt="1" src="https://user-images.githubusercontent.com/76264061/120106578-350b4000-c17b-11eb-8109-59bb0be15fa0.png">

2. Severity of collisions based on its impac. The same can also be found on [Tableau public](https://public.tableau.com/views/2_Severityofcollisionsbasedonitsimpact/2_Agraphicalrepresentationofthe?:language=en-US&:display_count=n&:origin=viz_share_link)

<img width="951" alt="2" src="https://user-images.githubusercontent.com/76264061/120106749-edd17f00-c17b-11eb-9599-38ff1faf5515.png">

3. Collisions in Toronto for the past 8 years. The same can also be found on [Tableau public](https://public.tableau.com/views/3_CollisionsinTorontofortrhpast8years_/3_CollisionsinTorontofortrhpast8years_?:language=en-US&:display_count=n&:origin=viz_share_link) 

<img width="956" alt="3" src="https://user-images.githubusercontent.com/76264061/120106790-16f20f80-c17c-11eb-9fa3-a800e733d688.png"> 


4. Injuries caused by alchohol
![image](https://user-images.githubusercontent.com/76402559/120498566-4fb50300-c38d-11eb-9035-994f1e551266.png)

The same can also be found on [Tableau public](https://public.tableau.com/app/profile/maaz.ahmed3945/viz/Injuriescausedbyalchohol/Breakdownofinjuries)


5. Injuries caused by alchohol for 20 to 24 year olds
![image](https://user-images.githubusercontent.com/76402559/120498305-1da3a100-c38d-11eb-8eff-37d5f1353843.png)


The same can also be found on [Tableau public](https://public.tableau.com/app/profile/maaz.ahmed3945/viz/Injuriescausedbyalchoholfor20to24yearolds/Breakdownofinjuries)


6. Injuries by Manoeuver in Toronto
![image](https://user-images.githubusercontent.com/76402559/120498988-af131300-c38d-11eb-8f0a-a522413e195f.png)


The same can also be found on [Tableau public](https://public.tableau.com/app/profile/maaz.ahmed3945/viz/InjuriesbyManoeuverinToronto/InjuriesbyManoeuverinToronto2)

7. Fatalities by involvement type
![image](https://user-images.githubusercontent.com/76402559/120111398-cf4d9280-c13f-11eb-8d33-a01d8178e37a.png)


The same can also be found on [Tableau public](https://public.tableau.com/app/profile/maaz.ahmed3945/viz/Fatalitiesbyinvolvmenttypepiechart/fatalitiesbyinvolvementtype)

8. Fatal or non-fatal accidents by year
![image](https://user-images.githubusercontent.com/76402559/120500551-f1891f80-c38e-11eb-9576-93fa749bcb37.png)


The same can also be found on [Tableau public](https://public.tableau.com/app/profile/maaz.ahmed3945/viz/Fatalornon-fatalaccidentsbyyear/Breakdownofaccidentsbyyear)

9. Fatal or non-fatal by Time range
![image](https://user-images.githubusercontent.com/76402559/120500450-d8806e80-c38e-11eb-9a0f-452ae72c39d5.png)


The same can also be found on [Tableau public](https://public.tableau.com/app/profile/maaz.ahmed3945/viz/Fatalornon-fatalbytime/FatalitybyTimeRange)

10. Fatality by Time
![image](https://user-images.githubusercontent.com/76402559/120500149-9fe09500-c38e-11eb-8278-19c4b4593068.png)


The same can also be found on [Tableau public](https://public.tableau.com/app/profile/maaz.ahmed3945/viz/Fatalitybytime/FatalitybyTime)


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
