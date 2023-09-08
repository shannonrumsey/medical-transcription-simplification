Project done with Christopher Straw and Kristin Cheung at the University of California, Santa Barbara

Using synonym replacement and text summarization, we explore the methodology of medical transcription simplification and what it means for text to be “simplified”. The synonym simplification process utilizes BioBERT embeddings to identify complex terms and replace them with simpler definitions. The resulting text is then summarized using a BERT2BERT model fine-tuned on a CNN/Dailymail dataset. From the results, we use a standard method for generating reading levels, the Felsch reading ease score test, and find an overall increase in readability after applying our models.


Primary Datasets:
1. Transcriptions can be found at inputs/clean_transcriptions.csv. Data was downloaded from https://www.kaggle.com/datasets/tboyle10/medicaltranscriptions and originated from https://mtsamples.com/

2. Harvard Health Medical Dictionary can be found at inputs/definitions.csv and was scraped from https://www.health.harvard.edu/health-a-to-z
