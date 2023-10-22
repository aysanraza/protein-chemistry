# Protein Chemistry

Protein-Chemistry is a Nextflow pipeline for extracting UniProt IDs and predicting chemical properties of proteins using Propy3. The pipeline takes input file as an argument. The input file should be a list of UniProt IDs or protein sequences in FASTA format. The output file will be a TSV file containing the protein IDs and the predicted chemical properties.

## Installation

To install Protein-Chemistry, you will need to have Nextflow, UniProt, and Propy3 installed. You can install Nextflow using the following command:

```
conda install -c nextflow nextflow
```

You can install UniProt using the following command:

```
pip install uniprot
```

You can install Propy3 using the following command:

```
pip install propy3
```

Once Nextflow, UniProt, and Propy3 are installed, you can clone the Protein-Chemistry repository and run the pipeline using the following commands:

```
git clone https://github.com/aysanraza/protein-chemistry.git
cd protein-chemistry
nextflow run pipeline.nf
```

## Usage

To run the Protein-Chemistry pipeline, you will need to specify the input and output files on the command line. You can do this using the following arguments:

* `--input_file`: The path to the input file.
* `--output_file`: The path to the output file.

For example, to run the pipeline with the following input and output files:

* `input.txt`
* `output.tsv`

You would use the following command:


`nextflow run pipeline.nf --input_file input.txt --output_file output.tsv`


Once the pipeline has finished running, you will find the output TSV file in the directory where you executed the command.

## About Me:

I am a Bioinformatics and Machine learning expert, practecing insilico development and analytics in the domain of biology and medicine. I am open for research collaborations, you can email me to discuss.

Thank you,
```
Ahsan Raza

Masters in Bioinformatics

aysanraza@gmail.com

Islamabad, Pakistan.
```

## 💻 Tech Stack:
![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54) ![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white) ![Anaconda](https://img.shields.io/badge/Anaconda-%2344A833.svg?style=for-the-badge&logo=anaconda&logoColor=white) ![GitHub](https://img.shields.io/badge/GitHub-%23121011.svg?style=for-the-badge&logo=github&logoColor=white) 	![Neo4J](https://img.shields.io/badge/Neo4j-008CC1?style=for-the-badge&logo=neo4j&logoColor=white) ![SQLite](https://img.shields.io/badge/sqlite-%2307405e.svg?style=for-the-badge&logo=sqlite&logoColor=white) ![MySQL](https://img.shields.io/badge/mysql-%2300f.svg?style=for-the-badge&logo=mysql&logoColor=white) ![scikit-learn](https://img.shields.io/badge/scikit--learn-%23F7931E.svg?style=for-the-badge&logo=scikit-learn&logoColor=white) ![SciPy](https://img.shields.io/badge/SciPy-%230C55A5.svg?style=for-the-badge&logo=scipy&logoColor=%white) ![Plotly](https://img.shields.io/badge/Plotly-%233F4F75.svg?style=for-the-badge&logo=plotly&logoColor=white) ![TensorFlow](https://img.shields.io/badge/TensorFlow-%23FF6F00.svg?style=for-the-badge&logo=TensorFlow&logoColor=white) ![Pandas](https://img.shields.io/badge/pandas-%23150458.svg?style=for-the-badge&logo=pandas&logoColor=white) ![NumPy](https://img.shields.io/badge/numpy-%23013243.svg?style=for-the-badge&logo=numpy&logoColor=white) ![Keras](https://img.shields.io/badge/Keras-%23D00000.svg?style=for-the-badge&logo=Keras&logoColor=white) ![GIT](https://img.shields.io/badge/Git-fc6d26?style=for-the-badge&logo=git&logoColor=white) ![LINUX](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)

 ## 💰 You can help me by Donating
  [![BuyMeACoffee](https://img.shields.io/badge/Buy%20Me%20a%20Coffee-ffdd00?style=for-the-badge&logo=buy-me-a-coffee&logoColor=black)](https://buymeacoffee.com/https://www.buymeacoffee.com/aysanraza)
