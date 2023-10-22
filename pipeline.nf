params {
  // Input parameters
  input_file = "--input_file"
  output_file = "--output_file"
}

process uniprot_lookup {
  input:
    path(input_file)

  output:
    path("uniprot_lookup.tsv")

  script:
    """
    # Install UniProt Python package
    pip install uniprot

    # Import UniProt Python package
    import uniprot

    # Create a UniProt object
    uniprot = uniprot.UniProt()

    # Get the UniProt IDs from the input file
    uniprot_ids = []
    with open(input_file, "r") as f:
      for line in f:
        uniprot_ids.append(line.strip())

    # Get the UniProt entries for the IDs
    uniprot_entries = uniprot.get_entries(uniprot_ids)

    # Save the UniProt entries to the output file
    with open("uniprot_lookup.tsv", "w") as f:
      for uniprot_entry in uniprot_entries:
        f.write(str(uniprot_entry) + "\n")
    """
}

process propy3_prediction {
  input:
    path("uniprot_lookup.tsv")

  output:
    path("propy3_predictions.tsv")

  script:
    """
    # Install Propy3 Python package
    pip install propy3

    # Import Propy3 Python package
    import propy3

    # Create a Propy3 predictor
    predictor = propy3.Predictor()

    # Read the UniProt entries from the input file
    uniprot_entries = []
    with open("uniprot_lookup.tsv", "r") as f:
      for line in f:
        uniprot_entries.append(uniprot.UniProtEntry.from_string(line))

    # Predict the chemical properties of the proteins
    propy3_predictions = predictor.predict_all(uniprot_entries)

    # Save the Propy3 predictions to the output file
    with open("propy3_predictions.tsv", "w") as f:
      for propy3_prediction in propy3_predictions:
        f.write(str(propy3_prediction) + "\n")
    """
}

workflow {
  uniprot_lookup() -> propy3_prediction()
}
