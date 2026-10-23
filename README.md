# 📡 Telemetry Log Processor for Aviation Maintenance

## 📌 Overview

Telemetry Log Processor is an R Shiny-based web application developed during an internship project at Airports Authority of India (AAI). The application processes aviation telemetry log CSV files, cleans and organizes raw data, identifies warning and alarm events, and generates structured Excel reports for analysis.

## 🛠️ Technologies Used

- R Programming
- R Shiny
- dplyr
- CSV Data Processing
- Excel Report Generation
- writexl
- openxlsx
- DT

## ✨ Features

- Upload telemetry log CSV files through a web interface
- Process and clean raw telemetry data
- Handle inconsistent CSV formats and delimiters
- Extract and organize sensor log information
- Identify warning, alarm, and normal events
- Apply configurable time-threshold filtering
- Filter temporary warning sequences based on the selected threshold
- Display processed data in an interactive table
- Generate summary statistics for processed records
- Export processed results to Excel
- Include original and processed data in the exported workbook
- Provide hyperlinks to navigate from processed records to original data
- Highlight alarm records in the Excel report

## 🔄 Workflow

1. Launch the Telemetry Log Processor application.
2. Upload a telemetry log CSV file.
3. Configure the required time threshold.
4. Process and clean the raw telemetry data.
5. Extract event details and identify warning and alarm statuses.
6. Apply the configured filtering rules.
7. Review the processed data and summary statistics.
8. Export the cleaned results as an Excel report.
9. Review the processed and original data in the exported workbook.

## 🚀 How to Run

### Install Required Packages

Open R or RStudio and run:

```r
install.packages(c("shiny", "dplyr", "DT", "openxlsx"))
```

### Run the Application

Set the working directory to the project folder containing `app.R`, then run:

```r
shiny::runApp()
```

Alternatively, open `app.R` in RStudio and run the application.

## 📁 Project Structure

```text
Telemetry-Log-Processor/
│
├── app.R
├── install_packages.R
├── launch.bat
└── README.md
```

## 🎯 Outcome

The Telemetry Log Processor simplifies aviation telemetry log analysis by cleaning raw CSV data, identifying warning and alarm events, applying time-based filtering, and generating structured Excel reports. It helps organize sensor log information and reduces manual effort during data review.


