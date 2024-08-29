# Skin Disease Detection by Image Processing and Neural Network (MatLab)

This project focuses on the recognition and analysis of various skin diseases, including cancer and Vitiligo, using advanced image processing techniques and machine learning models in Matlab. The goal is to accurately identify and classify disease-affected areas in skin images by leveraging sophisticated feature extraction, selection, and modeling methodologies.

## Table of Contents

- [Introduction](#introduction)
- [Methodology](#methodology)
  - [Image Acquisition](#image-acquisition)
  - [Image Preprocessing](#image-preprocessing)
  - [Feature Extraction](#feature-extraction)
  - [Feature Data Transformation and Preparation](#feature-data-transformation-and-preparation)
  - [Modeling & Classification](#modeling--classification)
- [Results](#results)
- [Requirements](#requirements)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Introduction

Skin diseases like cancer and Vitiligo are characterized by changes in skin pigmentation and texture, leading to various visual manifestations. This project utilizes a dataset of skin disease images, collected by the client, and implements several image processing and machine learning techniques to classify affected and unaffected skin regions.

## Methodology

### Image Acquisition

The dataset used in this project was provided by the client and contains over 1000+ images of skin diseases such as cancer and Vitiligo. We selected 1300 samples for training and testing, splitting the data into a 75% training set and a 25% testing set.

### Image Preprocessing

Preprocessing is a critical step to enhance the quality of images for better feature extraction and classification. Key steps include:

- **Mask Creation**: Threshold RGB images using auto-generated code from Matlab's color Thresholder app to create a binary mask.
- **Color Space Conversion**: Convert RGB images to the L*a*b* color space to distinguish different color clusters associated with disease.
- **Filtering and Compression**: Filter and compress the image frames to retain important features for extraction.

### Feature Extraction

Feature extraction focuses on identifying significant color clusters and patterns in the images, particularly by using K-Means Clustering in the L*a*b* color space. Key steps include:

1. **Reading and Converting Images**: Convert images from RGB to L*a*b* color space.
2. **Clustering**: Apply K-Means Clustering to segment images into distinct color clusters.
3. **Segmentation**: Separate and analyze different clusters to identify disease-affected areas.

### Feature Data Transformation and Preparation

After feature extraction, data is transformed to prepare it for model training. Steps include:

- **Feature Selection**: Apply techniques like correlation methods to select relevant features associated with skin diseases.
- **Data Splitting**: Split data into training and testing sets (75%-25% ratio).
- **Label Transformation**: Convert labels into a numeric form suitable for model input.
- **Reshaping**: Adjust data dimensions to fit model requirements.

### Modeling & Classification

Six machine learning models were applied, including:

1. **K-Nearest Neighbors (KNN)**
2. **Neural Networks (NN)**

An ensemble algorithm was developed to combine the results of these models for improved accuracy.

## Results

The models were tested on the skin disease dataset, and the performance was evaluated based on accuracy, precision, and recall metrics. The results demonstrated the effectiveness of the preprocessing and feature extraction techniques in enhancing model performance for detecting skin diseases like cancer and Vitiligo.

## Requirements

- Matlab R2020a or later
- Image Processing Toolbox
- Statistics and Machine Learning Toolbox

## Usage

To run the project:

1. Clone the repository: 
   ```bash
   git clone https://github.com/AlinaBaber/Skin-Disease-Detection-MachineLearning-ImageProcessing-MatLab.git
2. Load the dataset provided by the client into Matlab.
3. Run the FCAQD.fig file to start the image recognition process.
