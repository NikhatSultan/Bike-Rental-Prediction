# 🚲 Bike Rental Prediction Project
This project predicts the total number of bikes rented on a daily basis using machine learning models in R.

## 📁 Project Files

- `bike_rental_prediction.R`: R script for data cleaning, EDA, model training, and evaluation.
- `1657875746_day.xlsx`: Input dataset used for training and testing 

## 🧠 Techniques Used
- Data preprocessing
- Missing value analysis
- Exploratory Data Analysis (EDA) using `ggplot2`
- Outlier analysis
- Feature engineering (categorical encoding)
- Train-test split using `caret`
- Random Forest model for regression
- Evaluation using MAE and RMSE

## 📊 Model Evaluation
The script prints:
- **Mean Absolute Error (MAE)**
- **Root Mean Squared Error (RMSE)**

These metrics evaluate the accuracy of the model predictions.

## 🔍 Key Insights

- **Demand Patterns Across Time**: 
  - Monthly and yearly analysis revealed peaks in warmer months and potentially growing usage over time.
  
- **Seasonal and Weather Effects**: 
  - Rentals are higher in spring/summer and lower in winter.
  - Bad weather significantly reduces bike rentals.

- **Outlier Analysis**: 
  - Some extreme rental counts were observed on specific days, indicating potential events or weather anomalies.

- **Impact of Categorical Variables**: 
  - Factors like weekday, holiday, and weather condition influence rental behavior and were encoded properly for modeling.

- **Model Performance**:
  - Random Forest performed well, with MAE and RMSE used to evaluate prediction reliability.

- **Business Implications**:
  - Helps in planning bike availability, promoting rentals on low-demand days, and making data-driven infrastructure decisions.

## 🔧 Requirements

Install the following R packages before running the script:

```r
install.packages("readxl")
install.packages("ggplot2")
install.packages("caret")
install.packages("randomForest")

